#!/usr/bin/env bash

# Function: list all saved Wi-Fi networks
list_all() {
    echo "📡 Saved Wi‑Fi networks:"
    nmcli -t -f NAME,TYPE connection show | awk -F: '$2=="802-11-wireless"{print "• " $1}' | sort
}

# If no argument → show list
if [ -z "$1" ]; then
    list_all
    exit 0
fi

# If --all flag → show all and exit
if [ "$1" = "--all" ] || [ "$1" = "-a" ]; then
    list_all
    exit 0
fi

SSID="$1"

# Try to get password
PASSWORD=$(nmcli -s -g 802-11-wireless-security.psk connection show "$SSID" 2>/dev/null)

# If empty, try with sudo
if [ -z "$PASSWORD" ]; then
    PASSWORD=$(sudo nmcli -s -g 802-11-wireless-security.psk connection show "$SSID" 2>/dev/null)
fi

# Output result
if [ -z "$PASSWORD" ]; then
    echo "❌ No password found for SSID: $SSID"
else
    echo "📶 SSID: $SSID"
    echo "🔑 Password: $PASSWORD"

    # Copy + notify (Wayland)
    echo "$PASSWORD" | wl-copy
    notify-send "Wifi Password Copied"
fi
