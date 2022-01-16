#!/bin/bash

# Setup script
DIR="$HOME/.dotfiles"
ZSH="$DIR/zsh"
TMUX="$DIR/tmux"
GIT="$DIR/git"
I3="$DIR/i3wm"
HTOP="$DIR/htop"

# ZSH
########
ZSH_CFILE=~/.zshrc
if [ -f $ZSH_CFILE ]; then
	mv $ZSH_CFILE "$ZSH_CFILE.bak" && echo "Found $ZSH_CFILE in home directory (Backed up)"
fi
ln -s "$ZSH/zshrc.symlink" $ZSH_CFILE && echo "Symlinked $ZSH_CFILE"


# Tmux
#########
TMUX_CFILE=~/.tmux.conf

# Install tmux plugin manager first
[ -d "$TMUX/plugins" ] || mkdir -p "$TMUX/plugins"
if [ -d "$TMUX/plugins/tpm" ]; then
	cd "$TMUX/plugins/tpm" && git pull --quiet
	echo "Updated Tmux TPM repo"
else
	git clone --quiet https://github.com/tmux-plugins/tpm "$TMUX/plugins/tpm"
	echo "Installed Tmux TPM repo"
fi

# Symlink the config file
if [ -f $TMUX_CFILE ]; then
	mv $TMUX_CFILE "$TMUX_CFILE.bak" && echo "Found $TMUX_CFILE in home directory (Backed up)"
fi
ln -s "$TMUX/tmux.symlink" $TMUX_CFILE && echo "Symlinked $TMUX_CFILE"

# Git
########
if [ -f ~/.gitconfig ]; then
	mv ~/.gitconfig ~/.gitconfig.bak && echo "Found gitconfig in home directory (Backed up)"
fi
ln -s $GIT/gitconfig.symlink ~/.gitconfig && echo "Symlinked .gitconfig"

# Htop Rc
########
if [ -f ~/.config/htoprc ]; then
	mv ~/.config/htoprc ~/.config/htoprc.bak && echo "Found htoprc in home directory (Backed up)"
fi
ln -s $HTOP/htoprc.symlink ~/.config/htoprc && echo "Symlinked htoprc"

# i3-wm (Disabled for now)
#########
# main i3 config
# [ -d ~/.i3 ] || mkdir ~/.i3
# if [ -f ~/.i3/config ]; then
# 	mv ~/.i3/config ~/.i3/config.bak &&
# 	echo "Found i3 config file in home directory (Backed up)"
# fi
# ln -s "$I3/i3wm.symlink" ~/.i3/config && echo "Symlinked i3 config file"

# # i3-blocks
# if [ -d "$I3/i3blocks-contrib" ]; then
# 	cd "$I3/i3blocks-contrib" && git pull --quiet
# 	echo "Updated i3blocks contrib repo"
# else
# 	git clone --quiet https://github.com/breda/i3blocks-contrib "$I3/i3blocks-contrib"
# 	echo "Installed i3blocks contrib repo"
# fi

# if [ -f ~/.i3blocks.conf ]; then
# 	mv ~/.i3blocks.conf ~/.i3blocks.conf.bak &&
# 	echo "Found i3blocks config file in home directory (Backed up)"
# fi
# ln -s "$I3/i3blocks.symlink" ~/.i3blocks.conf && echo "Symlinked i3blocks config"



