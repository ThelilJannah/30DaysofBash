#!/bin/bash
 if test $# -eq 0; then
 	echo "No arguments provided."
 	exit 1
 else
 	echo "Sum: " $(($1 + $2))
 	echo "Diff: " $(($1 - $2))
 	echo "Product: " $(($1 * $2))
 	echo "Qoutient: " $(($1 / $2))
 fi


 read -p "Enter a directory path: " dir
 if [[ ${#dir} < 1 ]]; then
 	dir="." 
 fi

 ls $dir

 for arg in "$@"; do
 	echo -n "$arg "
 done
 



