---
title: Remove a Submodule
---
```sh
$ git submodule deinit path/to/submodule
$ git rm path/to/submodule
$ rm -rf .git/modules/path/to/submodule
$ git commit -m "Removed submodule [name]"
```

Source: <https://gist.github.com/myusuf3/7f645819ded92bda6677>
