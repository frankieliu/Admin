
1. update windows
   1. may install windows 11
   1. may need this for vs code install
1. install google-chrome
1. install Discord
1. install cpu-z
1. install cygwin
   1. install vim
   1. install dos2unix
   1. add export SHELLOPTS; set -o igncr in .bash_profile
      to ignore carriage return in shell scripts from conda
   1. modify ~/.bashrc
      1. uncomment rm, cp, mv and read from `.bash_aliases`
   1. `cd; ln -s /cygdrive/c/Users/<user>/Downloads .`
   1. `mv ~/Downloads/setup-x86_64 ~/bin`
1. install miniconda
   1. `/cygdrive/c/Users/<user>/miniconda3/Scripts/conda init bash`
   1. `cd ~/bin; ln -s /cygdrive/c/Users/<user>/miniconda3/etc/profile.d/conda.sh .`
   1. `cd ~/bin; . conda.sh`
   1. `conda create --name py311 python=3.11`
   1. `conda activate py311`
   1. `conda config --add channel conda-forge`
   1. `conda install pytest exceptiongroup`
      needed by pytest 
1. install git
   1. turn off autocrlf
      `git config --global core.autocrlf false`
   1. to set user.name and user.email correctly you have to do it
      in git bash (cygwin shell will not save in the correct location)
      `git config --global user.name "Frankie Liu"`
      `git config --global user.email "frankie.y.liu@gmail.com"`
1. install gh
   1. In py311 env:
      `conda install gh --channel conda-forge` 
   1. gh auth login # needs git to be installed first
   1. gh repo clone frankieliu/Admin
1. install vs code
   1. sync settings
   1. to set