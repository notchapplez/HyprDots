#!/bin/bash

# Define the options with icons
options=" Lock\n⏻ Power Off\n Reboot\n Suspend\n鈴 Hibernate\n󰗽 Logout"

# Use the uploaded custom theme (style-2.rasi)
theme="~/.config/rofi/launchers/type-7/style-2.rasi"

# Show the menu
choice=$(echo -e "$options" | rofi -dmenu -theme "$theme" -p "Power Menu")

# Execute based on user choice
case "$choice" in
    " Lock")      hyprlock ;;
    "⏻ Power Off") systemctl poweroff ;;
    " Reboot")    systemctl reboot ;;
    " Suspend")   systemctl suspend ;;
    "鈴 Hibernate") systemctl hibernate ;;
    "󰗽 Logout")    hyprctl dispatch exit ;;
esac
