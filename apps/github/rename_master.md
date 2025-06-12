# Rename from master to main

Renaming a Git repository's default branch from "master" to "main" is a common practice for inclusivity and can be done easily through a few steps: 

1. Rename the local branch:
   - In your terminal, navigate to the local repository you want to rename.
   - Ensure you are on the master branch: git checkout master.
   - Rename the branch: git branch -m master main. 

2. Push the renamed branch to the remote repository:
   - Push the new main branch to your GitHub repository: git push -u origin main.
   - This command also sets up tracking for future git push and git pull commands. 

3. Change the default branch on GitHub:
   - Go to your GitHub repository's main page in your web browser.
   - Click on Settings.
   - In the left sidebar, click on Branches.
   - Under "Default branch," click on the switch button (arrow icon) next to the current default branch (which should be master).
   - Select main from the dropdown list and click Update.
   - Confirm the change. 

4. Delete the old "master" branch:
   - Now that main is set as the default branch, you can delete the master branch (locally and on the remote repository).
   - To delete the local branch: git branch -d master.
   - To delete the remote branch: git push origin --delete master. 

5. Important Notes:
   - Ensure you have admin access to the repository on GitHub to change the default branch in the settings.
   - If other developers are working on the repository, they will need to update their local clones to reflect the changes. They can do this by running git checkout main, git fetch, git branch --unset-upstream, git branch -u origin/main main, and git symbolic-ref refs/remotes/origin/HEAD refs/remotes/origin/main.
   - Check your CI/CD pipelines or other systems that reference the master branch and update them to use main.
   - If you have branch protection rules set up for master, ensure they are updated to apply to main.
   - GitHub now allows you to rename the default branch directly from the web interface, making this process even easier. You can find this option in the repository settings under "Branches". 