#!/bin/bash


#1
read -p "Enter an excel filename: " filename
echo "----------------"
cat $filename
echo "----------------"
echo
cat $filename | awk -F ","  '{sum += $1} END {print "Sum = ", sum} END {print "Average = ", sum/(NR - 1)}'
echo

#2 - Print out emails in a text.
echo "----------------"
cat somefile.txt
echo "----------------"
echo
echo "Only emails:"
awk '/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/ {print $0}' somefile.txt
echo

#3 - Print out contents of a file if the second field is greater than 50
read -p "Enter excel file name: " file 
echo

echo "----------------"
head -5 $file
echo "----------------"
echo
echo "Checking to see if second field is greater than 50... Fields if true, blank if false."
head $file | awk -F ',' 'length($2) > 50 {print}'



