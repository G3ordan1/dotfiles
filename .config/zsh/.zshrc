## ░▀▀█░█▀▀░█░█░█▀▄░█▀▀
## ░▄▀░░▀▀█░█▀█░█▀▄░█░░
## ░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀
##
## rxyhn's Z-Shell configuration
## https://github.com/rxyhn

# check TTY to run Hyprland or Plasma

# if [[ "$(tty)" == "/dev/tty1" ]]
#   then Hyprland 2>&1 > /dev/null;
# fi
#
# if [[ "$(tty)" == "/dev/tty2" ]]
#   then startx 2>&1 > /dev/null;
# fi

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
eval $(thefuck --alias)

# fnm
export PATH="/home/geordan/.local/share/fnm:$PATH"
eval "`fnm env`"

while read file
do 
  source "$ZDOTDIR/$file.zsh"
done <<-EOF
theme
env
aliases
utility
options
plugins
keybinds
prompt
EOF

# vim:ft=zsh:nowrap
