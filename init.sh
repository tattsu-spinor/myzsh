#!/bin/sh

CURRENT=$(cd $(dirname $0); pwd)

## .zshrcのシンボリックリンクを作成
ln -sv $CURRENT/.zshrc ~

## plugins.tomlのシンボリックリンクリンクを作成
mkdir -pv ~/.sheldon
ln -sv $CURRENT/plugins.toml ~/.sheldon

## local pluginのシンボリックリンクを作成
mkdir -pv ~/.sheldon/local
for file in $CURRENT/local_plugins/*.zsh
do
    ln -sv $file ~/.sheldon/local
done
