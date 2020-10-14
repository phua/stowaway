#!/bin/bash

shopt -s dotglob

function rm_ife() {
    FILES=$@
    for FILE in ${FILES[@]}; do
        [ -e ${FILE} -o -h ${FILE} ] && rm ${FILE}
    done
}

rm_ife ${HOME}/nohup.out
rm_ife ${HOME}/.emacs.d/{ac-comphist.dat,.ido.last,tramp}
rm_ife ${HOME}/.emacs.d/{auto-save-list,.backups,transient}/*
rm_ife ${HOME}/.mozilla/firefox/*.default/lock
rm_ife ${HOME}/.w3m/cookie

rm_ife ${XDG_CACHE_HOME}/{.bluetoothctl_history,wget-hsts,xsel.log} # dmenu_run
/usr/bin/go clean -cache

rm_ife ${XDG_CONFIG_HOME}/{QtProject.conf,Trolltech.conf}
find ${XDG_CONFIG_HOME}/cmus -type f ! -name autosave -delete
rm_ife ${XDG_CONFIG_HOME}/elinks/{cookies,exmodehist,formhist,globhist,gotohist,searchhist}

rm_ife ${XDG_DATA_HOME}/recently-used.xbel
rm_ife ${XDG_DATA_HOME}/irssi/away.log
# rm_ife ${XDG_DATA_HOME}/zathura/{input}
find ${XDG_DATA_HOME}/zathura -type f ! -name history -delete
