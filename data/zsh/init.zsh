source ~/.config/zsh/paths.zsh
source ~/.config/zsh/exports.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/completions.zsh
source ~/.config/zsh/opts.zsh
source ~/.config/zsh/autoloads.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source ~/.config/zsh/hooks.zsh
#source /usr/share/nvm/init-nvm.sh



unalias run-help
autoload run-help
bindkey '' run-help


bindkey -v

eval "$(zoxide init zsh --cmd j)"
