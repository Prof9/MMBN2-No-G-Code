# Mea Man Battle Network 2 (No G Code)

A mod that removes the letter G from Mega Man Battle Network 2 for a more balanced gameplay experience.

This repository contains the source code. [**Looking for the download link? Grab the patch from The Rockman EXE Zone!**](https://forums.therockmanexezone.com/mea-man-battle-network-2-no-g-code-t16677.html)

## Reporting Bugs

Please report any bugs and suggestions in the project topic on The Rockman EXE Zone Forums:

https://forums.therockmanexezone.com/mea-man-battle-network-2-no-g-code-t16677.html

## Credits

* [MidniteW](https://twitter.com/MidniteW) - Graphics
* [Prof. 9](https://twitter.com/Prof9) - Planning, Programming
* [TJ09](https://twitter.com/tj09) - Graphics

## Setup

Install Python 3.

Place the following ROM file in the `_rom` folder:

* `mmbn2-us.gba` - Mega Man Battle Network 2 US version

You can also use the Wii U Virtual Console version ROM.

Place the required third-party tools in the `_tools` folder. See `_tools\tools_go_here.txt` for details.

* [armips](https://github.com/Kingcom/armips/) by Kingcom. [v0.11.0-140-g87d44e4](https://github.com/Kingcom/armips/tree/87d44e4db7cbdfc99b8808f2c345ffcc3bfd1ecd) is used, but any newer version should also work.
* **[Nintendo DS/GBA Compressors](https://www.romhacking.net/utilities/826/)** by CUE. Version 1.4 is used, but any newer version should also work.

Compatible versions of PixelPet and TextPet are included.

## Building

Building is supported on Windows 10 and up.

Run the following command:

```
make
```

This will produce the following files:

* `mmbn2-out.gba` - Patched MMBN2 ROM.
* `mmbn2-out.sym` - Symbols file.
* `mmbn2-out.temp` - Temporary armips data.
* `mmbn2-out.tpl` - Text dump (TextPet format).
* `mmbn2-out.txt` - Text dump (plain text).

You can also run `make clean` to remove existing output files.

## License

This project is licensed under the terms of the MIT License. See `license.txt` for more details.

## Legal

This project is not endorsed by or affiliated with Capcom in any way. Mega Man and Mega Man Battle Network are registered trademarks of Capcom. All rights belong to their respective owners.