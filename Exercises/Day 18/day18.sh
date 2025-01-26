#!/bin/bash

#Saves all variables in PATH into an array then prints each on a diff line.
paths=$PATH 
for dir in "${paths[@]}"; do
	echo "$dir"
	echo
done

echo

#Creates an env var to store temp files.
touch temp.txt
export tempfiles="./temp"
mv temp.txt $tempfiles

echo

read -p "Enter an environment variable: " environ

if [[ -z ${!environ} ]]; then
	echo "Doesn't exist, creating..."
	sleep 1
	export "$environ"="Test"
	printenv "$environ"
else
	printenv "$environ"
fi

echo

#Lists all env vars, sorts them alphabetically and saves the result into output.txt
env | sort > output.txt 

