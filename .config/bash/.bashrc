CONFIG="$HOME/.config/bash"

if [ -f $CONFIG/.bashrc_alias ]; then
    . $CONFIG/.bashrc_alias
fi
if [ -f $CONFIG/.bashrc_angular ]; then
    . $CONFIG/.bashrc_angular
fi
if [ -f $CONFIG/.bashrc_path ]; then
    . $CONFIG/.bashrc_path
fi
if [ -f $CONFIG/.bashrc_rust ]; then
    . $CONFIG/.bashrc_rust
fi
if [ -f $CONFIG/.bashrc_starship ]; then
    . $CONFIG/.bashrc_starship
fi
if [ -f $CONFIG/.bashrc_tmux ]; then
    . $CONFIG/.bashrc_tmux
fi
