#!/bin/bash

# ===== Memo =====
# Setup1: Give Permission by `chmod 755 ScrapeImage.sh`
# Setup2: Install wget before execution (`brew install wget`)

# Info
# 1. Scrapes the image from the browser.
# 2. Open the image that was scraped.
# 3. Print out image.

# Setpatameter
currentPath="`pwd`"
downloadLink="https://www.umi-mori.jp/Resource/img/profile.png" # edit the browser path
wget -v $downloadLink

echo "===== start ====="
echo "pwd: $currentPath"
echo "downloadLink: $downloadLink"
echo "===== complete ====="
exit 0