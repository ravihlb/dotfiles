#!/bin/bash

launchUnique() {
    pgrep "$1" >/dev/null || nohup "$@" 2>&1 &
}

launch() {
    launchUnique wezterm
    launchUnique brave
    launchUnique spotify
    launchUnique autokey-gtk
    launchUnique blueman-applet
    prime-run picom -b
    ~/.fehbg
    ~/.screenlayout/hdmi-1080p-left.sh
}

(launch) >> /dev/null
