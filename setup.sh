#!/bin/bash

DOT_FILES=( .vim .gitconfig .gitignore .pryrc .gemrc .tmux.conf .vimrc .zshrc .editorconfig .gitattributes .ctags .config/fish )

for file in ${DOT_FILES[@]}
do
    ln -sfn $HOME/dotfiles/$file $HOME/$file
done

# install zprezto
[ ! -d ~/.zprezto ] && git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# install dein.vim
[ ! -d ~/.vim/dein ] && mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim && git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim

# fish_update
[ ! -d ~/.config/fish ] && fish -c "curl -sL git.io/fisher | source && fisher update"

GIT_CONFIG_LOCAL=~/.gitconfig.local
if [ ! -e $GIT_CONFIG_LOCAL ]; then
	echo -n "git config user.email?> "
	read GIT_AUTHOR_EMAIL

	echo -n "git config user.name?> "
	read GIT_AUTHOR_NAME

	cat << EOF > $GIT_CONFIG_LOCAL
[user]
    name = $GIT_AUTHOR_NAME
    email = $GIT_AUTHOR_EMAIL
EOF
fi
