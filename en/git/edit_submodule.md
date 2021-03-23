---
title: "Edit a Submodule"
---
## List Submodules

```sh
# Either --file=.gitmodules or -f .gitmodules
$ git config --file=.gitmodules -l
```

Output:

```
submodule.path/to/submodule.path=path/to/submodule
submodule.path/to/submodule.url=https://submodule/url.git
submodule.path/to/submodule.branch=master
```

## Edit Settings

```sh
$ git config -f .gitmodules submodule.path/to/submodule.url https://submodule/new/url.git
$ git config -f .gitmodules submodule.path/to/submodule.branch develop
$ git config -f .gitmodules submodule.path/to/submodule.shallow true
$ git submodule sync
$ git submodule update --init --recursive --remote
```
