#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tomasr/molokai.git && mkdir -p ~/.vim/colors && cp molokai/colors/molokai.vim ~/.vim/colors && rm -rf molokai

brew install zsh
brew install the_silver_searcher
