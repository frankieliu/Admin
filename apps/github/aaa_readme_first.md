# recommendation

1. git checkout <branch>
2. git fetch origin
3. git rebase -i origin/HEAD
4. # fix conflicts
5. git add <fixed-files>
6. git rebase --continue
7. git push origin <branch> --force-with-lease

- initial upstream
  - git push -u origin <branch>
  - -u is --set-upstream
  - git push origin local-branch-name:remote-branch-name
    
# recommended 2 step process

git fetch origin
git rebase origin/main

## one step shortcut

git pull -rebase origin main


# check

git log --graph
git log --oneline

git branch -r # shows remote
git branch --show-current

# keep agnostic to master | main

1. git checkout -b <new_branch> origin/HEAD
2. git fetch origin
3. git rebase origin/HEAD # don't care if master | main
4. git diff origin/HEAD

# reset the remote

git remote set-head origin --auto # updates remotes

# squashing

git rebase -i origin/HEAD   # same command

- but you can choose what to squash
- example
  - pick ## first commit
  - pick ## second commit
  - pick ## third commit
- terminology
  - pick : use this commit as base
  - squash : melds the commit into the one ABOVE it
  - fixup : squash but clears away your commit message
- example
  - pick
  - squash
  - squash
  - For the example above

git rebase -i origin/HEAD --autostash

- stashes away any uncommitted work, let's you rebase
  - and unstashes your uncommitted work
  - Equivalent to:
    - git stash
    - git rebase -i origin/HEAD
    - git stash pop
