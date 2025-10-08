#
# ~/.bashrc
#

# If not running interactively, like a bash script, don't do anything
[[ $- != *i* ]] && return

fastfetch

prim=$(tput setaf 1)
sec=$(tput setaf 3)
bold=$(tput bold)
reset=$(tput sgr0)

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	PS1="\[$prim\](SSH)\[$bold\]\h\[$reset\]:\[$sec$bold\]\w\[$reset\]\$ "
else
	PS1="\[$prim$bold\]\h\[$reset\]:\[$sec$bold\]\w\[$reset\]\$ "
fi



alias ls='exa -a --git --icons --group-directories-first'
alias lss='exa -la --git --icons --group-directories-first'
alias lsss='exa -la --git --icons --total-size --group-directories-first'
alias lsg='git ls-files --others --exclude-standard --cached'
alias grep='grep --color=auto'
alias vim='nvim'
alias unharden="sudo sysctl kernel.unprivileged_userns_clone=1"
alias copy="xclip -selection clipboard"
alias paste="xclip -selection clipboard -o"
alias nvimconfig="nvim ~/.config/nvim"
alias bashrc="nvim ~/.bashrc"
alias gitupdate="git fetch --all && git reset --hard origin/main && git submodule update --recursive --init"

# export PATH=$(gem environment user_gemhome)/bin:$PATH
