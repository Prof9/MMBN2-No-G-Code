.align 4
map_img_motherComp45:
@@header:
	// Layer 0
	.dw	filesize(TEMP+"/map-mothercomp45-layer0.img.bin") / 4
	.dw	@@layer0 - @@header
	.dw	0x0
	// Layer 1
	.dw	filesize(TEMP+"/map-mothercomp45-layer1.img.bin") / 4
	.dw	@@layer1 - @@header
	.dw	filesize(TEMP+"/map-mothercomp45-layer0.img.bin")
	// Layer 2
	.dw	filesize(TEMP+"/map-mothercomp45-layer2.img.bin") / 4
	.dw	@@layer2 - @@header
	.dw	max(0x4000, \
			filesize(TEMP+"/map-mothercomp45-layer0.img.bin") + \
			filesize(TEMP+"/map-mothercomp45-layer1.img.bin") \
		)
@@layer0:
	.import TEMP+"/map-mothercomp45-layer0.img.lz.bin"	:: .align 4
@@layer1:
	.import TEMP+"/map-mothercomp45-layer1.img.lz.bin"	:: .align 4
@@layer2:
	.import TEMP+"/map-mothercomp45-layer2.img.lz.bin"	:: .align 4
