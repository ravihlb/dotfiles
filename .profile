# This
alias vp='nvim ~/.profile'
alias vb='nvim ~/.bashrc'
alias sp='source ~/.profile'

# General
alias cls='clear'
alias rmrf='rm -rf'
alias nodejs='node'
alias px='ps | grep'
alias se='sudoedit'
alias ..='cd ..'
alias ...='cd .. && cd ..'

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
alias cdp='cd ~/projects/'
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

defaultMonitor="HDMI-A-0"

# X settings
# xrandr --output HDMI-A-0 --auto --left-of eDP-1

xset r rate 190 80

vibrant-cli "$defaultMonitor" 1.8 > /dev/null 2>&1
# vibrant-cli eDP-1 1.42 > /dev/null 2>&1

setxkbmap br
localectl set-x11-keymap br, qwerty grp:win_space_toggle

export EDITOR='nvim'
export VISUAL='nvim'
