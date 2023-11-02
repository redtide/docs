# Branches

## Copy to new repository (manual fork)

- Create a new remote repository, e.g.: `https://github.com/your-account/new-repo.git`
- Enter in the original local clone:
```bash
cd original-repo
```

### All

```bash
git push --all origin # or other name
```

### One optionally renamed

- Checkout the wanted branch:
```bash
git checkout branch-name
```
- Push:
```bash
git push https://github.com/your-account/new-repo.git \
  +branch-name:new-name \
  +other-branch-name:other-new-name
```
