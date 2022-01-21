---
title: Shallow modules
---
Error:

`fatal: Fetched in submodule path '<path>', but it did not contain <SHA-1 hash>.
Direct fetching of that commit failed.`

This might be caused by a missing branch in the local checkout of the module,
in which case it could be solved by using:

```sh
git remote set-branches origin '<missing-branch>'
git fetch --depth 1 origin <missing-branch>
git checkout <missing-branch>
```

If the exact commit is required, replace the branch name with the SHA-1 hash
in `git checkout`.
