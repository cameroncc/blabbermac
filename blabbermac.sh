#!/bin/bash
# Designed by r0botninja in California
# v2.0

SCRIPTPATH="$(cd "$(dirname "$0")" ; pwd -P)"
absPath="$SCRIPTPATH/$(basename $0)"
filename="$(shasum -a1 $absPath | cut -d " " -f 1)"

curl --connect-time 2 http://your.server/path/to/text/file -s -o ~/.$filename
lines=$(wc -l < ~/.$filename)
if [[ $lines -ge 2 ]]; then
    flag="$(cat ~/.$filename | head -c 1)"
    [[ $flag = 1 ]] && dewit=true || dewit=false
fi

if [ "$dewit" = true ]; then
    currMute=$(osascript -e 'output muted of(get volume settings)')
    currVol=$(osascript -e 'output volume of (get volume settings)')
    osascript -e 'set volume output volume 100'
    cat ~/.$filename | tail -n $(expr $lines - 1) | say
    osascript -e "set volume output volume $currVol"
    osascript -e "set volume output muted $currMute"
fi
