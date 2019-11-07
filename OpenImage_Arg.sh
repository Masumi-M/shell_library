#!/bin/bash

# ===== Memo =====
# Setup: Give Permission by `chmod 755 OpenImage_Arg.sh`
# Info: Opens the image in the current directory that has the extension of `png`.
# Arg: 1=>keyword(required) / 2=>relative_path(default: ./) / 3=> extention(default: png)

echo "===== start ====="

if [ -z "$1" ]; then
    echo "No Argument."
else
    echo "Arg1 (keyword): $1"
    keyword=$1

    if [ -z "$2" ]; then
        relative_path=""
    else
        relative_path="$2"
    fi
    echo "Arg2 (relative-path): $relative_path"

    if [ -z "$3" ]; then
        extension="png"
    else
        extension="$3"
    fi
    echo -e "Arg3 (extention): $extension \n"

    fileNameRE="*$keyword*.$extension"
    currentPath="$(pwd)"
    echo "pwd: $currentPath"
    dataPath="$(pwd)/$2"
    echo "dataPath: $dataPath"

    for file in $(find $dataPath -name "${fileNameRE}" -print); do
        fileNameExt="${file##*/}"
        fileName="${fileNameExt%.*}"
        ext="${file##*.}"
        dir="${file%/*}"
        $(open "${dataPath}/${fileName}.${ext}")
    done
    echo "fileNameExt: $fileNameExt"
    echo "fileName: $fileName"
    echo "ext: $ext"
    echo "dir: $dir"
fi

echo "===== complete ====="
exit 0
