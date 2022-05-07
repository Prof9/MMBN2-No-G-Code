// ACDC Town map
.org 0x83EAC78
.area 0x5EF8,0x00
@@header:
	// Layer 0
	.dw	filesize(TEMP+"/map-acdctown-layer0.img.bin") / 4
	.dw	@@layer0 - @@header
	.dw	0x0
	// Layer 1
	.dw	filesize(TEMP+"/map-acdctown-layer1.img.bin") / 4
	.dw	@@layer1 - @@header
	.dw	filesize(TEMP+"/map-acdctown-layer0.img.bin")
	// Layer 2
	.dw	filesize(TEMP+"/map-acdctown-layer2.img.bin") / 4
	.dw	@@layer2 - @@header
	.dw	max(0x4000, \
			filesize(TEMP+"/map-acdctown-layer0.img.bin") + \
			filesize(TEMP+"/map-acdctown-layer1.img.bin") \
		)
@@layer0:
	.import TEMP+"/map-acdctown-layer0.img.lz.bin"	:: .align 4
@@layer1:
	.import TEMP+"/map-acdctown-layer1.img.lz.bin"	:: .align 4
@@layer2:
	.import TEMP+"/map-acdctown-layer2.img.lz.bin"	:: .align 4
.endarea

.org 0x83F0B94
.area 0x1A4,0x00
	.dw	filesize(TEMP+"/map-acdctown.pal.bin")
	.import TEMP+"/map-acdctown.pal.bin"
.endarea

.org 0x83F0D38
.area 0x56E0,0x00
	.db	(204), (112)	:: .align	4
	.dw	0x10 + (204 * 112) * (0) * 0x2
	.dw	0x10 + (204 * 112) * (1) * 0x2
	.dw	0x10 + (204 * 112) * (2) * 0x2
	.import TEMP+"/map-acdctown.map.lz.bin"
.endarea
