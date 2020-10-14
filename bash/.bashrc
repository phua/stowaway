#!/bin/bash

[[ $- != *i* ]] && return

set -o emacs

shopt -s cdspell checkjobs checkwinsize dirspell extdebug globstar histappend histreedit histverify hostcomplete shift_verbose

PS1="\[\e]2;\u@\h: \W\a\e[1;32m\][\u@\h \W]\$ \[\e[0m\]"

source /usr/share/bash-completion/bash_completion
source /usr/share/git/completion/git-completion.bash
source /etc/bash_completion.d/hwloc-completion.bash

source ${HOME}/.bash_aliases
source ${HOME}/.bash_functions

[ $(hostname) == "raspberrypi" ] && source ${HOME}/.pi_aliases

# [[ $(tty) = "/dev/tty1" ]] && exec startx
