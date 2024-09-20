#!/bin/bash

launch() {
    nohup gnome-terminal &
    nohup brave &
    nohup spotify &
    nohup autokey-gtk &
    nohup blueman-applet &
    nohup picom -b &
    nohup nitrogen --restore &
}

(launch) >> /dev/null
