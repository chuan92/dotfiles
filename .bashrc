#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

command fortune -a | fmt -80 -s | cowthink -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowthink -l | tail -n +2)) -n
#command ./archey.py
alias ls='ls --color=auto'
alias vi='vim'
alias mkd='markdown'
#sometimes you may type mkae
alias mkae='make'
alias pacupg='sudo pacman -Syu'        # 同步软件仓库信息然后升级系统
alias pacin='sudo pacman -S'           # 从软件仓库安装软件包
alias pacins='sudo pacman -U'          # 从本地文件安装软件包
alias pacre='sudo pacman -R'           # 删除软件包，保留配置和依赖
alias pacrem='sudo pacman -Rns'        # 彻底删除软件包，清除配置，删除无用依赖
alias pacrep='pacman -Si'              # 显示软件仓库中某软件包的信息
alias pacreps='pacman -Ss'             # 在软件仓库搜索软件包
alias line='sudo systemctl start dhcpcd'
alias wifi='sudo wifi-menu'
alias emacs='emacs -nw'
alias ll='ls -l'
#alias mount='sudo mount -o uid=1000,rwx'

PS1='[\u@\h \W]\$ '
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export LANG=en_US.UTF-8
export EDITOR=vim
export PATH=$PATH:~/.gem/ruby/2.0.0/bin

#complete -cf sudo
#complete -cf man
