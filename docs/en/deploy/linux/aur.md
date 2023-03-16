# Creating AUR Packages

- Check if the choosen app name already exists in AUR and, if not,
  checkout a new empty repository:

```bash
git clone ssh://aur@aur.archlinux.org/appname.git
```

- Create a [PKGBUILD][1] file

- Create a [.SRCINFO][2] file from `PKGBUILD`:

```bash
makepkg --printsrcinfo > .SRCINFO
```

- [Test the package][3]

```bash
makepkg -sri
```

- Delete built/uneeded files if any and then:

```bash
git add . && git commit -m "First commit" && git push
```

Source: [AUR Wiki][4]


[1]: https://wiki.archlinux.org/index.php/PKGBUILD
[2]: https://wiki.archlinux.org/index.php/.SRCINFO
[3]: https://wiki.archlinux.org/index.php/Arch_User_Repository#Build_and_install_the_package
[4]: https://wiki.archlinux.org/index.php/AUR_submission_guidelines
