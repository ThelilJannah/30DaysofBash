#!/bin/bash
#3
cd ~
echo
echo "Exercise 3"
echo "-------------------"
read -p "Enter a directory path: " folder
if test -d "$folder"
then
    #content=$(ls -1 "$folder")
    for i in "$folder"/*; do
        filename=$(basename "$i")
        size=$(du -sh "$i")
        echo "Filename: $filename | Size: $size"
    done
else
   echo "Not a folder."
fi

