#!/usr/bin/bash

echo "1"

read -p "Enter something: " input

echo "$input" > user_input.txt

echo "Saved into user_input.txt."

echo "---------------"
echo "2"

touch num.txt
echo "10" > num.txt
echo "5" > num.txt

echo "Saved into num.txt"

sort num.txt > sorted.txt
echo "num.txt sorted and saved into sorted.txt"
cat sorted.txt

echo "---------------"
echo "3"

ls > day08files.txt && cat day08files.txt

echo "---------------"
echo "4"

cat << br > index.html
<!DOCTYPE>
<html>
  <head>
    <title>Bash Commands</title>
   </head>

 </html>

br

echo "Saved into index.html."

echo "---------------"
echo "5"

ls Day\ 09 2> error.log

echo "Saved into error.log."