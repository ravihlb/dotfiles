# General coreutils
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias cls='clear'
alias grep='grep --color=auto'
alias l='ls -lah'
alias ls='ls --color=auto'
alias px='ps | grep'
alias se='sudoedit'

# Editing
alias v='nvim'
alias v.='nvim "$(pwd)"'

# Notebook (Obsidian)
alias vn='cd ~/projects/notebook.md && nvim .'

# Editing config files
alias vb='nvim ~/.bashrc'
alias vp='nvim ~/.profile'
alias vt='nvim ~/.tmux.conf'
alias vw='nvim ~/.wezterm.lua'
alias vz='nvim ~/.zshrc'

# Vim config
alias vc='cd ~/.config/nvim && nvim .'

# Sourcing config
alias sb='source ~/.bashrc'
alias sp='source ~/.profile'
alias sz='source ~/.zshrc'

# wsl
alias pw='powershell.exe'

# TODO: implement for wsl
# alias sus='systemctl suspend'

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

# cd'ing
alias cdp='cd ~/projects/'

# adb/scrcpy
alias adbip='adb shell ifconfig wlan0'
alias csrc='scrcpy -b5m -m1000'

## for wsl
alias b5m='powershell.exe scrcpy -b5m -m1000'

# Devices
headsetMacAddress='60:F4:3A:A2:57:D7'
alias bt='bluetoothctl'
alias btc="bluetoothctl -- connect $headsetMacAddress"
alias btr="bluetoothctl -- remove $headsetMacAddress"
alias btd='bluetoothctl -- disconnect'

## Display Controls
defaultMonitor="eDP-1"
alias sdb="ddcutil setvcp 10"


# CS50
alias make50='make CC=clang CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror" LDLIBS="-lcs50 -lm"'

# Env
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='nvimpager'

# Autoexec
# sh ~/projects/dotfiles/autostart/launcher.sh

xset r rate 190 70
vibrant-cli "$defaultMonitor" 1.5 > /dev/null 2>&1

# Keyboard config for X11
# setxkbmap br
# setxkbmap us
# localectl set-x11-keymap us, qwerty grp:win_space_toggle

# Starting tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [[ -z "$TMUX" ]]; then
    tmux attach || exec tmux new-session -s 'local'
fi
