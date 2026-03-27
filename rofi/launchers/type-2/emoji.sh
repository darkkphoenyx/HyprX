#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-2"
theme='style-2'

## Run
rofi \
    -show emoji \
    -theme ${dir}/${theme}.rasi
