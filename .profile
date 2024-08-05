# This
alias vp='nvim ~/.profile'
alias sp='source ~/.profile'

# General
alias cls='clear'
alias rmrf='rm -rf'
alias nodejs='node'
alias px='ps | grep'
alias se='sudoedit'

# git
alias g='git'
alias gc='git commit'
alias gis='git status'
alias gic='git cherry -v' 
alias gip='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gd='git diff'

# Neovim
alias v='nvim'
alias v.='nvim .'

## Other config
alias vc='cd ~/.config/nvim && nvim .'
alias vt='nvim ~/.tmux.conf'

## Projects
alias cdp='cd ~/projects/personal/'
alias vd='cd ~/projects/personal/dotfiles/ && nvim .'
alias vn='cd ~/projects/personal/notebook.md && nvim .'

# adb/scrcpy
alias adbip='adb shell ifconfig wlan0'
alias csrc='scrcpy -b5m -m1000'

# Devices
headsetMacAddress='60:F4:3A:A2:57:D7'
alias bt='bluetoothctl'
alias btc="bluetoothctl -- connect $headsetMacAddress"
alias btd='bluetoothctl -- disconnect'

# X settings
xrandr --output HDMI-1 --auto --left-of eDP-1
xset r rate 190 80
vibrant-cli HDMI-1 1.42 > /dev/null 2>&1
vibrant-cli eDP-1 1.42 > /dev/null 2>&1
setxkbmap br

picom -b
