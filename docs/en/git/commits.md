# Commits

## List all in a branch, not in another

```bash
git log --no-merges <in_branch> ^<not_in_branch>
```

Note: on Windows command prompt (not Powershell) `^` is an escape key,
      so it needs to be escaped with another `^`

[Source](https://stackoverflow.com/questions/1710894/using-git-show-all-commits-that-are-in-one-branch-but-not-the-others)

## Replace

This changes the SHA-1 of the commit and all its children, so it's something
to do locally or on a merge/pull request.

- `git rebase --interactive <hash>~`: the tilde means reapply all other commits,
  this will set that commit as current for editing
- in the default editor, modify `pick` to `edit` in the line mentioning `<hash>`
- make required changes
- `git commit --all --amend --no-edit` to amend the changed commit
- `git rebase --continue` to complete

[Source](https://stackoverflow.com/questions/1186535/how-do-i-modify-a-specific-commit)
