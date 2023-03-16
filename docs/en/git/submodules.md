# Submodules

## Edit

```sh
git config -f .gitmodules submodule.path/to/submodule.url https://submodule/new/url.git
git config -f .gitmodules submodule.path/to/submodule.branch develop
git config -f .gitmodules submodule.path/to/submodule.shallow true
git submodule sync
git submodule update --init --recursive --remote
```

## List

```sh
# Either --file=.gitmodules or -f .gitmodules
git config --file=.gitmodules -l
```

Output:

```
submodule.path/to/submodule.path=path/to/submodule
submodule.path/to/submodule.url=https://submodule/url.git
submodule.path/to/submodule.branch=master
```

## Remove

```sh
git submodule deinit path/to/submodule
git rm path/to/submodule
rm -rf .git/modules/path/to/submodule
git commit -m "Removed submodule [name]"
```

[Source](https://gist.github.com/myusuf3/7f645819ded92bda6677)

## Shallow

Error:

`fatal: Fetched in submodule path '[path]', but it did not contain [SHA-1 hash].
Direct fetching of that commit failed.`

This might be caused by a missing branch in the local checkout of the module,
in which case it could be solved by using:

```sh
git remote set-branches origin missing-branch
git fetch --depth 1 origin missing-branch
git checkout missing-branch
```

If the exact commit is required, replace the branch name with the SHA-1 hash
in `git checkout`.

