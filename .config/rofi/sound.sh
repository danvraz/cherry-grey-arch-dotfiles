#!/bin/bash

choice=$(printf "  Volume +\n  Volume -\n󰋋  Mute\n󰓃  Toggle Bluetooth\n󰌋  Audio Outputs" | rofi -dmenu -p "Sound" -location 1 -width 18)

case "$choice" in
  *Volume\ +*) wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ ;;
  *Volume\ -*) wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- ;;
  *Mute*) wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle ;;
  *Bluetooth*) bluetoothctl power toggle ;;
  *Outputs*) pavucontrol ;;
esac
