#!/bin/bash
# cd <plugindir>
# vim -c "helptags doc/"

# mkdir -p ~/.vim/pack/tpope/start
# cd ~/.vim/pack/tpope/start
# git clone https://tpope.io/vim/speeddating.git
# vim -u NONE -c "helptags speeddating/doc" -c q

vim -u NONE -c "helptags $1" -c q

