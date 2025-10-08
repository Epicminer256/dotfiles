#!/bin/bash

# Ask for profile name using Zenity
profile=$(zenity --entry --title="Save Autorandr Profile" --text="Enter profile name:")

# If a name is provided, save the profile
if [ ! -z "$profile" ]; then
    autorandr --save "$profile"
    zenity --info --title="Profile Saved" --text="Profile '$profile' saved successfully!"
else
    zenity --error --title="Error" --text="Profile name cannot be empty!"
fi
