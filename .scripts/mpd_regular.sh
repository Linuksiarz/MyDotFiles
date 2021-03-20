#!/usr/bin/env bash

systemctl stop --user mpd

if !(pgrep -x pulseaudio) >/dev/null;
then
    pulseaudio --start
fi

(cd ~/.config/mpd/ && cp mpd_regular.conf mpd.conf)

systemctl start --user mpd
