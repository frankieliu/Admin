SHELL=bash

ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
.PHONY: ihsec
python:
	wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh

conda_rm_bash:
	conda config --set auto_activate_base false

trash-cli:
	easy_install trash-cli

aptitude: /var/log/aptitude
	cp /var/log/aptitude .

ihsec:
	ln -s $(ROOT_DIR)/emacs/ihsec ~/.ihsec

conda_export_env:
	if [ "x"$(ENV) != "x" ]; then \
	conda env export > python/$(ENV).yml; \
	fi

conda_create_env:
	if [ "x"$(ENV) != "x" ]; then \
	conda env create -f python/$(ENV).yml; \
	fi

