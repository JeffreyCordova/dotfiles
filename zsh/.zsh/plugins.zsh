#            __            _           
#     ____  / /_  ______ _(_)___  _____
#    / __ \/ / / / / __ `/ / __ \/ ___/
#   / /_/ / / /_/ / /_/ / / / / (__  ) 
#  / .___/_/\__,_/\__, /_/_/ /_/____/  
# /_/            /____/                

#---[zplug]---------------------------------------------------------------------
source /usr/share/zsh/scripts/zplug/init.zsh

#---[plugins]
zplug "zdharma/fast-syntax-highlighting", defer:2

#---[check/install plugins]
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

#---[load]
zplug load

# fix for git crash
FAST_HIGHLIGHT[chroma-git]="chroma/-ogit.ch"
