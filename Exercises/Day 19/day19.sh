#!/bin/bash

: << END
echo "alias update='sudo apt update && sudo apt upgrade' -y" > ~/.bashrc
echo "R='rm -r'" > ~/.bashrc
source ~/.bashrc

END

alias lsnc='ls --color=no' #deactivates color when listing contents

alias confirm='read -p "Are you sure? y/n: "' #prompts for user confirmation

#Simplifies a multi-step git operation I perform quite frequently.
alias gpap='git pull && git add . && git push' 