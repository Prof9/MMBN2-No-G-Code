// Game Over
.org 0x87E9EA8
.area 0x10E0,0x00
	.import TEMP+"/gameover.img.bin"
.endarea

.org 0x87EAF88
.area 0x20,0x00
	.import TEMP+"/gameover.pal.bin"
.endarea

.org 0x87EAFA8
.area 0x500,0x00
	.import TEMP+"/gameover.map.bin"
.endarea
