#!/bin/bash

#clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf Vundle.vim

#clone/copy/remove colour theme
git clone https://github.com/Haron-Prime/evening_vim.git
cp evening_vim/colors/evening.vim ~/.vim/colors/evening.vim
rm -rf evening_vim

#copy .vimrc
cp .vimrc ~/.vimrc

#install plugins
vim +PluginInstall +qall
