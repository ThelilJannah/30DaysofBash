#!/bin/bash

echo "Exercise One."
echo
fav_books=("Born on a Tuesday", "A Thousand Splendid Suns", "Yinka, where's your husband?")

for i in "${fav_books[@]}"; do
	echo "$i"
done

echo "----------------"
echo "Exercise Two."
echo

cmdArgs=("$@")

for i in "${!cmdArgs[@]}"; do
	echo "$i. ${cmdArgs[$i]}"
done

echo "----------------"
echo "Exercise Three."
echo

arr=(5 9 10 10 10 12 20)

unique(){
	unique_arr=($(printf '%s\n' "${arr[@]}" | sort -u))

	for i in "${unique_arr[@]}"; do
		echo "$i"
	done
}

unique

echo "----------------"
echo "Exercise Four."
echo

touch somefile.txt
echo "Hello" > somefile.txt
echo "This is some file." >> somefile.txt

declare -a file

while read -r line; do
  file+=("$line")
done <somefile.txt

for i in "${file[@]}"; do
	echo "${i^^}"
done


echo "----------------"
echo "Exercise Five."
echo

declare -A someArray

someArray[country]="Japan"
someArray[capital]="Tokyo"

echo ${someArray[capital]}