---
title: "Edit a Submodule"
---
## List Submodules

```sh
$  git config --file=.gitmodules -l
```

Output:

```
submodule.path/to/submodule.path=path/to/submodule
submodule.path/to/submodule.url=https://submodule/url.git
submodule.path/to/submodule.branch=master
```

## Change URL

```sh
$  git config --file=.gitmodules submodule.path/to/submodule.url https://submodule/new/url.git
```

## Change Branch

```sh
$  git config --file=.gitmodules submodule.path/to/submodule.branch develop

$  git submodule sync
$  git submodule update --init --recursive --remote
```

Source: <https://tech.serhatteker.com/post/2019-01/changing-git-submodules-urlbranch-to/>
