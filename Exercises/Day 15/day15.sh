#!/bin/bash


trap 'echo "Error on line $LINENO"' ERR 
name = "J" 2>/dev/null

error(){
	echo "Error: $1" 
}

cat test 2>/dev/null || error "This is not a file."

read -p "Enter a directory: " dir
if [[ -d "$dir" ]]; then
	case $? in
	1) echo "Error: " ;;
	2) echo "Error: No write permission" ;;
	*) echo "Directory Exists" ;;
	esac
fi
