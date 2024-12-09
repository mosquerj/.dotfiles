#!/bin/bash
rm -f ~/.nanorc
sed -i '/source ~\/.dotfiles\/etc\/etc\/bashrc_custom/d' ~/.bashrc
rm -rf ~/.TRASH

