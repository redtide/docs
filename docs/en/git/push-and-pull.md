# Push and pull

## Replace last commit

Note: to use only with Pull/Merge Requests

```sh
git add .
git commit --amend --no-edit
git push -f origin branch-name
```

## Pull force pushed commits

```sh
git fetch origin
git reset --hard origin/master
```
