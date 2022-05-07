// Use bigger tileset for Mother Comp 4+5
.org 0x801F624
	.dw	map_img_motherComp45
.org 0x801F630
	.dw	map_img_motherComp45

// Mother Comp maps
.org 0x84DCC34
.area 0x370C,0x00
@@header:
	// Layer 0
	.dw	filesize(TEMP+"/map-mothercomp123-layer0.img.bin") / 4
	.dw	@@layer0 - @@header
	.dw	0x0
	// Layer 1
	.dw	filesize(TEMP+"/map-mothercomp123-layer1.img.bin") / 4
	.dw	@@layer1 - @@header
	.dw	filesize(TEMP+"/map-mothercomp123-layer0.img.bin")
	// Layer 2
	.dw	filesize(TEMP+"/map-mothercomp123-layer2.img.bin") / 4
	.dw	@@layer2 - @@header
	.dw	max(0x4000, \
			filesize(TEMP+"/map-mothercomp123-layer0.img.bin") + \
			filesize(TEMP+"/map-mothercomp123-layer1.img.bin") \
		)
@@layer0:
	.import TEMP+"/map-mothercomp123-layer0.img.lz.bin"	:: .align 4
@@layer1:
	.import TEMP+"/map-mothercomp123-layer1.img.lz.bin"	:: .align 4
@@layer2:
	.import TEMP+"/map-mothercomp123-layer2.img.lz.bin"	:: .align 4
.endarea

//.org 0x84E0340
//.area 0x1A4,0x00
//	.dw	filesize(TEMP+"/map-mothercomp12.pal.bin")
//	.import TEMP+"/map-mothercomp12.pal.bin"
//.endarea

.org 0x84E04E4
.area 0x475C,0x00
	.db	(166), (120)	:: .align	4
	.dw	0x10 + (166 * 120) * (0) * 0x2
	.dw	0x10 + (166 * 120) * (1) * 0x2
	.dw	0x10 + (166 * 120) * (2) * 0x2
	.import TEMP+"/map-mothercomp1.map.lz.bin"
.endarea

.org 0x84E4C40
.area 0x4A00,0x00
	.db	(166), (120)	:: .align	4
	.dw	0x10 + (166 * 120) * (0) * 0x2
	.dw	0x10 + (166 * 120) * (1) * 0x2
	.dw	0x10 + (166 * 120) * (2) * 0x2
	.import TEMP+"/map-mothercomp2.map.lz.bin"
.endarea

//.org 0x84E9640
//.area 0x1A4,0x00
//	.dw	filesize(TEMP+"/map-mothercomp3.pal.bin")
//	.import TEMP+"/map-mothercomp3.pal.bin"
//.endarea

.org 0x84E97E4
.area 0x4B10,0x00
	.db	(166), (120)	:: .align	4
	.dw	0x10 + (166 * 120) * (0) * 0x2
	.dw	0x10 + (166 * 120) * (1) * 0x2
	.dw	0x10 + (166 * 120) * (2) * 0x2
	.import TEMP+"/map-mothercomp3.map.lz.bin"
.endarea

//.org 0x84F1CF4
//.area 0x1A4,0x00
//	.dw	filesize(TEMP+"/map-mothercomp45.pal.bin")
//	.import TEMP+"/map-mothercomp45.pal.bin"
//.endarea

.org 0x84F1CF4+0x4+0x20*(6)
.area 0x20
	.import TEMP+"/map-mothercomp45-n64.pal.bin"
.endarea

.org 0x84F1E98
.area 0x4864,0x00
	.db	(166), (120)	:: .align	4
	.dw	0x10 + (166 * 120) * (0) * 0x2
	.dw	0x10 + (166 * 120) * (1) * 0x2
	.dw	0x10 + (166 * 120) * (2) * 0x2
	.import TEMP+"/map-mothercomp4.map.lz.bin"
.endarea

.org 0x84F66FC
.area 0x50F0,0x00
	.db	(166), (120)	:: .align	4
	.dw	0x10 + (166 * 120) * (0) * 0x2
	.dw	0x10 + (166 * 120) * (1) * 0x2
	.dw	0x10 + (166 * 120) * (2) * 0x2
	.import TEMP+"/map-mothercomp5.map.lz.bin"
.endarea
