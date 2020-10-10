# XDG SPECS

export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config

# MISC EXPORTS
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/histor
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
#export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export LESSHISTFILE=-
#export ncmcpp_directory=
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export SQLITE_HISTORY="$XDG_DATA_HOME"/sqlite_history
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

# ALIASES
alias vim="vim -i /tmp/.viminfo -u $XDG_CONFIG_HOME/vim/vimrc"
alias node="NODE_REPL_HISTORY=/tmp/.node_repl_history node"
alias tmux="tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"
alias startx="startx \"$XINITRC\" -- \"$XSERVERRC\" vtl"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
alias weechat="weechat -d $WEECHAT_HOME"
alias irssi="irssi --config=$XDG_CONFIG_HOME/irssi/config --home=$XDG_DATA_HOME/irssi"
alias nvidia-settings="nvidia-settings --config=$XDG_CONFIG_HOME/nvidia/settings"
