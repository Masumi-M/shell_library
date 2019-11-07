#!/bin/bash

# ===== Memo =====
# Setup: Give Permission by `chmod 755 PrintImage.sh`
# Info: Print the image in the current directory that has the extension of `jpg`.

echo -e "\n===== start ====="

# Set Parameter
printerName="Brother_MFC_J855DN"

# Show Printer Info
printerList="$(lpstat -s)"
ppdFileDir="/etc/cups/ppd/"
ppdFile="$printerName.ppd"
ppdFileList="$(ls $ppdFileDir)"

echo -e ">> printerList \n$printerList \n"
echo -e ">> ppdFileList \n$ppdFileList \n"
echo -e ">> $ppdFile \nCheck the TextEdit file.\n"
$(open -a TextEdit $ppdFileDir$ppdFile)

# Get jpg file (current directory) / Print out the image
currentPath="$(pwd)"
for file in $(find $currentPath -name "*.jpg" -print); do
    fileNameExt="${file##*/}"
    fileName="${fileNameExt%.*}"
    ext="${file##*.}"
    dir="${file%/*}"

    echo -e ">> file \n$file \n$fileNameExt \n"

    $(lpr $file) # default printer
    # `lpr -P $printerName $file`    # custom printer
    # `lpr -P $printerName $file -o PageSize=Postcard.Fullbleed`    # custom printer with option

done

echo -e "===== complete ===== \n"
exit 0
