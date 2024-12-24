# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
path+=('/home/leroy/bin')
export PATH
path+=('/home/leroy/.config/emacs/bin')
export PATH
path+=('/home/leroy/go/bin')
export PATH
path+=('home/leroy/.spicetify')
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

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"

# loading starship
eval "$(starship init zsh)"
pfetch
