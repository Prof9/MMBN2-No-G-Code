.align 2
battle_onContact:
	ldr	r0,[r7,0x24]	// contact flags before
	push	r0,r5,r14

	// Do contact check
	ldr	r0,=0x3007478|1
	mov	r14,r15
	bx	r0

	pop	r0
	cmp	r0,0x0
	bne	@@end			// had already made contact
	ldr	r1,[r7,0x24]	// contact flags after
	cmp	r0,r1
	beq	@@end			// did not make contact

	// Made contact with other collision
	// Check if this is a Gater projectile
	ldr	r4,[r7,0x34]	// parent object
	cmp	r4,0x0		// null pointer check
	beq	@@end

	ldrb	r1,[r4,0x1]		// parent object type
	cmp	r1,0x88		// Gater projectile object
	bne	@@end

	ldr	r5,[r6,0x34]	// other parent object
	cmp	r5,0x0		// null pointer check
	beq	@@end

	// Check HP not full
	ldrh	r0,[r5,0x24]
	ldrh	r1,[r5,0x26]
	cmp	r0,(0)		// check 0 HP
	beq	@@end
//	cmp	r0,r1
//	bge	@@end			// HP full

	// Heal object
	ldr	r0,[r4,0x2C]	// damage parameter
	lsl	r0,r0,0x14
	lsr	r0,r0,0x14
	ldr	r1,=0x80836C8|1
	mov	r14,r15
	bx	r1

	// Spawn heal effect
	mov	r0,0x34
	add	r0,r0,r5
	ldmia	[r0]!,r1-r3
	mov	r4,0x1D
	ldr	r0,=0x80BA3C4|1
	mov	r14,r15
	bx	r0

	// Play heal SFX
	mov	r0,0x72
	ldr	r1,=0x8000598|1
	mov	r14,r15
	bx	r1

@@end:
	pop	r5,r15


	.pool
