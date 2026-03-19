#!/bin/bash

mkdir -p ~/.config

# Neovim
# install dependencies
sudo apt install ripgrep
sudo apt install xclip
# create symbolic link
ln -snv ~/.dotfiles/nvim/ ~/.config/nvim

# Tmux
ln -snv ~/.dotfiles/.tmux.conf ~/.tmux.conf

# .bashrc
# alias
ln -snv ~/.dotfiles/bashrc/.bash_aliases ~/.bash_aliases
