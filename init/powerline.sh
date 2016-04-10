#!/bin/sh

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
