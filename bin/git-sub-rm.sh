#!/bin/bash

submodule=$1

if [ ! -d "$submodule" ]; then
    echo "$submodule does not exist"
    exit
fi

# from git root
git submodule deinit -f "$submodule"
git rm -f "$submodule"
rm -rf ".git/modules/$submodule"

# git submodule deinit seems to be doing the one below
# git config -f ".git/config" --remove-section "submodule.$submodule" 2> /dev/null
# git commit -m"Removing $submodule"

# https://gist.github.com/myusuf3/7f645819ded92bda6677
# https://stackoverflow.com/a/21211232

