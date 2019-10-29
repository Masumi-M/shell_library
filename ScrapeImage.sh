#!/bin/bash

# ===== Memo =====
# Setup1: Give Permission by `chmod 755 ScrapeImage.sh`
# Setup2: Install wget before execution (`brew install wget`)
# Info: Scrapes the image from the browser and printout.

currentPath="`pwd`"
downloadLink="https://www.umi-mori.jp/Resource/img/profile.png"
wget -v $downloadLink

echo "===== start ====="
echo "pwd: $currentPath"
echo "downloadLink: $downloadLink"
echo "===== complete ====="
exit 0