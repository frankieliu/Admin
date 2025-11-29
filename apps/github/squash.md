# using rebase -i

git checkout feature_branch
git rebase -i HEAD~5 (The five last commits)

# to squash all commits in current brnach on top of another branch (like main)
git rebase -i main

# Editor will open shoing a list of commits
1. leave the first commit as pick
2. change pick to squase (s) for every commit you want to merge into the one above it.
3. use can use fixup or f to shqaure and discard the commit's message

# Save and close

# New editor write a new consolidated commit message

# Resolve any conflicts
git rebase -- conitnue

# Verify
that commits have been squased into a single new commit