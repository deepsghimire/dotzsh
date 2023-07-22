#paths
typeset -U path #preserve uniqueness of directories
path=("$HOME/.local/bin" $path)
path=("$HOME/go/bin" $path)
path=("$HOME/bin" $path)
path=("$HOME/.cargo/bin" $path)
path=("$HOME/.dotnet/tools" $path)
path=("$HOME/.luarocks/bin" $path)


typeset -U fpath

fpath=(~/bin/funcs $fpath)
