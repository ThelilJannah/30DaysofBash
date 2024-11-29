#!/bin/bash

#Create a directory structure.
cd ~
mkdir project
cd project
mkdir docs src tests
touch docs/README.md src/README.md tests/README.md
cd ~

#Nav practice.
cd project/src
ls
cd ..
ls -l

#File manipulation.
touch todo.txt
echo "Complete Bash scripting course." > todo.txt
cat todo.txt
cp todo.txt docs
mv docs/todo.txt docs/tasks.txt

#Search & Display
cd ~
find project/ -name "README.md"
cd project
grep "Complete" *.txt

#Cleanup
rm -r tests
mv docs/tasks.txt src








