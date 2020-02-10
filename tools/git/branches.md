## Branches

### Basic commands

```bash
// list all local branches
git branch

// list all remote branches
git branch --remote

// list all branches, both local and remote
git branch --all

// creating a new branch
git branch branchname

// creating and switching in same command
git checkout -b newbranchname

// push a local branch to remote
// and starts tracking the local against the remote
git push --set-upstream remote-name remote-branch-name

// switching to another branch
git checkout branchname

// deleting a branch
// succeeds only if the local has been pushed and merged to a remote
// use -D to force delete
git branch -d local-branch-name

// deleting a remote branch
git push remote-name --delete remote-branch-name
// or
git push remote-name:remote-branch-name

// merging branches
git merge branchtobemerged

```
