#!/bin/bash

launch() {
    nohup wezterm &
    nohup brave &
    nohup spotify &
    nohup autokey-gtk &
    nohup blueman-applet &
    nohup picom -b &
    nohup nitrogen --restore &
}

(launch) >> /dev/null
