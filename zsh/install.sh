#!/usr/bin/env bash

# Install zsh in system
#

DOTFILES="$HOME/.dotfiles"
ZSH="$DOTFILES/zsh"
ZSH_CONFIG_FILE="$HOME/.zshrc"
NOW=$(date +%F-%T | tr ":-" "_")

# These plugins are to be installed in the plugins dir inside zsh
PLUGINS=("https://github.com/Licheam/zsh-ask", "https://github.com/breda/zsh-ssh-quickconnect")

[ -d "$ZSH/plugins" ] || mkdir -p "$ZSH/plugins"
for PLUGIN_REPO in $PLUGINS; do
    PLUGIN_NAME=$(basename $PLUGIN_REPO)
    if [ -d $PLUGIN_NAME ]; then
        cd "$ZSH/plugins/$PLUGIN_NAME" && git pull --quiet
        echo "Updated $PLUGIN_NAME"
    else
        git clone --quiet --depth 1 $PLUGIN_REPO $PLUGIN_NAME
        echo "Installed $PLUGIN_NAME"
    fi
done

# Now that our plugins are installed, we just install the main config file.
if [ -f $ZSH_CONFIG_FILE ]; then
	mv $ZSH_CONFIG_FILE "$ZSH_CONFIG_FILE.$NOW.bak" && echo "Found $ZSH_CONFIG_FILE in home directory (Backed up)"
fi

ln -s "$ZSH/zshrc" $ZSH_CONFIG_FILE && echo "Symlinked $ZSH_CONFIG_FILE"
echo "Zsh install done"
