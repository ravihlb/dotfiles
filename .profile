# This
alias vp='nvim ~/.profile'
alias sp='source ~/.profile'

# Other config
alias vc='cd ~/.config/nvim && nvim .'
alias vt='nvim ~/.tmux.conf'

# Projects
alias vd='cd ~/projects/personal/dotfiles/ && nvim .'

# General
alias cls='clear'
alias rmrf='rm -rf'

alias nodejs='node'
alias v='nvim'
alias v.='nvim .'

# git
alias g='git'
alias gc='git commit'
alias gis='git status'
alias gic='git cherry -v' 
alias gip='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gd='git diff'

# adb/scrcpy
alias adbip='adb shell ifconfig wlan0'
alias csrc='scrcpy -b5m -m1000'

# Devices
alias bt='bluetoothctl'

# X settings
xset r rate 190 80
vibrant-cli HDMI-1 1.42 > /dev/null 2>&1 &
vibrant-cli eDP-1 1.42 > /dev/null 2>&1 &
