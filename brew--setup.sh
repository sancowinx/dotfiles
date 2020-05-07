#!/bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Do a brew bundle
# Note: The problem with running brewfile inside folder is it generates Brewfile.lock like npm install
# Is there anyway to check if it is running in the home folder?
brew bundle --file ./Brewfile