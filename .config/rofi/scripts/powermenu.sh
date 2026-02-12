#!/bin/bash

options="Lock\nLogout\nReboot\nShutdown"

chosen=$(
    echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/themes/powermenu.rasi
)

case "$chosen" in
    *Lock*)
        hyprlock
        ;;
    *Logout*)
        hyprctl dispatch exit
        ;;
    *Reboot*)
        systemctl reboot
        ;;
    *Shutdown*)
        systemctl poweroff
        ;;
esac
