#!/usr/bin/env python3
"""
DeepSeek Auto-Patcher
Auto-detects obfuscated class names and injects mod hooks.
Works with any version by using heuristic pattern matching.
"""

import argparse
import glob
import json
import os
import re
import shutil
import sys


class Patcher:
    def __init__(self, decompiled_dir, mod_dir=None, verbose=False, dry_run=False):
        self.decompiled = decompiled_dir
        self.mod_dir = mod_dir or os.path.join(os.path.dirname(__file__))
        self.verbose = verbose
        self.dry_run = dry_run
        self.smali_dir = os.path.join(decompiled_dir, "smali")
        self.manifest = os.path.join(decompiled_dir, "AndroidManifest.xml")

        # Detected class names
        self.sse_delta_class = None
        self.chat_request_class = None
        self.json_element_type = None
        self.app_class = "com/deepseek/chat/App"

    def log(self, msg):
        print(f"[*] {msg}")

    def debug(self, msg):
        if self.verbose:
            print(f"    {msg}")

    def error(self, msg):
        print(f"[!] {msg}", file=sys.stderr)

    def success(self, msg):
        print(f"[+] {msg}")

    # ======================== SMALI PARSING HELPERS ========================

    def read_smali(self, class_name):
        """Read a smali file by class name (e.g. 'ol2' or 'com/deepseek/chat/App')."""
        path = os.path.join(self.smali_dir, class_name + ".smali")
        if not os.path.exists(path):
            # Try smali_classes2
            path = os.path.join(self.decompiled, "smali_classes2", class_name + ".smali")
        if not os.path.exists(path):
            return None
        with open(path, "r", encoding="utf-8") as f:
            return f.read()

    def write_smali(self, class_name, content):
        """Write content to a smali file."""
        path = os.path.join(self.smali_dir, class_name + ".smali")
        if not os.path.exists(path):
            path = os.path.join(self.decompiled, "smali_classes2", class_name + ".smali")
        if self.dry_run:
            self.log(f"DRY RUN: Would write {path}")
            return
        with open(path, "w", encoding="utf-8") as f:
            f.write(content)

    def get_instance_fields(self, content):
        """Extract instance fields from smali content."""
        fields = []
        in_instance = False
        for line in content.split("\n"):
            stripped = line.strip()
            if stripped == "# instance fields":
                in_instance = True
                continue
            if in_instance and stripped.startswith(".field"):
                # .field public final a:Ljava/lang/String;
                match = re.match(r'\.field\s+(?:[\w\s]+\s+)?(\w+):(\S+)', stripped)
                if match:
                    fields.append((match.group(1), match.group(2)))
            elif in_instance and stripped.startswith("# ") and stripped != "# instance fields":
                break
            elif in_instance and stripped.startswith(".method"):
                break
        return fields

    def get_static_fields(self, content):
        """Extract static fields from smali content."""
        fields = []
        in_static = False
        for line in content.split("\n"):
            line = line.strip()
            if line == "# static fields":
                in_static = True
                continue
            if in_static and line.startswith(".field"):
                match = re.match(r'\.field\s+.*\s+(\w+):(.*)', line)
                if match:
                    fields.append((match.group(1), match.group(2)))
            elif in_static and line.startswith("#") and "static" not in line:
                break
        return fields

    def has_companion(self, content):
        """Check if class has a Companion static field (obfuscated or not)."""
        # R8 may keep $Companion or move it to a separate top-level class
        return bool(re.search(r'\.field\s+.*\bCompanion:', content))

    def get_constructors(self, content):
        """Extract constructor methods."""
        constructors = []
        in_method = False
        current = []
        sig = ""
        for line in content.split("\n"):
            if line.strip().startswith(".method") and "<init>" in line:
                in_method = True
                sig = line.strip()
                current = [line]
            elif in_method:
                current.append(line)
                if line.strip() == ".end method":
                    in_method = False
                    constructors.append((sig, "\n".join(current)))
        return constructors

    def get_interfaces(self, content):
        """Get implemented interfaces."""
        return re.findall(r'\.implements\s+(L\S+;)', content)

    # ======================== AUTO-DETECTION ========================

    def detect_json_element_type(self):
        """
        Find the abstract JsonElement class.
        Pattern: abstract class with Companion, no instance fields, 3 subclasses.
        """
        self.log("Detecting JsonElement type...")
        smali_files = glob.glob(os.path.join(self.smali_dir, "*.smali"))

        # Build superclass → subclass mapping
        super_map = {}
        for sf in smali_files:
            basename = os.path.basename(sf).replace(".smali", "")
            with open(sf, "r", encoding="utf-8") as f:
                first_lines = f.read(2000)
            match = re.search(r'\.super\s+L(\S+);', first_lines)
            if match:
                parent = match.group(1)
                if parent not in super_map:
                    super_map[parent] = []
                super_map[parent].append(basename)

        # Find classes with exactly 3 subclasses
        candidates = []
        for parent, children in super_map.items():
            if len(children) == 3:
                content = self.read_smali(parent)
                if content is None:
                    continue
                # Must be abstract
                if ".class public abstract" not in content:
                    continue
                # Must have Companion
                if not self.has_companion(content):
                    continue
                # No instance fields
                inst_fields = self.get_instance_fields(content)
                if len(inst_fields) > 0:
                    continue
                candidates.append(parent)
                self.debug(f"Candidate JsonElement: {parent} (children: {children})")

        if len(candidates) == 1:
            self.json_element_type = candidates[0]
            self.success(f"JsonElement type: {self.json_element_type}")
            return True
        elif len(candidates) > 1:
            self.debug(f"Multiple candidates: {candidates}, using first")
            self.json_element_type = candidates[0]
            self.success(f"JsonElement type: {self.json_element_type}")
            return True
        else:
            self.error("Could not detect JsonElement type")
            return False

    def detect_sse_delta_class(self):
        """
        Find the SSE Delta class (e.g. ol2).
        Pattern:
        - Companion field
        - Exactly 3 instance fields: String, String, <JsonElementType>
        - Constructor: (I, String, String, <JsonElementType>)
        """
        if not self.json_element_type:
            self.error("Need JsonElement type first")
            return False

        self.log("Detecting SSE Delta class...")
        je_type = f"L{self.json_element_type};"
        smali_files = glob.glob(os.path.join(self.smali_dir, "*.smali"))

        candidates = []
        for sf in smali_files:
            with open(sf, "r", encoding="utf-8") as f:
                content = f.read()

            if not self.has_companion(content):
                continue

            inst_fields = self.get_instance_fields(content)
            if len(inst_fields) != 3:
                continue

            # Check field types: String, String, <JsonElement>
            types = [f[1] for f in inst_fields]
            if (types[0] == "Ljava/lang/String;" and
                types[1] == "Ljava/lang/String;" and
                types[2] == je_type):
                basename = os.path.basename(sf).replace(".smali", "")
                candidates.append(basename)
                self.debug(f"Candidate SSE Delta: {basename}")

        if len(candidates) == 1:
            self.sse_delta_class = candidates[0]
            self.success(f"SSE Delta class: {self.sse_delta_class}")
            return True
        elif len(candidates) > 1:
            # Further filter: constructor should have (I, String, String, JsonElement)
            for c in candidates:
                content = self.read_smali(c)
                constructors = self.get_constructors(content)
                for sig, body in constructors:
                    if f"ILjava/lang/String;Ljava/lang/String;{je_type}" in sig:
                        self.sse_delta_class = c
                        self.success(f"SSE Delta class: {self.sse_delta_class}")
                        return True
            self.sse_delta_class = candidates[0]
            self.success(f"SSE Delta class (best guess): {self.sse_delta_class}")
            return True
        else:
            self.error("Could not detect SSE Delta class")
            return False

    def detect_chat_request_class(self):
        """
        Find the Chat Request class (e.g. gz0).
        Pattern:
        - Companion field
        - 10+ instance fields
        - Constructor contains string literal "retry"
        - Implements 1 interface
        """
        self.log("Detecting Chat Request class...")
        smali_files = glob.glob(os.path.join(self.smali_dir, "*.smali"))

        candidates = []
        for sf in smali_files:
            with open(sf, "r", encoding="utf-8") as f:
                content = f.read()

            if not self.has_companion(content):
                continue

            inst_fields = self.get_instance_fields(content)
            if len(inst_fields) < 10:
                continue

            interfaces = self.get_interfaces(content)
            if len(interfaces) != 1:
                continue

            # Check for "retry" string in constructors
            constructors = self.get_constructors(content)
            has_retry = False
            for sig, body in constructors:
                if '"retry"' in body:
                    has_retry = True
                    break

            if has_retry:
                basename = os.path.basename(sf).replace(".smali", "")
                candidates.append(basename)
                self.debug(f"Candidate Chat Request: {basename} ({len(inst_fields)} fields)")

        if len(candidates) == 1:
            self.chat_request_class = candidates[0]
            self.success(f"Chat Request class: {self.chat_request_class}")
            return True
        elif len(candidates) > 1:
            self.debug(f"Multiple candidates: {candidates}")
            self.chat_request_class = candidates[0]
            self.success(f"Chat Request class (first match): {self.chat_request_class}")
            return True
        else:
            self.error("Could not detect Chat Request class")
            return False

    # ======================== PATCHING ========================

    def patch_app_oncreate(self):
        """Inject ChatLogger.init() and OverlayManager.init() into App.onCreate()."""
        self.log("Patching App.smali...")
        content = self.read_smali(self.app_class)
        if content is None:
            self.error(f"App.smali not found at {self.app_class}")
            return False

        # Find onCreate method — look for invoke-super to Application.onCreate
        inject_code = (
            "\n"
            "    # === LAOTO MOD INIT ===\n"
            "    invoke-static {p0}, Lcom/deepseek/chat/mod/ChatLogger;->init(Landroid/content/Context;)V\n"
            "    invoke-static {p0}, Lcom/deepseek/chat/mod/OverlayManager;->init(Landroid/content/Context;)V\n"
            "    # === END LAOTO MOD ===\n"
        )

        # Check if already patched
        if "LAOTO MOD" in content:
            self.log("App.smali already patched, skipping")
            return True

        # Find the invoke-super for onCreate
        pattern = r'(invoke-super\s+\{p0\},\s*Landroid/app/Application;->onCreate\(\)V)'
        match = re.search(pattern, content)
        if not match:
            # Try alternative: invoke-virtual for super.onCreate
            pattern = r'(invoke-super\s+\{.*\},\s*L\S+;->onCreate\(\)V)'
            match = re.search(pattern, content)

        if not match:
            self.error("Could not find onCreate invoke-super in App.smali")
            # Fall back: inject in <init> after invoke-direct to Application.<init>
            pattern = r'(invoke-direct\s+\{p0\},\s*Landroid/app/Application;-><init>\(\)V)'
            match = re.search(pattern, content)
            if not match:
                return False

        # Insert after the matched line
        content = content[:match.end()] + inject_code + content[match.end():]
        self.write_smali(self.app_class, content)
        self.success("App.smali patched")
        return True

    def patch_sse_delta(self):
        """Inject logDeltaJsonWithOp call into SSE delta class constructor."""
        self.log(f"Patching SSE Delta class ({self.sse_delta_class}.smali)...")
        content = self.read_smali(self.sse_delta_class)
        if content is None:
            self.error(f"{self.sse_delta_class}.smali not found")
            return False

        if "LAOTO MOD" in content:
            self.log("SSE Delta already patched, skipping")
            return True

        # Find the constructor and the iput-object for the 3rd field (JsonElement)
        inst_fields = self.get_instance_fields(content)
        if len(inst_fields) < 3:
            self.error("SSE Delta class has fewer than 3 instance fields")
            return False

        # Field names
        op_field = inst_fields[1][0]  # operation type field (b)
        je_field = inst_fields[2][0]  # JsonElement field (c)
        je_type = inst_fields[2][1]   # Type signature

        # Find iput-object for the JsonElement field in constructor
        # Pattern: iput-object p4, p0, L<class>;-><field>:<type>
        field_ref = f"L{self.sse_delta_class};->{je_field}:{je_type}"
        iput_pattern = f"iput-object p4, p0, {re.escape(field_ref)}"

        # If p4 doesn't match, try other register patterns
        match = re.search(iput_pattern, content)
        if not match:
            # Try generic: iput-object <any>, p0, <field_ref>
            iput_pattern = f"iput-object (\\w+), p0, {re.escape(field_ref)}"
            match = re.search(iput_pattern, content)

        if not match:
            self.error(f"Could not find iput-object for {field_ref}")
            return False

        # Determine which register holds the value
        val_reg = "p4"  # Default
        if match.lastindex and match.lastindex >= 1:
            val_reg = match.group(1)

        # Build injection code
        op_field_ref = f"L{self.sse_delta_class};->{op_field}:Ljava/lang/String;"
        inject_code = (
            f"\n"
            f"    # === LAOTO MOD: Log SSE Delta ===\n"
            f"    iget-object v0, p0, {op_field_ref}\n"
            f"    invoke-static {{v0, {val_reg}}}, Lcom/deepseek/chat/mod/ChatLogger;"
            f"->logDeltaJsonWithOp(Ljava/lang/String;Ljava/lang/Object;)V\n"
            f"    # === END LAOTO MOD ===\n"
        )

        content = content[:match.end()] + inject_code + content[match.end():]
        self.write_smali(self.sse_delta_class, content)
        self.success(f"SSE Delta class patched ({self.sse_delta_class})")
        return True

    def patch_chat_request(self):
        """Inject logPrompt call into Chat Request class constructors."""
        self.log(f"Patching Chat Request class ({self.chat_request_class}.smali)...")
        content = self.read_smali(self.chat_request_class)
        if content is None:
            self.error(f"{self.chat_request_class}.smali not found")
            return False

        if "LAOTO MOD" in content:
            self.log("Chat Request already patched, skipping")
            return True

        inst_fields = self.get_instance_fields(content)

        # Find the prompt field (field 'c' — 3rd String field, contains the user message)
        prompt_field = None
        session_field = None
        string_count = 0
        for name, ftype in inst_fields:
            if ftype == "Ljava/lang/String;":
                string_count += 1
                if string_count == 1:
                    session_field = name  # First string = session ID
                elif string_count == 3:
                    prompt_field = name  # Third string = prompt text
                    break

        if not prompt_field:
            self.error("Could not identify prompt field in Chat Request")
            return False

        prompt_ref = f"L{self.chat_request_class};->{prompt_field}:Ljava/lang/String;"

        # Find all iput-object for the prompt field and inject after each
        pattern = re.compile(f"iput-object (\\w+), p0, {re.escape(prompt_ref)}")
        matches = list(pattern.finditer(content))

        if not matches:
            self.error(f"Could not find iput-object for prompt field {prompt_field}")
            return False

        self.debug(f"Found {len(matches)} iput-object for prompt field")

        # Inject in reverse order to preserve offsets
        for match in reversed(matches):
            prompt_reg = match.group(1)

            # Determine session ID register (usually p2 for constructor#1, p1 for constructor#2)
            # We scan backwards from the match to find the session field's iput
            session_ref = f"L{self.chat_request_class};->{session_field}:Ljava/lang/String;"
            pre_content = content[:match.start()]
            session_match = re.search(f"iput-object (\\w+), p0, {re.escape(session_ref)}",
                                      pre_content)
            session_reg = session_match.group(1) if session_match else "p1"

            inject_code = (
                f"\n"
                f"    # === LAOTO MOD: Log Prompt ===\n"
                f"    invoke-static {{{session_reg}, {prompt_reg}}}, "
                f"Lcom/deepseek/chat/mod/ChatLogger;"
                f"->logPrompt(Ljava/lang/String;Ljava/lang/String;)V\n"
                f"    # === END LAOTO MOD ===\n"
            )

            content = content[:match.end()] + inject_code + content[match.end():]

        self.write_smali(self.chat_request_class, content)
        self.success(f"Chat Request class patched ({self.chat_request_class})")
        return True

    def copy_mod_files(self):
        """Copy ChatLogger.smali and OverlayManager*.smali to decompiled APK."""
        self.log("Copying mod files...")
        target_dir = os.path.join(self.smali_dir, "com", "deepseek", "chat", "mod")
        os.makedirs(target_dir, exist_ok=True)

        # Copy ChatLogger.smali
        src_chat = os.path.join(self.mod_dir, "smali", "ChatLogger.smali")
        if os.path.exists(src_chat):
            if not self.dry_run:
                shutil.copy2(src_chat, target_dir)
            self.success(f"Copied ChatLogger.smali")
        else:
            self.error(f"ChatLogger.smali not found at {src_chat}")
            return False

        # Copy OverlayManager*.smali (all inner classes too)
        overlay_dir = os.path.join(self.mod_dir, "smali")
        overlay_files = glob.glob(os.path.join(overlay_dir, "OverlayManager*.smali"))
        if overlay_files:
            for sf in overlay_files:
                if not self.dry_run:
                    shutil.copy2(sf, target_dir)
                self.debug(f"Copied {os.path.basename(sf)}")
            self.success(f"Copied {len(overlay_files)} OverlayManager smali files")
        else:
            self.log("No pre-compiled OverlayManager smali files found (will compile from Java)")

        return True

    def patch_manifest(self):
        """Patch AndroidManifest.xml to add required permissions."""
        self.log("Patching AndroidManifest.xml...")

        if not os.path.exists(self.manifest):
            self.error("AndroidManifest.xml not found")
            return False

        with open(self.manifest, "r", encoding="utf-8") as f:
            content = f.read()

        modified = False

        # Add permissions if not present
        permissions = [
            "android.permission.SYSTEM_ALERT_WINDOW",
            "android.permission.MANAGE_EXTERNAL_STORAGE",
            "android.permission.INTERNET",
        ]

        for perm in permissions:
            if perm not in content:
                # Insert before </manifest>
                perm_line = f'    <uses-permission android:name="{perm}"/>\n'
                content = content.replace("</manifest>", perm_line + "</manifest>")
                modified = True
                self.debug(f"Added permission: {perm}")

        # Add requestLegacyExternalStorage to <application> tag
        if 'requestLegacyExternalStorage' not in content:
            content = content.replace(
                "<application ",
                '<application android:requestLegacyExternalStorage="true" '
            )
            modified = True
            self.debug("Added requestLegacyExternalStorage")

        if modified and not self.dry_run:
            with open(self.manifest, "w", encoding="utf-8") as f:
                f.write(content)
            self.success("AndroidManifest.xml patched")
        elif not modified:
            self.log("AndroidManifest.xml already has all required patches")

        return True

    # ======================== MAIN FLOW ========================

    def load_fallback_config(self):
        """Load patches.json for fallback class names."""
        config_path = os.path.join(self.mod_dir, "patches.json")
        if os.path.exists(config_path):
            with open(config_path, "r") as f:
                return json.load(f)
        return {}

    def run(self):
        """Execute the full patching pipeline."""
        self.log("=" * 60)
        self.log("DeepSeek Auto-Patcher v1.0")
        self.log("=" * 60)

        if not os.path.isdir(self.decompiled):
            self.error(f"Decompiled directory not found: {self.decompiled}")
            return False

        config = self.load_fallback_config()

        # Phase 1: Auto-detect
        self.log("\n--- Phase 1: Auto-Detection ---")

        if not self.detect_json_element_type():
            je = config.get("version_overrides", {})
            for ver, overrides in je.items():
                if "json_element_type" in overrides:
                    self.json_element_type = overrides["json_element_type"]
                    self.log(f"Using fallback JsonElement: {self.json_element_type}")
                    break
            if not self.json_element_type:
                return False

        if not self.detect_sse_delta_class():
            for ver, overrides in config.get("version_overrides", {}).items():
                if "sse_delta_class" in overrides:
                    self.sse_delta_class = overrides["sse_delta_class"]
                    self.log(f"Using fallback SSE Delta: {self.sse_delta_class}")
                    break
            if not self.sse_delta_class:
                return False

        if not self.detect_chat_request_class():
            for ver, overrides in config.get("version_overrides", {}).items():
                if "chat_request_class" in overrides:
                    self.chat_request_class = overrides["chat_request_class"]
                    self.log(f"Using fallback Chat Request: {self.chat_request_class}")
                    break
            if not self.chat_request_class:
                return False

        # Phase 2: Patch
        self.log("\n--- Phase 2: Patching ---")

        if not self.patch_app_oncreate():
            return False
        if not self.patch_sse_delta():
            return False
        if not self.patch_chat_request():
            return False
        if not self.copy_mod_files():
            return False
        if not self.patch_manifest():
            return False

        self.log("\n--- Phase 3: Summary ---")
        self.success("All patches applied successfully!")
        self.success(f"  SSE Delta:    {self.sse_delta_class}")
        self.success(f"  Chat Request: {self.chat_request_class}")
        self.success(f"  JsonElement:  {self.json_element_type}")
        return True


def main():
    parser = argparse.ArgumentParser(description="DeepSeek Auto-Patcher")
    parser.add_argument("decompiled_dir", help="Path to decompiled APK directory")
    parser.add_argument("--mod-dir", help="Path to mod/ directory", default=None)
    parser.add_argument("--verbose", "-v", action="store_true", help="Verbose output")
    parser.add_argument("--dry-run", action="store_true", help="Don't modify files")
    args = parser.parse_args()

    patcher = Patcher(
        decompiled_dir=args.decompiled_dir,
        mod_dir=args.mod_dir,
        verbose=args.verbose,
        dry_run=args.dry_run,
    )

    success = patcher.run()
    sys.exit(0 if success else 1)


if __name__ == "__main__":
    main()
