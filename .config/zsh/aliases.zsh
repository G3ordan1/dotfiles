##
## Aliases
##

alias vim="nvim"
alias r="radian"
alias py="ipython"
export PATH=$HOME/.bin:$PATH
export EDITOR="nvim"
export PATH=/home/geordan/.local/bin:$PATH
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias vc="protonvpn-cli c -f"
alias vd="protonvpn-cli d"
alias plz="sudo"
alias yeet="sudo pacman -Rns"
alias yay="paru"
alias zshconfig="nvim .config/zsh/"
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias c="clear"
alias q="exit"
alias mtar='tar -zcvf' # mtar <archive_compress>
alias utar='tar -zxvf' # utar <archive_decompress> <file_list>
alias z='zip -r' # z <archive_compress> <file_list>
alias uz='unzip' # uz <archive_decompress> -d <dir>
alias ..="cd .."
alias mkdir="mkdir -p"
alias fm='ranger'
alias parucheck="paru -Gp"
alias cleanpac='sudo pacman -Rns $(pacman -Qtdq); paru -c'
alias installed="grep -i installed /var/log/pacman.log"
alias ls="exa --color=auto --icons"
alias l="ls -l"
alias la="ls -a"
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -vr'
alias rm='rm -vr'
alias commit="git commit -m"
# vim:ft=zsh
