
# syntax for zstyle
# zstyle <pattern> <style> <value>

# syntax for pattern
# :completion:<function>:<completer>:<command>:<argument>:<tag>

autoload -Uz compinit
compinit
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' completer _extensions _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle -e ':completion:*:approximate:*' \
        max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list alway
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*:cd:*' ignore-parents parent pwd
