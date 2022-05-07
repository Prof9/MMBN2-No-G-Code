.gba
.if ROM_IN == ROM_OUT
.open ROM_IN,0x8000000
.else
.open ROM_IN,ROM_OUT,0x8000000
.endif


.include "asm/bg_anim.asm"
.include "asm/chip.asm"
.include "asm/chip_trader.asm"
.include "asm/folder.asm"
.include "asm/game_over.asm"
.include "asm/menu.asm"
.include "asm/program_advance.asm"
.include "asm/reward.asm"
.include "asm/secret_chip.asm"
.include "asm/style.asm"
.include "asm/super_clear.asm"
.include "asm/title.asm"

.include "asm/battle/gater.asm"
.include "asm/battle/gutsshoot.asm"
.include "asm/battle/label.asm"
.include "asm/battle/screen.asm"

.include "asm/field/acdc_town.asm"
.include "asm/field/boarding.asm"
.include "asm/field/gospel_hq.asm"
.include "asm/field/gospel_server.asm"
.include "asm/field/homepage.asm"
.include "asm/field/mother_comp.asm"


// FREE SPACE
.org headersize() + filesize(ROM_IN)


.include "asm/program_advance.ext.asm"

.include "asm/battle/gater.ext.asm"
.include "asm/battle/gutsshoot.ext.asm"

.include "asm/field/gospel_hq.ext.asm"
.include "asm/field/homepage.ext.asm"
.include "asm/field/mother_comp.ext.asm"


.close
