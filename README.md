# myzsh


## sheldonについて

- [公式ドキュメント](https://sheldon.cli.rs/Introduction.html)
- [レポジトリ](https://github.com/rossmacarthur/sheldon)
- [zinitが不安なのでsheldonへ移行したらzshの起動が50msと更に速くなった](https://ktrysmt.github.io/blog/migrate-zinit-to-sheldon/)

## 初期設定

1. `brew install sheldon`を実行する。
2. ~/.zshrcを削除する。(必要ならバックアップを取る。)
3. このレポジトリを任意の場所に`git clone`する。
4. レポジトリのルートディレクトリに`cd`する。
5. `chmod +x init.sh`を実行して実行権限を付与。
6. `./init.sh`を実行する。
7. `exec zsh`で再起動すれば完了。

## カスタム設定

- sheldonの公式ドキュメントなどを参考にしてplugins.tomlを編集する。
- 基本的に自前の設定は~/.config/sheldon/local以下にzshファイルを作成して書き込めばOK。
  - 例えば、パスの設定を記述したpath.zshなど。
  - ただし、ここに置くと遅延読み込みされるため、それだとまずい場合はplugins.tomlに以下のような記述を追加して~/.config/sheldon/local_sync以下にzshファイルを置く。
    ```toml
    [plugins.local-sync]
    local = "~/.config/sheldon/local_sync"
    apply = ["source"]
    ```

## よく使うコマンド

- `sheldon lock --update`: プラグインの更新
  - plugins.lockを再生成する。
- `sheldon source`: 実際に実行するコマンドの出力
  - plugins.lockを読み込む。
  - plugins.tomlの変更を検出したら`sheldon lock --update`を先に行う。
