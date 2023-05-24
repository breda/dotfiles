#!/usr/bin/env bash

#
# Dotfiles install script
#
# Each subfolder has a dedicated install.sh that handles installing
#
# This script calls all child install.sh files
# This keeps things clean and tidy.
#

INSTALLER_FILENAME="install.sh"
DEPS_FILENAME="packages.txt"

# Setup configuration files for all programs/utils
function setup() {
	local installers=$(find . -mindepth 2 -name $INSTALLER_FILENAME)

	for installer in $installers; do
		echo "Executing installer: $installer"
		echo "#####################################################"
		/bin/bash $installer
		echo "#####################################################"
	done
}

# Install system dependencies
function deps() {
	local deps=$(cat $DEPS_FILENAME | grep -v -E "^#" | tr "\n" " ")

	echo "#####################################################"
	echo "########### Installing Official Packages ############"
	echo "#####################################################"
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
		echo "Did you mean setup? or deps?"
		;;
esac

