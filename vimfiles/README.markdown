# Vimfiles
---
.vimrc file - updated as new configurations are added.

## New installation

Download plug.vim and put in the "autoload" directory.

    mkdir -p ~/.vim/autoload/
    wget -c https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    mv plug.vim ~/.vim/autoload/

open up vim, if the plug commands didn't install automatically run

    :PlugInstall!

## Updating current .vimrc
Make sure your local repo is up to date. (git pull origin master)

or paste in a terminal:

    curl -kL https://raw.githubusercontent.com/nykc/configs/master/vimfiles/update_vimrc.sh | bash

## Post Installation
After copying over the .vimrc file, be sure to run the post_install.sh script,
this will copy over some files necessary for the .vimrc plugins to work correctly.

    curl -kL https://raw.githubusercontent.com/nykc/configs/master/vimfiles/post_install.sh | bash

## Manual Installation
To manually copy over the files the post_install.sh script handles, you will need to create
a few directories. Open up your terminal and enter the following commands:

    mkdir -p ~/.vim/colors ~/.vim/ftplugin

Then copy execute the following commands in terminal:

    cp ~/.vim/plugged/vim-colors-solarized/colors/solarized.vim ~/.vim/colors
    wget -c https://raw.githubusercontent.com/nykc/configs/master/vimfiles/ftplugin/markdown.vim
    wget -c https://raw.githubusercontent.com/nykc/configs/master/vimfiles/ftplugin/text.vim
    mv markdown.vim text.vim ~/.vim/ftplugin/ 


## Changelog

*About versioning: going forward the versioning scheme will follow the (MMP)
major update, minor update, patch format. x.x.xx - starting with version 4.0.00*

- Version: 5.1.01 | 2018-02-17 : vimdiff colorscheme, ignore whitespace
- Version: 5.1.00 | 2017-12-22 : editor-config plugin, minor updates
- Version: 5.0.00 | 2016-06-19 : rewrite of vimrc, refactoring and optimization
- Version: 4.4.00 | 2016-06-13 : removed vundle to use vim-plug
- Version: 4.3.01 | 2016-06-12 : solarized colorscheme was not working
- Version: 4.3.00 | 2016-06-12 : cleanup of old plugins, added vim-polyglot
- Version: 4.2.09 | 2016-06-09 : changed path to markdown from homebrew install
- Version: 4.2.08 | 2015-12-31 : added coffeescript syntax highlighting
- Version: 4.2.07 | 2015-11-19 : cleanup of old plugins 
- Version: 4.2.05 | 2015-11-17 : added Solarized colorscheme, config options
- Version: 4.2.01 | 2015-11-16 : modified Markdown.vim file
- Version: 4.2.00 | 2015-11-16 : added WordProcessor() Function removed text.vim
- Version: 4.1.02 | 2015-09-15 : updates to bundle
- Version: 4.0.02 | 2015-02-06 : added keymap for set paste and set nopaste
- Version: 4.0.01 | 2014-11-27 : added vim-jade syntax, remove sudo install"
- Version: 4.0.00 | 2014-10-02 : new versioning system
- Version: 3.2.05 | 2014-09-15 : synced vimrc with work vimrc file
- Version: 3.2.00 | 2014-09-13 : added several plugins
- Version: 3.1.00 | 2014-06-23 : replaced deprecated vundle with updated version
- Version: 3.0.13 | 2014-05-15 : minor behavioural tweaks unix/mac
- Version: 3.0.12 | 2014-03-10 : remove bundle delimitMate
- Version: 3.0.11 | 2014-03-07 : added bundles (vim-javascript, vim-indent-guides, delimitMate)
- Version: 2.0.10 | 2013-11-21 : added tritiumscript, Haml, and Sass highlighting
- Version: 2.0.09 | 2013-11-03 : added support for markdown filetype
- Version: 2.0.08 | 2013-08-12 : NERDTree tabs and Tabular added
- Version: 2.0.05 | 2013-08-09 : additional plugins for webdevelopment/ colorschemes
- Version: 2.0.03 | 2013-08-09 : force support for 256 colors in terminal
- Version: 2.0.00 | 2013-08-08 : installed Vundle/ Removed Pathogen
- Version: 1.9.03 | 2013-08-08 : created a README.markdown file with instructions
- Version: 1.9.02 | 2013-08-08 : added pathogen to .vimrc
- Version: 1.9.00 | 2013-04-04 : minor updates and formatting
- Version: 1.8.01 | 2013-02-03 : added a ftplugin directory and text.vim file
- Version: 1.8.00 | 2013-02-02 : added colors/ directory
- Version: 1.7.01 | 2012-12-12 : markdown to html mappings
- Version: 1.7.00 | 2012-12-11 : added markdown mapping
- Version: 1.6.03 | 2012-09-13 : created mapping to toggle hlsearch
- Version: 1.6.02 | 2012-09-12 : added search highlighting
- Version: 1.6.01 | 2012-07-16 : changed colorscheme to Herald
