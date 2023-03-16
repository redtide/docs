# Rebase

## Update the current branch from upstream without a merge commit

```sh
git fetch upstream develop
git rebase upstream/develop
```

## Rebase on different branch

Example: currently merged into `develop`, merge into `master` instead:

```sh
git rebase --onto=master develop
git push -f
```
