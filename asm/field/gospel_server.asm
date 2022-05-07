// Gospel Server maps
.org 0x8544BEC
.area 0x3624,0x00
@@header:
	// Layer 0
	.dw	filesize(TEMP+"/map-gospelserver-layer0.img.bin") / 4
	.dw	@@layer0 - @@header
	.dw	0x0
	// Layer 1
	.dw	filesize(TEMP+"/map-gospelserver-layer1.img.bin") / 4
	.dw	@@layer1 - @@header
	.dw	filesize(TEMP+"/map-gospelserver-layer0.img.bin")
	// Layer 2
	.dw	filesize(TEMP+"/map-gospelserver-layer2.img.bin") / 4
	.dw	@@layer2 - @@header
	.dw	max(0x4000, \
			filesize(TEMP+"/map-gospelserver-layer0.img.bin") + \
			filesize(TEMP+"/map-gospelserver-layer1.img.bin") \
		)
@@layer0:
	.import TEMP+"/map-gospelserver-layer0.img.lz.bin"	:: .align 4
@@layer1:
	.import TEMP+"/map-gospelserver-layer1.img.lz.bin"	:: .align 4
@@layer2:
	.import TEMP+"/map-gospelserver-layer2.img.lz.bin"	:: .align 4
.endarea

// Gospel Server 1 map
.org 0x85483B4
.area 0x3DDC,0x00
	.db	(160), (110)	:: .align	4
	.dw	0x10 + (160 * 110) * (0) * 0x2
	.dw	0x10 + (160 * 110) * (1) * 0x2
	.dw	0x10 + (160 * 110) * (2) * 0x2
	.import TEMP+"/map-gospelserver1.map.lz.bin"
.endarea

// Gospel Server 2 map
.org 0x854C190
.area 0x3EF8,0x00
	.db	(160), (110)	:: .align	4
	.dw	0x10 + (160 * 110) * (0) * 0x2
	.dw	0x10 + (160 * 110) * (1) * 0x2
	.dw	0x10 + (160 * 110) * (2) * 0x2
	.import TEMP+"/map-gospelserver2.map.lz.bin"
.endarea
