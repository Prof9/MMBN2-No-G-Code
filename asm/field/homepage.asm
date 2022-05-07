// Use separate tileset for Yai's HP
.org 0x801F720
	.dw	map_img_yaisHP

// Yai's HP map
.org 0x8557FD4
.area 0x1A4,0x00
	.dw	filesize(TEMP+"/map-yaishp.pal.bin")
	.import TEMP+"/map-yaishp.pal.bin"
.endarea

.org 0x8558178
.area 0x2344,0x00
	.db	(128), (88)	:: .align	4
	.dw	0x10 + (128 * 88) * (0) * 0x2
	.dw	0x10 + (128 * 88) * (1) * 0x2
	.dw	0x10 + (128 * 88) * (2) * 0x2
	.import TEMP+"/map-yaishp.map.lz.bin"
.endarea