#!/bin/bash

mkdir -p ~/.config

# Neovim
# install dependencies
sudo apt-get install ripgrep
# create symbolic link
ln -snv ~/.dotfiles/nvim/ ~/.config/nvim

# Tmux
ln -snv ~/.dotfiles/.tmux.conf ~/.tmux.conf
