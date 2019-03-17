# GitHub Basics

Initialize local git repository
```
git init
```

Add file(s) to the index
```
git add<file>
git add *.html // add all .html files into the index
git add . // add everything into tht index

```

Check status of working tree
```
git status
```

Commit changes in index
```
git commit
```

Push to remote repository
```
git push -u origin master
```

Pull latest version from remote repository
```
git pull origin master
```

Clone repository to a new directory
```
git clone
```
Sets the new remote
```
git remote add origin remote repository URL
```
Verifies the new remote URL
```
git remote -v
```
Add credentials
```
 git config --global user.name 'Your name'
 git config --global user.email 'Your email'
```
