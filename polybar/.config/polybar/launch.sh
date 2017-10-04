#!/usr/bin/env bash

killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

for m in "$(xrandr -q | grep " connected" | cut -d " " -f1)"; do
    if [[ "$m" == "$(xrandr -q |grep "+0+0" |cut -d " " -f1)" ]];then
        MONITOR="$m" polybar primary &
    elif "$m" |grep -q "VGA" ; then
        MONITOR="$m" polybar presentation &:
    else
        MONITOR="$m" polybar secondary &:
    fi        
done 
