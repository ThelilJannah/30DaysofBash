#!/bin/bash
#set -v
set -e

#
trap 'echo "Error on li1ne $LINENO"' ERR

#2
set -x
name = "Jay"
set +x

echo "-----------------"
echo

#3
name="Jannah"
if [[ $1 == "-x" ]]; then
	echo "Debug: Variable value is $name"
fi

echo "-----------------"

echo "Hello"

echo "-----------------"

echo 

#4
shellcheck "$0"