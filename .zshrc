# Load oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7

CASE_SENSITIVE=true
HIST_STAMPS=yyyy-mm-dd
plugins=(git osx)
source $ZSH/oh-my-zsh.sh

# Prompt
nice_date() {
    echo "[ $(date +'%I:%M %p') ]"
}

PROMPT='%{$fg[green]%}%m%{$reset_color%}:%c$(git_prompt_info)%{$fg[yellow]%} $ %{$reset_color%}'
RPROMPT='%{$fg[blue]%}$(nice_date)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX='('
ZSH_THEME_GIT_PROMPT_DIRTY='*'
ZSH_THEME_GIT_PROMPT_CLEAN=''

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
alias gl='git rev-parse --abbrev-ref HEAD | xargs git pull --rebase origin'
alias gp='git rev-parse --abbrev-ref HEAD | xargs git push origin'

# Set ZSH to vim mode (can press ESC and go to NORMAL mode)
bindkey -v 
export KEYTIMEOUT=1
