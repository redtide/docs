---
title: Remove a Submodule
---
- git submodule deinit <path_to_submodule>
- git rm <path_to_submodule>
- rm -rf .git/modules/<path_to_submodule>
- git commit -m "Removed submodule <name>"

Source: <https://gist.github.com/myusuf3/7f645819ded92bda6677>