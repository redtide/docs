---
title: "Creating AUR Packages"
lang: "en"
---
- Check if the choosen app name already exists in AUR and, if not,
checkout a new empty repository:

```bash
git clone ssh://aur@aur.archlinux.org/appname.git
```

- Create a [PKGBUILD][] file

- Create a [.SRCINFO][] file from `PKGBUILD`:

```bash
makepkg --printsrcinfo > .SRCINFO
```

- [Test the package][]

```bash
makepkg -sri
```

- Delete built/uneeded files if any and then:

```bash
git add . && git commit -m "First commit" && git push
```
Source: [AUR Wiki][]

[AUR Wiki]: https://wiki.archlinux.org/index.php/AUR_submission_guidelines
[PKGBUILD]: https://wiki.archlinux.org/index.php/PKGBUILD
[.SRCINFO]: https://wiki.archlinux.org/index.php/.SRCINFO
[Test the package]: https://wiki.archlinux.org/index.php/Arch_User_Repository#Build_and_install_the_package
