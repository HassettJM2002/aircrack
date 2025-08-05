#!/bin/bash

cat interfaces.txt | nl
read -p "Enter the number of the NIC do you want to survey with: " selected_NIC
NICNUM=$(cat interfaces.txt | grep $selected_NIC)
echo $NICNUM

read -p "a: 5GHz bg 2.4GHz " amend

read -p "Filename [if you dont want to write to the file, press enter]: " filename

echo $filename

if [[ -n $filename ]]; then
	sudo airodump-ng --band ${amend} $NICNUM -w "/home/rrp/Desktop/Test Scripts/Survey/${filename}"
else
	sudo airodump-ng --band ${amend} $NICNUM
fi
