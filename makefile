ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
deploy:
	if [ ! -d ~/.dotfiles ]; then \
		mkdir ~/.dotfiles; \
		cd ~/.dotfiles; \
		git init .; \
	fi; \
	mv ~/.bashrc ~/.dotfiles; \
	git add .; \
        git commit -m".bashrc"; \
        ln -s $(ROOT_DIR)/bin $(HOME)/bin; \
	ln -s $(ROOT_DIR)/bash/bashrc $(HOME)/.bashrc
