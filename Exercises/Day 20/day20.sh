#!/bin/bash

echo "$((RANDOM % 60)) 1-5 * * * ./bash_scripts/Exercises/Day\ 20/test_script.sh" >> crontab -e

#echo "* * 29-31 * *"
