#!/usr/bin/env python3
"""
DeepSeek APK Scraper & Merger
Downloads the latest APK / XAPK from APKCombo and merges split APKs into a single universal standalone APK.
"""

import argparse
import os
import re
import shutil
import sys
import tempfile
import urllib.parse
import zipfile

import requests
from bs4 import BeautifulSoup

APKCOMBO_BASE = "https://apkcombo.com"
APP_PAGE = "/deepseek/com.deepseek.chat/"
DOWNLOAD_PATH = "/deepseek-ai-assistant/com.deepseek.chat/download/apk"

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
                  "(KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.5",
    "Referer": "https://apkcombo.com/",
}


def get_latest_version():
    """Get the latest version string from APKCombo."""
    resp = requests.get(APKCOMBO_BASE + APP_PAGE, headers=HEADERS, timeout=30)
    resp.raise_for_status()
    soup = BeautifulSoup(resp.text, "html.parser")

    for a in soup.find_all("a", href=re.compile(r"download/apk")):
        text = a.get_text(strip=True)
        match = re.search(r"(\d+\.\d+\.\d+)", text)
        if match:
            ver = match.group(1)
            print(f"[*] Latest version: {ver}")
            return ver

    title = soup.find("title")
    if title:
        match = re.search(r"(\d+\.\d+\.\d+)", title.get_text())
        if match:
            return match.group(1)

    raise RuntimeError("Could not detect version from APKCombo")


def get_download_url_and_session():
    """Perform checkin handshake with APKCombo to get the valid signed download URL."""
    session = requests.Session()
    session.headers.update(HEADERS)

    # Step 1: Visit download page
    url = APKCOMBO_BASE + DOWNLOAD_PATH
    print(f"[*] Visiting download page: {url}")
    resp = session.get(url, timeout=30)
    resp.raise_for_status()
    soup = BeautifulSoup(resp.text, "html.parser")

    variant_a = soup.find("a", class_="variant")
    if not variant_a or not variant_a.get("href"):
        raise RuntimeError("Could not find download variant link on APKCombo")

    orig_href = variant_a["href"]

    # Step 2: Checkin handshake to get token query
    print("[*] Performing APKCombo checkin handshake...")
    checkin_resp = session.post(f"{APKCOMBO_BASE}/checkin", timeout=30)
    token_query = checkin_resp.text.strip()
    print(f"[*] Checkin token received: {token_query}")

    # Step 3: Construct full download URL
    final_url = f"{APKCOMBO_BASE}{orig_href}&{token_query}&package_name=com.deepseek.chat&lang=en"
    return session, final_url


def merge_xapk_to_standalone_apk(xapk_path, output_apk_path):
    """
    Extract base APK and merge all architecture native libs (lib/*)
    and resources from split APKs into a single universal APK.
    """
    print(f"[*] Merging XAPK bundle into universal APK...")
    temp_dir = tempfile.mkdtemp(prefix="deepseek_xapk_")
    try:
        with zipfile.ZipFile(xapk_path, "r") as z:
            z.extractall(temp_dir)

        base_apk = os.path.join(temp_dir, "com.deepseek.chat.apk")
        if not os.path.exists(base_apk):
            # Try to find base.apk or the largest apk
            apks = [f for f in os.listdir(temp_dir) if f.endswith(".apk")]
            if not apks:
                raise RuntimeError("No APK files found inside XAPK bundle")
            apks.sort(key=lambda x: os.path.getsize(os.path.join(temp_dir, x)), reverse=True)
            base_apk = os.path.join(temp_dir, apks[0])

        print(f"[*] Base APK identified: {os.path.basename(base_apk)}")

        # Create output APK by copying base APK and adding all native libs from config.*.apk
        shutil.copy2(base_apk, output_apk_path)

        with zipfile.ZipFile(output_apk_path, "a", compression=zipfile.ZIP_DEFLATED) as out_zip:
            existing_files = set(out_zip.namelist())
            for item in os.listdir(temp_dir):
                if item.startswith("config.") and item.endswith(".apk"):
                    cfg_path = os.path.join(temp_dir, item)
                    with zipfile.ZipFile(cfg_path, "r") as cfg_zip:
                        for entry in cfg_zip.infolist():
                            # Copy native libs (lib/arm64-v8a/*, etc.)
                            if entry.filename.startswith("lib/") and entry.filename not in existing_files:
                                out_zip.writestr(entry.filename, cfg_zip.read(entry.filename))
                                existing_files.add(entry.filename)
                                print(f"    + Added native lib: {entry.filename}")

        print(f"[+] Successfully merged into standalone universal APK: {output_apk_path}")
    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)


def download_and_extract(output_path):
    """Download package and ensure it's a valid standalone APK."""
    session, download_url = get_download_url_and_session()

    raw_download_path = output_path + ".tmp"
    os.makedirs(os.path.dirname(output_path) or ".", exist_ok=True)

    print(f"[*] Streaming package from: {download_url[:100]}...")
    resp = session.get(download_url, stream=True, timeout=300, allow_redirects=True)
    resp.raise_for_status()

    total = int(resp.headers.get("content-length", 0))
    downloaded = 0

    with open(raw_download_path, "wb") as f:
        for chunk in resp.iter_content(chunk_size=65536):
            if chunk:
                f.write(chunk)
                downloaded += len(chunk)
                if total > 0:
                    pct = downloaded * 100 // total
                    mb_dl = downloaded // 1048576
                    mb_tot = total // 1048576
                    print(f"\r[*] Progress: {pct}% ({mb_dl}MB / {mb_tot}MB)", end="", flush=True)

    print(f"\n[+] Package downloaded successfully ({os.path.getsize(raw_download_path) // 1048576}MB)")

    # Check if downloaded file is an XAPK (zip containing multiple APKs)
    is_xapk = False
    try:
        with zipfile.ZipFile(raw_download_path, "r") as z:
            names = z.namelist()
            if any(n.endswith(".apk") for n in names):
                is_xapk = True
    except Exception:
        pass

    if is_xapk:
        merge_xapk_to_standalone_apk(raw_download_path, output_path)
        os.remove(raw_download_path)
    else:
        if os.path.exists(output_path):
            os.remove(output_path)
        os.rename(raw_download_path, output_path)

    print(f"[+] Final Standalone APK ready at: {output_path} ({os.path.getsize(output_path) // 1048576}MB)")


def main():
    parser = argparse.ArgumentParser(description="Download latest DeepSeek APK / XAPK and build standalone APK")
    parser.add_argument("--output", "-o", default="work/deepseek-original.apk", help="Output path")
    parser.add_argument("--version-only", action="store_true", help="Only print latest version")
    args = parser.parse_args()

    try:
        ver_str = get_latest_version()

        if args.version_only:
            print(ver_str)
            return

        download_and_extract(args.output)

        ver_file = os.path.join(os.path.dirname(args.output) or ".", "version.txt")
        with open(ver_file, "w", encoding="utf-8") as f:
            f.write(ver_str)

        print(f"[+] DeepSeek v{ver_str} prepared successfully!")

    except Exception as e:
        print(f"[!] Error: {e}", file=sys.stderr)
        import traceback
        traceback.print_exc()
        sys.exit(1)


if __name__ == "__main__":
    main()
