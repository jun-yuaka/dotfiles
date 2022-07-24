#!/bin/sh

# ~/dotfilesが存在しなければリポジトリをダウンロードする
if ! [ -e ~/dotfiles ]; then
    git clone https://github.com/jun-yuaka/dotfiles.git ~/dotfiles
fi

# ~/.zshrcが存在したら~/.zshrc.orgにリネームして退避する
if [ -e ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.org
fi

# シンボリックリンクを作成する
ln -s ~/dotfiles/.zshrc ~/.zshrc
