# Laptop lid

When using an external monitor and exiting some application like labwc session,
the pc goes to suspend mode or similar.

To solve this problem, set `/etc/systemd/logind.conf`
by uncommenting the following lines:

```ini
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
```

and run `sudo systemctl restart systemd-logind`
