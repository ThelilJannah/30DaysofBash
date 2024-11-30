#!/bin/bash
user=$(whoami)
curr_dir=$(pwd)
curr_date=$(date +%Y-%m-%d)
curr_time=$(date +%H:%M:%S)

echo "You are $user, currently inside $curr_dir on $curr_date at $curr_time."
