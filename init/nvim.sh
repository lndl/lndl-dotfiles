#!/bin/sh

# Neovim
echo "Configuring nvim..."
ln -s "$HOME/lndl-dotfiles/nvim" ~/.config/nvim
nvim -u "$HOME/lndl-dotfiles/nvim/plugins.vim" +PlugInstall +qall > /dev/null
