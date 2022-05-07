// Menu
.org 0x87CE940
.area 0x8C0,0x00
	.import TEMP+"/menu.img.bin"
.endarea

.org 0x87CF200
.area 0x60,0x00
	.import TEMP+"/menu.pal.bin"
.endarea

.org 0x87CF260
.area 0x208,0x00
	.import TEMP+"/menu-0.map.bin"
.endarea

.org 0x87CF468
.area 0x208,0x00
	.import TEMP+"/menu-1.map.bin"
.endarea

.org 0x87CF670
.area 0x208,0x00
	.import TEMP+"/menu-2.map.bin"
.endarea

.org 0x87CF878
.area 0x208,0x00
	.import TEMP+"/menu-3.map.bin"
.endarea

.org 0x87CFA80
.area 0xD8,0x00
	.import TEMP+"/menu-status.map.bin"
.endarea


// Menu screens
.org 0x87D08DC
.area 0x2280,0x00
	.import TEMP+"/screen.img.bin"
.endarea

// 0x87D2B5C - "No Chip" tileset, size 0x1A0
.org 0x87D2CFC
.area 0x100,0x00
	.import TEMP+"/screen.pal.bin"
.endarea

.org 0x87D2DFC
.area 0x500,0x00
	.import TEMP+"/screen-folder.map.bin"
.endarea

.org 0x87D32FC
.area 0x500,0x00
	.import TEMP+"/screen-pack.map.bin"
.endarea

.org 0x87D37FC
.area 0x1B8,0x00
	.import TEMP+"/screen-chip.map.bin"
.endarea

.org 0x87D39B4
.area 0x500,0x00
	.import TEMP+"/screen-folderselect.map.bin"
.endarea

.org 0x87D3EB4
.area 0x500,0x00
	.import TEMP+"/screen-library.map.bin"
.endarea

.org 0x87D43B4
.area 0x300,0x00
	.import TEMP+"/screen-megaman.map.bin"
.endarea

.org 0x87D46B4
.area 0x500,0x00
	.import TEMP+"/screen-pamemo.map.bin"
.endarea

.org 0x87D4BB4
.area 0x30,0x00
	.import TEMP+"/screen-pattern.map.bin"
.endarea

.org 0x87D4BE4
.area 0x120,0x00
	.import TEMP+"/screen-combo.map.bin"
.endarea

.org 0x87D4D04
.area 0x300,0x00
	.import TEMP+"/screen-mail.map.bin"
.endarea

.org 0x87D5004
.area 0x300,0x00
	.import TEMP+"/screen-keyitems.map.bin"
.endarea

.org 0x87D5304
.area 0x300,0x00
	.import TEMP+"/screen-network.map.bin"
.endarea

.org 0x87D5604
.area 0x500,0x00
	.import TEMP+"/screen-tradechip.map.bin"
.endarea

.org 0x87D5B04
.area 0x300,0x00
	.import TEMP+"/screen-choosing-chip.map.bin"
.endarea

// 0x87D5E04 - "No Chip" tilemap, 13x11, base tile 192, size 0xB0
.org 0x87D5EB4
.area 0x300,0x00
	.import TEMP+"/screen-save.map.bin"
.endarea

.org 0x87D61B4
.area 0x300,0x00
	.import TEMP+"/screen-subchips.map.bin"
.endarea

// 0x87D64B4 - Chip Trader result chip popup tilemap, 10x13, base tile 0x50, size 0x104

.org 0x87D65B8
.area 0x300,0x00
	.import TEMP+"/screen-tradestyle.map.bin"
.endarea

.org 0x87D68B8
.area 0x3C,0x00
	.import TEMP+"/screen-choosing-style.map.bin"
.endarea

// 0x87D68F4 - Regular Chip selection tileset, size 0xA0
// 0x87D6994 - Regular Chip selection tilemap, 20x4, base tile 0x60, size 0xA0
// 0x87D6A34 - Chip popup border tileset, size 0xE0
// 0x87D6B14 - Chip popup border tilemap, 10x13, base tile 0x100, size 0x104
// 0x87D6C18 - Chip popup description tilemap, 12x6, base tile 0x100, size 0x90
// 0x87D6CA8 - Common chip sprites, size 0xCA0

.org 0x87D7948
.area 0x4,0x00
	.import TEMP+"/screen-v2.map.bin"
.endarea

.org 0x87D794C
.area 0x4,0x00
	.import TEMP+"/screen-v3.map.bin"
.endarea

.org 0x87D7950
.area 0x36,0x00
	.import TEMP+"/screen-hidestyle.map.bin"
.endarea

.org 0x87D7988
.area 0x20,0x00
	.import TEMP+"/screen-normstyl.map.bin"
.endarea

.org 0x87D79A8
.area 0x20,0x00
	.import TEMP+"/screen-elecguts.map.bin"
.endarea

.org 0x87D79C8
.area 0x20,0x00
	.import TEMP+"/screen-heatguts.map.bin"
.endarea

.org 0x87D79E8
.area 0x20,0x00
	.import TEMP+"/screen-aquaguts.map.bin"
.endarea

.org 0x87D7A08
.area 0x20,0x00
	.import TEMP+"/screen-woodguts.map.bin"
.endarea

.org 0x87D7A28
.area 0x20,0x00
	.import TEMP+"/screen-eleccust.map.bin"
.endarea

.org 0x87D7A48
.area 0x20,0x00
	.import TEMP+"/screen-heatcust.map.bin"
.endarea

.org 0x87D7A68
.area 0x20,0x00
	.import TEMP+"/screen-aquacust.map.bin"
.endarea

.org 0x87D7A88
.area 0x20,0x00
	.import TEMP+"/screen-woodcust.map.bin"
.endarea

.org 0x87D7AA8
.area 0x20,0x00
	.import TEMP+"/screen-electeam.map.bin"
.endarea

.org 0x87D7AC8
.area 0x20,0x00
	.import TEMP+"/screen-heatteam.map.bin"
.endarea

.org 0x87D7AE8
.area 0x20,0x00
	.import TEMP+"/screen-aquateam.map.bin"
.endarea

.org 0x87D7B08
.area 0x20,0x00
	.import TEMP+"/screen-woodteam.map.bin"
.endarea

.org 0x87D7B28
.area 0x20,0x00
	.import TEMP+"/screen-elecshld.map.bin"
.endarea

.org 0x87D7B48
.area 0x20,0x00
	.import TEMP+"/screen-heatshld.map.bin"
.endarea

.org 0x87D7B68
.area 0x20,0x00
	.import TEMP+"/screen-aquashld.map.bin"
.endarea

.org 0x87D7B88
.area 0x20,0x00
	.import TEMP+"/screen-woodshld.map.bin"
.endarea

.org 0x87D7BA8
.area 0x20,0x00
	.import TEMP+"/screen-hubstyl.map.bin"
.endarea

// Text archives
.org 0x87DAF34
.area 0x1F8,0x00
	.import TEMP+"/screen-shop.map.bin"
.endarea

// 0x87DB12C - Shop background tileset, size 0x220
// 0x87DB34C - Shop background tilemap, 32x32, base tile 0x300, size 0x800
// 0x87DBB4C - Shop background palette, size 0x20

.org 0x87DBB6C
.area 0x48,0x00
	.import TEMP+"/money-zenny.map.bin"
.endarea

.org 0x87DBBB4
.area 0x2E0,0x00
	.import TEMP+"/money.img.bin"
.endarea

.org 0x87DBE94
.area 0x60,0x00
	.import TEMP+"/money.pal.bin"
.endarea

.org 0x87DBEF4
.area 0x48,0x00
	.import TEMP+"/money-bugfrag.map.bin"
.endarea

// Shop text archives

.org 0x87DD100
.area 0x500,0x00
	.import TEMP+"/screen-trader.map.bin"
.endarea

.org 0x87DD600
.area 0x208,0x00
	.import TEMP+"/screen-trader-sort.map.bin"
.endarea

// Text archive

.org 0x87DDDDC
.area 0x300,0x00
	.import TEMP+"/screen-board-0.map.bin"
.endarea

.org 0x87DE0DC
.area 0x300,0x00
	.import TEMP+"/screen-board-1.map.bin"
.endarea

// Text archives
// 0x87E6D7C - Presented by Capcom tileset, size 0x680
// 0x87E73FC - Presented by Capcom palette, size 0x20, slot 14
// 0x87E741C - Presented by Capcom tilemap, 12x6, base tile 0x201, size 0x90
// Text archives

.org 0x87E7948
.area 0x500,0x00
	.import TEMP+"/screen-results-total.map.bin"
.endarea

.org 0x87E7E48
.area 0x500,0x00
	.import TEMP+"/screen-results-boss.map.bin"
.endarea
