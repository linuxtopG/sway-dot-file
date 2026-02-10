#!/bin/bash

choice=$(echo -e "🔄 Reboot\n🔴 Shutdown\n🔒 Lock Screen\n🚪 Logout" | wofi --dmenu --prompt "Select action:" --conf ~/.config/wofi/powermenu.conf --cache-file /dev/null)

case $choice in
    "🔄 Reboot")
        systemctl reboot
        ;;
    "🔴 Shutdown")
        systemctl poweroff
        ;;
    "🔒 Lock Screen")
        swaylock -f -i ~/.config/swaylock/lock.png
        ;;
    "🚪 Logout")
        swaymsg exit
        ;;
esac
