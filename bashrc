# ~/.bashrc: executed by bash(1) for non-login shells.

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source /home/"$USER"/dotfiles/kube-ps1.sh

#source /home/"$USER"/dotfiles/colors.sh

#PS1="$(BROWN)[\t]${NC} ${WHITE}\u ${LIGHT_GRAY}\w${DARK_GRAY}$(parse_git_branch)${NC} $(kube_ps1) \n  ${GREEN}\$:${NC} "

BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT_GRAY='\033[0;37m'

DARK_GRAY='\033[1;30m'

YELLOW='\033[1;33m'

WHITE='\033[1;37m'

NC='\033[0m'

if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}[\033[0;33m\t\033[0m \033[0;37m $(pwd) \033[1;30m$(parse_git_branch)\033[0m $(kube_ps1)]\$\n->'
else
    PS1='${debian_chroot:+($debian_chroot)}[\t \W $(parse_git_branch) $(kube_ps1)]\$\n->'
fi

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

alias here="echo $PWD"

alias shellcheckr="shellcheck \$(find . -type f -name \"*.sh\")"

alias surrender="sudo chown -R $USER:$USER ."

remove_git_submodule ()
{
    git submodule deinit -f -- $1;
    rm -rf .git/modules/$1;
    git rm -f $1
}

export EDITOR=vim

export TANGRAM_GIT_HOOKS="/home/orca/DevOps/git-client-hooks"

export KCLUSTERDIR=$HOME/clusters

export KUBECONFIG=${HOME}/.kube/config_merge

for dir in $(ls -d ${KCLUSTERDIR}/*/kubeconfig)
do
        export KUBECONFIG=${KUBECONFIG}:${dir}
done

