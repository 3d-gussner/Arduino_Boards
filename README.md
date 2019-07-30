# Prusa Research AVR Boards
Prusa Research AVR Boards definitions for Arduino compatible boards manufactured/used by Prusa Research
- [Prusa MM Control board](https://github.com/prusa3d/MM-control-2.0)
- Prusa Einsy and miniRAMBo boards by Ultimachine [Einsy](https://github.com/ultimachine/Einsy-Rambo) and [miniRAMBo](https://github.com/ultimachine/Mini-Rambo)

# Table of contents

<!--ts-->
   * [Linux build](#linux)
   * Windows build
     * [Using Linux subsystem](#using-linux-subsystem-under-windows-10-64-bit)
     * [Using Git-bash](#using-git-bash-under-windows-10-64-bit)
   * [How-to change code and dependencies](#2-How-to-modify)
   * [Prepare new version](#3-Prepare-new-version)
<!--te-->


# 1-Build environment
## Linux

## Windows
### Using Linux subsystem under Windows 10 64-bit
_notes: Script and instructions contributed by 3d-gussner. Use at your own risk. Script downloads Arduino executables outside of Prusa control. Report problems [there.](https://github.com/3d-gussner/Arduino_Boards/issues)._
- follow the [Microsoft guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
- Tested versions are at this moment
  - Ubuntu other may different
  - After the installation and reboot please open your Ubuntu bash and do following steps
  - run command `apt-get update`
  - run command `apt-get upgrade` to update your OS.

#### Some Tips for Ubuntu
- Linux is case sensetive so please don't forget to use capital letters where needed, like changing to a directory
- To change the path to your Prusa-Firmware location you downloaded and unzipped
  - Example: You files are under `C:\Users\<your-username>\Downloads\Arduino_Boards`
  - use under Ubuntu the following command `cd /mnt/c/Users/<your-username>/Downloads/Arduino_Boards`
    to change to the right folder
- Unix and windows have different line endings (LF vs CRLF), try dos2unix to convert
  - This should fix the `"$'\r': command not found"` error
  - to install run `apt-get install dos2unix`

#### Modify Arduino_Boards with Ubuntu Linux subsystem installed
- open Ubuntu bash
- change to your source code folder (case sensitive)
- Read How-to-modify below
- run `./Prepare-new-version.sh`
- Read How-to-modify part `package_prusa3d_index.json` below

### Using Git-bash under Windows 10 64-bit
_notes: Script and instructions contributed by 3d-gussner. Use at your own risk. Script downloads Arduino executables outside of Prusa control. Report problems [there.](https://github.com/3d-gussner/Prusa-Firmware/issues) Multi language build is supported._
- Download and install the [64bit Git version](https://git-scm.com/download/win)
- Also follow these [instructions](https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058)

#### Compile Prusa-firmware with Git-bash installed
- open Git-bash
- Read How-to-modify below
- change to your source code folder
- run `bash Prepare-new-version.sh`
- Read How-to-modify `package_prusa3d_index.json` below

# 2-How-to-modify
Folder Structure:

    .
    ├── IDE_Boards_Manager
    │   ├── prusa3dboards          Please don't change that folder name when you update your Github and post a PR.
    │   ├── bootloaders
    │       ├── prusa_einsy_rambo  Which is a clone of https://github.com/prusa3d/stk500v2-prusa 
    │       └── prusa_mm_control
    │   ├── cores
    │       └── prusa_einsy_rambo
    │   ├── variants
    │       ├── prusa_einsy_rambo
    │       └── prusa_mm_control
    │   └── ... 
    └── ...
    
Files:

    .
    ├── IDE_Boards_Manager
    ├── boards.txt                  contains definitions for the boards (board name, parameters for building and uploading sketches, etc.). 
    ├── platform.txt                contains definitions for the CPU architecture used (compiler, build process parameters, tools used for upload, etc.).
    ├── package_prusa3d_index.json
    ├── prusa3dboards.version       contains the release version numbers and is used in `Prepare-new-version.sh`. The first line is used.
    └── ...
    
More information about [boards.txt](https://github.com/arduino/Arduino/wiki/Arduino-IDE-1.5-3rd-party-Hardware-specification#boardstxt)
More information about [platforms.txt](https://github.com/arduino/Arduino/wiki/Arduino-IDE-1.5-3rd-party-Hardware-specification#platformtxt)
More information about [package_prusa3d_index.json](https://github.com/arduino/Arduino/wiki/Arduino-IDE-1.6.x-package_index.json-format-specification)

Naming convention for version:
- <`major:#1`.`minor:#2`.`maintenance:#2`"-`devel status:0-4`-`devel build:#6`" where `-devel status` and `devel build` are optional
  - `#1` = numbers 0-9
  - `#2` = numbers 0-99
  - `0-4`= only numbers between 0 and 4. 0=devel, 1=alpha, 2=beta, 3=pre-release, 4=release candidate
  - `#4` = numbers 0-999999

Few examples:

- 1.0.0-0-235 Is a version in development and devel build 235.
- 1.0.0       Is the frist stable version
- 1.0.1       Is a stable version that was maintaind...like adding a bootloader or changing tools to existing boards
- 1.1.0-3     Is a pre-release version including new boards
- 1.1.0       Is the first stable version including new boards


