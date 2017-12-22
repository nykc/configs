#!/bin/bash

cd "$HOME/Downloads"

wget -c https://raw.githubusercontent.com/nykc/configs/master/vimfiles/vimrc
echo "Updating .vimrc"
sudo mv vimrc ~/.vimrc

echo ".vimrc has been updated"
