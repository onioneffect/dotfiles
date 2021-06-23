# If not running interactively, don't do anything
[[ $- != *i* ]] && return

CFG="$HOME/.config"
export PYTHONSTARTUP="$CFG/.pythonrc"
export MYVIMRC="$CFG/vim/.vimrc"
export MYXINITRC="$CFG/.xinitrc"

[[ -o login ]] && startx $MYXINITRC

alias ls='ls --color=auto'
alias fehv="$HOME/Documents/Software/feh/src/feh"
PROMPT=' %B%F{204}%1~%f%b %F{111}%#%f '
RPROMPT='%(?..%F{204}%?)%f'

