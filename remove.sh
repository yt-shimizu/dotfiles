#!/bin/bash

DOT_FILES=( .vim .gitconfig .gitignore .pryrc .gemrc .tmux.conf .vimrc .zshrc .editorconfig .gitattributes .ctags .config/fish )

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
done

rm -rf ~/.zprezto ~/.vim/dein ~/.config/fish
