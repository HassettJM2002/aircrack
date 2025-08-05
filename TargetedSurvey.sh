#!/bin/bash

cat interfaces.txt | nl
read -p "Enter the number of the NIC do you want to survey with: " selected_NIC
NICNUM=$(cat interfaces.txt | grep $selected_NIC)
echo $NICNUM

read -p "a: 5GHz bg 2.4GHz " amend

read -p "BSSID: " BSSID

read -p "Filename [if you dont want to write to the file, press enter]: " filename

echo "$filename $BSSID $amend"

if [[ -n $filename ]]; then
	sudo airodump-ng --band ${amend} $NICNUM --bssid ${BSSID} -w "/home/rrp/Desktop/Test Scripts/Survey/${filename}"
	"Writing to ${filename}"
else
	sudo airodump-ng --band ${amend} $NICNUM --bssid ${BSSID}
	echo "No file written to"
fi

