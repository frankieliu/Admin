
# development

1. forked tts-mod-vault github

# branched 

# running

flutter run -d linux

will run flutter made for linux

# workflow

1. ssh to linux box
2. linux> tmux
3. linux> cd to repo
4. linux> export DISPLAY=:0
5. linux> flutter run -d linux
6. dev> change code on dev machine
7. dev> git add .; git commit -m"message"; git push
8. linux> C-b c # create new tmux
9. linux> git pull # assume at repo
