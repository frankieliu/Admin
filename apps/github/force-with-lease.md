git push --force-with-lease origin fyliu/display_repr_0

# when to use it
1. you have pushed some changes to remote
2. you have squashed your local changes
3. you want to push the squashed into remote
   1. But you can't because this means re-writing history

# don't --force it
1. forcing a new history will ignore any other changes others have added onto your remote branch

# --force-with-lease
1. will ensure that this is safe
2. if there are other commits you did not see
   1. you will have to fetch them first