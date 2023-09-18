# Android custom rom

## Enable OEM unlocking

- Make a data backup if needed
- `Settings` > `About` > `Build number`: tap 7 times to enable `Developer options`
- Enable `Developer options` > `USB debugging`
- Enable `Developer options` > `OEM unlocking`

## TWRP recovery

- <https://twrp.me/Devices/> and select the correct device model
- Download the image, should be under `twrp.me/<vendor>/<model>.html#download`
  by select a mirror

## Heimdall

- Connect the device on an USB port and reboot it in download mode;
  on Samsung restart by keeping pressed at same time HOME + POWER + VOLUME DOWN
- Select the twrp download folder from terminal
- Run `heimdall flash --RECOVERY twrp-<version>-<model>.img --no-reboot`
- On a Samsung restart by keeping pressed at same time HOME + POWER + VOLUME UP

## Install ROM

- Make a full wipe: System, Data and Cache
- Flash the required software like GApps and then the ROM
- Reboot
