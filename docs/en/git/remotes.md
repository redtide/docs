# Remotes

## Multiple

```
$ git remote -v
origin REMOTE-URL-1 (fetch)
```

- Register 1st push URL: `git remote set-url --add origin --push REMOTE-URL-1` (yes, again).
- Register 2nd push URL: `git remote set-url --add origin --push REMOTE-URL-2`.
- Push a branch to all the remotes with `git push origin BRANCH` – replace `BRANCH`
  with a real branch name.
- You cannot pull from multiple remotes, but you can fetch updates from multiple
  remotes with `git fetch --all`.

[Source](https://jigarius.com/blog/multiple-git-remote-repositories#2-minute-version)
