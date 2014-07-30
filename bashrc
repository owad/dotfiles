# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Coloured prompt with git info
source ~/dotfiles/bash_git

# git autocompletion
source ~/dotfiles/git-completion.bash
