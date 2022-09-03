#!/bin/sh

CURRENT=$(cd $(dirname $0); pwd)

## .zshrcのシンボリックリンクを作成
ln -sv $CURRENT/.zshrc ~

## plugins.tomlのシンボリックリンクリンクを作成
mkdir -p ~/.sheldon
ln -sv $CURRENT/plugins.toml ~/.sheldon

## local pluginのシンボリックリンクを作成
mkdir -p ~/.sheldon/local_plugins
for file in $CURRENT/local_plugins/*.zsh
do
    ln -sv $file ~/.sheldon/local_plugins
done
