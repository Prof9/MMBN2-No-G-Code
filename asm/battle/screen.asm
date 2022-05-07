// Results
.org 0x86D2150
.area 0x40,0x00
	.import TEMP+"/results.pal.bin"
.endarea
.org 0x86CE860
.area 0xE20,0x00
	.import TEMP+"/results-0.img.bin"
.endarea
.org 0x86CF680
.area 0x330,0x00
	.import TEMP+"/results-0.map.bin"
.endarea
.org 0x86CF9B0
.area 0x1120,0x00
	.import TEMP+"/results-1.img.bin"
.endarea
.org 0x86D0AD0
.area 0x330,0x00
	.import TEMP+"/results-1.map.bin"
.endarea
