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

# https://stackoverflow.com/questions/1230084/how-to-have-git-log-show-filenames-like-svn-log-v
# https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History
git-changes:
	git log --name-only
	git log --name-status
	git log --stat
	git log --numstat
	git log --name-only --oneline
	git log --name-status --find-renames
	git log --pretty=oneline --graph --name-status
	git log --stat --pretty=short --graph
	git config --global alias.ls 'log --stat --pretty=short --graph'
	git log --name-only --pretty=format:
	git diff --stat HEAD^

# revert vs reset vs rebase
# https://opensource.com/article/18/6/git-reset-revert-rebase-commands
git-reset:
	git reset 9ef9173
	git reset current-2

