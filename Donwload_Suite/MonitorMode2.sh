#!/bin/bash

# Determines Interface Cards
ip link | awk -F ': ' '{print $2}' | grep -v lo | sort | uniq > interfaces.txt

NICS=$(cat interfaces.txt)

# Determines how many cards there are
num=$(sort interfaces.txt | nl | tail -1 | awk -F ' ' '{print $1}')

# Monitor Mode Sequence

sudo airmon-ng check kill
for item in $NICS; do
	read -p "do you want to set $item into monitor mode: [Y/n] " resp
	if [[ $resp == "Y" ]]; then
		sudo iwconfig $item mode monitor
		echo "setting $item into monitor mode"
	elif [[ $resp == "n" ]]; then
		echo "Not setting $item in monitor mode"
	else
		echo "Invalid option, not setting $item in monitor mode"
	fi
done
iwconfig
