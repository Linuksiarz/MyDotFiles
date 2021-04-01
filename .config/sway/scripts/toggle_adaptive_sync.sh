#!/usr/bin/sh

VRR_STATUS=$(swaymsg -t get_outputs -r | jq -r '.[] | .adaptive_sync_status')
CONFIG_FILE="$HOME/.config/sway/config.d/90-adaptive-sync.conf"

[ "$VRR_STATUS" = "enabled" ] && echo "output * adaptive_sync off" > $CONFIG_FILE
[ "$VRR_STATUS" != "enabled" ] && echo "output * adaptive_sync on" > $CONFIG_FILE

[ "$VRR_STATUS" = "enabled" ] && swaymsg reload && notify-send "Adaptive Sync DISABLED"
[ "$VRR_STATUS" != "enabled" ] && swaymsg reload && notify-send "Adaptive Sync ENABLED"
