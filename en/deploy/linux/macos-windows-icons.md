---
title: "macOS & Windows Icons with Linux"
---
## macOS icons from PNG

- Create a `resource/icons` directory inside the application project folder

- Create PNG icon files in multiple resolutions:
```
icon_16px.png
icon_32px.png
icon_48px.png
icon_128px.png
icon_256px.png
```

- Install `libicns` or `icnsutils` and run:
```bash
png2icns icon.icns icon_*px.png
```

Source: [Creating Mac OS X Icons on Linux]

## Windows icons from PNG

- Install `icoutils` or `png2ico`

Using icoutils:
```bash
icotool -c -o icon.ico icon_*px.png
```

Using [png2ico].
Width must be multiple of 8 and < 256. Height must be < 256.
```bash
png2ico icon.ico icon_128px.png
```

Additional information on this topic can be found also on the [Qt website].

[Creating Mac OS X Icons on Linux]: https://dentrassi.de/2014/02/25/creating-mac-os-x-icons-icns-on-linux/
[png2ico]:    https://www.winterdrache.de/freeware/png2ico/
[Qt website]: https://doc.qt.io/qt-5/appicon.html
