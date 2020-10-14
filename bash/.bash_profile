#!/bin/bash

export BROWSER="/usr/bin/elinks -remote"
# export BROWSER="/usr/bin/firefox --private-window"
# export BROWSER="/usr/bin/w3m -T text/html"
# export DISPLAY=:0.0
export EDITOR="/usr/bin/emacsclient -t"
export HISTCONTROL=ignoreboth
export HISTFILE=${HOME}/.bash_history
# export HISTFILE=${XDG_DATA_HOME}/bash/history
export HISTFILESIZE=65535
export HISTSIZE=65535
# export LC_ALL=C
export LESSHISTFILE=-
export MAIL=${HOME}/Mail
export MAILCAP=${HOME}/.mailcap:/etc/mailcap
export PAGER=/usr/bin/less
export SUDO_EDITOR=${EDITOR}
export TERM=rxvt-unicode-256color
export VISUAL=${EDITOR}

export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
/usr/bin/ibus-daemon --xim -dr &

export WORKSPACE_HOME=${HOME}/workspace
export USER_DIRS=${WORKSPACE_HOME}/user-dirs
export LIBRARY_HOME=${USER_DIRS}/Books
export PACKAGE_DIRS=${WORKSPACE_HOME}/arch-linux/packages
export CRYPT_HOME=${HOME}/.local/mnt/crypt

export XDG_CACHE_HOME=${HOME}/.cache # /var/cache
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_DATA_HOME=${HOME}/.local/share
# export XDG_RUNTIME_DIR=$(/run/user/$(id -u))
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_DATA_DIRS=/usr/local/share:/usr/share

export XDG_DESKTOP_DIR=${USER_DIRS}/Desktop
export XDG_DOCUMENTS_DIR=${USER_DIRS}/Documents
export XDG_DOWNLOAD_DIR=${HOME}/Downloads
export XDG_PUBLICSHARE_DIR=${USER_DIRS}/Public
export XDG_TEMPLATES_DIR=${USER_DIRS}/Templates
export XDG_TRASH_DIR=${HOME}/Trash

export ANDROID_SDK_ROOT=${XDG_CONFIG_HOME}/android
export ELINKS_CONFDIR=${XDG_CONFIG_HOME}/elinks
# export GNUPGHOME=${XDG_DATA_HOME}/gnupg
export GRADLE_USER_HOME=${XDG_DATA_HOME}/gradle
# export ICEAUTHORITY=${XDG_CACHE_HOME}/ICEauthority
export INPUTRC=${XDG_CONFIG_HOME}/readline/inputrc
export IPYTHONDIR=${XDG_CONFIG_HOME}/ipython
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=${XDG_CONFIG_HOME}/java
export JUPYTER_CONFIG_DIR=${XDG_CONFIG_HOME}/jupyter
export NETRC=${XDG_CONFIG_HOME}/netrc
export NPM_CONFIG_USERCONFIG=${XDG_CONFIG_HOME}/npm/npmrc
export OCTAVE_HISTFILE=${XDG_CACHE_HOME}/octave_hist
export OCTAVE_SITE_INITFILE=${XDG_CONFIG_HOME}/octave/octaverc
export PARALLEL_HOME=${XDG_CONFIG_HOME}/parallel
export PYLINT_HOME=${XDG_CACHE_HOME}/pylint
export PYTHON_EGG_CACHE=${XDG_CACHE_HOME}/python-eggs
export R_PROFILE=${XDG_CONFIG_HOME}/r/Rprofile
export RANDFILE=${XDG_DATA_HOME}/rnd
export RLWRAP_HOME=${XDG_DATA_HOME}/rlwrap
export SBCL_HOME=${XDG_CONFIG_HOME}/sbcl
export SCREENRC=${XDG_CONFIG_HOME}/screen/screenrc
export SQLITE_HISTORY=${XDG_DATA_HOME}/sqlite3/sqlite_history
export TEXINPUTS=${XDG_CONFIG_HOME}/texmf/tex
export VIMINIT=":source ${XDG_CONFIG_HOME}/vim/vimrc"
export WGETRC=${XDG_CONFIG_HOME}/wgetrc
# export WWW_HOME=${XDG_PUBLICSHARE_DIR}/public_html/www
export XAUTHORITY=${XDG_RUNTIME_DIR}/Xauthority
export XINITRC=${XDG_CONFIG_HOME}/X11/xinitrc

export GTAGSCONF=/usr/share/gtags/gtags.conf

export PATH=${XDG_DATA_HOME}/../bin:${PATH}

source ${HOME}/.bashrc

if [ $(hostname) == "${HOST}" ]; then
    eval `/usr/bin/keychain --eval --agents ssh,gpg ~/.ssh/id_ecdsa ${KEYS}`
fi

umask 077
ulimit -c unlimited

stty -ixon
