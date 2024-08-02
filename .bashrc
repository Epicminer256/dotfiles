#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

prim=$(tput setaf 1)
sec=$(tput setaf 3)
bold=$(tput bold)
reset=$(tput sgr0)
PS1="\[$prim$bold\]\h\[$reset\]:\[$sec$bold\]\w\[$reset\]\$ "


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias unharden="sudo sysctl kernel.unprivileged_userns_clone=1"
alias copy="xclip -selection clipboard"
alias nvimconfig="nvim ~/.config/nvim"
alias bashrc="nvim ~/.bashrc"
alias gitupdate="git fetch --all && git reset --hard origin/main"
