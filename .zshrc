# Load oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
ZSH_THEME=theunraveler
CASE_SENSITIVE=true
HIST_STAMPS=yyyy-mm-dd
plugins=(git osx)
source $ZSH/oh-my-zsh.sh

# Set prefs
export LANG=es_ES.UTF-8
export EDITOR=vim

# Populate path 
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/Library/Python/2.7/bin:$PATH
export PATH=$HOME/bin:$PATH

# Automatically add everything under ~/dev/opt
find $HOME/dev/opt -type d -name bin -maxdepth 3 | while read line
    do export PATH="$PATH:$line"
done

# Aliases
alias grep='grep --color'
alias e='source `find . -name activate | head -n1`'
alias curl='curl --silent'
alias c='clear'

# Set ZSH to vim mode (can press ESC and go to NORMAL mode)
bindkey -v 
export KEYTIMEOUT=1
