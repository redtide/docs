---
title: "Develop Android Apps with Qt"
lang: "en"
---
This document is an [old archive][] here just as reference.

---
The [Qt Framework](https://www.qt.io/) supports multi-platform software
development in C++. The Qt SDK contains a development environment
as well as a runtime libraries for many operating systems.

Unfortunately, the C++ compiler of the Android NDK became broken
some releases ago and Google [refused][] to fix the problem.
More than that, Google announced to remove required parts from the NDK permanently.
This is very annoing, it happened at a time when Qt
was just fully adopted to Android.
Therefore, <b><u>I cannot recommend the use of Qt for Android anymore</u></b>.

## Bluetooth

I use personal computers and Android tablets
to control home-made electronic devices. For this purpose,
my devices are sometimes equipped with a Bluetooth interface of type BTM-222,
HC-05 or HC-06. They support the RFCOMM protocol, also known as SPP profile.

![Bluetooth Module HC-06 ](hc06.jpg)

Download [AndroidBluetooth.zip](AndroidBluetooth.zip).

Qt introduced Bluetooth support for Android in release 5.3.
I developed the class **AndroidRfComm** as an alternative, which works already
with release 5.2. It can list already known devices quickly without having
to run the lengthly device discovery process.
AndroidRfComm is designed for the pattern
"send a command and wait for the response".
It provides a simple and useful timeout mechanism.

Programming example:

```cpp
AndroidRfComm rfcomm;
if (rfcomm.isEnabled()) {
    rfcomm.connect("HC-06");
    if (rfcomm.isConnected()) {
        // Send a line of text
        rfcomm.sendLine("Hello");
        // Wait for the answer, max.200 milliseconds
        QString received=rfcomm.receiveLine(200);  
        rfcomm.disconnect();
    }
}
```
AndroidRfComm uses Googles Java API over JNI,
because the Native Development Kit does not contain Bluetooth features.

[old archive]: http://web.archive.org/web/20170101022052/http://stefanfrings.de/android_qt/index-en.html
[refused]: https://github.com/android-ndk/ndk/issues/67

