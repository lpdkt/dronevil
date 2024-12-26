# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
path+=('/home/leroy/bin')
path+=('/home/leroy/.config/emacs/bin')
path+=('/home/leroy/go/bin')
path+=('/home/leroy/.spicetify')
export PATH

export EDITOR=nvim

ZSH_THEME=""

plugins=(git sudo zsh-256color zsh-syntax-highlighting zsh-vi-mode)
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim='nvim'
alias nv='nvim'
alias open='yazi'
alias nvimdir='cd ~/.config/nvim && nvim .'
alias ec='emacsclient -c -a 'emacs' &'
alias q='exit'
alias tmuxconf='nvim ~/.config/tmux/tmux.conf'
alias hypr='nvim ~/.config/hypr/'
alias ghu='yadm add -u && yadm commit -m "update" && yadm push'
alias uni='yazi ~/documents/uni/'
alias zzz='systemctl hybrid-sleep'
alias vault='cd ~/documents/vault'
alias notes='yazi notes'
alias extractzip='extract *.zip'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(fzf --zsh)"
# loading starship
eval "$(starship init zsh)"
pfetch
