# errors

Although I have git pointed to c:/program files/git/cmd/git.exe,
running

git config --global user.name "Frankie Liu"
git config --global user.email "frankie.y.liu@gmail.com"

did not register the user.email

git config --list

Looking at vscode

Ctrl-, git.path

The path is to the same above

# Solution

1. run git bash
2. do the git config
3. test git config --list
   
git bash takes git from /mingw64/bin/git

# location of gitbash /
To figure out location of /mingw64 do the following:

cd /
explorer .

This is located in Program Files / Git / bin / git.exe