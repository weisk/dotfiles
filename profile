export PATH=$PATH:/usr/local/sbin/
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

if [ -f ~/.git-completion ]; then
  source ~/.git-completion
fi

if [ -f ~/.ps1 ]; then
  source ~/.ps1
fi

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
elif [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion;
fi;

export NVM_DIR=~/.nvm
if [ -s "$NVM_DIR/nvm.sh" ]; then
  source "$NVM_DIR/nvm.sh"
elif which brew > /dev/null && [ -f "$(brew --prefix nvm)/nvm.sh" ]; then
  source $(brew --prefix nvm)/nvm.sh
fi;

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export LSCOLORS="exfxcxdxbxegedabagacad"

# Move export GREP_OPTIONS="--color=auto" (which is deprecated) from .exports to .alias
# Always enable colored `grep` output`
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias ls='ls -G --color'
alias ll='ls -Glah --color'
alias resource='source ~/.profile'
alias evalhosts='sudo -s -- /Users/FrancescMallafre/scripts/evalhosts'

alias gs='git status'
alias gl='git log --pretty=format:"%h%x09%an%x09%ad%x09%s"'
#alias gl='git log --pretty=format:"%h - %an, %ar : %s"'
alias justpush='git add -A && git commit -m "." && git push'
alias duh='du -h -d 1 2>/dev/null'
alias subl='open -a "Sublime Text" $1'
alias dc='docker-compose'
alias dm='docker-machine'
alias evaldm='eval $(docker-machine env default)'
alias httpget='http --print=HBhb get www.google.es query==param header:value body=data'
alias httponlyheaders='http -h get google.es'
# alias httponlyheaders='curl -x GET -I google.es'



dualways() { clear; while true; do sleep 2; clear; du -h -d 1 2>/dev/null; done }
dfalways() { clear; while true; do sleep 2; clear; df -h 2>/dev/null; done }

foreverify() {
  while true; do
    sleep $2
    eval $1
  done
}

wrap() {
  echo Starting: "$@"
  eval $(printf "%q " "$@")
}

listdeleted() {
  git diff-tree --no-commit-id -r $1 | grep D | cut -d' ' -f5
}

alias serve='python -m SimpleHTTPServer $1'

# example use: cat /path/to/file | cclip
alias cclip='xclip -selection clipboard'

