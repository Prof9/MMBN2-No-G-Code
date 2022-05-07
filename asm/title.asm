// New Game
.org 0x87EC3A8
.area 0x280,0x00
	.import TEMP+"/newgame.img.bin"
.endarea


// Copyright
.org 0x87EC8A8
.area 0x1000,0x00
	.import TEMP+"/copyright.img.bin"
.endarea


// Title screen
.org 0x87EDD88
.area 0x200,0x00
	.import TEMP+"/title.pal.bin"
.endarea

.org 0x87EDF88
.area 0x3DC0,0x00
	.import TEMP+"/title.img.bin"
.endarea

.org 0x87F3C08
.area 0x500,0x00
	.import TEMP+"/title.map.bin"
.endarea
