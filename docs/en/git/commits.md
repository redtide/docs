# Commits

## List all in one branch, not in another

```bash
git log --no-merges in_branch ^not_in_branch
```

Note: on Windows command prompt (not Powershell) `^` is an escape key,
      so it needs to be escaped with another `^`

[Source](https://stackoverflow.com/questions/1710894/using-git-show-all-commits-that-are-in-one-branch-but-not-the-others)
