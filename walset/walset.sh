#!/bin/bash

dir="$HOME/.config/rofi/launchers/type-2"
theme='style-7'

WALL_DIR="$HOME/Pictures/wallpaper/anime"
WALSET_BACKEND="$HOME/.local/bin/walset-backend.sh"

CWD="$(pwd)"

cd "$WALL_DIR" || exit

rofi_cmd=(rofi -dmenu -theme "${dir}/${theme}.rasi" -p "")

SELECTED_WALL=$(for a in *.jpg *.png; do
    echo -en "$a\0icon\x1f$a\n"
done | "${rofi_cmd[@]}")

SELECTED_WALL=$(echo "$SELECTED_WALL" | xargs)

if [ -n "$SELECTED_WALL" ]; then
    "$WALSET_BACKEND" "$SELECTED_WALL"
fi

cd "$CWD" || exit
