## Basics

### Understanding Version Control Systems

1. [What is version control](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
2. [Git and other vcs](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)

---

### Some common commands in action

```bash
// Iniatilizing a repository
git init

// Take note of files being tracked
git status
// Staging a file
git add filename
// Staging all the modified files
git add --all
// Unstaging a file
git rm --cached filename

// Commiting changes
git commit -m "commit message"
// Reverting a commit
git reset --soft HEAD~

// Listing the contents of the modifications
git diff filename

// Reversing file contents to previos commit instead of staging for commit
git checkout filename

// Make git ignore specific files
echo "filename" > .gitignore
echo "regex for specific situation" >> .gitignore
// This ensure that no image of type jpg is tracked by git
echo "*.jpg" >> .gitignore
```
