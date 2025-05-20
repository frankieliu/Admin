# create
conda create -n <env> python=3.13

# list
conda info --env
conda env list

# remove
conda remove -n <env> --all

# list packages 
conda list -e

# conda config channels
conda config --env --add channels conda-forge
conda config --env --add channels microsoft
