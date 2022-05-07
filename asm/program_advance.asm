// Program Advances * code filter
.org 0x800BCB4
.area 0x82,0x00
	ldr	r0,=pa_codeFilter|1
	mov	r14,r15
	bx	r0
	b	0x800BD48
	.pool
.endarea


// Program Advance combinations - Length 3
.org 0x800BD50 + (0x4+(0x2+0x2)*(3)) * (5)	// Z-Canon2 variation 3
	.db	(0x4+(0x2+0x2)*(3)), (3)		// 3 chips
	.dh	(273)						// Z-Canon2
	.dh	(  2), ( 4)					// HiCannon E
	.dh	(  2), ( 5)					// HiCannon F
	.dh	(  2), ( 7)					// HiCannon H
.org 0x800BD50 + (0x4+(0x2+0x2)*(3)) * (6)	// Z-Canon3 variation 1
	.db	(0x4+(0x2+0x2)*(3)), (3)		// 3 chips
	.dh	(274)						// Z-Canon3
	.dh	(  3), ( 4)					// M-Cannon E
	.dh	(  3), ( 5)					// M-Cannon F
	.dh	(  3), ( 7)					// M-Cannon H
.org 0x800BD50 + (0x4+(0x2+0x2)*(3)) * (7)	// Z-Canon3 variation 2
	.db	(0x4+(0x2+0x2)*(3)), (3)		// 3 chips
	.dh	(274)						// Z-Canon3
	.dh	(  3), ( 5)					// M-Cannon F
	.dh	(  3), ( 7)					// M-Cannon H
	.dh	(  3), ( 8)					// M-Cannon I
.org 0x800BD50 + (0x4+(0x2+0x2)*(3)) * (8)	// Z-Canon3 variation 3
	.db	(0x4+(0x2+0x2)*(3)), (3)		// 3 chips
	.dh	(274)						// Z-Canon3
	.dh	(  3), ( 7)					// M-Cannon H
	.dh	(  3), ( 8)					// M-Cannon I
	.dh	(  3), ( 9)					// M-Cannon J

// Program Advance combinations - Length 5
.org 0x800C0A8 + (0x4+(0x2+0x2)*(5)) * (1)	// O-Canon2 variation 1
	.db	(0x4+(0x2+0x2)*(5)), (5)		// 5 chips
	.dh	(281)						// O-Canon2
	.dh	(  2), ( 2)					// HiCannon C
	.dh	(  2), ( 3)					// HiCannon D
	.dh	(  2), ( 4)					// HiCannon E
	.dh	(  2), ( 5)					// HiCannon F
	.dh	(  2), ( 7)					// HiCannon H
.org 0x800C0A8 + (0x4+(0x2+0x2)*(5)) * (2)	// O-Canon3 variation 1
	.db	(0x4+(0x2+0x2)*(5)), (5)		// 5 chips
	.dh	(282)						// O-Canon3
	.dh	(  3), ( 4)					// M-Cannon E
	.dh	(  3), ( 5)					// M-Cannon F
	.dh	(  3), ( 7)					// M-Cannon H
	.dh	(  3), ( 8)					// M-Cannon I
	.dh	(  3), ( 9)					// M-Cannon J


// Program Advance pattern counts
.org 0x8028CD4 + (2-1)	// Z-Canon2
	.db	(2)	// from 3
.org 0x8028CD4 + (24-1)	// TimeBom+
	.db	(2)	// from 3
