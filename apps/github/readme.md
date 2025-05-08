# authentication
sudo apt install gh
gh auth login

# fork a cloned repo
- Download and install https://cli.github.com

- Run gh repo fork in the repository you cloned that isn't yours

- Allow the tool to update origin

- Make your changes and push

- Select origin as your desired upstream, upstream is a new origin pointing to the original fork's repo!

[link](https://cli.github.com/manual/gh_repo_fork)

# manually fork from website
- Clone some repo (you've probably already done this step).

git clone git@github...some-repo.git

- Manually fork their repo via the Github website directly.

- In your local system, rename your origin remote to upstream.

git remote rename origin upstream

- Add a new origin which now points to your fork you just made above (instead of to to the original repository).

git remote add origin git@github...my-fork

- Fetch from new origin.

git fetch origin

- Make local branch "master" track remote branch "origin/master" (ie: remote branch "master" from remote "origin" which you just set above). See more syntax examples here: https://stackoverflow.com/a/2286030/4561887.

git branch --set-upstream-to origin/master master

- Push to your fork via your "origin" remote (the word origin should be able to be omitted (ie: just write git push) if you did Step 4).

git push origin
