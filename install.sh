#!/bin/bash

mkdir -p ~/.config

# Neovim
ln -snv ~/.dotfiles/nvim/ ~/.config/nvim

# Tmux
ln -snv ~/.dotfiles/.tmux.conf ~/.tmux.conf
