// Use separate tileset for Gospel HQ
.org 0x801F954
	.dw	map_img_gospelHQ

// Gospel HQ map
.org 0x8595008
.area 0x1BBC,0x00
	.db	(144), (60)	:: .align	4
	.dw	0x10 + (144 * 60) * (0) * 0x2
	.dw	0x10 + (144 * 60) * (1) * 0x2
	.dw	0x10 + (144 * 60) * (2) * 0x2
	.import TEMP+"/map-gospelhq.map.lz.bin"
.endarea
