#!/bin/bash

read -p "Enter the the name of the log file " var_logname

if [[ -n $(ls | grep $var_logname) ]]; then
	echo "New Entry at $(date)"
else
	echo $(date) $var_logname > $var_logname.txt
fi


count_loop=0

while  true;
do
	read -p "Type something (type 'exit' to quit): " input
	
	if [ "$input" == "exit" ]; then
		echo "Exiting"
		break
	fi
	
	echo $(date +'%T') " $input"
	echo $(date +'%T') " $input" >> $var_logname.txt
done
