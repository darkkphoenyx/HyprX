#!/bin/bash

killall -9 waybar
killall -9 swaync
# killall -9 hyprsunset
killall -9 blueman-applet
killall -9 hyprshot
# killall -9 hyprpaper

waybar &
swaync &
# hyprsunset &
blueman-applet &
hyprshot &
# hyprpaper &
