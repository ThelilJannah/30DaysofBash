#!/bin/bash

# Script: day06.sh
# Description: This script demonstrates basic Bash scripting concepts.
# Author: TH3LILJ4NN47
# Date: 2024-12-05

echo "Starting the script..."

echo "1. Print Greeting."
echo "2. Countdown number."
echo "3. Generate a random number."
read -p "Choose one of the above function to run: " func

Greeting="Hello, $1."

print_greeting(){
    echo "$Greeting"
}

countdown(){
    local count=$1
    if test $count -le 0
        then 
            echo "Positive integers only."
    else
        echo "Counting down from $MAX_COUNT"
        while [ $count -gt 0 ]; do
            echo $count
            count=$(($count - 1))
            sleep 1
        done
        echo "Blast off!"
        
        
    fi
}



randomNum(){
    rand=$(($RANDOM%11))
    echo "Random number: $(($rand + 1))"
}

if test "$func" = 1; then
    print_greeting
elif test "$func" = 2; then
    read -p "Enter a number: " MAX_COUNT
    countdown $MAX_COUNT
else
    randomNum
fi



echo

sleep 2



cat $0 > save.txt
cat save.txt


