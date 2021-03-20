#!/bin/bash
text="$(curl -s 'https://wttr.in/Gdansk?format=3')"
tooltip="$(curl -s 'https://wttr.in/Gdansk?0QT' |
    sed 's/\\/\\\\/g' |
    sed ':a;N;$!ba;s/\n/\\n/g' |
    sed 's/"/\\"/g')"
echo "{\"text\": \"$text\", \"tooltip\": \"<tt>$tooltip</tt>\", \"class\": \"weather\"}"
