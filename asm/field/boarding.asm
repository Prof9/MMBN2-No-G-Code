// Boarding maps
.org 0x845BE8C
.area 0x2DE0,0x00
@@header:
	// Layer 0
	.dw	filesize(TEMP+"/map-boarding-layer0.img.bin") / 4
	.dw	@@layer0 - @@header
	.dw	0x0
	// Layer 1
	.dw	filesize(TEMP+"/map-boarding-layer1.img.bin") / 4
	.dw	@@layer1 - @@header
	.dw	filesize(TEMP+"/map-boarding-layer0.img.bin")
	// Layer 2
	.dw	filesize(TEMP+"/map-boarding-layer2.img.bin") / 4
	.dw	@@layer2 - @@header
	.dw	max(0x4000, \
			filesize(TEMP+"/map-boarding-layer0.img.bin") + \
			filesize(TEMP+"/map-boarding-layer1.img.bin") \
		)
@@layer0:
	.import TEMP+"/map-boarding-layer0.img.lz.bin"	:: .align 4
@@layer1:
	.import TEMP+"/map-boarding-layer1.img.lz.bin"	:: .align 4
@@layer2:
	.import TEMP+"/map-boarding-layer2.img.lz.bin"	:: .align 4
.endarea

// Electopia Boarding map
.org 0x845EC6C
.area 0x1A4,0x00
	.dw	filesize(TEMP+"/map-electopia-boarding.pal.bin")
	.import TEMP+"/map-electopia-boarding.pal.bin"
.endarea

.org 0x845EE10
.area 0x29A4,0x00
	.db	(132), (84)	:: .align	4
	.dw	0x10 + (132 * 84) * (0) * 0x2
	.dw	0x10 + (132 * 84) * (1) * 0x2
	.dw	0x10 + (132 * 84) * (2) * 0x2
	.import TEMP+"/map-electopia-boarding.map.lz.bin"
.endarea

// Netopia Boarding map
.org 0x8466BAC
.area 0x1A4,0x00
	.dw	filesize(TEMP+"/map-netopia-boarding.pal.bin")
	.import TEMP+"/map-netopia-boarding.pal.bin"
.endarea

.org 0x8466D50
.area 0x2FC0,0x00
	.db	(132), (100)	:: .align	4
	.dw	0x10 + (132 * 100) * (0) * 0x2
	.dw	0x10 + (132 * 100) * (1) * 0x2
	.dw	0x10 + (132 * 100) * (2) * 0x2
	.import TEMP+"/map-netopia-boarding.map.lz.bin"
.endarea
