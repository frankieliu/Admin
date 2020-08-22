SHELL := /bin/bash

CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

ihsec:
	wget https://raw.githubusercontent.com/daedreth/ihsec/master/ihsec.sh
	chmod +x ihsec.sh

trash-cli-install:
	cd trash-cli; \
	python3 setup.py install --user

drive-cli-install:
	cd drive-cli; \
	conda activate py38; \
	pip install -e .

.ONESHELL:
py38os:
	conda activate py38; \
	python --version

py38:
	$(CONDA_ACTIVATE) py38; \
	python --version
    		    
