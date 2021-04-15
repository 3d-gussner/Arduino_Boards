# Prusa Research Boards definition version 1.0.4

## Boards supported
- [Prusa MM control board](https://github.com/prusa3d/MM-control-2.0) using prusa3dboards-1.0.2.tar.bz2
  - including bootloader
- Einsy/miniRAMBo boards using prusa3dboards-1.0.4.tar.bz2
  - including bootloader
  - [Einsys](https://reprap.org/wiki/EinsyRambo)
  - [miniRAMbo](https://reprap.org/wiki/MiniRambo)
  - MK404 Einsy boards for debugging
    - atmega2560x64  with 256K flash and 64K ram
    - atmegaMK404x8  with  32M flash and  8K ram
    - atmegaMK404x64 with  32M flash and 64K ram
## Specials/Limits
- Restricted cores version for the Einsy/miniRAMBo boards

## Changes to previous version
- Commented out `static unsigned char timer0_fract = 0;` in `/prusa3dboards/cores/wiring.c` 

Folder Structure:

.
├── package_prusa3d_index.json
├── Prepare-new-version.sh
├── prusa3dboards
│   ├── avrdude.conf
│   ├── avrdude.md
│   ├── boards.txt
│   ├── bootloaders
│   │   ├── prusa_atmega2560x64
│   │   │   ├── avr_cpunames.h
│   │   │   ├── avrinterruptnames.h
│   │   │   ├── command.h
│   │   │   ├── lcd.c
│   │   │   ├── lcd.h
│   │   │   ├── License.txt
│   │   │   ├── Makefile
│   │   │   ├── settings.h
│   │   │   ├── stk500boot.c
│   │   │   ├── stk500boot.h
│   │   │   ├── stk500boot.hex
│   │   │   └── stk500boot_v2_mega2560.hex
│   │   ├── prusa_einsy_rambo
│   │   │   ├── avr_cpunames.h
│   │   │   ├── avrinterruptnames.h
│   │   │   ├── command.h
│   │   │   ├── lcd.c
│   │   │   ├── lcd.h
│   │   │   ├── License.txt
│   │   │   ├── Makefile
│   │   │   ├── settings.h
│   │   │   ├── stk500boot.c
│   │   │   ├── stk500boot.h
│   │   │   ├── stk500boot.hex
│   │   │   └── stk500boot_v2_mega2560.hex
│   │   └── prusa_mm_control
│   │       ├── build.txt
│   │       ├── Caterina-prusa_mm_control.hex
│   │       ├── program.txt
│   │       └── Readme.txt
│   ├── cores
│   │   ├── prusa_atmega2560x64
│   │   │   ├── abi.cpp
│   │   │   ├── Arduino.h
│   │   │   ├── binary.h
│   │   │   ├── CDC.cpp
│   │   │   ├── Client.h
│   │   │   ├── HardwareSerial0.cpp
│   │   │   ├── HardwareSerial1.cpp
│   │   │   ├── HardwareSerial2.cpp
│   │   │   ├── HardwareSerial3.cpp
│   │   │   ├── HardwareSerial.cpp
│   │   │   ├── HardwareSerial.h
│   │   │   ├── HardwareSerial_private.h
│   │   │   ├── hooks.c
│   │   │   ├── IPAddress.cpp
│   │   │   ├── IPAddress.h
│   │   │   ├── main.cpp
│   │   │   ├── new.cpp
│   │   │   ├── new.h
│   │   │   ├── PluggableUSB.cpp
│   │   │   ├── PluggableUSB.h
│   │   │   ├── Printable.h
│   │   │   ├── Print.cpp
│   │   │   ├── Print.h
│   │   │   ├── Server.h
│   │   │   ├── Stream.cpp
│   │   │   ├── Stream.h
│   │   │   ├── Tone.cpp
│   │   │   ├── Udp.h
│   │   │   ├── USBAPI.h
│   │   │   ├── USBCore.cpp
│   │   │   ├── USBCore.h
│   │   │   ├── USBDesc.h
│   │   │   ├── WCharacter.h
│   │   │   ├── WInterrupts.c
│   │   │   ├── wiring_analog.c
│   │   │   ├── wiring.c
│   │   │   ├── wiring_digital.c
│   │   │   ├── wiring_private.h
│   │   │   ├── wiring_pulse.c
│   │   │   ├── wiring_pulse.S
│   │   │   ├── wiring_shift.c
│   │   │   ├── WMath.cpp
│   │   │   ├── WString.cpp
│   │   │   └── WString.h
│   │   └── prusa_einsy_rambo
│   │       ├── abi.cpp
│   │       ├── Arduino.h
│   │       ├── binary.h
│   │       ├── CDC.cpp
│   │       ├── Client.h
│   │       ├── HardwareSerial0.cpp
│   │       ├── HardwareSerial1.cpp
│   │       ├── HardwareSerial2.cpp
│   │       ├── HardwareSerial3.cpp
│   │       ├── HardwareSerial.cpp
│   │       ├── HardwareSerial.h
│   │       ├── HardwareSerial_private.h
│   │       ├── hooks.c
│   │       ├── IPAddress.cpp
│   │       ├── IPAddress.h
│   │       ├── main.cpp
│   │       ├── new.cpp
│   │       ├── new.h
│   │       ├── PluggableUSB.cpp
│   │       ├── PluggableUSB.h
│   │       ├── Printable.h
│   │       ├── Print.cpp
│   │       ├── Print.h
│   │       ├── Server.h
│   │       ├── Stream.cpp
│   │       ├── Stream.h
│   │       ├── Tone.cpp
│   │       ├── Udp.h
│   │       ├── USBAPI.h
│   │       ├── USBCore.cpp
│   │       ├── USBCore.h
│   │       ├── USBDesc.h
│   │       ├── WCharacter.h
│   │       ├── WInterrupts.c
│   │       ├── wiring_analog.c
│   │       ├── wiring.c
│   │       ├── wiring_digital.c
│   │       ├── wiring_private.h
│   │       ├── wiring_pulse.c
│   │       ├── wiring_pulse.S
│   │       ├── wiring_shift.c
│   │       ├── WMath.cpp
│   │       ├── WString.cpp
│   │       └── WString.h
│   ├── platform.txt
│   └── variants
│       ├── prusa_atmega2560x64
│       │   └── pins_arduino.h
│       ├── prusa_einsy_rambo
│       │   └── pins_arduino.h
│       └── prusa_mm_control
│           └── pins_arduino.h
├── prusa3dboards-1.0.0.md
├── prusa3dboards-1.0.0.tar.bz2
├── prusa3dboards-1.0.1.md
├── prusa3dboards-1.0.1.tar.bz2
├── prusa3dboards-1.0.2.md
├── prusa3dboards-1.0.2.tar.bz2
├── prusa3dboards-1.0.3.md
├── prusa3dboards-1.0.3.tar.bz2
├── prusa3dboards-1.0.4.md
├── prusa3dboards.version
├── prusa3drambo-1.0.0.tar.bz2
└── prusa3drambo-1.0.1.tar.bz2
