#!/bin/sh

# シンボリックリンクの作成
DOT_FILES=".zshrc .vimrc .gitconfig"
for file in $DOT_FILES
do
    ln -sf `pwd`/$file ~
done