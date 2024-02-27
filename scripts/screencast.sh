#!/usr/bin/bash

display_res_pos=( $(xrandr | awk '/connected/ {if ($3 ~ /\+/) print $1 " " $3 ","; else if ($4 ~ /\+/) print $1 " " $4 ",";}') )
echo Displays: $display_res_pos "\n\n"

selected=$display_res_pos[$1*2+2]
res_pos=$(echo $selected | awk '{split($1, a, "+"); print a[1] " " a[2] " " a[3]}')
res=$(echo $res_pos | awk '{print $1}')
pos=$(echo $res_pos | awk '{print $2 "," $3}')

ffmpeg -f x11grab -r 25 -s $res -i :1+$pos -vcodec libx264 -crf 28 $2
