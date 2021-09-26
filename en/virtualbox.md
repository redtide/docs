---
title: "VirtualBox"
---
## Bluetooth / USB

- Disable and stop the service on the host.
- `# gpasswd -a <username> vboxusers storage`
- If necessary add `VBOX_USB=usbfs` to `.bashrc`
- Start VirtualBox, go to Settings -> USB, add the device and set the filter
  `remote` property to `Any`
- In order to use ADB on Android devices, after the USB filter setting,
  disconnect the device, run the guest system and then plug again the device.

## VirtualBox Extension Pack Manual Install

For some unknown reason the extension pack won't install from the UI,
an alternative is to manually install it.

```sh
su
VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-XXX.vbox-extpack
VBoxManage extpack cleanup
```
