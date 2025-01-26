#!/bin/bash
hosts=("8.8.8.8" "10.10.10.10" "10.1.48.31" "192.168.20.10")

echo "Pinging hosts..."
for i in "${hosts[@]}"; do
	ping -c 2 $i > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		echo "$i is up"
	fi
done