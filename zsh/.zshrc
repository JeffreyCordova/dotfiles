#              __             
#  ____  _____/ /_  __________
# /_  / / ___/ __ \/ ___/ ___/
#  / /_(__  ) / / / /  / /__  
# /___/____/_/ /_/_/   \___/  
#                             

export DOTFILES="$HOME/dotfiles"
#export QT_QPA_PLATFORMTHEME=qt5ct

#---[plugins]-------------------------------------------------------------------
source $DOTFILES/zsh/.zsh/plugins.zsh

#---[no history duplicates]-----------------------------------------------------
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

#---[case-insensitive completion]-----------------------------------------------
zstyle ':completion:*' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

#---[hotkeys]-------------------------------------------------------------------
source $DOTFILES/zsh/.zsh/hotkeys.zsh

#---[aliases]-------------------------------------------------------------------
source $DOTFILES/zsh/.zsh/aliases.zsh

eval "$(starship init zsh)"
