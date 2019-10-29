#!/bin/bash

# ===== Memo =====
# Give Permission by `chmod 755 OpenImage.sh`
# Info Prints the JPG image that is inside the current directory

fileNameRE="*.jpg"
currentPath="`pwd`"
for file in `find $currentPath -name "${fileNameRE}" -print`; do
    fileNameExt="${file##*/}"
    fileName="${fileNameExt%.*}"
    ext="${file##*.}"
    dir="${file%/*}"
    `open "${currentPath}/${fileName}.${ext}"`
done

echo "===== start ====="
echo "pwd: $currentPath"
echo "fileNameExt: $fileNameExt"
echo "fileName: $fileName"
echo "ext: $ext"
echo "dir: $dir"
echo "===== complete ====="
exit 0