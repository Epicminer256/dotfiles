#!/bin/bash

# Get the list of profiles from autorandr
profiles=$(autorandr --list)

# If no profiles are found, exit
if [ -z "$profiles" ]; then
    echo "No profiles found!"
    exit 1
fi

# Use rofi to display the list of profiles
selected=$(echo "$profiles" | rofi -dmenu -i -p "Select Profile:")

# If a profile was selected, load it with autorandr
if [ ! -z "$selected" ]; then
    autorandr --load "$selected"
    nitrogen --restore
fi
