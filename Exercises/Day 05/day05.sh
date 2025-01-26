#!/bin/bash

#1
echo "Exercise 1"
echo "-------------------"
read -p "Enter a number: " num
for ((j=1; j<=12; j++))
    do
        echo -n "$(($j*$num)) "
done

#2
echo
echo "Exercise 2"
echo "-------------------"

echo
guess=3
while read -p "Guess a number between 1-10: " g
do
    if test $g -lt $guess
    then
        echo "Your guess is low."
        continue
    elif test $g -gt  $guess
    then
        echo "Your guess is high."
        continue
    else
       echo "You guessed correctly!"
       break
    fi
done


#4
echo
echo "Exercise 4"
echo "-------------------"

read -p "Enter a number: " number
factorial=1
count=1
while [ $count -le $number ]
do
    factorial=$((factorial * count))
    #factorial*=$count
    ((count++))
done
echo "$number! is $factorial"


#5
echo
echo "Exercise 5"
echo "-------------------"

for i in {1..5}
do
    for j in {1..5}
    do
        echo -n "$((i * j))  "
    done
echo
done
