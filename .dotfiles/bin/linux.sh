#!/bin/bash
if [ "$(uname)" != "Linux" ]; then
	echo "Error: This script only works on Linux." >> linuxsetup.log
	exit 1
fi
if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
fi
if [ -f "$HOME/.nanorc" ]; then
	mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
	echo "Renamed .nanorc to bup_nanorc" >> linuxsetup.log
fi
cp .dotfiles/etc/nanorc "$HOME/.nanorc"
echo "source $HOME/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"

