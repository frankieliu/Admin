
1. update windows
   1. may install windows 11
   1. may need this for vs code install
1. install google-chrome
1. install Discord
1. install cpu-z
1. install cygwin
   1. install vim
   1. install dos2unix
   1. add export SHELLOPTS; set -o igncr
      to ignore carriage return in shell scripts from conda
   1. modify ~/.bashrc
      1. uncomment rm, cp, mv and read from `.bash_aliases`
   1. `cd; ln -s /cygdrive/c/Users/<user>/Downloads .`
   1. `mv ~/Downloads/setup-x86_64 ~/bin`
1. install miniconda
   1. `/cygdrive/c/Users/<user>/miniconda3/Scripts/conda init bash`
   1. `cd ~/bin; ln -s /cygdrive/c/Users/<user>/miniconda3/etc/profile.d/conda.sh .`
   1. `cd ~/bin; . conda.sh`
1. install git
   1. turn off autocrlf
      `git config --global core.autocrlf false`
1. install gh
   1. gh auth login # needs git to be installed first
   1. gh repo clone frankieliu/Admin
