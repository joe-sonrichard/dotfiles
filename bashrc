# ~/.bashrc: executed by bash(1) for non-login shells.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source /home/"$USER"/dotfiles/kube-ps1.sh

source /home/"$USER"/dotfiles/colors.sh

PS1="${BROWN}[\t]${NC} ${WHITE}\u ${LIGHT_GRAY}\w${DARK_GRAY}$(parse_git_branch)${NC} $(kube_ps1) \n  ${GREEN}\$:${NC} "

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

