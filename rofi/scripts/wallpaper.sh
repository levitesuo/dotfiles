#!/usr/bin/env bash
if [[ $# -ne 0 ]]
then
    hyprctl hyprpaper preload "~/.config/hypr/wallpapers/$1" > /dev/null; hyprctl hyprpaper wallpaper ", ~/.config/hypr/wallpapers/$1" > /dev/null
    exit 0
fi
FILES="/home/leevisuo/.config/hypr/wallpapers/*"
for f in $FILES
do
  echo  -en "${f##*/}\x00icon\x1f$f\n"  # "${f##*/}"
  # take action on each file. $f store current file name
done
