if [ -f ~/.git-completion ]; then
  source ~/.git-completion
fi

if [ -f ~/.ps1 ]; then
  source ~/.ps1
fi

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi;

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

alias ls='ls -G'
alias ll='ls -Glah'
alias gs='git status'
alias gl='git log'
alias duh='du -h -d 1'
alias subl='open -a "Sublime Text" $1'

alias httpget='http get www.google.es query==param header:value body=data'
