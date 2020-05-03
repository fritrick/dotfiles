export ZSH="/root/.oh-my-zsh"
ZSH_THEME="bureau"

plugins=(
  git
  golang
)
source $ZSH/oh-my-zsh.sh

alias clean_git_branch='git checkout master && git pull && git branch -D $1'
