

To work on multiple Git branches simultaneously, use git worktree for separate directories sharing the same repo data, or clone the repository multiple times for completely independent copies;  git worktree is efficient as it avoids duplicating history, letting you run tests on one branch while coding on another, and IDEs like VS Code have built-in support. [1, 2, 3, 4]  

# Using git worktree (Recommended) 

This creates linked working directories, saving space and keeping history synced. 

1. **Navigate** to your main repository folder. 
2. **Add a worktree** for a new branch:
   ```bash
   git worktree add ../feature-branch-dir feature/branch-name
   ```
   This creates a new folder feature-branch-dir with  feature/branch-name checked out. 
4. **Open** the new directory in your IDE to work on that branch independently. 
5. **To clean up**, remove the worktree (after committing/stashing): 
   ```bash
   git worktree remove ../feature-branch-dir
   ```
6. Git documentation (https://git-scm.com/docs/git-worktree). [2, 5]  
# Add

git worktree add -b <new_branch_name> <path-to-new-worktree>

git worktree add <path-to-new-worktree> <existing_branch_name>

git worktree add -d <path-to-new-worktree>  # with a detached HEAD

# List

git worktree list
- lists all worktrees associated with repo

# Remove

git worktree remove <path-to-worktree>

# Prune

git worktree prune
- if a worktree was deleted manually this cleans up internal references
  

Using Multiple Clones (Simpler but less efficient) 
This creates fully separate copies of your repository. 

1. **Clone** your repository to a new location: 
   ```bash
   cd another-folder
   git checkout feature/another-branch
   ```
   Git documentation (https://git-scm.com/docs/git-clone). 
2. **Change directories** into the new clone and check out the desired branch: 
3. **Repeat** for any other branches you need. [6, 7, 8]  

# When to Use Which 

• **git worktree**: Best for side tasks like hotfixes or running long tests while developing another feature in your main folder. 
• **Multiple Clones**: Good for complete isolation or when  seems too complex, but uses more disk space and requires separate / operations. [1, 4, 6, 8]  

AI responses may include mistakes.

[1] https://medium.com/@ariifischbein/working-with-multiple-branches-without-losing-your-mind-the-power-of-git-worktree-2f4c45a55799
[2] https://code.visualstudio.com/docs/sourcecontrol/branches-worktrees
[3] https://www.linkedin.com/pulse/how-work-multiple-git-branches-simultaneously-ryan-moscoe-b1z3c
[4] https://www.youtube.com/shorts/sewE4T_gCCc
[5] https://stackoverflow.com/questions/2048470/git-working-on-two-branches-simultaneously
[6] https://bssw.io/items/working-within-multiple-git-branches-simultaneously
[7] https://stackoverflow.com/questions/7393274/is-it-possible-to-view-multiple-git-branches-at-the-same-time-for-the-same-proje
[8] https://andrewlock.net/working-on-two-git-branches-at-once-with-git-worktree/

