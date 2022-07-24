#!/bin/sh

# ~/dotfilesが存在しなければリポジトリをダウンロードする
if ! [ -e ~/dotfiles ]; then
    git clone https://github.com/jun-yuaka/dotfiles.git ~/dotfiles
fi

# ~/.zshrcが存在したら~/.zshrc.orgにリネームして退避する
if [ -e ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.org
fi

# ~/.config/nvim/init.vimが存在したら~/.config/nvim/init.vim.orgにリネームして退避する
if [ -e ~/.config/nvim/init.vim ]; then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.org
fi

# シンボリックリンクを作成する
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
