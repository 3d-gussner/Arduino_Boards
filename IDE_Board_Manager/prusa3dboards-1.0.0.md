# Prusa Research Boards definition version 1.0.0

## Boards supported
- [Prusa MM control board](https://github.com/prusa3d/MM-control-2.0)
  - including bootloader


Folder Structure:

    .
    ├── IDE_Boards_Manager
    │   ├── prusa3dboards          Please don't change that folder name when you update your Github and post a PR.
    │   ├── bootloaders
    │       └── prusa_mm_control
    │   ├── variants
    │       └── prusa_mm_control
    │   └── ... 
    └── ...
    
Files:

    .
    ├── IDE_Boards_Manager
    │   ├── prusa3dboards                Please don't change that folder name when you update your Github and post a PR.
    │      ├── boards.txt                contains definitions for the boards (board name, parameters for building and uploading sketches, etc.). 
    │       ├── platform.txt             contains definitions for the CPU architecture used (compiler, build process parameters, tools used for upload, etc.).
    │       ├── avrdude.conf       
    │   └── ...
    ├── package_prusa3d_index.json
    ├── prusa3dboards-<versions>.tar.bz2  actual used pacakges for Ardunio IDE Boards Manager
    └── ...
