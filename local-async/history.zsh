# historyコマンドの設定
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000 # メモリ上の保存件数
SAVEHIST=10000 # ファイル上の保存件数
HIST_STAMPS="yyyy-mm-dd"

## @see https://zsh.sourceforge.io/Doc/Release/Options.html#History
setopt hist_ignore_all_dups # 過去の重複した履歴を削除
setopt hist_ignore_space # 空白から始まるコマンドを無視
setopt hist_reduce_blanks # 余計な空白を削除
setopt inc_append_history # コマンドを実行したらすぐに履歴を追加
setopt share_history # 複数ターミナル間で履歴を共有
