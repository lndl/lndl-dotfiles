echo "Configuring local bins (mostly helpers)"

ln -s "$HOME/lndl-dotfiles/bin" ~/.bin
echo 'export PATH=$PATH:$HOME/.bin' >> ~/.zsh/exports.zsh
