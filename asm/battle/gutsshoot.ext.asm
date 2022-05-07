.align 2
gutsShoot_spawnWaitForFlip:
	push	r14

	// Check timer
	ldrh	r0,[r5,0x20]
	cmp	r0,(5)
	bne	@@normal

	// Flip sprite
	ldrb	r0,[r5,0x16]
	ldr	r1,=0x800252A|1	// set sprite flip
	mov	r14,r15
	bx	r1

@@normal:
	// Call normal state function
	ldr	r0,=0x80A2188|1
	mov	r14,r15
	bx	r0

	pop	r15


.align 4
gutsShoot_megaManStates:
	.dw	0x80B82E4|1
	.dw	0x80B8374|1
	.dw	0x80B8434|1
	.dw	gutsShoot_waitTimer|1
	.dw	gutsShoot_waitFadeOut|1


.align 2
gutsShoot_flipMegaMan:
	mov	r1,0x1
	eor	r0,r1

	// Set sprite flip
	ldr	r1,=0x800252A|1
	mov	r14,r15
	bx	r1

	ldr	r1,=0x80B8344|1
	bx	r1

.align 2
gutsShoot_checkOffField:
	beq	@@offField

@@onField:
	ldr	r7,[r5,0x50]
	ldr	r0,[r7,0x24]
	tst	r0,r0

	// Go to check MegaMan hit something
	ldr	r1,=0x80B8388|1
	bx	r1

@@offField:
	// Check if battle can be escaped from (flag 0x857)
	mov	r0,0x8
	mov	r1,0x57
	ldr	r2,=0x801BF40|1	// check flag
	mov	r14,r15
	bx	r2
	bne	@@normal

	// Remove aura sprite
	mov	r0,0x0
	str	r0,[r5,0x4C]

	// Remove collision
	ldr	r0,=0x80840AA|1
	mov	r14,r15
	bx	r0

	// Make self invisible
	ldrb	r0,[r5]		// object flags
	mov	r1,0x2		// visible flag
	bic	r0,r1
	strb	r0,[r5]		// object flags

	// Set timer for 30 frames
	mov	r0,(15)
	strh	r0,[r5,0x20]

	// Set state to wait for timer
	mov	r0,0xC
	str	r0,[r5,0x8]

@@end:
	ldr	r0,=0x80B83B6|1
	bx	r0

@@normal:
	ldr	r0,=0x80B83AA|1
	bx	r0
	

.align 2
gutsShoot_waitTimer:
	push	r14

	// Subtract timer
	ldrh	r0,[r5,0x20]
	sub	r0,0x1
	strh	r0,[r5,0x20]
	bne	@@end

	// Start screen fade out
	push	r5
	mov	r0,0x8
	mov	r1,0x4
	ldr	r2,=0x800492C|1
	mov	r14,r15
	bx	r2
	pop	r5

	// Set state to wait for fade out
	mov	r0,0x10
	str	r0,[r5,0x8]

@@end:
	pop	r15

.align 2
gutsShoot_waitFadeOut:
	push	r14

	// Check fade out in progress
	mov	r7,r10
	ldr	r7,[r7,0x18]
	ldrb	r0,[r7,0x3]
	cmp	r0,0x1
	beq	@@end

	// End battle
	ldrb	r0,[r5,0x6]		// side
	ldr	r1,=0x8010F68|1
	mov	r14,r15
	bx	r1

	// Set state to kill self
	mov	r0,0x8
	str	r0,[r5,0x8]

@@end:
	pop	r15


.align 2
gutsShoot_flipAura:
	mov	r1,0x1
	eor	r0,r1

	ldr	r1,=0x800252A|1
	mov	r14,r15
	bx	r1

	ldrh	r0,[r5]
	mov	r1,0x2
	ldr	r2,=0x80BEED0|1
	bx	r2


.align 2
gater_overrideDamage:
	// Configure collision
	mov	r1,0x9
	mov	r2,0x3
	mov	r3,0x3
	ldr	r7,=0x8082B1C|1
	mov	r14,r15
	bx	r7

	// Override damage
	mov	r1,0x0
	strh	r1,[r0,0x10]

@@end:
	ldr	r0,=0x80B7B26|1
	bx	r0


	.pool
