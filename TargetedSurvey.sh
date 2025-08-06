#!/bin/bash

arr_nic=($(cat interfaces.txt))
cat interfaces.txt | nl
read -p "Enter the number of the NIC do you want to survey with: " num_nic

read -p "a: 5GHz bg 2.4GHz " amend

read -p "BSSID: " BSSID

read -p "Filename [if you dont want to write to the file, press enter]: " filename


echo "$filename $BSSID $amend"

if [[ -n $filename ]]; then
	sudo airodump-ng --band ${amend} ${arr_nic[${num_nic}-1]} --bssid ${BSSID} -w "Survey/${filename}"
	"Writing to ${filename}"
else
	sudo airodump-ng --band ${amend} ${arr_nic[${num_nic}-1]} --bssid ${BSSID}
	echo "No file written to"
fi

