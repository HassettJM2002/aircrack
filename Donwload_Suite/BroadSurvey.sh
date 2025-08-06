#!/bin/bash

arr_nic=($(cat interfaces.txt))
cat interfaces.txt | nl
read -p "Enter the number of the NIC do you want to survey with: " num_nic

read -p "a: 5GHz bg 2.4GHz " amend

read -p "Filename [if you dont want to write to the file, press enter]: " filename

echo "1) ${arr_nic[${num_nic}-1]}: "

if [[ -n $filename ]]; then
	echo "sudo airodump-ng --band ${amend} ${arr_nic[${num_nic}-1]} -w "Survey/${filename}""
	sudo airodump-ng --band ${amend} ${arr_nic[${num_nic}-1]} -w "Survey/${filename}"
else
	echo "sudo airodump-ng --band ${amend} ${arr_nic[${num_nic}-1]}"
	sudo airodump-ng --band ${amend} ${arr_nic[${num_nic}-1]}
fi
