#!/usr/bin/env sh

options=( "Headphones noise cancellation level", "Change wallpaper" )
selection=$(printf '%s\n' "${options[@]}" | dmenu)

SCRIPTS="$HOME/.config/scripts/dmenu/"

case $selection in
    ${options[0]}) exec ${SCRIPTS}boseMenu.sh;;
    ${options[1]}) exec azote;;
esac
