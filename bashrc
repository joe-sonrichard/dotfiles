# ~/.bashrc: executed by bash(1) for non-login shells.

source /home/"$USER"/dotfiles/kube-ps1.sh

source /home/"$USER"/dotfiles/colors.sh

PS1="${BROWN}[\t]${NC} ${WHITE}\u ${LIGHT_GRAY}\w${DARK_GRAY} $(__git_ps1 '(%s)')${NC} $(kube_ps1) \n  ${GREEN}\$:${NC} "

export TERM=xterm-256color

alias ll="ls -al"
alias sl=ls
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias vi=vim
alias v=vim

source <(kubectl completion bash)

alias k=kubectl
complete -F __start_kubectl k

alias mk=minikube

alias k9=k9s

alias kx=kubectx

alias ks=kubens

