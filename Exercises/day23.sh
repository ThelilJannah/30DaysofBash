#!/bin/bash
git add .

read -p "Enter commit message: " message
git commit -m "$msg"

git pull
git push


git tag -a v1.0 -m "Version 2.0"
