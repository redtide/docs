---
title: "Multiple Remotes"
---
Given `origin` as remote:

```
$ git remote -v
origin REMOTE-URL-1 (fetch)
```

- Register 1st push URL: `git remote set-url --add origin --push REMOTE-URL-1`.
- Register 2nd push URL: `git remote set-url --add origin --push REMOTE-URL-2`.
- Push a branch to all the remotes with `git push origin BRANCH` – replace `BRANCH`
  with a real branch name.
- You cannot pull from multiple remotes, but you can fetch updates from multiple
  remotes with `git fetch --all`.

Modified from source: <https://jigarius.com/blog/multiple-git-remote-repositories#2-minute-version>
