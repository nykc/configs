#!/bin/bash

# Run this script after copying over the .vimrc and running vim-plug

echo "Start Install"
 mkdir -p ~/.vim/colors ~/.vim/ftplugin
echo "Moving vim files..."
wget -c https://raw.githubusercontent.com/nykc/configs/master/vimfiles/ftplugin/markdown.vim
echo "Installing markdown.vim"
 mv markdown.vim ~/.vim/ftplugin/
wget -c https://raw.githubusercontent.com/nykc/configs/master/vimfiles/ftplugin/text.vim
echo "Installing text.vim"
 mv text.vim ~/.vim/ftplugin/
echo "Copying files..."
 cp ~/.vim/plugged/vim-colors-solarized/colors/solarized.vim

wget -c https://raw.githubusercontent.com/nykc/configs/master/vimfiles/update_vimrc.sh
sh update_vimrc.sh

echo "Post installation process complete."

