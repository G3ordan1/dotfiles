# check TTY to run Hyprland or Plasma

# if [[ "$(tty)" == "/dev/tty1" ]]
#   then Hyprland 2>&1 > /dev/null;
# fi
#
# if [[ "$(tty)" == "/dev/tty2" ]]
#   then startx 2>&1 > /dev/null;
# fi

# eval $(thefuck --alias)
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions history-substring-search zsh-syntax-highlighting)

function cd() {
	builtin cd "$@" && command ls --group-directories-first --color=auto -F
}

ZSH_THEME="robbyrussell"

while read file
do 
  source "$ZDOTDIR/$file.zsh"
done <<-EOF
env
aliases
options
keybinds
EOF

# source $ZSH/oh-my-zsh.sh
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/starship.toml
eval $(starship init zsh)

while read file
do 
  source "$HOME/.oh-my-zsh/custom/plugins/$file/$file.zsh"
done <<-EOF
zsh-syntax-highlighting
zsh-history-substring-search
zsh-autosuggestions
EOF

# vim:ft=zsh:nowrap
