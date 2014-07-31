# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

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

alias delc="find . -name '*.pyc' -delete"
alias clip="xsel -ib"

# Added by install script for node.js and npm in 30s
export PATH=$HOME/local/bin:$PATH
export NODE_PATH=$HOME/local/lib/node_modules

alias getestall="./manage.py test --settings=conf.test_all"
alias getest="./manage.py test --settings=conf.test"
