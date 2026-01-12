# Clean room strategy

0. git stash
1. Find the commit hash (git log) for commit 1 and commit 5
2. Create new branch from the lastest main
   1. git checkout main
   2. git pull orign main
   3. git checkout -b fixed-feature-branch
3. Bring in only your commits
   1. git cherry-pick <hash-of-commit-1>
   2. git cherry-pick <hash-of-commit-5>
4. Restore stashed work
   1. git stash pop

# Surgical strategy
1. Start the rebase
   1. git rebase -i HEAD~10 go back far enough to see commit 1
2. Edit the list
   1. for commits 2,3,4 change from pick to drop
   2. keep pick for commits 1 and 5
3. Save and exit
   1. this will skip commits 2,3,4 while retaining 1 and 5
