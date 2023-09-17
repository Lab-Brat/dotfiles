# ZSH configuration
ZSH_THEME="gentoo"
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder
ENABLE_CORRECTION="true"
plugins=(git)

# ZSH theme
source "/home/labbrat/.oh-my-zsh/oh-my-zsh.sh"

# ZSH prompt
export PROMPT='%(!.%B%F{red}.%B%F{green}%n@)%m %F{blue}%1~ ${vcs_info_msg_0_}%F{blue}%(!.#.$)%k%b%f '


# My Custom variables
# custom PATH variables
export scripts='/home/labbrat/scripts'
export pip_path='/home/labbrat/.local/bin'

export usrlocbin='/usr/local/bin'
export PATH=$PATH:$scripts:$pip_path:$inf:$ck:$cr:$usrlocbin

# custom variables
export VBOX_USB=usbfs
export EDITOR=/usr/bin/vim

# python aliases
alias python=python3.11
alias pyclean='sudo rm -rf build dist gentoo_update.egg-info'
alias sv='source venv/bin/activate'
alias black='black . --line-length 80 '

# git aliases
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias gh="git config user.email 'xoovoox@protonmail.com' && git config user.name Lab-Brat"

# other aliases
alias ping='ping -c 2'
alias gentoo_start='vboxmanage startvm Gentoo --type headless'
alias gentoo_stop='vboxmanage controlvm Gentoo poweroff'
alias ventoy='sudo /opt/ventoy-1.0.94/Ventoy2Disk.sh'

