#!/usr/bin/env zsh

MYZSH_PATH=$(realpath $(dirname $0)/..)
SHELDON_PATH=$HOME/.config/sheldon

## .zshrcのシンボリックリンクを作成
ln -fsv $MYZSH_PATH/.zshrc $HOME

## plugins.tomlのシンボリックリンクリンクを作成
mkdir -pv $SHELDON_PATH
ln -fsv $MYZSH_PATH/plugins.toml $SHELDON_PATH

## local-asyncのシンボリックリンクを作成
mkdir -pv $SHELDON_PATH/conf.d
for file in $MYZSH_PATH/conf.d/*.zsh
do
    ln -fsv $file $SHELDON_PATH/conf.d
done
