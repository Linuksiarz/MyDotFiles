#!/usr/bin/env bash

systemctl stop --user mpd

pulseaudio -k

(cd ~/.config/mpd/ && cp mpd_bit_perfect.conf mpd.conf)

systemctl start --user mpd
