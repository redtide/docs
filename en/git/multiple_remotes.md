---
title: "Multiple Remotes"
---
- Define a git remote which will point to multiple git remotes;
  For this tutorial, we call it “all”: `git remote add all REMOTE-URL-1`.
- Register 1st push URL: `git remote set-url --add --push all REMOTE-URL-1`.
- Register 2nd push URL: `git remote set-url --add --push all REMOTE-URL-2`.
- Push a branch to all the remotes with `git push all BRANCH` – replace `BRANCH`
  with a real branch name.
- You cannot pull from multiple remotes, but you can fetch updates from multiple
  remotes with `git fetch --all`.

Source: <https://jigarius.com/blog/multiple-git-remote-repositories#2-minute-version>
