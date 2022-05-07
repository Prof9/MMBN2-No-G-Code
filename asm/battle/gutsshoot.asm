// GutsShoot behavior
//.org 0x80A20CE	// Spawn GutsMan flipped
//	nop

.org 0x80A2130	// Flip GutsMan when he picks up MegaMan
	.dw	gutsShoot_spawnWaitForFlip|1

.org 0x80B82D4	// MegaMan projectile states
	.dw	gutsShoot_megaManStates

.org 0x80B833C	// Flip MegaMan projectile
	ldr	r1,=gutsShoot_flipMegaMan|1
	bx	r1
	.pool

.org 0x80B8380	// Check MegaMan off the field
	ldr	r1,=gutsShoot_checkOffField|1
	bx	r1
	.pool

.org 0x80B8424	// Move MegaMan to left instead of right
	sub	r0,r0,r2

.org 0x80BEEC8	// Flip aura
	ldr	r1,=gutsShoot_flipAura|1
	bx	r1
	.pool

.org 0x80C762E	// Always do 0 damage
	mov	r2,(0)
