ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

vim_setting?=focal

vim:
	ln -s $(ROOT_DIR)/$(vim_setting)/vim ~/.vim
	ln -s $(ROOT_DIR)/$(vim_setting)/vimrc ~/.vimrc

