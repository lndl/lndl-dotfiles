#!/bin/sh

# Neovim
echo "Configuring nvim..."
ln -s "$HOME/lndl-dotfiles/nvim" ~/.config/nvim
nvim -u "$HOME/lndl-dotfiles/nvim/plugins.vim" +PlugInstall +qall > /dev/null

# Tmux
echo "Configuring tmux..."
ln -s "$HOME/lndl-dotfiles/tmux/tmux.conf" ~/.tmux.conf

if [ $(uname) = "Darwin" ]
then
  echo "You're in OSX. Do nothing."
else
  # Powerline fonts
  echo "Cloning Powerline fonts repo"
  git clone \
    https://github.com/powerline/fonts \
    /tmp/powerline-fonts 2> /dev/null

  echo "Installing Powerline fonts repo..."
  /tmp/powerline-fonts/install.sh
fi

echo "All done"
