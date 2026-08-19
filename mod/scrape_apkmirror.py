#!/usr/bin/env python3
"""
APKMirror Scraper for DeepSeek APK
Downloads the latest universal APK variant from APKMirror.
"""

import argparse
import os
import re
import sys

import requests
from bs4 import BeautifulSoup

BASE_URL = "https://www.apkmirror.com"
APP_PAGE = "/apk/deepseek/deepseek-ai-assistant/"
HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
                  "(KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.5",
    "Referer": "https://www.apkmirror.com/",
}


def get_soup(url):
    """Fetch page and return BeautifulSoup object."""
    resp = requests.get(url, headers=HEADERS, timeout=30)
    resp.raise_for_status()
    return BeautifulSoup(resp.text, "html.parser")


def get_latest_version():
    """
    Scrape the app page to find the latest version.
    Pattern: deepseek-ai-assistant-X-X-X-release
    """
    soup = get_soup(BASE_URL + APP_PAGE)
    release_links = soup.find_all("a", href=re.compile(r"deepseek-ai-assistant-[\d-]+-release"))

    if not release_links:
        raise RuntimeError("Could not find any release links on APKMirror page")

    versions = {}
    for link in release_links:
        href = link["href"]
        match = re.search(r"deepseek-ai-assistant-([\d-]+)-release", href)
        if match:
            ver_slug = match.group(1)
            ver_str = ver_slug.replace("-", ".")
            ver_tuple = tuple(int(x) for x in ver_str.split("."))
            versions[ver_tuple] = (ver_str, href)

    if not versions:
        raise RuntimeError("Could not parse version numbers from release links")

    latest = max(versions.keys())
    ver_str, release_href = versions[latest]
    print(f"[*] Latest version: {ver_str}")
    return ver_str, release_href


def get_download_page(release_href):
    """
    From the release page, find the universal APK download link.
    Priority: universal > arm64+x86+x86_64 > arm64 only
    """
    soup = get_soup(BASE_URL + release_href)
    variant_rows = soup.find_all("div", class_="table-row")

    best_link = None
    best_priority = -1

    for row in variant_rows:
        row_text = row.get_text()
        if "XAPK" in row_text or "Bundle" in row_text:
            continue

        priority = 0
        if "universal" in row_text.lower() or (
            "arm64-v8a" in row_text and "armeabi-v7a" in row_text
            and "x86" in row_text and "x86_64" in row_text
        ):
            priority = 4
        elif "arm64-v8a" in row_text and "x86" in row_text:
            priority = 3
        elif "arm64-v8a" in row_text:
            priority = 1

        if priority > best_priority:
            link = row.find("a", href=re.compile(r"deepseek"))
            if link and link.get("href"):
                best_link = link["href"]
                best_priority = priority

    if not best_link:
        download_btn = soup.find("a", class_="downloadButton")
        if download_btn and download_btn.get("href"):
            best_link = download_btn["href"]

    if not best_link:
        raise RuntimeError("Could not find download link on release page")

    print(f"[*] Selected variant (priority={best_priority})")
    return best_link


def get_actual_download_url(download_page_href):
    """Navigate APKMirror's multi-step download flow to get the real URL."""
    soup = get_soup(BASE_URL + download_page_href)

    download_btn = soup.find("a", class_="downloadButton")
    if not download_btn:
        download_btn = soup.find("a", string=re.compile(r"Download APK", re.I))

    if download_btn and download_btn.get("href"):
        dl_href = download_btn["href"]
        if not dl_href.startswith("http"):
            dl_href = BASE_URL + dl_href

        if "/download/" in dl_href:
            soup2 = get_soup(dl_href)
            final = soup2.find("a", id="download-link")
            if not final:
                final = soup2.find("a", attrs={"rel": "nofollow"}, href=re.compile(r"\.apk"))
            if not final:
                final = soup2.find("a", href=re.compile(r"download\.php|\.apk"))
            if final and final.get("href"):
                url = final["href"]
                return url if url.startswith("http") else BASE_URL + url

        return dl_href

    raise RuntimeError("Could not find actual download URL")


def download_apk(url, output_path):
    """Download APK with progress."""
    print(f"[*] Downloading: {url}")
    resp = requests.get(url, headers=HEADERS, stream=True, timeout=300)
    resp.raise_for_status()

    total = int(resp.headers.get("content-length", 0))
    downloaded = 0

    with open(output_path, "wb") as f:
        for chunk in resp.iter_content(chunk_size=8192):
            f.write(chunk)
            downloaded += len(chunk)
            if total > 0:
                pct = downloaded * 100 // total
                mb_dl = downloaded // 1048576
                mb_total = total // 1048576
                print(f"\r[*] Progress: {pct}% ({mb_dl}MB / {mb_total}MB)", end="", flush=True)

    size_mb = os.path.getsize(output_path) // 1048576
    print(f"\n[+] Downloaded: {output_path} ({size_mb}MB)")


def main():
    parser = argparse.ArgumentParser(description="Download latest DeepSeek APK from APKMirror")
    parser.add_argument("--output", "-o", default="work/deepseek-original.apk", help="Output path")
    parser.add_argument("--version-only", action="store_true", help="Only print latest version")
    args = parser.parse_args()

    try:
        ver_str, release_href = get_latest_version()

        if args.version_only:
            print(ver_str)
            return

        download_page = get_download_page(release_href)
        download_url = get_actual_download_url(download_page)

        os.makedirs(os.path.dirname(args.output) or ".", exist_ok=True)
        download_apk(download_url, args.output)

        ver_file = os.path.join(os.path.dirname(args.output) or ".", "version.txt")
        with open(ver_file, "w") as f:
            f.write(ver_str)

        print(f"[+] DeepSeek v{ver_str} downloaded successfully!")

    except Exception as e:
        print(f"[!] Error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
