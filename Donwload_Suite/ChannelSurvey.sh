#!/bin/bash

arr_nic=($(cat interfaces.txt))
cat interfaces.txt | nl
read -p "Enter the number of the NIC do you want to survey with: " num_nic

read -p "BSSID: " BSSID

read -p "Channel: " Channel

read -p "Filename [if you dont want to write to the file, press enter]: " filename

echo "$filename $BSSID $channel"

if [[ -n $filename ]]; then
	echo "sudo airodump-ng --bssid ${BSSID} --channel $Channel -w "Survey/${filename}" ${arr_nic[${num_nic}-1]}"
	sudo airodump-ng --bssid ${BSSID} --channel $Channel -w "Survey/${filename} ${arr_nic[${num_nic}-1]}"
else
	echo "airodump-ng ${arr_nic[${num_nic}-1]} --bssid ${BSSID} --channel $Channel"
	sudo airodump-ng ${arr_nic[${num_nic}-1]} --bssid ${BSSID} --channel $Channel
fi

