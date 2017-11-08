#!/bin/zsh

set +a
  source $HOME/.secrets
set -a

# Load oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
ZSH_THEME=theunraveler
CASE_SENSITIVE=true
HIST_STAMPS=yyyy-mm-dd
plugins=(git osx)
source $ZSH/oh-my-zsh.sh

# Remove oh-my-zsh aliases
unalias gl
unalias gp

# Set preferences
export LANG=es_ES.UTF-8
export EDITOR=vim

# Populate path 
PATH=$HOME/Library/Python/2.7/bin:$PATH
PATH=$HOME/bin:$PATH

OPT=$HOME/dev/opt
find $OPT -name bin | while read FOLDER
do
    PATH="$FOLDER:$PATH"
done

export PATH

alias grep='grep --color'
alias e='source `find . -name activate | head -n1`'
alias dm='docker-machine'
alias curl='curl --silent'
alias c='clear'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# Set ZSH to vim mode (can press ESC and go to NORMAL mode)
bindkey -v 
export KEYTIMEOUT=1
