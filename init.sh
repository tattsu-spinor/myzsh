!/bin/sh

CURRENT=$(cd $(dirname $0); pwd)

## .zshrcのシンボリックリンクを作成
ln -sv $CURRENT/.zshrc ~