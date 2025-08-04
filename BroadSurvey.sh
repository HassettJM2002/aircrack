#!/bin/bash

read -p "Select what NIC to survey with [1] ALFA-Card [2] Bult-In " NIC

if [[ $NIC == 1 ]]; then
	ALFA=$(cat "/home/rrp/Desktop/Test Scripts/volatile/ALFA_Card.txt")
	echo ALFA
elif [[ $NIC == 2 ]]; then
	ALFA="wlp1s0"	
	echo wlp1s0
else
	echo "error"
fi

read -p "a: 5GHz bg 2.4GHz " amend

read -p "Filename [if you dont want to write to the file, press enter]: " filename

echo $filename

if [[ -n $filename ]]; then
	sudo airodump-ng --band ${amend} $ALFA -w "/home/rrp/Desktop/Test Scripts/Survey/${filename}"
else
	sudo airodump-ng --band ${amend} $ALFA
fi
