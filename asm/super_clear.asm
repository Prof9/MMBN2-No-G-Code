// Super clear screen
.org 0x87C5140
.area 0x9600,0x00
	.import TEMP+"/super-clear.img.bin"
.endarea

.org 0x87CE740
.area 0x1E0
	.import TEMP+"/super-clear.pal.bin"
.endarea
