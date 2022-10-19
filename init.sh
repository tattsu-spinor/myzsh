#!/bin/sh

CURRENT=$(cd $(dirname $0); pwd)

## .zshrcのシンボリックリンクを作成
ln -sv $CURRENT/.zshrc ~

## plugins.tomlのシンボリックリンクリンクを作成
SHELDON=~/.config/sheldon
mkdir -pv $SHELDON
ln -sv $CURRENT/plugins.toml $SHELDON

## local pluginのシンボリックリンクを作成
mkdir -pv $SHELDON/local
for file in $CURRENT/local_plugins/*.zsh
do
    ln -sv $file $SHELDON/local
done
