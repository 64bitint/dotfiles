export PATH="$HOME/.local/bin:$HOME/go/bin:/usr/local/go/bin:$PATH"

## load zsh completions from homebrew
if type brew &> /dev/null; then
	if [ -d "$(brew --prefix)/share/zsh-completions" ]; then
		FPATH="$(brew --prefix)/share/zsh-completions":$FPATH
	fi
	if [ -d "$(brew --prefix)/share/zsh/site-functions" ]; then 
		FPATH="$(brew --prefix)/share/zsh/site-functions":$FPATH
	fi
fi

FPATH=~/.config/zsh/site-functions:$FPATH

#source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

setopt AUTO_CD

# history settings
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

alias ll='ls -alFh --color'

#setopt CORRECT # Try to correct the spelling of commands
#setopt CORRECT_ALL # Try to correct the spelling of all arguments in a line


## don't load oh-my-posh in the default macOS apple terminal
if [ "$TERM_PROGRAM" != "Apple_Terminal" ] && type oh-my-posh &> /dev/null; then
  eval "$(oh-my-posh init zsh --config ~/.poshthemes/mytheme.omp.json)"
fi

LISTMAX=-1

#autoload -U compinit; compinit
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# bind shift-tab reverse menu select
bindkey '^[[Z' reverse-menu-complete
# bind esc to cancel menu select
bindkey -M menuselect '^[' undo

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward


source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
