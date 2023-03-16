# Creating Apple Disk Images

- Run `hdiutil` to create a [DMG] file

```bash
hdiutil create /tmp/tmp.dmg -ov -volname "appname-appversion" -fs HFS+ -srcfolder "./output/"
```

- Run again `hdutil` to convert the writable image to a compressed, non-writable image

```bash
hdiutil convert /tmp/tmp.dmg -format UDZO -o ./appname-appversion.dmg
```


[DMG]: https://en.wikipedia.org/wiki/Apple_Disk_Image
