# vim-plug

## installation
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl ... plug.vim > plug.vim

mv plug.vim ~/.vimrc/autoload

# usage

## in .vimrc

call plug#begin()
Plug '<some plugin>'
call plug#end()

restart vim
:PlugInstall

:PlugUpdate
