#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
RESET="$(tput sgr0)"
RED="$(tput setaf 1)"
BRED="$(tput setaf 9)"
GREEN="$(tput setaf 2)"

PS1='${GREEN}[${RED}\u ${BRED}\W${GREEN}> ${RESET}'
PS2='${RED}\u${GREEN}> ${RESET}'
PS3='${RED}\u${GREEN}> ${RESET}'
PS4='${RED}\u${GREEN}!> ${RESET}'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias unharden="sudo sysctl kernel.unprivileged_userns_clone=1"
alias copy="xclip -selection clipboard"
alias nvimconfig="nvim ~/.config/nvim"
alias bashrc="nvim ~/.bashrc"
