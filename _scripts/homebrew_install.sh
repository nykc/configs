#!/bin/bash

# Run after installing homebrew and xcode command line tools. View README.md for help with installation

echo "Install common tools..."
brew install tmux git vim python3 wget node mysql markdown gnupg gnupg2
brew update

echo "Updates complete!"
