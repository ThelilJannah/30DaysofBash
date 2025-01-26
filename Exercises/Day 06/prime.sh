#!/bin/bash


prime(){
	local count=0
	if test $1 -gt 1; then
    	for((i=2; i <= $(($1 / 2)); i++)); do
        	if test $(($1 % i)) -eq 0; then
            	#echo "$1 is not prime."
            	count+=1
        	fi

    	done
    	
   	if test $count -eq 0; then
   		echo "$1 is prime."
   	else
   		echo "$1 is not prime."

   	fi

    else
    	echo "$1 is not prime."
    	exit
    fi
}

read -p "Enter a number: " n
prime $n

