---
title: "Force push and pull"
---
To pull force pushed commit just:

```sh
$ git fetch origin
$ git reset --hard origin/master
```

To push on last commit (only for Pull/Merge Requests):

```sh
$ git add .
$ git commit --amend --noedit
$ git push -f origin branch-name
```
