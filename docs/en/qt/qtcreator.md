# Qt Creator

## Installation

Install components from distro package manager (e.g.: qt5-tools and qtcreator on Arch) and missing components (like Android qmake and other stuff) from the [Maintenance Tool](http://download.qt.io/official_releases/qt/) (avoid on Arch to use AUR packages that can lead to problems and need too much time to update/build):

* For updates add a [user defined repository](http://download.qt.io/online/qtsdkrepository/) by clicking Configurations on the bottom left button if needed or just skip if a first time installation.
* Optionally select Qt source files, Purchasing and/or stuff not included in the distro for the version in use.

Be sure about the path since if it will be installed in the wrong directory, at least ATM (2018/12/13),
it is not possible to move it without repeat the installation.

E.g.: `$HOME/Documents/Development/Qt/Toolchain/N.NN.N`

See the [Android page](android.md) for how to install and configure the Android toolchain.

## Configuration

### Options Build & Run

Menu Tools -> Options -> General (or Build & Run, depending on the QtCreator version
)
* Project directory: E.g. `$HOME/Documents/Development/Qt/Projects`
* Default build directory: `%{CurrentProject:Path}/build/%{Debugger:Abi}-%{CurrentBuild:Type}`

E.g.: $HOME/Documents/Development/Qt/Projects/MyProject/build/x86-linux-generic-elf-64bit-debug

### Build Settings - Linux

* No Shadow Build to avoid Qt Designer to not update the GUI/cache stuff.
* Delete all predefined steps and add 2 custom steps for qmake and make clean as following

Custom Build Step

* Command: `qmake`
* Arguments: `%{CurrentProject:FilePath} -spec linux-g++ CONFIG+=debug && make`
* Working Directory: `%{CurrentProject:Path}/build/%{Debugger:Abi}-%{CurrentBuild:Type}`

Custom Clean Step

* Command: `make`
* Arguments: `clean`
* Working Directory: `%{CurrentProject:Path}/build/%{Debugger:Abi}-%{CurrentBuild:Type}`

### Run Settings - Linux

Custom Executable

* Executable: \<name of the executable\> (%{CurrentRun:Executable:FileName} doesn't work ATM)
* Command line arguments: \<application dependent\>
* Working Directory: `%{CurrentProject:Path}/build/%{Debugger:Abi}-%{CurrentBuild:Type}`

### Build Settings - Android

* Let Shadow Build enabled (The build directory from Build & Run options above will be used by default.)
* Leave default options
* Build Android APK -> Select the appropriate SDK version -> Create templates -> Uncheck "Copy gradle files" -> Click Finish -> edit the resulting XML (This as one time configuration)
