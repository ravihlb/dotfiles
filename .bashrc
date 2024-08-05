#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\W·\$ '
source ~/.profile
export EDITOR='nvim'
export VISUAL='nvim'

source /usr/share/nvm/init-nvm.sh
