---
title: "VirtualBox"
---
## Bluetooth / USB

* Disable and stop the service on the host.
* `# gpasswd -a <username> vboxusers storage`
* If necessary add `VBOX_USB=usbfs` to `.bashrc`
* Start VirtualBox, go to Settings -> USB, add the device and set the filter `remote` property to `Any`
* In order to use ADB on Android devices, after the USB filter setting, disconnect the device, run the guest system and then plug again the device.
