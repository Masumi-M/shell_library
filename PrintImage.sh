#!/bin/bash

# ===== Memo =====
# Give Permission by `chmod 755 PrintImage.sh`
# Info: Print the image in the current directory that has the extension of `jpg`.

currentPath="`pwd`"
printerList="`lpstat -s`"
printerName="sample_printer"

for file in `find $currentPath -name "*.jpg" -print`; do
    fileNameExt="${file##*/}"
    fileName="${fileNameExt%.*}"
    ext="${file##*.}"
    dir="${file%/*}"
    # `lpr -p printerName $file`    # custom printer
    `lpr $file` # default printer
done

echo "===== start ====="
echo "pwd: $currentPath"
echo "fileNameExt: $fileNameExt"
echo "fileName: $fileName"
echo "ext: $ext"
echo "dir: $dir"
echo "printerList: $printerList"
echo "===== complete ====="
exit 0