#!/bin/bash
if [ "$(uname)" != "Linux" ]; then
	echo "Error: This script only runs on Linux." >> linuxsetup.log
	exit
fi
mkdir -p ~/.TRASH
if [ -f ~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "Renamed existing .nanorc to .bup_nanorc" >> linuxsetup.log
fi
cat ~/.dotfiles/etc/nanorc > ~/.nanorc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

