#!/bin/bash

sound=/usr/share/sounds/Pop/stereo/alert/alarm-clock-elapsed.oga
duration=$(:|dmenu -i -p "Duration:")

if [ -z "${duration}" ]; then 
  exit 1
fi

message=$(:|dmenu -i -p "Message:")
st -e termdown "$duration"
if [ $? = 0 ]; then
  notify-send -u critical "Timer finished" "$message"
  paplay $sound
fi
