---
title: "Linux AppImg with Linuxdeploy"
lang: "en"
---
Download [Linuxdeploy][]:

```bash
$ wget -c -nv "https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage" && \
chmod +x linuxdeploy-x86_64.AppImage
```

Add [icons][]:

```bash
$ AppDir=MyApp
appname=myapp
for size in 16 32 48 128 256
do
dirname="${AppDir}/usr/share/icons/hicolor/${size}x${size}/apps"
mkdir -p $dirname
cp ./resources/icons/icon_${size}px.png ./${dirname}/${appname}.png
done
```

Build the app image:

```bash
$ ./linuxdeploy-x86_64.AppImage --appdir=${AppDir} \
--desktop-file=path/to/${appname}.desktop \
--executable=path/to/${appname} \
--output=appimage
```
[icons]: /deploy/linux/macos-windows-icons
[Linuxdeploy]: https://github.com/linuxdeploy/linuxdeploy/
