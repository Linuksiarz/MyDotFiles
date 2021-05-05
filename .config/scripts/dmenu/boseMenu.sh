#!/usr/bin/env sh

options=( "High" "Low" "Off" )
selection=$(printf '%s\n' "${options[@]}" | dmenu)

bose_command="based-connect 04:52:C7:32:6E:0E"

case $selection in
    ${options[0]}) $bose_command -c high;;
    ${options[1]}) $bose_command -c low;;
    ${options[2]}) $bose_command -c off;;
esac
