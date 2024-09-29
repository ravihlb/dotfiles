# Config
#
## Editing
alias v='nvim'
alias v.='nvim .'

alias vp='nvim ~/.profile'
alias vb='nvim ~/.bashrc'
alias vz='nvim ~/.zshrc'
alias vi3='nvim ~/.config/i3/config'

## Sourcing
alias sb='source ~/.bashrc'
alias sp='source ~/.profile'
alias sz='source ~/.zshrc'

alias wmr='i3-msg restart'

# General
alias cls='clear'
alias rmrf='rm -rf'
alias nodejs='node'
alias px='ps | grep'
alias se='sudoedit'
alias t='tmux neww'

alias ls='ls --color=auto'
alias l='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias sus='systemctl suspend'

# git
alias g='git'
alias gb='git branch'
alias gc='git commit'
alias gis='git status'
alias gic='git cherry -v' 
alias gip='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gd='git diff'
alias gp='git push'
alias gl='git pull'

## Other config
alias vc='cd ~/.config/nvim && nvim .'
alias vt='nvim ~/.tmux.conf'

## CDs
alias cdp='cd ~/projects/'
alias cdd='cd ~/devices/'
alias vd='cd ~/projects/dotfiles/ && nvim .'
alias vn='cd ~/projects/notebook.md && nvim .'

# adb/scrcpy
alias adbip='adb shell ifconfig wlan0'
alias csrc='scrcpy -b5m -m1000'

# Devices
headsetMacAddress='60:F4:3A:A2:57:D7'
alias bt='bluetoothctl'
alias btc="bluetoothctl -- connect $headsetMacAddress"
alias btr="bluetoothctl -- remove $headsetMacAddress"
alias btd='bluetoothctl -- disconnect'

defaultMonitor="HDMI-A-0"

# CS50
alias make50='make CC=clang CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror" LDLIBS="-lcs50 -lm"'

# Env
export EDITOR='nvim'
export VISUAL='nvim'

# Autoexec
# xset r rate 190 80
vibrant-cli "$defaultMonitor" 1.5 > /dev/null 2>&1

# setxkbmap br
# setxkbmap us
# localectl set-x11-keymap us, qwerty grp:win_space_toggle

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [[ -z "$TMUX" ]]; then
    tmux attach || exec tmux new-session -A -s local
fi
