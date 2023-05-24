#!/usr/bin/env bash

# Install tmux in system
#

DOTFILES="$HOME/.dotfiles"
TMUX="$DOTFILES/tmux"
TMUX_CONFIG_FILE="$HOME/.tmux.conf"
NOW=$(date +%F-%T | tr ":-" "_")

# Install Tmux Plugin Manager
[ -d "$TMUX/plugins" ] || mkdir -p "$TMUX/plugins"
if [ -d "$TMUX/plugins/tpm" ]; then
	cd "$TMUX/plugins/tpm" && git pull --quiet
	echo "Updated Tmux Plugin Manager"
else
	git clone --quiet --depth 1 https://github.com/tmux-plugins/tpm "$TMUX/plugins/tpm"
	echo "Installed Tmux Plugin Manager"
fi

# Now that TPM is installed, we just install the main config file.
if [ -f $TMUX_CONFIG_FILE ]; then
	mv $TMUX_CONFIG_FILE "$TMUX_CONFIG_FILE.$NOW.bak" && echo "Found $TMUX_CONFIG_FILE in home directory (Backed up)"
fi

ln -s "$TMUX/tmux.conf" $TMUX_CONFIG_FILE && echo "Symlinked $TMUX_CONFIG_FILE"

echo "Tmux installation done, make sure to run Prefix+I when inside tmux to install other plugins."
