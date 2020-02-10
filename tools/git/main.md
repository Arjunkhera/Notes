# GIT

1. [Basics](basics.md)
2. [Configuration](config.md)
3. [Commits and Staging](commitsAndStaging.md)
4. [Branches](branches.md)
5. [Remote](remote.md)


## Special situations

1. **Pushed some files to remote. Added them in gitignore, but how to get rid of the ones already pushed ?**

- First commit any outstanding changes
- Then run the following commands

```bash
# remove any changed files from the index
git rm -r --cached .

# add all files again
git add .

# commit the changes
git commit -m ".gitignore works now"
```

Credits to [SO](https://stackoverflow.com/questions/1139762/ignore-files-that-have-already-been-committed-to-a-git-repository)


## Miscellaneous

1. Check out the [git book](https://git-scm.com/book/en/v2). The best resources to completely understand from top to bottom. Though it requires a significant commitment.
