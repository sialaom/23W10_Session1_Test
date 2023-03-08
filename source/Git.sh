# Initialize a new Git repository
git init
# Add a specific file to the Git index
git add <file>
# Commit changes to the Git repository with a message
git commit -m "<message>"
# Show the current status of the Git repository
git status
# Show the history of commits in the Git repository
git log
# Push changes to a remote Git repository
git push
# Pull changes from a remote Git repository
git pull
# Clone a remote Git repository to your local machine
git clone <url>
# Create a new branch in the Git repository
git branch <branch-name>
# Switch to a different branch in the Git repository
git checkout <branch-name>
# Merge a branch with the current branch in the Git repository
git merge <branch-name>
# Create a new Git tag for a specific commit
git tag -a <tag-name> -m "<tag-message>" <commit-hash>

# Show all tags in the Git repository
git tag
# Show the changes made in a specific commit in the Git repository
git show <commit-hash>
# Show the differences between two branches in the Git repository
git diff <branch1>..<branch2>
# Reset changes in the Git repository to a previous commit
git reset <commit-hash>
# Revert a previous commit in the Git repository
git revert <commit-hash>
#gitk is a graphical interface for Git. It allows you to view branches, commits, and tags in a Git repository.
gitk
#git gui is another graphical interface for Git, but it is more focused on administrative tasks such as creating branches, merging branches, and so on
git gui
#git stash is a command that allows you to set aside local changes without committing them
git stash
#git stash pop is a command that allows you to retrieve the changes set aside with git stash
git stash pop