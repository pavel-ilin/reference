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
git commit -m 'your comments'
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

Remove conficts
```
git mergetool
```

# Git - new setup

## Install git

```
install git
ssh-keygen (create a new SSH key)
cat ~/.ssh/id_rsa.pub (display your SSH key to your terminal)
```
- add SSH key in github

## Configure git globally

Identity:
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

Credentials:
```
git config --global credential.username my_username
git config --global credential.password password
```
