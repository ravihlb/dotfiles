## Sourcing
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Keybindings

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd nomatch
unsetopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
setopt share_history

# The following lines were added by compinstall
zstyle :compinstall filename '/home/ravi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompt template loaded before p10k
PS1=" %F{green}> %F{white}%3~ %# "

# Plugins
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

## Plugin settings

# Disable the cursor style feature
ZVM_CURSOR_STYLE_ENABLED=false

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/share/nvm/init-nvm.sh

# Created by `pipx` on 2024-09-22 12:50:44
export PATH="$PATH:/home/ravi/.local/bin"

# Autocomplete keybinding
bindkey "^ " autosuggest-accept

eval "$(zoxide init zsh)"

# pnpm
export PNPM_HOME="/home/ravi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
