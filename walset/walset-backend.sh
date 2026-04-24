#!/bin/bash

# Check if the user provided an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_image>"
    exit 1
fi

IMAGE="$1"

# Send notification to the user
notify-send "Changing Theme" "Applying new wallpaper and updating colors, please wait until confirmation..."

# Set wallpaper
awww img "$IMAGE" --transition-type wipe --transition-angle 50 --transition-fps 60 --transition-step 20

# Use Matugen to generate Material You colors
matugen image --source-color-index 0 "$IMAGE"

# Refresh waybar
pkill waybar
waybar > /dev/null 2>&1 &

# Refresh swaync
pkill swaync
swaync > /dev/null 2>&1 &

sleep 0.5

notify-send "Theme Applied" "Wallpaper and theme updated successfully!"
