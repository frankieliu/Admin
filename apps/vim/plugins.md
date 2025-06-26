# vim-plug

## installation

curl ... plug.vim > plug.vim

mv plug.vim ~/.vimrc/autoload

# usage

call plug#begin()
Plug '<some plugin>'
call plug#end()

restart vim
:PlugInstall

:PlugUpdate
