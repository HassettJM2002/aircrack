## Setting Up ALFA Card to be in monitor mode
```
sudo airmon-ng check kill
sudo ip link set wlan0 down
sudo iw dev wlan0 set type monitor
sudo ip link set wlan0 up
iwconfig
```
### or
```
sudo airmon-ng check kill
sudo iwconfig wlan0 mode monitor
iwconfig
```
