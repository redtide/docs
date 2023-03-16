# Install RVM

```bash
curl -L get.rvm.io > rvm-install
bash < ./rvm-install
```

For bash completion add to `.bashrc`:

```bash
# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"
```

If necessary in `$HOME/.rvm/scripts/completion` replace line 22 with:

```bash
source "$HOME/.rvm/scripts/extras/completion.bash"
```

Set the terminal as login terminal in preferences.

In VSCode add to `settings.json`:

```json
"terminal.integrated.shellArgs.linux": [ "-l" ]
```

## Install Ruby

```bash
rvm install 2.5.3
rvm use 2.5.3 --default
```

Source: <https://wiki.archlinux.org/index.php/RVM>
