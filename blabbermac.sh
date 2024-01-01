#!/bin/bash
# Designed by r0botninja in California
# v2023.12.31

REMOTE_FILE_URL="http://localhost:8080/words.txt"

SCRIPTPATH="$(cd "$(dirname "$0")" ; pwd -P)"
absPath="$SCRIPTPATH/$(basename $0)"
filename="$(shasum -a1 $absPath | cut -d " " -f 1)"

curl --connect-time 2 $REMOTE_FILE_URL -s -o ~/.$filename
lines=$(wc -l < ~/.$filename)

# Check flag
if [[ $lines -ge 3 ]]; then
    flag="$(cat ~/.$filename | head -c 1)"
    [[ $flag = 1 ]] && dewit=true || dewit=false
else
    exit 1
fi

# Build 'say' command
line2="$(cat ~/.$filename | head -n 2 | tail -n 1)"
SAY_CMD="say"
if [[ $line2 != "" ]]; then
    SAY_CMD="say -v $line2"
fi

if [ "$dewit" = true ]; then
    currMute=$(osascript -e 'output muted of(get volume settings)')
    currVol=$(osascript -e 'output volume of (get volume settings)')
    osascript -e 'set volume output volume 100'
    cat ~/.$filename | tail -n $(expr $lines - 2) | $SAY_CMD
    osascript -e "set volume output volume $currVol"
    osascript -e "set volume output muted $currMute"
fi
