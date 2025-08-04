#!/bin/bash
iwconfig | grep wlx | tr ' ' '\n' > "/home/rrp/Desktop/Test Scripts/volatile/iw_output.txt"
ALFA=$(head -1 "/home/rrp/Desktop/Test Scripts/volatile/iw_output.txt")
echo $ALFA > "/home/rrp/Desktop/Test Scripts/volatile/ALFA_Card.txt"
rm "/home/rrp/Desktop/Test Scripts/volatile/iw_output.txt"

#Set NICs into monitor
sudo airmon-ng check kill
sudo iwconfig $ALFA mode monitor
sudo iwconfig wlp1s0 mode monitor
iwconfig

#sudo airmon-ng check kill
#sudo iwconfig  mode monitor
#iwconfig
