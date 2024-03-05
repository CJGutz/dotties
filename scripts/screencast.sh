#!/usr/bin/bash

RED='\033[0;31m'
NOCOLOR='\033[0m'

display_res_pos=( $(xrandr | awk '/connected/ {if ($3 ~ /\+/) print $1 " " $3; else if ($4 ~ /\+/) print $1 " " $4;}') )

echo Displays
for ((index = 0; index < ${#display_res_pos[@]}; index += 2)); do
  echo -e "$(($index / 2)): ${display_res_pos[$index]} -- ${display_res_pos[$index+1]}"
done
# echo Displays: ${display_res_pos[@]}

if [ -z $1 ] || [ -z $2 ]; then
  echo -e "${RED}Usage: screencast.sh <display_index> <output_file>${NOCOLOR}"
  exit 1
fi


index=$(( $1 * 2 + 1 ))
selected="${display_res_pos[$index]}"

echo -e Selected $selected "\n\n"

res_pos=$(echo $selected | awk '{split($1, a, "+"); print a[1] " " a[2] " " a[3]}')
res=$(echo "$res_pos" | awk '{print $1}')
pos=$(echo "$res_pos" | awk '{print $2 "," $3}')

ffmpeg -f x11grab -r 25 -s $res -i $DISPLAY+$pos -vcodec libx264 -crf 28 $2

