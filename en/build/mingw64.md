---
title: Minimalist GNU for Windows Kit
---

Currently using all the following tools with different terminals, the native
cmd.exe (or powershell, MinGW) and the POSIX shell (MSYS2).

## MSYS2

Working in a POSIX shell:

- Download MSYS2 from https://www.msys2.org (<http://repo.msys2.org/distrib/x86_64/msys2-x86_64-20190524.exe>)
- Once installed you will have 3 shortcuts:
  - MSYS2 MinGW 32-bit
  - MSYS2 MinGW 64-bit <- use this once configuration is done
  - MSYS2 MSYS2

- Follow the instructions in the download page, at some point after running
  `pacman -Syu` it will ask to close and reopen the terminal again.

- Install required packages for JACK:

```
pacman -S mingw-w64-x86_64-toolchain  mingw-w64-x86_64-meson
          mingw-w64-x86_64-libsndfile mingw-w64-x86_64-libsamplerate
          mingw-w64-x86_64-portaudio  mingw-w64-x86_64-libopusenc
          mingw-w64-x86_64-eigen3     mingw-w64-x86_64-readline
          mingw-w64-x86_64-libtre-git mingw-w64-x86_64-cmake
          mingw-w64-x86_64-db
```

On CMake use [-G "MSYS Makefiles"] option.

## MinGW

There are different distributions of MinGW, for now I'm testing the version
shipped with MSYS2.
MinGW doesn't currently provide Git, see also [this issue].

- Duplicate (no symlink) mingw32-make.exe as make.exe
- Install [Git for Windows]

On CMake use [-G "MinGW Makefiles"] option.


[this issue]:           https://github.com/msys2/MINGW-packages/issues/3003
[Git for Windows]:      https://gitforwindows.org/
[-G "MSYS Makefiles"]:  https://cmake.org/cmake/help/latest/generator/MinGW%20Makefiles.html
[-G "MinGW Makefiles"]: https://cmake.org/cmake/help/latest/generator/MSYS%20Makefiles.html
