# djnn.sh
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable autocd
shopt -s autocd

# Default programs:
export EDITOR="nvim"
export TERM=xterm-256color

# executing config files
[[ -f ~/.config/bash/aliasrc ]]       &&  source ~/.config/bash/aliasrc
[[ -f ~/.config/bash/functionrc ]]    &&  source ~/.config/bash/functionrc
[[ -f ~/.config/bash/promptrc ]]      &&  source ~/.config/bash/promptrc


# flyctl stuff
export FLYCTL_INSTALL="$HOME/.fly"

# set PATH so it includes user's private bin directories
PATH="$HOME/.local/bin:$PATH:$HOME/go/bin:$HOME/.cargo/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$FLYCTL_INSTALL/bin"

# set dark mode for GTK
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=adwaita-dark

# GPG signing issue fix: https://stackoverflow.com/a/57591830
GPG_TTY=$(tty)
export GPG_TTY
