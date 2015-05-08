# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export HISTIGNORE='curl *'
shopt -s histappend                      # append to history, don't overwrite it

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export EDITOR=vim

# Coloured prompt with git info
source ~/dotfiles/bash_git

# git autocompletion
source ~/dotfiles/git-completion.bash

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias g='goto'
alias yesterday="git log --all --pretty=format:'%Cred%h%Creset - %ae%Creset - %Cgreen%cd%Creset - %s%Creset' --abbrev-commit --date=iso --author=Łukasz --after=yesterday --before=today"

alias delc="find . -name '*.pyc' -delete"
alias clip="xsel -ib"
alias gpass="cat ../apppass | clip"

# Added by install script for node.js and npm in 30s
export PATH=$HOME/local/bin:$HOME/node/bin:$PATH
export NODE_PATH=$HOME/local/lib/node_modules

alias getestall="./manage.py test --settings=conf.test_all"
alias getest="./manage.py test --settings=conf.test"
export PATH=$PATH:~/.local/bin/
alias goto=". goto"

PYTHONDONTWRITEBYTECODE=1
