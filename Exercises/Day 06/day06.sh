#!/usr/bin/bash


echo "1"



echo "----------------------"

#2
read -p "Enter a number: " n
facto=1
factorial(){
    if test $1 -le 1; then
        echo 1
    else
        facto=$(( $(factorial $(($1 - 1))) * $1 ))
        echo $facto
    fi
}

result=$(factorial $n)

echo "$n! is $result"

echo "----------------------"
#3
read -p "Enter a filename: " filename
readfile(){
    lines=$(wc -l < $1)
    words=$(wc -c < $1)
    chars=$(wc -m < $1)
    echo "$1 contains $lines lines."
    echo "$1 contains $words words."
    echo "$1 contains $chars characters."
}

val=$(readfile $filename)
echo $val

#5
read -p "Enter a length: " len
reg='[a-zA-Z0-9!@#$%^&*(),.?":{}|<>_+\\/-]'
password_gen(){
    for i in {1..$1}; do
        rand=$(($RANDOM%=~$reg))
        echo -n "$rand"

    done
}

password_gen $len
