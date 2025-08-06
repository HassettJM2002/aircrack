# Setup
## Step 1
#### Download the files, move the old files into a new folder just incase these ones do not work (they should)

## Step 2
#### open a terminal where the scripts are, type in
```
chmod +x *.sh
```

## Step 3
#### Make sure each one works by using each script

# How to use
## Step 1: Set into Monitor Mode
#### Set NICs into Monitor Mode
```
./MonitorMode2.sh
```
## Step 1: Start a Broad Survey
$\color{Apricot}{!! WARNING !!\}$
$\color{Apricot}{!! ENSURE YOU MAKE SURE THERE IS ONLY ONE SSID THAT MATCHES, ROUTERS CAN HAVE 2.4GHz and 5GHz NETWORKS WITH THE SAME SSID, BUT DIFFERENT BSSIDS !!\}$
$\color{Apricot}{!! WARNING !!\}$
```
./BroadSurvey.sh
```
## Step 2: Start a Targeted Survey (Optional if you find the channel in Step 2)
#### Go to a targeted survey and determine the channel, if found in step 1, go to step 3
```
./TargetedSurvey.sh
```
## Step 3: Start a Channel Specific Survey
#### Start the channel survey, this will give you the best survey possible

```
./ChannelSurvey.sh
```
