#!/usr/bin/env bash

#
# Dotfiles install script
#
# Each subfolder has a dedicated install.sh that handles installing
#
# This script calls all child install.sh files
# This keeps things clean and tidy.
#

# Setup configuration files for all programs/utils
function setup() {
	local installers=$(find . -mindepth 2 -name install.sh)

	for installer in $installers; do
		echo "Executing installer: $installer"
		echo "#####################################################"
		/bin/bash $installer
		echo "#####################################################"
	done
}

# Install system dependencies
function deps() {
	local deps=$(cat ./dependencies.txt | grep -v -E "^#" | tr "\n" " ")
	/bin/sudo pacman -S --noconfirm $deps
}

# Entry point
case $1 in
	"setup")
		setup
		;;

	"deps")
		deps
		;;

	*)
		echo "No idea what that is"
		;;
esac

