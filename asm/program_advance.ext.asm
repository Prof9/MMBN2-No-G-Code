.align 2
pa_codeFilter:
@@loop:
	ldrh	r0,[r6,0x2]		// oldHand code
	cmp	r0,(26)		// is * code?
	bne	@@next
	ldr	r1,[sp,0x14]	// replaced?
	tst	r1,r1
	bne	@@next

@@patternABX:
	cmp	r3,0x2		// chips 3..N
	blt	@@patternAXC
	sub	r1,r6,0x6
	ldrh	r2,[r1]		// code1
	ldrh	r1,[r1,0x4]		// code2 stored in r1 so we can +1 it
	cmp	r1,(25)		// code2 >= Z?
	bge	@@patternAXC
@@checkFHX:
	cmp	r2,(5)		// code1 == F?
	bne	@@checkABX
	cmp	r1,(7)		// code2 == H?
	beq	@@setAXC		// code becomes H+1 = I
@@checkABX:
	sub	r1,0x1
	cmp	r2,r1
	bne	@@patternAXC
@@setABX:
	add	r0,r2,0x2		// code = code1 + 2
	b	@@skipGForward

@@patternAXC:
	cmp	r3,0x1		// chips 1..
	blt	@@patternXBC
	sub	r1,r4,0x1
	cmp	r3,r4			// chips ..N-1
	bge	@@patternXBC
	sub	r1,r6,0x2
	ldrh	r1,[r1]		// code1
	ldrh	r2,[r6,0x6]		// code3
	cmp	r1,(25)		// code1 >= Z?
	bge	@@next
@@checkEXH:
	cmp	r1,(4)		// code1 == E?
	bne	@@checkFXI
	cmp	r2,(7)		// code3 == H?
	beq	@@setAXC		// code becomes E+1 = F
@@checkFXI:
	cmp	r1,(5)		// code1 == F?
	bne	@@checkAXC
	cmp	r2,(8)		// code3 == I?
	beq	@@setAXC		// code becomes F+1 = G -> H
@@checkAXC:
	sub	r2,0x2
	cmp	r1,r2
	bne	@@patternXBC
@@setAXC:
	add	r0,r1,0x1		// code = code1 + 1 (or code2 + 1 for ABX)
@@skipGForward:
	cmp	r0,(6)		// code == G?
	bne	@@replaced
	add	r0,0x1		// code = H
	b	@@replaced

@@patternXBC:
	sub	r1,r4,0x2
	cmp	r3,r4			// chips ..N-2
	bge	@@next
	ldrh	r1,[r6,0x6]		// code2
	ldrh	r2,[r6,0xA]		// code3
	cmp	r2,(1)
	blt	@@next
@@checkXFH:
	cmp	r1,(5)		// code2 == F?
	bne	@@checkXBC
	cmp	r2,(7)		// code3 == H?
	beq	@@setXBC
@@checkXBC:
	sub	r2,0x1
	cmp	r1,r2
	bne	@@next
	sub	r0,r1,0x1		// code = code2 - 1
	cmp	r0,(6)		// code == G?
	bne	@@replaced
@@setXBC:
	sub	r0,r1,0x1		// code = code2 - 1
@@skipGBackward:
	cmp	r0,(6)		// code == G?
	bne	@@replaced
	sub	r0,0x1		// code = F
//	b	@@replaced

@@replaced:
	str	r6,[sp,0x14]	// set replaced (just use anything nonzero)
//	b	@@next
@@next:
	ldmia	[r6]!,r1		// oldHand chip
	strh	r1,[r7]		// newHand chip
	strh	r0,[r7,0x2]		// newHand code
	add	r7,0x4
	add	r3,0x1
	cmp	r3,r4			// r4 = num of chips
	blt	@@loop
@@end:
	mov	r15,r14

	.pool
