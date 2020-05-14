#!/bin/sh

sed 's/,/ \/ /g' ~/.i3/shortcuts.csv | tr '[:upper:]' '[:lower:]' | rofi -dmenu -p Help -theme ~/.config/rofi.rasi
