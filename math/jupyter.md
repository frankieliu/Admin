conda install -c conda-forge jupyterlab

-- don't think you need this one
pip install jupyter_http_over_ws
jupyter serverextension enable --y jupyter_http_over_ws

-- use this instead
-- also installs notebook
conda install -c conda-forget jupyter_http_over_ws


. bin/conda.sh
pip install jupyter_http_over_ws
jupyter server extension enable --py jupyter_http_over_ws

jupyter notebook \
--NotebookApp.allow_origin-"https://colab.research.google.com" \ 
--port-8888 \
--NotebookApp.port_retries = 0

copy the browser info;
http://locatlhost:888/?token=....

Colab - connect to local runtime enter the urla and connect


# conda init
this seems only change the powershell

# powershell restriction

Allow powershell to run scripts:

1. powershell in admin mode
1. Set-ExectuionPolicy RemoteSigned
1. easiest policy in unrestricted

# try 3

conda create -n py310 python=3.10
. bin/conda.sh
conda activate py310
pip install jupyter
pip install jupyter_http_over_ws
jupyter server extension enable --py jupyter_http_over_ws
. jupyter_colab.sh
getting problem notebook.base missing
module http_over_ws could not be found (No module named 'notebook.base')
