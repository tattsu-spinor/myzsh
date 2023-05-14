### Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

### パスの重複を除外
typeset -U path fpath

### compinit
autoload -Uz compinit && compinit

### Sheldon
eval "$(sheldon source)"

### Prompt (Oh My Posh)
eval "$(oh-my-posh init zsh --config ~/.config/mytheme.omp.json --manual)"
eval "$(oh-my-posh completion zsh)"

### zoxide
eval "$(zoxide init zsh)"

### fzf
[[ -f "$HOME/.fzf.zsh" ]] && builtin source ~/.fzf.zsh

### Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
