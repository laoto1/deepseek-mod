# DeepSeek Mod — Laoto Edition

Auto-patched DeepSeek APK with overlay, anti-censorship, and chat history features.

## Features

| Feature | Description |
|---------|-------------|
| **Overlay Bubble** | Glassmorphism floating bubble, draggable |
| **Chat History** | Full chat history browser with Markdown rendering |
| **Anti-Censorship** | Captures SSE responses before DeepSeek deletes them |
| **NSFW Prompts** | Built-in prompt menu, synced from GitHub |
| **Auto-Permission** | Auto-requests Storage + Overlay permissions |
| **Multi-arch** | arm64-v8a, armeabi-v7a, x86, x86_64 |

## Quick Start

### Download

Go to [Releases](../../releases) and download the latest `deepseek-mod.apk`.

### Install

1. Uninstall previous DeepSeek (if signed with different key)
2. Install `deepseek-mod.apk`
3. Grant permissions when prompted
4. Use the floating bubble to access mod features

## How It Works

### Auto-Detection

The patcher uses heuristic pattern matching to find obfuscated class names:

- **SSE Delta class**: 3 instance fields (String, String, JsonElement), has Companion
- **Chat Request class**: 10+ fields, contains "retry" string, implements 1 interface
- **JsonElement type**: Abstract class with exactly 3 subclasses

This means it works across DeepSeek version updates even when class names change.

### Build Pipeline

```
APKMirror → Download APK → Decompile → Auto-detect → Patch → Compile → Sign → Release
```

## Manual Build

### Prerequisites

- Java 17+
- Android SDK (platform 34)
- Python 3.11+ with `requests`, `beautifulsoup4`

### Build locally

```bash
# Download APK
python3 mod/scrape_apkmirror.py --output work/deepseek-original.apk

# Decompile
java -jar tools/apktool.jar d work/deepseek-original.apk -o work/decompiled -f

# Patch
python3 mod/patcher.py work/decompiled --mod-dir mod --verbose

# Compile OverlayManager
ANDROID_JAR=$ANDROID_HOME/platforms/android-34/android.jar
javac -source 8 -target 8 -bootclasspath $ANDROID_JAR -classpath $ANDROID_JAR \
  -d work/classes mod/java/OverlayManager.java
d8 --output work/dex --lib $ANDROID_JAR work/classes/com/deepseek/chat/mod/*.class
java -jar tools/baksmali.jar d work/dex/classes.dex -o work/smali_overlay
cp work/smali_overlay/com/deepseek/chat/mod/OverlayManager*.smali \
  work/decompiled/smali/com/deepseek/chat/mod/

# Rebuild
java -jar tools/apktool.jar b work/decompiled -o work/unsigned.apk -f
zipalign -f 4 work/unsigned.apk work/aligned.apk
apksigner sign --ks keystore/mod.jks --ks-pass pass:YOUR_PASS \
  --out deepseek-mod.apk work/aligned.apk
```

## GitHub Actions Setup

1. Fork this repo
2. Add GitHub Secrets:
   - `KEYSTORE_B64`: `base64 -w0 mod.jks`
   - `KEYSTORE_PASS`: keystore password
3. Trigger workflow manually or wait for daily cron (1PM Vietnam time)

## Known Version Mappings

| Version | SSE Delta | Chat Request | JsonElement |
|---------|-----------|-------------|-------------|
| 2.3.6 | `ol2` | `gz0` | `xg4` |

## License

For personal use only.
