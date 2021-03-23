---
title: "Force push and pull"
---
To push on last commit (only for Pull/Merge Requests):

```sh
$ git add .
$ git commit --amend --no-edit
$ git push -f origin branch-name
```
To pull force pushed commit just:

```sh
$ git fetch origin
$ git reset --hard origin/master
```
