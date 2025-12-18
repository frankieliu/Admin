brew install gh
gh auth login

# pull requests
gh pr --title "feat|fix|chore|docs|style|refactor:rdr://title" -s (for squashing)
gh pr create --fill (use the commit message for title and body)

gh pr create
- prompt for title and body

--base (specify target branch)
--head (specify feature branch)
gh pr create --base main --head your-feature-branch

# switch auth

gh auth switch

