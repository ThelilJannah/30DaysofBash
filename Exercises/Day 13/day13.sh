#!/bin/bash

#1
#: << EOF 
read -p "Enter a file name: " file
chmod -x $file
if [[ -x $file ]]; then
	echo "File is executable."
else
	echo "Making it executable..."
	sleep 2
	chmod +x "$file"
	echo "Now executable."
	
fi
#EOF

echo "------------"
echo


#2
files="*.txt*"	
chmod u-r $files
ls
echo "------------"
echo
ls -la ./*.txt*
echo "------------"
echo "Adding read permission for users to txt files..."
echo
chmod -R u=r $files
ls -la ./*.txt*
echo "------------"
echo

#3
stat -c "%n %A %a" $1 
#%n prints the filename, %A and %n print symbolic and numeric permissions respectively.

echo "------------"
echo


#4
read -p "Enter a folder path: " folder
if [[ -w $folder ]]; then
	chown $(whoami):users "$folder"
	echo "Set."
else
	echo "You don't have write permission for $folder."
fi

#5
read -p "Enter another folder path: " folder2
isroot=$(ls -la | awk '{print $3}')
if [[ -x $folder2 && $isroot=="root" ]]; then
	sudo chmod 4744 $folder2
	echo "Done."
else
	echo "You are not root!"
fi