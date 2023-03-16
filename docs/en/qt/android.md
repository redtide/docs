# Qt Creator Android Setup

Download and extract the [Android SDK](https://developer.android.com/studio/#command-tools)
and [Android NDK](https://developer.android.com/ndk/downloads/).

The SDK can be extracted in a directory like

`$HOME/Documents/Development/Qt/Toolchain/X.XX.X/Android/sdk-tools-NNNNNN`

with the `tools` directory inside.

and the NDK as is, e.g.:

`$HOME/Documents/Development/Qt/Toolchain/X.XX.X/Android/android-ndk-rNNX`

These directories will be added on QtCreator from menu Tools -> Options -> Devices -> Android Settings

## Android SDK v25.2.5 (GCC, Qt < 5.12)

Set a directory (eg. SDKv25.2.5) and copy the tools directory into it, and from there run
`tools/android update sdk`, following
[this guide](http://doc.qt.io/qtcreator/creator-developing-android.html#setting-up-the-development-environment).

This SDK version have a native SDKManager that will runs with a GTK interface, follow its
install procedure.

## Android SDK (CLang Qt >= 5.12)

Get the latest SDK, NDK must be supported by current Qt version, ATM NDK 17c works with Qt 5.12.0, see below.

## Android NDK 17c

Error:
> android-ndk-r17c/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++:
error while loading shared libraries: libtinfo.so.5: cannot open shared object file:
No such file or directory

Resolution:
Install ncurses5-compat-libs (6.1-1) -> libtinfo5

## Warnings / Errors

See [here](https://stackoverflow.com/questions/15889908/getbluetoothservice-called-with-no-bluetoothmanagercallback) for harmless warning:

`W BluetoothAdapter: getBluetoothService() called with no BluetoothManagerCallback`
