#!/bin/bash

#1
echo "Exercise 1"
echo "----------"
read -p "Enter a number: " num
if test $num -eq 0
then
    echo "You entered zero."
elif test $num -le 0
then
    echo "You entered a negative number."
else
    echo "You entered a positive number."
fi

#2
echo "Exercise 2"
echo "----------"
read -p "Enter path to a file: " file
if test -e "$file"
then
    cat "$file"
else
    touch "$file" && echo "Hello" >  "$file"
fi

#3
echo "Exercise 3"
echo "----------"
a=$1
b=$2

if test $a -gt $b
then
    echo "First number is greater than the second."
elif test $a -lt $b
then
    echo "First number is lesser than the second."
else
    echo "The numbers are equal."
fi


#4
echo "Exercise 4"
echo "----------"
filename=$0
if test -w $filename
then
    echo "You have write permission."
else
    echo "You don't have write permission."
fi

#5
echo "Exercise 5"
echo "----------"
read -p "Enter your name: " name
read -p "Enter your age: " age

if test $age -ge 18 && test $name="Admin"
then
    echo "Access granted."
else
    echo "Access denied."
fi
