#!/bin/bash
rm -f "$HOME/.nanorc"
sed -i '/source $HOME\/.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc"
rm -rf "$HOME/.TRASH"

