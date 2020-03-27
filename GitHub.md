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

## How to update a forked repo with git rebase

- Add the remote (original repo that you forked) and call it “upstream”
```
git remote add upstream https://github.com/original-repo/goes-here.git
```

- Fetch all branches of remote upstream

```
git fetch upstream
```

- Rewrite your master with upstream’s master using git rebase.

```
git rebase upstream/master
```

- Push your updates to master. You may need to force the push with force

```
git push origin master --force
```

- Change upstream or origin urls

```
git remote set-url upstream https://some_url/some_repo
git remote set-url origin https://some_url/some_repo
```

