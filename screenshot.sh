#!/bin/sh

choices="current_window\nboth_screens\nselection"

chosen=$(echo -e "$choices" | dmenu -i)

filename=$(echo " " | dmenu -i -p "Filename: ")

#dmenu -i read -p "filename: " filename

case "$chosen" in
    both_screens) maim -x :0 -B -u ~/Screenshots/"$filename";;
    selection) maim -u -B -s ~/Screenshots/"$filename";;
esac 
