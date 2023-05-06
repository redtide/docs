# MinGW-w64

Currently using the following tools for different terminals: native
cmd.exe (or powershell, MinGW) and the POSIX shell (MSYS2).

## MSYS2

- Download [MSYS2][1] from <https://www.msys2.org>
- Once installed you will have 3 shortcuts:
  - MSYS2 MinGW 32-bit
  - MSYS2 MinGW 64-bit <- use this once configuration is done
  - MSYS2 MSYS2

- Follow the instructions in the download page, at some point after running
  `pacman -Syu` it will ask to close and reopen the terminal again.

- Install required packages for JACK:

```sh
pacman -S ${MINGW_PACKAGE_PREFIX}-\
{toolchain,meson,libsndfile,libsamplerate,portaudio,\
libopusenc,eigen3,readline,libtre-git,cmake,db}
```

On CMake use [-G "MSYS Makefiles"][2] option.

## MinGW

There are different distributions of MinGW, for now I'm testing the version
shipped with MSYS2.
MinGW doesn't currently provide Git, see also [this issue][3].

- Duplicate (no symlink) mingw32-make.exe as make.exe
- Install [Git for Windows][4]

On CMake use [-G "MinGW Makefiles"][5] option.


[1]: https://repo.msys2.org/distrib/x86_64/msys2-x86_64-20230127.exe
[2]: https://cmake.org/cmake/help/latest/generator/MinGW%20Makefiles.html
[3]: https://github.com/msys2/MINGW-packages/issues/3003
[4]: https://gitforwindows.org/
[5]: https://cmake.org/cmake/help/latest/generator/MSYS%20Makefiles.html
