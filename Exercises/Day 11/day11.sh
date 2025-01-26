#!/bin/bash

echo "Exercise one."
echo "colors" > color.txt
echo "Blue is a color" >> color.txt
echo "Red is also a color" >> color.txt

cat color.txt
echo
echo "Replacing stand alone 'color' with 'colour:' "
sed 's/\bcolor\b/colour/g' color.txt

echo
echo "-------------------------"
echo "Exercise two."
grep DEBUG day10.sh
echo
echo "Commenting out lines that begin with DEBUG:"
sed -i 's/^DEBUG/#DEBUG/g' day10.sh
sed -n '/DEBUG/p' day10.sh

echo
echo "-------------------------"
echo "Exercise three."
cat number_regex.txt
echo
echo
echo "First two words switched:"
sed -n 's/^\(\S\+\) \(\S\+\).*/\2 \1/p' number_regex.txt



html="<(\S?)[^>]>.?|<.*?/>"

#sed '/$html/d' index.html
#sed -n '/\(\d{4}\) \d{3}-\d{4}/d' number_regex.txt
