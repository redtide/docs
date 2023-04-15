# Create an orphan branch

```sh
cd repository
git checkout --orphan=orphan_name
git rm -rf .
rm '.gitignore'
touch dummy
git add dummy
git commit -m "First commit"
git push origin orphan_name
```

Source: <https://gist.github.com/seanbuscay/5877413>
