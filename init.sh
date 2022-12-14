#!/bin/sh

CURRENT=$(cd $(dirname $0); pwd)
SHELDON=~/.config/sheldon

## .zshrcのシンボリックリンクを作成
ln -fsv $CURRENT/.zshrc ~

## plugins.tomlのシンボリックリンクリンクを作成
mkdir -pv $SHELDON
ln -fsv $CURRENT/plugins.toml $SHELDON

## local-asyncのシンボリックリンクを作成
mkdir -pv $SHELDON/local-async
for file in $CURRENT/local-async/*.zsh
do
    ln -fsv $file $SHELDON/local-async
done
