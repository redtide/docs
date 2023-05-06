# AppImage

Download [Linuxdeploy][1]:

```bash
wget -c -nv "https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage" && \
chmod +x linuxdeploy-x86_64.AppImage
```

Add [icons][2]:

```bash
AppDir=MyApp
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
./linuxdeploy-x86_64.AppImage --appdir=${AppDir} \
--desktop-file=path/to/${appname}.desktop \
--executable=path/to/${appname} \
--output=appimage
```


[1]: https://github.com/linuxdeploy/linuxdeploy/
[2]: macos-windows-icons.md
