#!/bin/bash

echo "Start Install"
 mkdir -p  ~/.vim/colors ~/.vim/after ~/.vim/after/ftplugin ~/.vim/bundle;
 mkdir -p ~/.vim/ftdetect ~/.vim/indent ~/.vim/syntax ~/.vim/compiler;
echo "Moving vim files"
wget -c https://raw.github.com/nykc/vimfiles/master/ftplugin/markdown.vim
echo "Installing markdown.vim"
 mv markdown.vim ~/.vim/after/ftplugin/
wget -c https://raw.github.com/nykc/vimfiles/master/ftplugin/text.vim
echo "Installing text.vim"
 mv text.vim ~/.vim/after/ftplugin/
wget -c https://raw.github.com/tpope/vim-haml/master/compiler/haml.vim
wget -c https://raw.github.com/tpope/vim-haml/master/compiler/sass.vim
echo "Install haml.vim, sass.vim compiler file"
 mv haml.vim sass.vim ~/.vim/compiler
wget -c https://raw.github.com/tpope/vim-haml/master/ftdetect/haml.vim
echo "Install haml, sass file detection"
 mv haml.vim ~/.vim/ftdetect
wget -c https://raw.github.com/tpope/vim-haml/master/ftplugin/haml.vim
wget -c https://raw.github.com/tpope/vim-haml/master/ftplugin/sass.vim
wget -c https://raw.github.com/tpope/vim-haml/master/ftplugin/scss.vim
echo "Install haml, sass ftplugin"
 mv haml.vim sass.vim scss.vim ~/.vim/ftplugin
wget -c https://raw.github.com/tpope/vim-haml/master/indent/haml.vim
wget -c https://raw.github.com/tpope/vim-haml/master/indent/sass.vim
wget -c https://raw.github.com/tpope/vim-haml/master/indent/scss.vim
echo "Install haml, sass, scss indent files"
 mv haml.vim sass.vim scss.vim ~/.vim/indent
wget -c https://raw.github.com/tpope/vim-haml/master/syntax/haml.vim
wget -c https://raw.github.com/tpope/vim-haml/master/syntax/sass.vim
wget -c https://raw.github.com/tpope/vim-haml/master/syntax/scss.vim
echo "Install syntax highlighting haml, sass, scss files"
 mv haml.vim sass.vim scss.vim ~/.vim/syntax

wget -c https://github.com/nykc/vimfiles/raw/master/vimrc
echo "Updating .vimrc"
 cp vimrc ~/.vimrc;

echo "Installation Complete!"
