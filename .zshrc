#!/bin/zsh

set +a
  source $HOME/.secrets
set -a

# Load oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git osx)
source $ZSH/oh-my-zsh.sh

# Remove oh-my-zsh aliases
unalias gl
unalias gp

# Set preferences
export LANG=es_ES.UTF-8
export EDITOR='vim'

# Set-up path
find ~/dev/opt -name bin | while read folder
do
    PATH="$folder:$PATH"
done
PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="$HOME/bin:$PATH"

alias grep='grep --color'
alias e='source `find . -name activate | head -n1`'
