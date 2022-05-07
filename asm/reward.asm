// Virus drops
.org 0x80125E8 + 0x3C*(  3) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Mettaur3		low  HP
	.dh	( 41) | ((16) << 0x9)	// Dynawave  G -> Q
.org 0x80125E8 + 0x3C*(  5) + 0x14*(0) + 0x4*(3) + 0x2*(1)	// Canodumb2	high HP
	.dh	(  2) | (( 7) << 0x9)	// HiCannon  G -> H
.org 0x80125E8 + 0x3C*(  5) + 0x14*(1) + 0x4*(3) + 0x2*(1)	// Canodumb2	mid  HP
	.dh	(  2) | (( 7) << 0x9)	// HiCannon  G -> H
.org 0x80125E8 + 0x3C*(  5) + 0x14*(2) + 0x4*(3) + 0x2*(1)	// Canodumb2	low  HP
	.dh	(  2) | (( 7) << 0x9)	// HiCannon  G -> H
.org 0x80125E8 + 0x3C*(  6) + 0x14*(0) + 0x4*(4) + 0x2*(1)	// Canodumb3	high HP
	.dh	(  3) | (( 9) << 0x9)	// M-Cannon  G -> J
.org 0x80125E8 + 0x3C*(  6) + 0x14*(1) + 0x4*(4) + 0x2*(1)	// Canodumb3	mid  HP
	.dh	(  3) | (( 9) << 0x9)	// M-Cannon  G -> J
.org 0x80125E8 + 0x3C*(  6) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Canodumb3	low  HP
	.dh	(  3) | (( 9) << 0x9)	// M-Cannon  G -> J
.org 0x80125E8 + 0x3C*( 10) + 0x14*(0) + 0x4*(3) + 0x2*(1)	// Fishy		high HP
	.dh	( 50) | (( 1) << 0x9)	// DashAtk   G -> B
.org 0x80125E8 + 0x3C*( 10) + 0x14*(1) + 0x4*(3) + 0x2*(1)	// Fishy		mid  HP
	.dh	( 50) | (( 1) << 0x9)	// DashAtk   G -> B
.org 0x80125E8 + 0x3C*( 12) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Cloudy		low  HP
	.dh	( 91) | ((10) << 0x9)	// LilCloud  G -> K
.org 0x80125E8 + 0x3C*( 16) + 0x14*(0) + 0x4*(2) + 0x2*(1)	// Spooky2		high HP
	.dh	(124) | (( 8) << 0x9)	// Recov50   G -> I
.org 0x80125E8 + 0x3C*( 16) + 0x14*(1) + 0x4*(2) + 0x2*(1)	// Spooky2		mid  HP
	.dh	(124) | (( 8) << 0x9)	// Recov50   G -> I
.org 0x80125E8 + 0x3C*( 17) + 0x14*(1) + 0x4*(4) + 0x2*(0)	// Spooky3		mid  HP
	.dh	(155) | ((15) << 0x9)	// Invis     G -> P
.org 0x80125E8 + 0x3C*( 18) + 0x14*(2) + 0x4*(4) + 0x2*(0)	// Handy		low  HP
	.dh	( 88) | (( 2) << 0x9)	// TimeBom1  G -> C
.org 0x80125E8 + 0x3C*( 19) + 0x14*(1) + 0x4*(4) + 0x2*(1)	// Handy2		mid  HP
	.dh	( 89) | ((14) << 0x9)	// TimeBom2  G -> O
.org 0x80125E8 + 0x3C*( 20) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Handy3		low  HP
	.dh	( 90) | ((25) << 0x9)	// TimeBom3  G -> Z
.org 0x80125E8 + 0x3C*( 22) + 0x14*(2) + 0x4*(2) + 0x2*(1)	// TuffBunny	low  HP
	.dh	( 66) | ((13) << 0x9)	// ZapRing2  G -> N
.org 0x80125E8 + 0x3C*( 26) + 0x14*(1) + 0x4*(4) + 0x2*(1)	// DeathFire	mid  HP
	.dh	( 82) | (( 3) << 0x9)	// Meteor15  G -> D
.org 0x80125E8 + 0x3C*( 26) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// DeathFire	low  HP
	.dh	( 82) | ((17) << 0x9)	// Meteor15  G -> R
.org 0x80125E8 + 0x3C*( 33) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// CanDevil2	low  HP
	.dh	(142) | (( 0) << 0x9)	// Candle2   G -> A
.org 0x80125E8 + 0x3C*( 35) + 0x14*(2) + 0x4*(3) + 0x2*(1)	// Mushy		low  HP
	.dh	( 68) | ((16) << 0x9)	// Spice1    G -> Q
.org 0x80125E8 + 0x3C*( 42) + 0x14*(1) + 0x4*(0) + 0x2*(1)	// Mole2		mid  HP
	.dh	( 83) | ((10) << 0x9)	// Meteor18  G -> K
.org 0x80125E8 + 0x3C*( 42) + 0x14*(1) + 0x4*(2) + 0x2*(0)	// Mole2		mid  HP
	.dh	( 83) | ((10) << 0x9)	// Meteor18  G -> K
.org 0x80125E8 + 0x3C*( 42) + 0x14*(1) + 0x4*(3) + 0x2*(1)	// Mole2		mid  HP
	.dh	( 83) | ((10) << 0x9)	// Meteor18  G -> K
.org 0x80125E8 + 0x3C*( 46) + 0x14*(1) + 0x4*(4) + 0x2*(0)	// Flappy2		mid  HP
	.dh	( 43) | (( 1) << 0x9)	// Quake2    G -> B
	.dh	( 43) | (( 1) << 0x9)	// Quake2    G -> B
.org 0x80125E8 + 0x3C*( 51) + 0x14*(0) + 0x4*(4) + 0x2*(0)	// Twisty		high HP
	.dh	( 97) | (( 4) << 0x9)	// Remobit1  G -> E
	.dh	( 97) | (( 4) << 0x9)	// Remobit1  G -> E
.org 0x80125E8 + 0x3C*( 57) + 0x14*(0) + 0x4*(3) + 0x2*(0)	// Spikey		high HP
	.dh	( 12) | ((15) << 0x9)	// HeatShot  G -> P
	.dh	( 12) | ((15) << 0x9)	// HeatShot  G -> P
.org 0x80125E8 + 0x3C*( 57) + 0x14*(1) + 0x4*(3) + 0x2*(0)	// Spikey		mid  HP
	.dh	( 12) | (( 7) << 0x9)	// HeatShot  G -> H
	.dh	( 12) | (( 7) << 0x9)	// HeatShot  G -> H
.org 0x80125E8 + 0x3C*( 63) + 0x14*(2) + 0x4*(4) + 0x2*(0)	// Shrimpy		low  HP
	.dh	(  8) | (( 7) << 0x9)	// Bubbler   G -> H
.org 0x80125E8 + 0x3C*( 69) + 0x14*(0) + 0x4*(3) + 0x2*(1)	// Sparky		high HP
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
.org 0x80125E8 + 0x3C*( 69) + 0x14*(1) + 0x4*(3) + 0x2*(1)	// Sparky		mid  HP
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
.org 0x80125E8 + 0x3C*( 69) + 0x14*(2) + 0x4*(3) + 0x2*(1)	// Sparky		low  HP
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
	.dh	( 71) | ((20) << 0x9)	// Satelit1  G -> U
.org 0x80125E8 + 0x3C*( 76) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Yurt		low  HP
	.dh	( 75) | (( 0) << 0x9)	// Yo-Yo2    G -> A
.org 0x80125E8 + 0x3C*( 81) + 0x14*(1) + 0x4*(4) + 0x2*(1)	// KillPlant	mid  HP
	.dh	( 20) | (( 1) << 0x9)	// TreeBom1  G -> B
.org 0x80125E8 + 0x3C*( 81) + 0x14*(2) + 0x4*(3) + 0x2*(1)	// KillPlant	low  HP
	.dh	( 20) | (( 7) << 0x9)	// TreeBom1  G -> H
.org 0x80125E8 + 0x3C*( 90) + 0x14*(0) + 0x4*(3) + 0x2*(1)	// Null		high HP
	.dh	(109) | (( 8) << 0x9)	// Whirlpl   G -> I
.org 0x80125E8 + 0x3C*( 93) + 0x14*(0) + 0x4*(3) + 0x2*(1)	// Magneaker	high HP
	.dh	( 77) | (( 5) << 0x9)	// MagBomb1  G -> F
.org 0x80125E8 + 0x3C*( 93) + 0x14*(1) + 0x4*(3) + 0x2*(1)	// Magneaker	mid  HP
	.dh	( 77) | (( 5) << 0x9)	// MagBomb1  G -> F
.org 0x80125E8 + 0x3C*( 93) + 0x14*(2) + 0x4*(3) + 0x2*(1)	// Magneaker	low  HP
	.dh	( 77) | (( 5) << 0x9)	// MagBomb1  G -> F
.org 0x80125E8 + 0x3C*( 96) + 0x14*(1) + 0x4*(4) + 0x2*(0)	// Shadow		mid  HP
	.dh	(159) | (( 1) << 0x9)	// Shadow1   G -> B
.org 0x80125E8 + 0x3C*( 96) + 0x14*(2) + 0x4*(4) + 0x2*(0)	// Shadow		low  HP
	.dh	(159) | (( 1) << 0x9)	// Shadow1   G -> B
.org 0x80125E8 + 0x3C*( 99) + 0x14*(0) + 0x4*(3) + 0x2*(1)	// WindBox		high HP
	.dh	(147) | ((16) << 0x9)	// Wind      G -> Q
.org 0x80125E8 + 0x3C*( 99) + 0x14*(1) + 0x4*(3) + 0x2*(1)	// WindBox		mid  HP
	.dh	(147) | ((16) << 0x9)	// Wind      G -> Q
.org 0x80125E8 + 0x3C*(100) + 0x14*(0) + 0x4*(3) + 0x2*(1)	// VacuumFan	high HP
	.dh	(148) | ((13) << 0x9)	// Fan       G -> N
.org 0x80125E8 + 0x3C*(107) + 0x14*(0) + 0x4*(4) + 0x2*(0)	// Snapper3		high HP
	.dh	( 37) | (( 2) << 0x9)	// Kunai3    G -> C
.org 0x80125E8 + 0x3C*(111) + 0x14*(0) + 0x4*(4) + 0x2*(0)	// Lavagon		high HP
	.dh	(104) | (( 5) << 0x9)	// LavaDrag  G -> F
.org 0x80125E8 + 0x3C*(111) + 0x14*(1) + 0x4*(4) + 0x2*(0)	// Lavagon		mid  HP
	.dh	(104) | (( 5) << 0x9)	// LavaDrag  G -> F
.org 0x80125E8 + 0x3C*(111) + 0x14*(2) + 0x4*(4) + 0x2*(0)	// Lavagon		low  HP
	.dh	(104) | (( 5) << 0x9)	// LavaDrag  G -> F
.org 0x80125E8 + 0x3C*(114) + 0x14*(0) + 0x4*(4) + 0x2*(1)	// Scutz		high HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(114) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Scutz		low  HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(115) + 0x14*(0) + 0x4*(4) + 0x2*(1)	// Scuttle		high HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(115) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Scuttle		low  HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(116) + 0x14*(0) + 0x4*(4) + 0x2*(1)	// Scuttler		high HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(116) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Scuttler		low  HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(117) + 0x14*(0) + 0x4*(4) + 0x2*(1)	// Scuttzer		high HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(117) + 0x14*(2) + 0x4*(4) + 0x2*(1)	// Scuttzer		low  HP
	.dh	(169) | (( 1) << 0x9)	// LifeAur1  G -> B
.org 0x80125E8 + 0x3C*(164) + 0x14*(0) + 0x4*(0) + 0x2*(0)	// GutsMan		high HP
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
.org 0x80125E8 + 0x3C*(164) + 0x14*(1) + 0x4*(0) + 0x2*(0)	// GutsMan		mid  HP
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
.org 0x80125E8 + 0x3C*(164) + 0x14*(2) + 0x4*(0) + 0x2*(0)	// GutsMan		low  HP
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
.org 0x80125E8 + 0x3C*(165) + 0x14*(0) + 0x4*(0) + 0x2*(0)	// GutsManV2	high HP
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
.org 0x80125E8 + 0x3C*(165) + 0x14*(1) + 0x4*(0) + 0x2*(0)	// GutsManV2	mid  HP
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
.org 0x80125E8 + 0x3C*(165) + 0x14*(2) + 0x4*(0) + 0x2*(0)	// GutsManV2	low  HP
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
.org 0x80125E8 + 0x3C*(166) + 0x14*(0) + 0x4*(2) + 0x2*(1)	// GutsManV3	high HP
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(199) | ((20) << 0x9)	// GutsManV3 G -> U
	.dh	(199) | ((20) << 0x9)	// GutsManV3 G -> U
.org 0x80125E8 + 0x3C*(166) + 0x14*(1) + 0x4*(2) + 0x2*(1)	// GutsManV3	mid  HP
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(199) | ((20) << 0x9)	// GutsManV3 G -> U
	.dh	(199) | ((20) << 0x9)	// GutsManV3 G -> U
.org 0x80125E8 + 0x3C*(166) + 0x14*(2) + 0x4*(2) + 0x2*(1)	// GutsManV3	low  HP
	.dh	(197) | ((20) << 0x9)	// GutsMan   G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(198) | ((20) << 0x9)	// GutsManV2 G -> U
	.dh	(199) | ((20) << 0x9)	// GutsManV3 G -> U
	.dh	(199) | ((20) << 0x9)	// GutsManV3 G -> U
.org 0x80125E8 + 0x3C*(171) + 0x14*(0) + 0x4*(0) + 0x2*(0)	// GateManV2	high HP
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
.org 0x80125E8 + 0x3C*(171) + 0x14*(1) + 0x4*(0) + 0x2*(0)	// GateManV2	mid  HP
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
.org 0x80125E8 + 0x3C*(171) + 0x14*(2) + 0x4*(0) + 0x2*(0)	// GateManV2	low  HP
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
.org 0x80125E8 + 0x3C*(172) + 0x14*(0) + 0x4*(2) + 0x2*(1)	// GateManV3	high HP
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(237) | (( 0) << 0x9)	// GateManV2 G -> A
	.dh	(237) | (( 0) << 0x9)	// GateManV2 G -> A
	.dh	(238) | (( 0) << 0x9)	// GateManV3 G -> A
	.dh	(238) | (( 0) << 0x9)	// GateManV3 G -> A
.org 0x80125E8 + 0x3C*(172) + 0x14*(1) + 0x4*(2) + 0x2*(1)	// GateManV3	mid  HP
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(237) | (( 0) << 0x9)	// GateManV2 G -> A
	.dh	(237) | (( 0) << 0x9)	// GateManV2 G -> A
	.dh	(238) | (( 0) << 0x9)	// GateManV3 G -> A
	.dh	(238) | (( 0) << 0x9)	// GateManV3 G -> A
.org 0x80125E8 + 0x3C*(172) + 0x14*(2) + 0x4*(2) + 0x2*(1)	// GateManV3	low  HP
	.dh	(236) | (( 0) << 0x9)	// GateMan   G -> A
	.dh	(237) | (( 0) << 0x9)	// GateManV2 G -> A
	.dh	(237) | (( 0) << 0x9)	// GateManV2 G -> A
	.dh	(238) | (( 0) << 0x9)	// GateManV3 G -> A
	.dh	(238) | (( 0) << 0x9)	// GateManV3 G -> A
