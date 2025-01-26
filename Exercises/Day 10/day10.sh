#!/bin/bash
: string="Hello" << "Done"
echo ${#string}
echo ${string:2:2}
echo ${string/ello/i}

string2="The year is 2024"
if [[ $string2 =~ [0-9]{4} ]]; then
	echo "Year found: ${BASH_REMATCH}"
fi
Done


echo "Exercise one."
echo "---------------"
read -p "Enter some sentence: " sentence

IFS=" " read -ra words <<< "$sentence"
index=$(( ${#sentence} -1  ))
for ((i=$index; i >= 0; i--)); do
	echo -n "${words[$i]} " 
done

echo
echo "Exercise two."
echo "---------------"

read -p "Enter some words: " someWords

vowel_count(){
	local word=$@
	local count=0
	for((i=0; i<${#word}; i++)); do
		char="${word:i:1}"
		if [[ $char =~ [aeiouAEIOU] ]]; then
			((count++))
		fi
	done

	echo "There are $count vowels in $word"

}

vowel_count $someWords


echo
echo "Exercise three."
echo "---------------"

echo "processed_$1"

echo
echo "Exercise four"
echo "---------------"

read -p "Enter a word: " rawWord

rawWord_low=${rawWord,,}

isPalindrome(){
	local reversed=""
	for (( i=${#1}-1; i>=0; i-- )); do
 	   reversed+="${1:i:1}"
	done

	

	if [[ $1 == $reversed ]]; then
		echo "$2 is a palindrome"
	else
		echo "$2 is not a palindrome."
	fi
}

isPalindrome $rawWord_low $rawWord