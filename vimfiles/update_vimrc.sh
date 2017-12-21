#!/bin/bash

cd "$HOME/Downloads"

wget -c https://github.com/nykc/vimfiles/raw/master/vimrc
echo "Updating .vimrc"
sudo mv vimrc ~/.vimrc

echo ".vimrc has been updated"
