#!/bin/sh

# Neovim
echo "Configuring nvim..."
ln -s "$HOME/lndl-dotfiles/nvim" ~/.config/nvim
nvim +PlugInstall +qall > /dev/null
echo "alias vim=\"nvim\"" >> "$HOME/.zshrc"

# Tmux
echo "Configuring tmux..."
ln -s "$HOME/lndl-dotfiles/tmux/tmux.conf" ~/.tmux.conf
echo "alias tmux=\"tmux -2\"" >> "$HOME/.zshrc"

# Powerline fonts
echo "Cloning Powerline fonts repo"
git clone \
	https://github.com/powerline/fonts \
	/tmp/powerline-fonts 2> /dev/null

echo "Installing Powerline fonts repo..."
/tmp/powerline-fonts/install.sh

echo "All done"
