#!/bin/bash

grep -oE "\([0-9]{4}\) [0-9]{3}-[0-9]{4}" number_regex.txt > numbers.txt
cat numbers.txt

echo

cat html.txt
sed -E 's/<HTML>//g' html.txt

echo 

read -s -p "Enter a password: " pass
regex="/^(?=.+[a-z])(?=.+[A-Z])[a-zA-Z0-9]{8,}$"
echo 
echo "$pass"
if [[ "$pass" =~ $regex ]]; then
	echo "Password's fine."
else
	echo  "Enter another password."
fi