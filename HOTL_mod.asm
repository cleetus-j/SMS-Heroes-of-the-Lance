; This disassembly was created using Emulicious (https://www.emulicious.net)
.MEMORYMAP
SLOTSIZE $7FF0
SLOT 0 $0000
SLOTSIZE $10
SLOT 1 $7FF0
SLOTSIZE $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME
.ROMBANKMAP
BANKSTOTAL 32
BANKSIZE $7FF0
BANKS 1
BANKSIZE $10
BANKS 1
BANKSIZE $4000
BANKS 30
.ENDRO

.enum $C000 export
_RAM_C000_RAM_START dsb $20
_RAM_C020_ db
.ende

.enum $C040 export
_RAM_C040_INRAM_PAL dsb $f
_RAM_C04F_ db
_RAM_C050_ dsb $10
.ende

.enum $C0FE export
_RAM_C0FE_ dw
.ende

.enum $C1FE export
_RAM_C1FE_ dw
.ende

.enum $C2FE export
_RAM_C2FE_ dw
.ende

.enum $C3FE export
_RAM_C3FE_ dw
.ende

.enum $C4FE export
_RAM_C4FE_ dw
.ende

.enum $C5FE export
_RAM_C5FE_ dw
.ende

.enum $C6FE export
_RAM_C6FE_ dw
.ende

.enum $C7FE export
_RAM_C7FE_ dw
_RAM_C800_ dsb $24
_RAM_C824_ dsb $10
_RAM_C834_ dsb $4
.ende

.enum $C924 export
_RAM_C924_ dsb $10
_RAM_C934_ dsb $4
.ende

.enum $D000 export
_RAM_D000_ dsb $100
_RAM_D100_ db
_RAM_D101_ db
.ende

.enum $D103 export
_RAM_D103_ db
.ende

.enum $D120 export
_RAM_D120_ dsb $8
.ende

.enum $D12C export
_RAM_D12C_ db
.ende

.enum $D1AC export
_RAM_D1AC_ db
.ende

.enum $D200 export
_RAM_D200_ dsb $200
_RAM_D400_ dsb $100
.ende

.enum $D600 export
_RAM_D600_ db
_RAM_D601_ db
.ende

.enum $D900 export
_RAM_D900_ db
_RAM_D901_ db
_RAM_D902_ dw
_RAM_D904_ db
.ende

.enum $D907 export
_RAM_D907_ db
.ende

.enum $D909 export
_RAM_D909_ db
_RAM_D90A_ db
_RAM_D90B_ db
.ende

.enum $D910 export
_RAM_D910_ dw
_RAM_D912_ dw
.ende

.enum $D91C export
_RAM_D91C_ db
.ende

.enum $D920 export
_RAM_D920_ db
.ende

.enum $D9A8 export
_RAM_D9A8_ db
.ende

.enum $DA50 export
_RAM_DA50_ dsb $c
_RAM_DA5C_ db
.ende

.enum $DBA0 export
_RAM_DBA0_PLYR_STATS db
.ende

.enum $DBB1 export
_RAM_DBB1_ db
.ende

.enum $DBB4 export
_RAM_DBB4_ db
_RAM_DBB5_GOLDMOON_HP db
.ende

.enum $DBB9 export
_RAM_DBB9_ db
_RAM_DBBA_ dsb $e
.ende

.enum $DBE2 export
_RAM_DBE2_ dsb $e
.ende

.enum $DCA5 export
_RAM_DCA5_ db
.ende

.enum $DCE0 export
_RAM_DCE0_ db
.ende

.enum $DCF2 export
_RAM_DCF2_ dsb $20
_RAM_DD12_ db
_RAM_DD13_ db
_RAM_DD14_ db
_RAM_DD15_ db
_RAM_DD16_ db
_RAM_DD17_ db
_RAM_DD18_ db
_RAM_DD19_ db
.ende

.enum $DD22 export
_RAM_DD22_ db
.ende

.enum $DD2A export
_RAM_DD2A_ db
.ende

.enum $DD32 export
_RAM_DD32_ db
.ende

.enum $DD3A export
_RAM_DD3A_ db
.ende

.enum $DD42 export
_RAM_DD42_ db
.ende

.enum $DDB2 export
_RAM_DDB2_ db
.ende

.enum $DDEA export
_RAM_DDEA_ db
.ende

.enum $DE06 export
_RAM_DE06_ db
.ende

.enum $DE22 export
_RAM_DE22_ db
_RAM_DE23_CONSOLE_REGION db
_RAM_DE24_ db
_RAM_DE25_ db
_RAM_DE26_ db
.ende

.enum $DE29 export
_RAM_DE29_ db
_RAM_DE2A_ dw
.ende

.enum $DE2E export
_RAM_DE2E_ db
_RAM_DE2F_ dw
_RAM_DE31_ db
_RAM_DE32_ dw
_RAM_DE34_ dw
_RAM_DE36_ dw
_RAM_DE38_ dw
_RAM_DE3A_ db
_RAM_DE3B_ db
_RAM_DE3C_ dw
_RAM_DE3E_ dw
_RAM_DE40_ dw
_RAM_DE42_ dw
_RAM_DE44_ db
_RAM_DE45_ db
_RAM_DE46_ db
_RAM_DE47_ db
_RAM_DE48_ db
_RAM_DE49_ db
_RAM_DE4A_ dw
_RAM_DE4C_ dw
_RAM_DE4E_ db
_RAM_DE4F_ db
_RAM_DE50_ db
_RAM_DE51_ db
_RAM_DE52_ROOM_NR db
_RAM_DE53_COMPASS db
_RAM_DE54_ db
_RAM_DE55_WATERFALL db
_RAM_DE56_ db
_RAM_DE57_ db
_RAM_DE58_ db
_RAM_DE59_LEFT_DEBUG_NR db
_RAM_DE5A_ db
_RAM_DE5B_ dw
_RAM_DE5D_ db
_RAM_DE5E_ dw
_RAM_DE60_ dw
_RAM_DE62_ db
_RAM_DE63_ db
_RAM_DE64_ dw
_RAM_DE66_ db
.ende

.enum $DE6A export
_RAM_DE6A_ db
_RAM_DE6B_ db
_RAM_DE6C_ db
_RAM_DE6D_ db
_RAM_DE6E_ db
_RAM_DE6F_ dw
_RAM_DE71_ db
_RAM_DE72_ dw
_RAM_DE74_ dw
_RAM_DE76_ db
_RAM_DE77_ dw
_RAM_DE79_ db
_RAM_DE7A_ dsb $16
_RAM_DE90_ db
_RAM_DE91_ db
_RAM_DE92_ db
_RAM_DE93_ db
_RAM_DE94_GAMEPAD db
_RAM_DE95_GAMEPAD db
_RAM_DE96_ db
_RAM_DE97_ db
_RAM_DE98_ dw
_RAM_DE9A_ db
_RAM_DE9B_ db
_RAM_DE9C_PLYR_BLOCK db
_RAM_DE9D_ db
_RAM_DE9E_ db
_RAM_DE9F_ db
_RAM_DEA0_ db
_RAM_DEA1_ dw
_RAM_DEA3_ dw
_RAM_DEA5_ dw
_RAM_DEA7_ dw
_RAM_DEA9_ dw
_RAM_DEAB_ dw
_RAM_DEAD_ dw
_RAM_DEAF_ db
.ende

.enum $DEB3 export
_RAM_DEB3_ dw
_RAM_DEB5_ db
_RAM_DEB6_ db
_RAM_DEB7_ dw
_RAM_DEB9_ dw
_RAM_DEBB_DEBUG db
_RAM_DEBC_INRAM_HUD_PORTRAITS db
_RAM_DEBD_ dsb $6
_RAM_DEC3_ db
_RAM_DEC4_ db
.ende

.enum $DED3 export
_RAM_DED3_ db
.ende

.enum $DEE4 export
_RAM_DEE4_ db
_RAM_DEE5_ db
_RAM_DEE6_ db
_RAM_DEE7_ db
_RAM_DEE8_ db
_RAM_DEE9_ db
_RAM_DEEA_ dw
_RAM_DEEC_ dw
_RAM_DEEE_ db
_RAM_DEEF_ db
_RAM_DEF0_ db
_RAM_DEF1_ db
_RAM_DEF2_ db
_RAM_DEF3_ db
_RAM_DEF4_ db
.ende

.enum $FFFF export
_RAM_FFFF_ db
.ende

; Ports
.define Port_MemoryControl $3E
.define Port_IOPortControl $3F
.define Port_PSG $7F
.define Port_VDPData $BE
.define Port_VDPAddress $BF

; Input Ports
.define Port_VDPStatus $BF
.define Port_IOPort1 $DC
.define Port_IOPort2 $DD

.BANK 0 SLOT 0
.ORG $0000

_LABEL_0_:
	di
	im 1
	ld sp, $DFF0
	ld hl, _RAM_C000_RAM_START
	ld a, (hl)
	and $E0
	or $08
	out (Port_MemoryControl), a
	ld de, _RAM_C000_RAM_START + 1
	ld (hl), l
	ld bc, $1EFF
	ldir	;Clear RAM.
	ld l, $FC
	ld a, $80
	ld (hl), a
	inc l
	xor a
	ld (hl), a
	inc l
	inc a
	ld (hl), a
	inc l
	inc a
	ld (hl), a	;From DEFC: 80 00 01 02
	ei
	jp _LABEL_200_ENTRY	;Jump to program start.

; Data from 2B to 37 (13 bytes)
.db $0C $1D $0C $3D $04 $3D $95 $10 $E4 $58 $0C $3D $04

_LABEL_38_:
	push af
	in a, (Port_VDPStatus)
	rla
	jr c, ++
	ld a, (_RAM_DE9F_)
	and a
	jr z, +
	ld a, $08
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
+:
	ld a, (_RAM_DE25_)
	and a
	jr nz, +
	call +++
+:
	pop af
	ei
	reti

; Data from 59 to 63 (11 bytes)
.dsb 11, $00

_LABEL_64_:
	dec a
	inc c
_LABEL_66_:
	push af
	ld a, (_RAM_DE97_)
	and a
	jr nz, +
	ld a, (_RAM_DE9E_)
	cpl
	ld (_RAM_DE9E_), a
+:
	pop af
	retn

++:
	ld a, (_RAM_DE9D_)
	inc a
	ld (_RAM_DE9D_), a
	ld a, $01
	ld (_RAM_DE26_), a
	xor a
	ld (_RAM_DE26_), a
	pop af
	ei
	reti

+++:
	ld a, (_RAM_FFFF_)
	push af
	ld a, $18
	ld (_RAM_FFFF_), a
	dec a
	ld (_RAM_DE26_), a
	call _LABEL_62645_
	pop af
	ld (_RAM_FFFF_), a
	ret

; Data from A0 to AA (11 bytes)
.dsb 11, $FF

; Data from AB to 1FF (341 bytes)
_DATA_AB_:
.dsb 32, $00
.db $04 $A4 $00 $00 $04 $A4 $08 $00 $04 $A4 $10 $00 $04 $A4 $18 $00
.db $75 $3F $1F $BD $0C $FD $0C $3F $FD $3F $0D $3D $0C $3D $0C $FD
.db $0C $3F $0F $BD $0C $3D $0C $3D $0C $3F $0F $3D $0C $3D $0C $3D
.db $0C $3F $0F $BD $0C $00 $80 $40 $C0 $20 $A0 $60 $E0 $10 $90 $50
.db $D0 $30 $B0 $70 $F0 $08 $88 $48 $C8 $28 $A8 $68 $E8 $18 $98 $58
.db $D8 $38 $B8 $78 $F8 $04 $84 $44 $C4 $24 $A4 $64 $E4 $14 $94 $54
.db $D4 $34 $B4 $74 $F4 $0C $8C $4C $CC $2C $AC $6C $EC $1C $9C $5C
.db $DC $3C $BC $7C $FC $02 $82 $42 $C2 $22 $A2 $62 $E2 $12 $92 $52
.db $D2 $32 $B2 $72 $F2 $0A $8A $4A $CA $2A $AA $6A $EA $1A $9A $5A
.db $DA $3A $BA $7A $FA $06 $86 $46 $C6 $26 $A6 $66 $E6 $16 $96 $56
.db $D6 $36 $B6 $76 $F6 $0E $8E $4E $CE $2E $AE $6E $EE $1E $9E $5E
.db $DE $3E $BE $7E $FE $01 $81 $41 $C1 $21 $A1 $61 $E1 $11 $91 $51
.db $D1 $31 $B1 $71 $F1 $09 $89 $49 $C9 $29 $A9 $69 $E9 $19 $99 $59
.db $D9 $39 $B9 $79 $F9 $05 $85 $45 $C5 $25 $A5 $65 $E5 $15 $95 $55
.db $D5 $35 $B5 $75 $F5 $0D $8D $4D $CD $2D $AD $6D $ED $1D $9D $5D
.db $DD $3D $BD $7D $FD $03 $83 $43 $C3 $23 $A3 $63 $E3 $13 $93 $53
.db $D3 $33 $B3 $73 $F3 $0B $8B $4B $CB $2B $AB $6B $EB $1B $9B $5B
.db $DB $3B $BB $7B $FB $07 $87 $47 $C7 $27 $A7 $67 $E7 $17 $97 $57
.db $D7 $37 $B7 $77 $F7 $0F $8F $4F $CF $2F $AF $6F $EF $1F $9F $5F
.db $DF $3F $BF $7F $FF

_LABEL_200_ENTRY:	;Entry for the program, but nothing as a main loop or anything.
	ld sp, $DFF0
	call _LABEL_7E9A_	;DO SOME REGION CHECK AND THINGS.
_LABEL_206_ENTRY_AFTERCHECK:
	di
	ld hl, _RAM_DE29_
	ld de, _RAM_DE29_ + 1
	ld bc, $00CB
	ld (hl), $00
	ldir		;FROM THAT, CLEAR 203 BYTES OF RAM.
	ld sp, $DFF0
	di
	ld hl, _DATA_468_VDP_INIT_DATA
	call _LABEL_61F_WRITE_VDP_REG	;DO SOME VDP HOUSEKEEPING AGAIN.
	call _LABEL_63B_CLEAR_SAT	;CLEAR SAT.
	ld a, (_RAM_DE97_)
	and a
	jr Nz, +
	ld a, $18
	ld (_RAM_FFFF_), a	;lOAD BANK 24.
	call _LABEL_623E8_PREP_MUS_BANK
	ei
	ld a, $18
	ld (_RAM_FFFF_), a	
	ld a, $01			;SET NR. OF MUSIC.
	ld c, a
	call _LABEL_6242B_SET_MUS	;SET AND PLAYS MUSIC.
+:
	xor a
	ld (_RAM_DE97_), a
	ld hl, _DATA_AB_		;FIRST 32 BYTES ARE AN ALL BLACK PALETTE.
	call _LABEL_4CF_LOAD2PALS	;RESET ALL PALS.
	xor a
	ld (_RAM_DE9F_), a
	ld (_RAM_DE9E_), a
	ld bc, $0001
	ld a, (_RAM_DE23_CONSOLE_REGION)
	and a
	jr z, +	;JUMP TO + IF THE CONSOLE IS PAL.
	ld bc, $1415	;NTSC LEGAL SCREEN DATA OFFSET.
+:
	ld a, b	
	push bc
	ld hl, $3800
	call _LABEL_334C_DECOMPRESS_ART	;WRITE SCREEN MAP.
	pop bc
	ld a, c
	ld hl, $0000
	call _LABEL_334C_DECOMPRESS_ART	;WRITE TILES.
	ld hl, _DATA_3C8_	;LEGAL SCREEN PALETTE.
	call _LABEL_4CF_LOAD2PALS	;LOAD SAID PALETTE.
	xor a
	ld (_RAM_C000_RAM_START), a
	ld (_RAM_C020_), a
_LABEL_275_:
	ld bc, $01F4		;SET UP A TIMER.
-:
	push bc
	call _LABEL_59B_MAIN	;THIS IS THE MAIN LOOP HERE.
	call _LABEL_552_CHECK_AB_BUTTONS	;CHECK FOR A\B BUTTON PRESS.
	ld a, (_RAM_DE94_GAMEPAD)
	ld b, a
	ld a, (_RAM_DE95_GAMEPAD)
	or b
	jr nz, _LABEL_2D7_GAME_INIT			;IF THERE IS A PRESS, GO TO MAIN GAME SEQENCE.
	pop bc			;GET BACK TIMER.
	dec bc
	ld a, b
	or c
	jr Nz, -			;JUMP IF TIMER IS EXPIRED. (SWITCH SCREENS IN THE INTRO, AND GO TO DEMO THEN.)
	;IF THIS IS Z, PICTURES WILL SHOW FOR A VERY LITTLE TIME, AS THE PROGRAM THINKS THE TIMER IS EXPIRED ALREADY.
	call _LABEL_4F9_PALETTE	;FADE OUT SCREEN.
	ld a, (_RAM_C020_)
	inc a
	and $03
	ld (_RAM_C020_), a
	jp z, _LABEL_2ED_GAME_DEMO	;IF WE HAVE SEEN ALL SCREENS, COMMENCE TO GAME DEMO.
	;IF SET TO NZ, THE GAME DEMO STARTS AFTER THE FIRST LEGAL SCREEN.
	ld a, (_RAM_C000_RAM_START)
	inc a
	and $01
	ld (_RAM_C000_RAM_START), A
	jr z, +	;CHANGE THIS TO NZ, AND THE SECOND SCREEEN WILL STAY ON, UNTIL THE DEMO COMMENCES.
	ld a, $16
	ld hl, $3800
	call _LABEL_334C_DECOMPRESS_ART	;TILEMAP
	ld a, $17
	ld hl, $0000
	call _LABEL_334C_DECOMPRESS_ART	;TILES
	ld hl, _DATA_3C8_
	jr ++

+:	;THIS IS THE HEROES OF THE LANCE SCREEEN WITH THE DRAGON.
	;JR ++
	ld a, $03
	ld hl, $0000
	call _LABEL_334C_DECOMPRESS_ART
	ld a, $02
	ld hl, $3800
	call _LABEL_334C_DECOMPRESS_ART
	ld hl, _DATA_3B8_
++:
	call _LABEL_4CF_LOAD2PALS
	jp _LABEL_275_

_LABEL_2D7_GAME_INIT:	;THIS IS WHEN YOU START A NORMAL GAME.
	pop bc
	call _LABEL_4F9_PALETTE	;FADE SCREEN OUT.
	ld a, $18
	ld (_RAM_FFFF_), a	;SELECT BANK 24.
	ld a, $FF
	ld c, $02
	call _LABEL_6242B_SET_MUS	;SELECT STAGE MUSIC
	call _LABEL_3504_CHAR_BIOS		;SHOW THE CHAR. BIOS.
	jp _LABEL_697_GAME_ENTRY			;GO TO GAME.

_LABEL_2ED_GAME_DEMO:	;DISABLES PLAYER INPUT, LOADS SIMULATED ONES, AND STARTS THE GAME.
;YOU CAN HIJACK THIS, AND PLAY IT AS A REAL GAME, THERE IS NO DIFFERENCE.
	ld a, $01
	ld (_RAM_DE97_), a	;IF THIS IS CHANGED TO ZERO, YOU CAN JUST PLAY THE GAME, AND THAT'S IT.
	DEC a
	ld (_RAM_DE9C_PLYR_BLOCK), a	;BLOCK PLAYER INPUT
	ld hl, _DATA_B67_DEMO_INPUT
	ld (_RAM_DE98_), hl	;LOAD DEMO INPUTS
	jp _LABEL_697_GAME_ENTRY		;COMMENCE INTO THE GAME

_LABEL_2FF_:
	push bc
	ld c, a
	ld a, (_RAM_FFFF_)
	push af
	ld a, $18
	ld (_RAM_FFFF_), a
	ld a, c
	call _LABEL_6248C_
	pop af
	ld (_RAM_FFFF_), a
	pop bc
	ret

; Data from 314 to 334 (33 bytes)
_DATA_314_:
.db $00 $01 $01 $01 $01 $02 $02 $02 $02 $03 $03 $03 $03 $04 $04 $04
.db $04 $05 $05 $05 $05 $06 $06 $06 $06 $07 $07 $07 $07 $08 $08 $08
.db $08

; Data from 335 to 355 (33 bytes)
_DATA_335_:
.db $00 $00 $00 $00 $01 $01 $01 $01 $02 $02 $02 $02 $03 $03 $03 $03
.db $04 $04 $04 $04 $05 $05 $05 $05 $06 $06 $06 $06 $07 $07 $07 $07
.db $08

; Data from 356 to 376 (33 bytes)
_DATA_356_:
.db $00 $00 $01 $01 $01 $01 $02 $02 $02 $02 $03 $03 $03 $03 $04 $04
.db $04 $04 $05 $05 $05 $05 $06 $06 $06 $06 $07 $07 $07 $07 $08 $08
.db $08

; Data from 377 to 397 (33 bytes)
_DATA_377_:
.db $00 $00 $00 $01 $01 $01 $01 $02 $02 $02 $02 $03 $03 $03 $03 $04
.db $04 $04 $04 $05 $05 $05 $05 $06 $06 $06 $06 $07 $07 $07 $07 $08
.db $08

; Data from 398 to 3B7 (32 bytes)
_DATA_398_:
.db $00 $15 $2A $3F $00 $00 $15 $2A $3F $3F $3F $15 $00 $15 $00 $3F
.db $00 $15 $2A $3F $00 $01 $06 $1B $2F $0F $2F $07 $02 $09 $20 $34

; Data from 3B8 to 3C7 (16 bytes)
_DATA_3B8_:
.db $00 $24 $39 $03 $15 $2A $3F $05 $1A $2F $06 $1B $07 $02 $01 $26

; Data from 3C8 to 3D7 (16 bytes)
_DATA_3C8_:
.db $00 $3F $2A $15 $1F $0F $0B $07 $06 $02 $01 $2F $03 $33 $33 $33

; Data from 3D8 to 467 (144 bytes)
_DATA_3D8_CHAR_PALS:
.dsb 15, $00
.db $3F $00 $15 $2A $3F $04 $19 $25 $10 $2B $17 $03 $01 $06 $1B $2F
.db $3F $00 $15 $2A $01 $06 $1B $2F $10 $24 $39 $3E $11 $05 $1A $2F
.db $3F $00 $01 $16 $2B $02 $07 $0B $06 $1B $2F $3F $2A $15 $10 $25
.db $3A $00 $10 $24 $39 $3E $03 $02 $01 $06 $1B $2F $16 $2B $15 $2A
.db $3F $00 $05 $1A $2F $01 $06 $1B $2F $2A $15 $10 $25 $3A $16 $2B
.db $3F $00 $05 $1A $2F $10 $24 $39 $3E $00 $01 $06 $1B $2F $15 $2A
.db $3F $00 $04 $19 $2E $1F $0B $17 $07 $02 $01 $06 $1B $2F $15 $2A
.db $3F $00 $14 $29 $3E $10 $25 $3A $05 $1A $01 $06 $0B $2F $15 $2A
.db $3F

; Data from 468 to 472 (11 bytes)
_DATA_468_VDP_INIT_DATA:
.db $36 $E0 $FF $FF $FF $FF $FB $F0 $08 $00 $7F

; Data from 473 to 48B (25 bytes)
_DATA_473_:
.db $36 $E0 $FF $FF $FF $FF $FB $F0 $08 $00 $7F $3E $10 $F3 $D3 $BF
.db $3E $C0 $D3 $BF $78 $D3 $BE $FB $C9

_LABEL_48C_LOAD_VDP_DATA:
	ex de, hl
	call _LABEL_4BB_VDP_RAM_WRITE
-:
	ld a, (de)
	out (Port_VDPData), a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, -
	ret

; Data from 49A to 4BA (33 bytes)
.db $CD $BD $04 $DB $BE $12 $13 $0B $78 $B1 $20 $F7 $C9 $F3 $3E $1F
.db $32 $FF $FF $11 $00 $80 $01 $00 $40 $21 $00 $00 $CD $9A $04 $18
.db $FE

_LABEL_4BB_VDP_RAM_WRITE:	;VDP RAM WRITE
	set 6, h
_LABEL_4BD_:
	ld a, l
	out (Port_VDPAddress), a
	ld a, h
	out (Port_VDPAddress), a
	res 6, h
	ret

; Data from 4C6 to 4CE (9 bytes)
.dsb 9, $FF

_LABEL_4CF_LOAD2PALS:
	xor a
	out (Port_VDPAddress), a
	ld a, (ix+0)
	ld a, $C0
	out (Port_VDPAddress), a
	ld b, $20
	ld de, _RAM_DEC4_
-:
	ld a, (hl)
	ld (de), a
	out (Port_VDPData), a
	inc hl
	inc de
	djnz -
	ret

; Data from 4E7 to 4F8 (18 bytes)
.dsb 18, $FF

_LABEL_4F9_PALETTE:
	ld a, (_RAM_DED3_)
	and a
	ret z
	ld b, $03
-:
	push bc
	ld hl, _RAM_DEC4_
	ld b, $20
	call _LABEL_51E_
	ld hl, _RAM_DEC4_
	di
	call _LABEL_4CF_LOAD2PALS
	ei
	call _LABEL_59B_MAIN
	call _LABEL_59B_MAIN
	call _LABEL_59B_MAIN
	pop bc
	djnz -
	ret

_LABEL_51E_:
	ld d, $00
	ld a, (hl)
	call +
	ld d, a
	ld a, (hl)
	srl a
	srl a
	call +
	sla a
	sla a
	or d
	ld d, a
	ld a, (hl)
	srl a
	srl a
	srl a
	srl a
	call +
	sla a
	sla a
	sla a
	sla a
	or d
	ld (hl), a
	inc hl
	djnz _LABEL_51E_
	ret

+:
	and $03
	ret z
	dec a
	ret

_LABEL_552_CHECK_AB_BUTTONS:
	ld a, $FF
	out (Port_IOPortControl), a
	in a, (Port_IOPort1)
	ld b, a
	ld c, $00
	rrca
	rl c
	rrca
	rl c
	rrca
	rl c
	rrca
	rl c
	ld a, b
	and $30
	or c
	xor $3F
	ld c, a
	ld a, (_RAM_DE97_)
	and a
	jr z, +
	ld a, c
	ld (_RAM_DE9B_), a
	ld a, (_RAM_DE9A_)
	ld c, a
+:
	ld a, (_RAM_DE92_)
	and $30
	ld b, a
	ld a, c
	ld (_RAM_DE91_), a
	ld (_RAM_DE92_), a
	xor b
	and c
	ld (_RAM_DE90_), a
	ld c, a
	and $10
	ld (_RAM_DE94_GAMEPAD), a
	ld a, c
	and $20
	ld (_RAM_DE95_GAMEPAD), a
	ret

_LABEL_59B_MAIN:
	ei
	xor a
	ld (_RAM_DE9D_), a
-:
	ld a, (_RAM_DE9D_)
	and a
	jr z, -
	call _LABEL_5F4_
	ld a, (_RAM_DE97_)
	and a
	jr z, +
	xor a
	ld (_RAM_DE9E_), a
	ret

+:
	ld a, (_RAM_DE9F_)
	ld b, a
	ld a, (_RAM_DE9E_)
	and b
	ret z
	ld a, (_RAM_DE47_)
	ld b, a
	ld c, $08
	call _LABEL_62D_WRITE_VDP_REG
	ld a, (_RAM_DE25_)
	ld d, a
	ld a, $01
	ld (_RAM_DE25_), a
	call _LABEL_612_
	xor a
	ld (_RAM_DE9D_), a
-:
	ld a, (_RAM_DE9D_)
	and a
	jr z, -
	ld a, (_RAM_DE47_)
	ld b, a
	ld c, $08
	call _LABEL_62D_WRITE_VDP_REG
	call _LABEL_5F4_
; Data from 5E8 to 5F3 (12 bytes)
.dsb 12, $FF

_LABEL_5F4_:
	in a, (Port_IOPort2)
	and $10
	ld c, a
	ld a, (_RAM_DE22_)
	sub c
	ret z
	ld a, c
	ld (_RAM_DE22_), a
	bit 4, a
	ret nz
	xor a
	ld (_RAM_DE9E_), a
	ld hl, _DATA_AB_
	call _LABEL_4CF_LOAD2PALS
	jp _LABEL_200_ENTRY

_LABEL_612_:
	ld hl, _DATA_61B_
	ld bc, $0400 | Port_PSG
	otir
	ret

; Data from 61B to 61E (4 bytes)
_DATA_61B_:
.db $9F $BF $DF $FF

_LABEL_61F_WRITE_VDP_REG:
	ld c, $00
	ld e, $0B
-:
	ld b, (hl)
	call _LABEL_62D_WRITE_VDP_REG
	inc hl
	inc c
	dec e
	jr nz, -
	ret

_LABEL_62D_WRITE_VDP_REG:
	ld a, b
	out (Port_VDPAddress), a	;1111 1111
	ld a, (ix+0)
	ld a, c
	and $0F
	set 7, a
	out (Port_VDPAddress), a
	ret

_LABEL_63B_CLEAR_SAT:	;THIS GOES TO THE VDP AS I CAN SEE.
	ld bc, $FF05
	call _LABEL_62D_WRITE_VDP_REG
	neg
	neg
	ld hl, $3F00	;3F00
	call _LABEL_4BB_VDP_RAM_WRITE
	neg
	ld a, $D0
	out (Port_VDPData), a
	ret

_LABEL_652_:
	push bc
	push de
	push hl
	ld c, a
	call ++
	ld de, $0000
	ld l, a
	ld h, $00
	ld a, c
-:
	srl a
	jr nc, +
	ex de, hl
	add hl, de
	ex de, hl
+:
	add hl, hl
	jr nz, -
	ld a, d
	pop hl
	pop de
	pop bc
	ret

++:
	push hl
	push de
	push bc
	ld hl, (_RAM_DE72_)
	ld c, l
	ld b, h
	dec hl
	ld a, l
	sub h
	ld d, a
	dec l
	ld a, h
	add a, l
	ld e, a
	sbc hl, de
	ld (_RAM_DE72_), hl
	sub l
	and a
	sbc hl, bc
	pop bc
	pop de
	pop hl
	ret nz
	push hl
	ld hl, (_RAM_DE72_)
	inc h
	dec l
	ld (_RAM_DE72_), hl
	pop hl
	ret

_LABEL_697_GAME_ENTRY:	;THE ACTUAL GAME STARTS HERE.
	di
	ld hl, $3C00	;0011 1100 0000 0000
	call _LABEL_4BB_VDP_RAM_WRITE
	ld bc, $0100
	ld de, $00BF
-:
	ld a, e ;1011 1111
	out (Port_VDPData), a
	neg
	neg
	ld a, d
	out (Port_VDPData), a
	dec bc
	ld a, b
	or c
	jr nz, -	;DO SOME VDP SETUP
	ei
	ld a, $01
	ld (_RAM_DE52_ROOM_NR), a	;SET THE STARTING ROOM.
	call _LABEL_7D42_LOAD_PLYRSTAT
	call _LABEL_79E7_SPAWN_ITEMTRAP	;TRAPS, ITEMS ARE NOT LOADED. THE GAME IS POSSIBLY UNWINNABLE THIS WAY, SINCE THE DISKS COULD NOT SPAWN EITHER.
	call _LABEL_7ECF_DRAW_NORMAL_HUD_NODEBUG	;DISABLING THIS WILL NOT DRAW THE USUAL HUD, BUT ENABLES SOME DEBUG HUD. A ATTACKS, AND B ADVANCES YOU TO THE NEXT "ROOM". CHARS CAN STILL DIE. CHAR MENU IS DISABLED.
	call _LABEL_2BF2_CLEAR_INRAMSAT	;THIS CAN BE DISABLED, THE GAME WORKS THE SAME EITHER WAY.
	ld ix, _RAM_D900_
	ld (ix+9), $01
	ld (ix+7), $06	;06
	ld (ix+0), $64
	ld (ix+1), $00
	ld (ix+2), $74
	ld (ix+3), $00
	ld (ix+16), $64
	ld (ix+17), $00
	ld (ix+18), $74
	ld (ix+19), $00	;THESE PARAMETERS HAVE TO BE MAPPED LATER, SO TODO
	ld hl, $0000
	ld (_RAM_DE3C_), hl
	ld (_RAM_DE3E_), hl	;THESE DON'T DO ANYTHING NOTICEABLE
	xor a
	ld hl, _RAM_DEBC_INRAM_HUD_PORTRAITS
-:
	ld (hl), a
	inc hl
	inc a
	cp $08	;08
	jr nz, -
	call _LABEL_59B_MAIN
	;NOP
	;NOP
	;NOP
	ld a, $08	;08
	ld (_RAM_DE9F_), a
	xor a
	ld (_RAM_DE9E_), a
	ld a, (_RAM_DE97_)
	and a
	jr nz, +
	ld a, $18
	ld (_RAM_FFFF_), a
	ld a, $02
	ld c, $01
	call _LABEL_6242B_SET_MUS	;SELECT MUSIC BANK, MUSIC AND START IT.
+:
	call _LABEL_6F06_HUD		;DRAW THE HUD.
_LABEL_726_:
	call _LABEL_5819_		;I CAN'T SEEM TO FIND WHAT THIS DOES EXACTLY. COPIES 32 BYTES OF SOMETHING, BUT IT'S ALL ZEROES SO FAR. COMMENTING IT OUT DOES NOT DO ANYTHING NOTICEABLE ON THE GAMEPLAY. NOT EVEN ON THE SPELLS OR ANYTHING.
	;NOP
	;NOP
	;NOP
	call _LABEL_59B_MAIN
	Call _LABEL_721C_INIT_NME	;THIS PART WILL INIT THE ENEMIES, AND KEEP SPAWNING THEM, IF NEEDED.
	call _LABEL_7971_INIT_TRAPS	;COMMENTING OUT THIS WILL GET RID OF THE TRAPS.
	ld a, (_RAM_DE55_WATERFALL)
	and $01
	jr z, +			;check for waterfall
	call _LABEL_5BBE_	;NOT WATERFALL, SO THIS WILL BE SOMETHING ELSE.
	ld a, $02
	ld (_RAM_DE55_WATERFALL), a
	jr ++

+:
	call _LABEL_C43_LEVEL_LOAD
++:
	xor a
	ld (_RAM_DE44_), a
	ld h, a
	ld l, a
	ld (_RAM_DE42_), hl
	ei
	call _LABEL_2C1A_	;no function to this yet.
	ld ($DE27), sp
_LABEL_757_GAME_MAIN:	;THIS SEEMS LIKE THE INGAME MAIN LOOP. LIKE AN INNER ONE.
	ld a, (_RAM_DE97_)
	and a
	jr z, +++
	ld a, (_RAM_DE9B_)
	and $30
	;NOP
	;NOP
	;NOP
	jp nz, _LABEL_206_ENTRY_AFTERCHECK
	ld hl, (_RAM_DE98_)
	ld b, (hl)
	ld a, (_RAM_DE9C_PLYR_BLOCK)
	inc a
	cp b
	jr nz, ++
	inc hl
	inc hl
	xor a
	ld (_RAM_DE9C_PLYR_BLOCK), a
-:
	ld (_RAM_DE98_), hl
	inc hl
	ld a, (hl)
	ld (_RAM_DE9A_), a
	inc a
	jp z, _LABEL_206_ENTRY_AFTERCHECK
	inc a
	jr z, +
	jr +++

+:
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld a, (hl)
	inc hl
	ld (bc), a
	jr -

++:
	ld (_RAM_DE9C_PLYR_BLOCK), a
+++:
	call _LABEL_717C_
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	and a
	jr z, +
	ld e, a
	ld a, $FF
	ld (_RAM_DEE8_), a
	ld a, e
+:
	cp $03
	jr z, +
	ld e, a
	ld a, $FF
	ld (_RAM_DEE6_), a
	ld a, e
+:
	call _LABEL_6573_
	ld de, _RAM_DBB5_GOLDMOON_HP
	add hl, de
	ld a, (hl)
	and a
	jp nz, _LABEL_924_
	ld a, (_RAM_DEF2_)
	and a
	jr nz, +
	ld b, $08
	ld hl, _RAM_DEBC_INRAM_HUD_PORTRAITS
-:
	ld a, (hl)
	inc a
	cp b
	jr nz, +
	inc hl
	djnz -
	ld a, (_RAM_DBA0_PLYR_STATS)
	cp $10
	jr nz, +
	ld a, (_RAM_DE52_ROOM_NR)
	cp $01
	jr nz, +
	ld a, $C0
	ld (_RAM_DE6D_), a
+:
	ld a, (_RAM_DEF2_)
	and a
	jp z, _LABEL_8B9_
	inc a
	ld (_RAM_DEF2_), a
	cp $02
	jr nz, +
	ld a, $FF
	ld (_RAM_D907_), a
	ld a, (_RAM_DEF2_)
+:
	and $03
	jp nz, _LABEL_924_
	ld a, $08
	call _LABEL_652_
	add a, a
	ld hl, _DATA_842_
	ld e, a
	ld a, $00
	adc a, $00
	ld d, a
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
-:
	ld a, (hl)
	inc a
	jp z, _LABEL_924_
	push hl
	pop iy
	push hl
	ld b, (iy+0)
	ld c, (iy+1)
	ld d, (iy+2)
	ld h, (iy+3)
	ld l, (iy+4)
	ld e, (iy+5)
	ld a, (iy+6)
	ld (_RAM_D904_), a
	ld a, $01
	ld ix, $D900
	call _LABEL_3AAF_
	pop hl
	ld de, $0008
	add hl, de
	jr -

; Pointer Table from 842 to 851 (8 entries, indexed by unknown)
_DATA_842_:
.dw _DATA_852_ _DATA_863_ _DATA_874_ _DATA_885_ _DATA_896_ _DATA_89F_ _DATA_8A8_ _DATA_852_

; 1st entry of Pointer Table from 842 (indexed by unknown)
; Data from 852 to 862 (17 bytes)
_DATA_852_:
.db $02 $00 $00 $28 $1E $0A $00 $00 $02 $00 $00 $28 $1E $0A $01 $00
.db $FF

; 2nd entry of Pointer Table from 842 (indexed by unknown)
; Data from 863 to 873 (17 bytes)
_DATA_863_:
.db $05 $00 $FE $14 $1E $0C $00 $00 $05 $00 $FE $14 $1E $0C $01 $00
.db $FF

; 3rd entry of Pointer Table from 842 (indexed by unknown)
; Data from 874 to 884 (17 bytes)
_DATA_874_:
.db $03 $00 $FC $0F $1E $0C $00 $00 $03 $00 $FC $0F $1E $0C $01 $00
.db $FF

; 4th entry of Pointer Table from 842 (indexed by unknown)
; Data from 885 to 895 (17 bytes)
_DATA_885_:
.db $08 $00 $01 $1E $1E $0A $00 $00 $08 $00 $01 $1E $1E $0A $01 $00
.db $FF

; 5th entry of Pointer Table from 842 (indexed by unknown)
; Data from 896 to 89E (9 bytes)
_DATA_896_:
.db $06 $00 $FC $00 $1E $0C $00 $00 $FF

; 6th entry of Pointer Table from 842 (indexed by unknown)
; Data from 89F to 8A7 (9 bytes)
_DATA_89F_:
.db $07 $00 $FA $00 $1E $0A $00 $00 $FF

; 7th entry of Pointer Table from 842 (indexed by unknown)
; Data from 8A8 to 8B8 (17 bytes)
_DATA_8A8_:
.db $04 $00 $FA $0A $1E $0A $00 $00 $04 $00 $FA $0A $1E $0A $01 $00
.db $FF

_LABEL_8B9_:
	call _LABEL_5C0C_
	di
	call _LABEL_6B42_
	xor a
	ld hl, $0000
	ld (_RAM_DE74_), hl
	ld (_RAM_DE76_), a
	ld a, $18
	ld (_RAM_FFFF_), a
	ld a, $03
	ld c, $01
	call _LABEL_6242B_SET_MUS
	ld hl, $3808
	ld de, _DATA_AEF2_
	ld a, $1F
	ld (_RAM_FFFF_), a
	call _LABEL_35A6_
	ld hl, $38C8
	ld de, _DATA_A7C2_
	call _LABEL_35A6_
	call _LABEL_6F3B__UPD_HUD
	call _LABEL_61FA_
	call _LABEL_62B1_
-:
	call _LABEL_552_CHECK_AB_BUTTONS
	ld a, (_RAM_DE91_)
	and $30
	jp z, _LABEL_206_ENTRY_AFTERCHECK
	call _LABEL_59B_MAIN
	jr -

; Data from 906 to 923 (30 bytes)
.db $F3 $CD $42 $6B $3E $18 $32 $FF $FF $3E $04 $0E $01 $CD $2B $A4
.db $21 $08 $38 $11 $25 $AF $3E $01 $32 $56 $DE $C3 $DC $08

_LABEL_924_:
	ld a, (_RAM_DEF4_)
	cp $01
	jr nz, +
	ld hl, (_RAM_D900_)
	ld de, $0220
	and a
	sbc hl, de
	jr c, +
	ld c, $01
	call _LABEL_5689_
	ld c, $08
	call _LABEL_57CC_
+:
	ld a, (_RAM_DEF4_)
	cp $02
	jr nz, +
	ld a, (_RAM_DE57_)
	inc a
	ld (_RAM_DE57_), a
	and $03
	jr nz, +
	ld a, (_RAM_D904_)
	push af
	xor a
	ld (_RAM_D904_), a
	ld b, $10
	ld l, $78
	ld d, $12
	ld a, $02
	ld c, $F0
	ld e, $07
	ld h, $00
	ld ix, $D900
	call _LABEL_3AAF_
	pop af
	ld (_RAM_D904_), a
+:
	ld a, (_RAM_DEF0_)
	sub $01
	adc a, $00
	ld (_RAM_DEF0_), a
	ld a, (_RAM_DEEF_)
	inc a
	and $07
	ld (_RAM_DEEF_), a
	jr nz, +
	ld a, (_RAM_DEEE_)
	sub $01
	adc a, $00
	ld (_RAM_DEEE_), a
+:
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	inc a
	ld (_RAM_D909_), a
	call _LABEL_2DE2_
	ld hl, _DATA_314_
	ld (_RAM_DEB9_), hl
	call _LABEL_A95_
	call _LABEL_6F3B__UPD_HUD
	call _LABEL_A10_
	ld b, $0D
	call _LABEL_2EC8_
	ld hl, _DATA_335_
	ld (_RAM_DEB9_), hl
	call _LABEL_A95_
	ld b, $0D
	call _LABEL_2ECE_
	call _LABEL_A10_
	ld b, $0D
	call _LABEL_2ECE_
	ld hl, _DATA_356_
	ld (_RAM_DEB9_), hl
	call _LABEL_A95_
	ld b, $0D
	call _LABEL_2ECE_
	call _LABEL_A10_
	ld b, $0C
	call _LABEL_2ECE_
	call _LABEL_2C1A_
	ld hl, _DATA_377_
	ld (_RAM_DEB9_), hl
	call _LABEL_A95_
	call _LABEL_3238_
	ld a, (_RAM_DE96_)
	and a
	jr z, +
	dec a
	ld (_RAM_DE96_), a
	jr ++

+:
	ld a, (_RAM_DEF2_)
	and a
	call z, _LABEL_374B_
	call _LABEL_53A3_
	call _LABEL_5223_
	call _LABEL_369E_
++:
	call _LABEL_31DF_
	call _LABEL_A10_
	jp _LABEL_757_GAME_MAIN

_LABEL_A10_:
	ld de, (_RAM_DEA9_)
	push de
	ld hl, $0040
	add hl, de
	ld (hl), $D0
	ld a, (_RAM_DA5C_)
	ld c, a
	ld b, $00
	ex de, hl
	ld de, _RAM_D12C_
	and a
	jr z, +
	ldir
+:
	ld c, a
	ld a, $D0
	ld (de), a
	dec hl
	ld b, $FF
-:
	inc b
	inc hl
	ld a, (hl)
	and $D0
	cp $D0
	jr nz, -
	ld a, b
	and a
	jr z, ++
	push bc
-:
	dec hl
	ld a, (hl)
	ld (de), a
	inc de
	djnz -
	ld a, $D0
	ld (de), a
	pop bc
	ld hl, (_RAM_DEA9_)
	ld de, $0080
	add hl, de
	ld de, _RAM_D1AC_
	ld a, c
	add a, a
	ld c, a
	and a
	ld a, b
	jr z, +
	ld b, $00
	ldir
+:
	add a, a
	ld c, a
	ld b, $00
	add hl, bc
	srl a
	ld b, a
-:
	dec hl
	dec hl
	ld a, (hl)
	ld (de), a
	inc de
	inc hl
	ld a, (hl)
	ld (de), a
	inc de
	dec hl
	djnz -
	ld hl, _RAM_D12C_
	ld (_RAM_DEA9_), hl
++:
	call _LABEL_59B_MAIN
	call _LABEL_2FB7_
	pop hl
	ld (_RAM_DEA9_), hl
	ld a, (_RAM_DE46_)
	ld b, a
	ld c, $08
	call _LABEL_62D_WRITE_VDP_REG
	ld a, (_RAM_DE48_)
	ld b, a
	ld c, $09
	call _LABEL_62D_WRITE_VDP_REG
	ret

_LABEL_A95_:
	ld a, (_RAM_DE46_)
	ld (_RAM_DE47_), a
	ld a, (_RAM_DE48_)
	ld (_RAM_DE49_), a
	call +
	call _LABEL_314E_
	call _LABEL_2C54_
	call _LABEL_59B_MAIN
	call _LABEL_2FB7_
	ld a, (_RAM_DE46_)
	ld b, a
	ld c, $08
	call _LABEL_62D_WRITE_VDP_REG
	ld a, (_RAM_DE48_)
	ld b, a
	ld c, $09
	call _LABEL_62D_WRITE_VDP_REG
	ld a, (_RAM_DE48_)
	ld b, a
	ld a, (_RAM_DE49_)
	cp b
	ld a, (_RAM_DE46_)
	ld b, a
	ld a, (_RAM_DE47_)
	cp b
	call nz, _LABEL_10B1_
	ret

+:
	ld a, (_RAM_DE44_)
	bit 7, a
	jr nz, +
	and a
	jr z, ++
	call _LABEL_B39_
	ld a, (_RAM_DE44_)
	cp $02
	call nc, _LABEL_B39_
	ld a, (_RAM_DE44_)
	cp $03
	call nc, _LABEL_B39_
	jr ++

+:
	call _LABEL_B47_
	ld a, (_RAM_DE44_)
	cp $FF
	call c, _LABEL_B47_
	ld a, (_RAM_DE44_)
	cp $FE
	call c, _LABEL_B47_
++:
	ld a, (_RAM_DE45_)
	bit 7, a
	jr nz, +
	and a
	ret z
	call ++
	ld a, (_RAM_DE45_)
	cp $02
	call nc, ++
	ld a, (_RAM_DE45_)
	cp $03
	call nc, ++
	ret

+:
	call +++
	ld a, (_RAM_DE45_)
	cp $FF
	call c, +++
	ld a, (_RAM_DE45_)
	cp $FE
	call c, +++
	ret

_LABEL_B39_:
	ld hl, (_RAM_DE34_)
	ld de, (_RAM_DE3E_)
	and a
	sbc hl, de
	ret nc
	jp _LABEL_FCB_

_LABEL_B47_:
	ld hl, (_RAM_DE34_)
	ld a, l
	or h
	ret z
	jp _LABEL_FFC_

++:
	ld hl, (_RAM_DE36_)
	ld de, (_RAM_DE40_)
	and a
	sbc hl, de
	ret nc
	jp _LABEL_1032_

+++:
	ld hl, (_RAM_DE36_)
	ld a, h
	or l
	ret z
	jp _LABEL_106D_

; Data from B67 to B96 (48 bytes)
;_DATA_B67_DEMO_INPUT:
;.db $01 $00 $16 $01 $05 $00 $1A $02 $04 $08 $18 $01 $04 $00 $00 $FE
;.db $E8 $DE $08 $00 $FE $E9 $DE $02 $0C $11 $05 $00 $40 $02 $00 $FE
;.db $BC $DE $01 $00 $FE $BD $DE $00 $0F $00 $1E $12 $0A $00 $00 $FF

_DATA_B67_DEMO_INPUT:
.db $01 $00 $16 $01 $05 $00 $1A $02 $04 $08 $18 $01 $04 $00 $00 $FE
.db $E8 $DE $08 $00 $FE $E9 $DE $02 $0C $11 $05 $00 $40 $02 $00 $FE
.db $BC $DE $01 $00 $FE $BD $DE $00 $0F $00 $1E $12 $0A $00 $00 $FF

; Data from B97 to BB6 (32 bytes)
_DATA_B97_:
.db $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01
.db $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01

_LABEL_BB7_:
	call _LABEL_59B_MAIN
	xor a
	out (Port_VDPAddress), a
	ld a, $7F
	out (Port_VDPAddress), a
	ld hl, _DATA_AB_
	ld a, $D0
	out (Port_VDPData), a
	ld a, $E0
	ld bc, $2000 | Port_VDPData
	out (Port_VDPAddress), a
	ld a, $77
	out (Port_VDPAddress), a
	otir
	xor a
	out (Port_VDPAddress), a
	ld a, $78
	out (Port_VDPAddress), a
	ld e, $18
	ld c, Port_VDPData
_LABEL_BE0_:
	ld hl, _DATA_B97_
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	dec e
	jr nz, _LABEL_BE0_
	ld e, $08
--:
	ld bc, $4000 | Port_VDPData
	ld hl, _DATA_B97_
-:
	outi
	djnz -
	dec e
	jr nz, --
	xor a
	ld (_RAM_DE46_), a
	ld hl, _DATA_473_
	call _LABEL_61F_WRITE_VDP_REG
	call _LABEL_59B_MAIN
	ret

_LABEL_C43_LEVEL_LOAD:	;OH SWEET JESUS... yeah this is level calculation, and where to get data from.
	call _LABEL_BB7_	;DOES NOTHING AS OF YET.
	;NOP
	;NOP
	;NOP
	ld hl, _RAM_D000_
	ld de, _RAM_D000_ + 1
	;LD BC, $00FF	;255 BYTES ARE ALSO WORKING...
	ld bc, $01FF	;512 BYTES
	ld (hl), c
	ldir		;THIS LDIR COMMENTED OUT WILL MESS UP THE DRAWN TILEMAP.
	;NOP
	;NOP
	ld hl, _RAM_D200_
	ld de, _RAM_D200_ + 1
	LD BC, $03FF
	;ld bc, $03FF	;1024 BYTES.
	ld (hl), c
	ldir		;ANOTHER TILEMAP
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $07FF	;2K
	ld (hl), $00
	ldir		;SOOO, THIS CLEARS A WHOLE LOT OF SHEBANG FOR THE LEVEL WE WILL WANT TO PLAY.
	ld a, (_RAM_DE52_ROOM_NR)
	ld hl, _DATA_1343_LVL_POINTERS - 2	;GET THE ROOM NR, AND LOAD THE LEVEL POINTER INTO HL.
			;EXAMPLE 2
	add a, a	;4
	ld e, a		;$04
	ld d, $00	;$0004
	add hl, de	;$1345 THE THIRD ENTRY.
	ld a, (hl)	;13FB IS THE LABEL BUT THIS IS 13.
	inc hl
	ld h, (hl)	;FB
	ld l, a
	ld a, (hl)	;READ FROM SAID LABEL. ($50)
	push hl		;SAVE THE ADDRESS INTO STACK.
	ld l, a		
	ld h, $00	;$0050 0101 0000
	add hl, hl	;1
	add hl, hl	;2
	add hl, hl	;3
	add hl, hl	;4	$0500
	ld de, $0100
	and a
	sbc hl, de	;$0400
	ld (_RAM_DE3E_), hl	;save this value
	push af			;save this one too on the stack
	ld a, (_RAM_DEF4_)
	cp $01
	jr Nz, +
	ld hl, (_RAM_DE3E_)
	ld (_RAM_DE3C_), hl
	ld hl, $0240
	ld (_RAM_DE3E_), hl
+:
	pop af
	ld de, (_RAM_DE34_)
	and a
	sbc hl, de
	jr nc, +
	ld hl, (_RAM_DE3E_)
	ld (_RAM_DE34_), hl
+:
	pop hl
	srl a
	srl a
	ld b, a
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld hl, _DATA_12E1_	;7 entries this is some level separation thingy, the collision and enemies are not stored along with the level tilemap.
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (hl)
	ld (_RAM_DE31_), a
	inc hl
	ld a, (hl)
	ld (_RAM_DE2E_), a
	inc hl
	ld a, (hl)
	ld (_RAM_DE29_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_DE32_), de
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_DE2F_), de
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_DE2A_), de
	pop hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	push de
	pop ix
	ld a, (_RAM_DE52_ROOM_NR)
	cp $28
	jr nz, +
	ld a, (_RAM_DEF4_)
	cp $02
	jr nz, +
	ld ix, _DATA_2ACC_
+:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (_RAM_DE5E_), de
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (_RAM_DE60_), de
	ld a, (hl)
	ld (_RAM_DE53_COMPASS), a
	exx
	ld de, _RAM_C800_
	ld bc, $0004
	exx
	xor a
	ld (_RAM_DE5A_), a
	ld (_RAM_DE59_LEFT_DEBUG_NR), a
_LABEL_D29_:
	push bc
	exx
	ld hl, $0004
	add hl, de
	ex de, hl
	exx
	ld a, (_RAM_DE2E_)
	ld (_RAM_FFFF_), a
	ld de, (_RAM_DE2F_)
	ld a, (ix+0)
	inc ix
	ld l, $00
	ld h, a
	srl h
	rr l
	srl h
	rr l
	add hl, de
	ex de, hl
	ld b, $08
_LABEL_D4F_:
	ld c, $04
	push de
_LABEL_D52_:
	ld a, (_RAM_DE2E_)
	ld (_RAM_FFFF_), a
	ld a, (de)
	add a, $D0
	ld h, a
	inc de
	ld a, (de)
	ld l, a
	inc de
	ld a, (hl)
	inc a
	jp nz, _LABEL_E17_
	ld a, (_RAM_DE5A_)
	ld (hl), a
	inc a
	ld (_RAM_DE5A_), a
	push bc
	push de
	push hl
	ld de, $D000
	and a
	sbc hl, de
	dec a
	ld c, a
	ld a, (_RAM_DE31_)
	ld (_RAM_FFFF_), a
	ld de, (_RAM_DE32_)
	add hl, de
	ld b, $04
	ex af, af'
	ld a, $C0
	ex af, af'
_LABEL_D89_:
	push bc
	ld e, (hl)
	inc h
	inc h
	ld d, (hl)
	inc h
	inc h
	push hl
	ld hl, _RAM_D200_
	ld a, d
	ld b, d
	and $03
	ld d, a
	add hl, de
	ld a, (hl)
	inc a
	jr nz, _LABEL_DF6_
	ld a, (_RAM_DE59_LEFT_DEBUG_NR)
	ld (hl), a
	inc a
	cp $B4
	jp nz, +
	ld hl, _RAM_D200_
	jr _LABEL_DF6_

+:
	ld (_RAM_DE59_LEFT_DEBUG_NR), a
	push hl
	push bc
	ld c, l
	ld b, h
	ld a, (hl)
	ld l, a
	ld h, $00
	ld de, $010C
	add hl, de
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	ld l, c
	ld h, b
	ld bc, $D200
	and a
	sbc hl, bc
	ld a, (_RAM_DE29_)
	ld c, a
	ld a, h
	ld b, a
	and $01
	ld h, a
	ld a, b
	srl a
	and $01
	add a, c
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (_RAM_FFFF_), a
	ld bc, (_RAM_DE2A_)
	add hl, bc
	ld bc, $0020
	di
	call _LABEL_48C_LOAD_VDP_DATA
	ei
	pop bc
	pop hl
	ld a, (_RAM_DE31_)
	ld (_RAM_FFFF_), a
_LABEL_DF6_:
	ld e, (hl)
	ex af, af'
	ld h, a
	add a, $02
	ex af, af'
	ld l, c
	ld d, b
	srl d
	res 0, d
	set 3, d
	push hl
	ld hl, $010C
	add hl, de
	ex de, hl
	pop hl
	ld (hl), e
	inc h
	ld (hl), d
	pop hl
	pop bc
	dec b
	jp nz, _LABEL_D89_
	pop hl
	pop de
	pop bc
_LABEL_E17_:
	ld a, (hl)
	exx
	ld (hl), a
	inc hl
	exx
	dec c
	jp nz, _LABEL_D52_
	pop de
	exx
	and a
	sbc hl, bc
	inc h
	exx
	ld a, $08
	add a, e
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	dec b
	jp nz, _LABEL_D4F_
	pop bc
	dec b
	jp nz, _LABEL_D29_
	jr +

; Data from E3A to E40 (7 bytes)
.db $E1 $C1 $E1 $D1 $C1 $D1 $C1

+:
	ld a, $08
	ld (_RAM_FFFF_), a
	ld hl, (_DATA_20078_)
	ld a, (_DATA_2007C_)
	ld (_RAM_FFFF_), a
	ld de, $0080
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld c, a
	and $E0
	ld l, a
	ld a, c
	xor l
	add a, $0B
	ld (_RAM_FFFF_), a
	ld ix, _DATA_1331_
	ld b, $08
-:
	push bc
	ld e, (ix+0)
	ld d, (ix+1)
	ld bc, $0020
	di
	call _LABEL_48C_LOAD_VDP_DATA
	ei
	ex de, hl
	pop bc
	inc ix
	inc ix
	djnz -
	ld hl, $F0F4
	ld (_RAM_C0FE_), hl
	ld hl, $0909
	ld (_RAM_C1FE_), hl
	ld hl, $F1F5
	ld (_RAM_C2FE_), hl
	ld hl, $0909
	ld (_RAM_C3FE_), hl
	ld hl, $F2F6
	ld (_RAM_C4FE_), hl
	ld hl, $0909
	ld (_RAM_C5FE_), hl
	ld hl, $F3F7
	ld (_RAM_C6FE_), hl
	ld hl, $0909
	ld (_RAM_C7FE_), hl
	ld ix, _RAM_D600_
	ld c, $96
	ld a, (_RAM_DE52_ROOM_NR)
	ld b, a
-:
	ld a, (ix+1)
	cp b
	jr nz, +
	ld a, (ix+0)
	and a
	jr z, +
	cp $40
	jr nc, +
	cp $37
	jr z, +
	ld a, (ix+4)
	and $E0
	jr nz, +
	ld a, (ix+3)
	and $F0
	rlca
	rlca
	rlca
	rlca
	ld h, a
	ld a, $06
	sub h
	ld h, a
	ld l, (ix+2)
	ld de, $C800
	add hl, de
	ld (hl), $FF
+:
	ld de, $0005
	add ix, de
	dec c
	jr nz, -
	call _LABEL_5887_
	call _LABEL_2DE2_
	ld b, $40
	di
	call _LABEL_2EB1_
	call _LABEL_2C1A_
	di
	ld b, $40
	call _LABEL_2EB1_
	call _LABEL_2DE2_
	call _LABEL_2C1A_
	call _LABEL_2C54_
	call _LABEL_59B_MAIN
	di
	ld hl, _RAM_C800_
	ld (_RAM_DE2F_), hl
	ld a, $02
	ld (_RAM_DE2E_), a
	ld a, (_RAM_DE2E_)
	ld (_RAM_FFFF_), a
	ld hl, $3800
	call _LABEL_4BB_VDP_RAM_WRITE
	ld de, (_RAM_DE2F_)
	ld hl, (_RAM_DE34_)
	call _LABEL_7AE7_
	ld a, l
	ld (_RAM_DE50_), a
	add hl, de
	ex de, hl
	ld hl, (_RAM_DE36_)
	call _LABEL_7AE7_
	ld h, l
	ld l, $00
	ld a, h
	ld (_RAM_DE51_), a
	add hl, de
	ex de, hl
	ld b, $08
_LABEL_F50_:
	push bc
	push de
	ld b, $10
	push de
-:
	push bc
	ld a, (de)
	inc de
	ld c, a
	ld b, $C0
	ld a, (bc)
	out (Port_VDPData), a
	neg
	ld b, $C1
	ld a, (bc)
	out (Port_VDPData), a
	neg
	ld b, $C2
	ld a, (bc)
	out (Port_VDPData), a
	neg
	ld b, $C3
	ld a, (bc)
	out (Port_VDPData), a
	pop bc
	djnz -
	pop de
	ld b, $10
-:
	push bc
	ld a, (de)
	inc de
	ld c, a
	ld b, $C4
	ld a, (bc)
	out (Port_VDPData), a
	neg
	ld b, $C5
	ld a, (bc)
	out (Port_VDPData), a
	neg
	ld b, $C6
	ld a, (bc)
	out (Port_VDPData), a
	neg
	ld b, $C7
	ld a, (bc)
	out (Port_VDPData), a
	pop bc
	djnz -
	pop de
	pop bc
	inc d
	dec b
	jp nz, _LABEL_F50_
	ld hl, _DATA_398_
	call _LABEL_4CF_LOAD2PALS
	ld hl, $0000
	ld (_RAM_DE4A_), hl
	ld hl, $3800
	ld (_RAM_DE4C_), hl
	ld a, $08
	ld (_RAM_DE46_), a
	xor a
	ld (_RAM_DE48_), a
	ld (_RAM_DE3B_), a
	ld (_RAM_DE3A_), a
	ld hl, _RAM_D12C_
	ld (hl), $FF
	ld (_RAM_DE38_), hl
	ret

_LABEL_FCB_:
	ld a, $01
	ld (_RAM_DE4E_), a
	ld hl, (_RAM_DE34_)
	inc hl
	ld (_RAM_DE34_), hl
	ld a, (_RAM_DE46_)
	dec a
	ld (_RAM_DE46_), a
	ld a, l
	and $07
	ret nz
	ld hl, (_RAM_DE4A_)
	ld a, l
	add a, $02
	and $3F
	ld l, a
	ld (_RAM_DE4A_), hl
	ld a, (_RAM_DE3A_)
	xor $01
	ld (_RAM_DE3A_), a
	ret nz
	ld hl, _RAM_DE50_
	inc (hl)
	ret

_LABEL_FFC_:
	ld a, $02
	ld (_RAM_DE4E_), a
	ld hl, (_RAM_DE34_)
	dec hl
	bit 7, h
	ret nz
	ld (_RAM_DE34_), hl
	ld a, (_RAM_DE46_)
	inc a
	ld (_RAM_DE46_), a
	ld a, l
	and $07
	cp $07
	ret nz
	ld hl, (_RAM_DE4A_)
	ld a, l
	sub $02
	and $3F
	ld l, a
	ld (_RAM_DE4A_), hl
	ld a, (_RAM_DE3A_)
	xor $01
	ld (_RAM_DE3A_), a
	ret z
	ld hl, _RAM_DE50_
	dec (hl)
	ret

_LABEL_1032_:
	ld a, $01
	ld (_RAM_DE4F_), a
	ld hl, (_RAM_DE36_)
	inc hl
	ld (_RAM_DE36_), hl
	ld a, (_RAM_DE48_)
	inc a
	cp $E0
	jr c, +
	xor a
+:
	ld (_RAM_DE48_), a
	ld a, l
	and $07
	ret nz
	ld hl, (_RAM_DE4C_)
	ld de, $0040
	add hl, de
	ld a, h
	cp $3F
	jr c, +
	ld h, $38
+:
	ld (_RAM_DE4C_), hl
	ld a, (_RAM_DE3B_)
	xor $01
	ld (_RAM_DE3B_), a
	ret nz
	ld hl, _RAM_DE51_
	inc (hl)
	ret

_LABEL_106D_:
	ld a, $02
	ld (_RAM_DE4F_), a
	ld hl, (_RAM_DE36_)
	dec hl
	bit 7, h
	ret nz
	ld (_RAM_DE36_), hl
	ld a, (_RAM_DE48_)
	dec a
	cp $E0
	jr c, +
	ld a, $DF
+:
	ld (_RAM_DE48_), a
	ld a, l
	and $07
	cp $07
	ret nz
	ld hl, (_RAM_DE4C_)
	ld de, $0040
	and a
	sbc hl, de
	ld a, h
	cp $38
	jr nc, +
	add a, $07
	ld h, a
+:
	ld (_RAM_DE4C_), hl
	ld a, (_RAM_DE3B_)
	xor $01
	ld (_RAM_DE3B_), a
	ret z
	ld hl, _RAM_DE51_
	dec (hl)
	ret

_LABEL_10B1_:
	ld a, (_RAM_DE2E_)
	ld (_RAM_FFFF_), a
	ld a, (_RAM_DE4E_)
	cp $02
	jp z, ++
	ld hl, (_RAM_DE2F_)
	ld de, (_RAM_DE50_)
	add hl, de
	ld de, $000F
	add hl, de
	ld a, (_RAM_DE3A_)
	ld b, $C2
	and a
	jr z, +
	ld b, $C0
	inc hl
+:
	push hl
	ld hl, (_RAM_DE4C_)
	ld de, (_RAM_DE4A_)
	ld a, e
	add a, $3E
	and $3F
	ld e, a
	add hl, de
	pop de
	jp +++

++:
	ld hl, (_RAM_DE2F_)
	ld de, (_RAM_DE50_)
	add hl, de
	ld a, (_RAM_DE3A_)
	ld b, $C0
	and a
	jr z, +
	ld b, $C2
+:
	push hl
	ld hl, (_RAM_DE4C_)
	ld de, (_RAM_DE4A_)
	add hl, de
	pop de
	jp +++

+++:
	ld a, b
	ld (_RAM_DE6A_), a
	add a, $04
	ld (_RAM_DE6B_), a
	ld b, $08
	ld a, (_RAM_DE3B_)
	and a
	jp nz, _LABEL_116F_
_LABEL_111A_:
	push bc
	ld a, l
	out (Port_VDPAddress), a
	ld a, (de)
	ld c, a
	ld a, h
	set 6, a
	out (Port_VDPAddress), a
	ld a, (_RAM_DE6A_)
	ld b, a
	ld a, (bc)
	out (Port_VDPData), a
	ld a, (_RAM_DE6A_)
	ld b, a
	inc b
	ld a, (bc)
	out (Port_VDPData), a
	ld a, l
	add a, $40
	ld l, a
	ld a, h
	adc a, $00
	cp $3F
	jr c, +
	sub $07
+:
	ld h, a
	ld a, l
	out (Port_VDPAddress), a
	ld a, h
	set 6, a
	inc d
	nop
	out (Port_VDPAddress), a
	ld a, (_RAM_DE6B_)
	ld b, a
	ld a, (bc)
	out (Port_VDPData), a
	ld a, (_RAM_DE6B_)
	ld b, a
	inc b
	ld a, (bc)
	out (Port_VDPData), a
	ld a, l
	add a, $40
	ld l, a
	ld a, h
	adc a, $00
	cp $3F
	jr c, +
	sub $07
+:
	ld h, a
	pop bc
	dec b
	jp nz, _LABEL_111A_
	ret

_LABEL_116F_:
	push bc
	ld a, l
	out (Port_VDPAddress), a
	ld a, (de)
	ld c, a
	ld a, h
	set 6, a
	out (Port_VDPAddress), a
	ld a, (_RAM_DE6B_)
	ld b, a
	ld a, (bc)
	out (Port_VDPData), a
	ld a, (_RAM_DE6B_)
	ld b, a
	inc b
	ld a, (bc)
	out (Port_VDPData), a
	ld a, l
	add a, $40
	ld l, a
	ld a, h
	adc a, $00
	cp $3F
	jr c, +
	sub $07
+:
	ld h, a
	ld a, l
	out (Port_VDPAddress), a
	inc d
	ld a, (de)
	ld c, a
	ld a, h
	set 6, a
	out (Port_VDPAddress), a
	ld a, (_RAM_DE6A_)
	ld b, a
	ld a, (bc)
	out (Port_VDPData), a
	ld a, (_RAM_DE6A_)
	ld b, a
	inc b
	ld a, (bc)
	out (Port_VDPData), a
	ld a, l
	add a, $40
	ld l, a
	ld a, h
	adc a, $00
	cp $3F
	jr c, +
	sub $07
+:
	ld h, a
	pop bc
	dec b
	jp nz, _LABEL_116F_
	ret

; Data from 11C5 to 12E0 (284 bytes)
.db $3A $2E $DE $32 $FF $FF $3A $4F $DE $FE $02 $CA $04 $12 $2A $2F
.db $DE $ED $5B $50 $DE $19 $7C $C6 $0D $67 $3A $3B $DE $06 $C4 $A7
.db $28 $03 $06 $C0 $24 $E5 $2A $4C $DE $ED $5B $4A $DE $19 $11 $C0
.db $06 $19 $D1 $7C $FE $3F $DA $23 $12 $D6 $07 $67 $C3 $23 $12 $2A
.db $2F $DE $ED $5B $50 $DE $19 $3A $3B $DE $06 $C0 $A7 $28 $02 $06
.db $C4 $E5 $2A $4C $DE $ED $5B $4A $DE $19 $D1 $C3 $23 $12 $78 $32
.db $6A $DE $C6 $02 $32 $6B $DE $7D $D3 $BF $00 $00 $7C $CB $F7 $D3
.db $BF $06 $10 $3A $3A $DE $A7 $C2 $8F $12 $C5 $1A $4F $3A $6A $DE
.db $47 $0A $D3 $BE $3A $6A $DE $47 $04 $0A $D3 $BE $2C $2C $7D $E6
.db $3F $20 $0D $7D $D6 $40 $6F $D3 $BF $00 $00 $7C $CB $F7 $D3 $BF
.db $3A $6B $DE $47 $0A $D3 $BE $3A $6B $DE $47 $04 $0A $D3 $BE $2C
.db $2C $7D $E6 $3F $20 $0D $7D $D6 $40 $6F $D3 $BF $00 $00 $7C $CB
.db $F7 $D3 $BF $13 $C1 $05 $C2 $3F $12 $C9 $C5 $1A $13 $4F $3A $6B
.db $DE $47 $0A $D3 $BE $3A $6B $DE $47 $04 $0A $D3 $BE $1A $4F $2C
.db $2C $7D $E6 $3F $20 $0D $7D $D6 $40 $6F $D3 $BF $00 $00 $7C $CB
.db $F7 $D3 $BF $3A $6A $DE $47 $0A $D3 $BE $3A $6A $DE $47 $04 $0A
.db $D3 $BE $2C $2C $7D $E6 $3F $20 $0D $7D $D6 $40 $6F $D3 $BF $00
.db $00 $7C $CB $F7 $D3 $BF $C1 $05 $C2 $8F $12 $C9

; Pointer Table from 12E1 to 12EE (7 entries, indexed by unknown)
_DATA_12E1_:
.dw _DATA_12EF_ _DATA_12F8_ _DATA_1301_ _DATA_130A_ _DATA_1313_ _DATA_131C_ _DATA_1325_

; 1st entry of Pointer Table from 12E1 (indexed by unknown)
; Data from 12EF to 12F7 (9 bytes)
_DATA_12EF_:
.db $02 $03 $05 $00 $80 $00 $80 $00 $80

; 2nd entry of Pointer Table from 12E1 (indexed by unknown)
; Data from 12F8 to 1300 (9 bytes)
_DATA_12F8_:
.db $02 $03 $05 $00 $80 $C0 $94 $00 $80

; 3rd entry of Pointer Table from 12E1 (indexed by unknown)
; Data from 1301 to 1309 (9 bytes)
_DATA_1301_:
.db $02 $03 $05 $00 $80 $80 $A7 $00 $80

; 4th entry of Pointer Table from 12E1 (indexed by unknown)
; Data from 130A to 1312 (9 bytes)
_DATA_130A_:
.db $02 $04 $05 $00 $80 $00 $90 $00 $80

; 5th entry of Pointer Table from 12E1 (indexed by unknown)
; Data from 1313 to 131B (9 bytes)
_DATA_1313_:
.db $04 $03 $07 $00 $80 $40 $B7 $00 $80

; 6th entry of Pointer Table from 12E1 (indexed by unknown)
; Data from 131C to 1324 (9 bytes)
_DATA_131C_:
.db $02 $03 $05 $00 $80 $00 $BA $00 $80

; 7th entry of Pointer Table from 12E1 (indexed by unknown)
; Data from 1325 to 1330 (12 bytes)
_DATA_1325_:
.db $02 $03 $07 $00 $90 $00 $BB $00 $A0 $C3 $2E $13

; Data from 1331 to 1342 (18 bytes)
_DATA_1331_:
.db $00 $3E $40 $3E $20 $3E $60 $3E $80 $3E $C0 $3E $A0 $3E $E0 $3E
.db $00 $00	;THE -2 IN THE POINTERS POINT TO THIS.

; Pointer Table from 1343 to 13F0 (87 entries, indexed by _RAM_DE52_ROOM_NR)
_DATA_1343_LVL_POINTERS:
.dw _DATA_13F1_ _DATA_13FB_ _DATA_1405_ _DATA_140F_ _DATA_1419_ _DATA_1423_ _DATA_142D_ _DATA_1437_
.dw _DATA_1441_ _DATA_144B_ _DATA_1455_ _DATA_145F_ _DATA_1469_ _DATA_1473_ _DATA_147D_ _DATA_1487_
.dw _DATA_1491_ _DATA_149B_ _DATA_14A5_ _DATA_14AF_ _DATA_14B9_ _DATA_14C3_ _DATA_14CD_ _DATA_14D7_
.dw _DATA_14E1_ _DATA_14EB_ _DATA_14F5_ _DATA_14FF_ _DATA_1509_ _DATA_1513_ _DATA_151D_ _DATA_1527_
.dw _DATA_1531_ _DATA_153B_ _DATA_1545_ _DATA_154F_ _DATA_1559_ _DATA_1563_ _DATA_156D_ _DATA_1577_
.dw _DATA_1581_ _DATA_158B_ _DATA_1595_ _DATA_159F_ _DATA_15A9_ _DATA_15B3_ _DATA_15BD_ _DATA_15C7_
.dw _DATA_15D1_ _DATA_15DB_ _DATA_15E5_ _DATA_15EF_ _DATA_15F9_ _DATA_1603_ _DATA_160D_ _DATA_1617_
.dw _DATA_1621_ _DATA_162B_ _DATA_1635_ _DATA_163F_ _DATA_1649_ _DATA_1653_ _DATA_165D_ _DATA_1667_
.dw _DATA_1671_ _DATA_167B_ _DATA_1685_ _DATA_168F_ _DATA_1699_ _DATA_16A3_ _DATA_16AD_ _DATA_16B7_
.dw _DATA_16C1_ _DATA_16CB_ _DATA_16D5_ _DATA_16DF_ _DATA_16E9_ _DATA_16F3_ _DATA_16FD_ _DATA_1707_
.dw _DATA_1711_ _DATA_171B_ _DATA_1725_ _DATA_172F_ _DATA_1739_ _DATA_1743_ _DATA_174D_

; 1st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 13F1 to 13FA (10 bytes)
_DATA_13F1_:
.db $50 $00 $A1 $24 $5B $17 $0B $19 $00 $00

; 2nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 13FB to 1404 (10 bytes)
_DATA_13FB_:
.db $50 $00 $BA $24 $5E $17 $2F $19 $00 $00

; 3rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1405 to 140E (10 bytes)
_DATA_1405_:
.db $3C $00 $D3 $24 $61 $17 $44 $19 $00 $00

; 4th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 140F to 1418 (10 bytes)
_DATA_140F_:
.db $30 $00 $E4 $24 $61 $17 $54 $19 $03 $00

; 5th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1419 to 1422 (10 bytes)
_DATA_1419_:
.db $34 $00 $F2 $24 $61 $17 $64 $19 $03 $00

; 6th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1423 to 142C (10 bytes)
_DATA_1423_:
.db $3C $00 $00 $25 $62 $17 $83 $19 $03 $00

; 7th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 142D to 1436 (10 bytes)
_DATA_142D_:
.db $3C $00 $11 $25 $61 $17 $98 $19 $03 $00

; 8th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1437 to 1440 (10 bytes)
_DATA_1437_:
.db $14 $00 $22 $25 $61 $17 $AD $19 $02 $00

; 9th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1441 to 144A (10 bytes)
_DATA_1441_:
.db $74 $00 $2C $25 $67 $17 $B8 $19 $03 $00

; 10th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 144B to 1454 (10 bytes)
_DATA_144B_:
.db $14 $00 $4A $25 $61 $17 $D2 $19 $00 $00

; 11th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1455 to 145E (10 bytes)
_DATA_1455_:
.db $28 $00 $54 $25 $61 $17 $D8 $19 $03 $00

; 12th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 145F to 1468 (10 bytes)
_DATA_145F_:
.db $5C $01 $63 $25 $61 $17 $DE $19 $03 $00

; 13th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1469 to 1472 (10 bytes)
_DATA_1469_:
.db $4C $01 $7C $25 $61 $17 $F3 $19 $03 $00

; 14th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1473 to 147C (10 bytes)
_DATA_1473_:
.db $58 $01 $90 $25 $61 $17 $03 $1A $03 $00

; 15th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 147D to 1486 (10 bytes)
_DATA_147D_:
.db $3C $02 $E6 $29 $61 $17 $0E $1A $03 $00

; 16th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1487 to 1490 (10 bytes)
_DATA_1487_:
.db $54 $02 $FA $29 $6A $17 $1E $1A $03 $00

; 17th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1491 to 149A (10 bytes)
_DATA_1491_:
.db $28 $02 $13 $2A $61 $17 $2E $1A $03 $00

; 18th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 149B to 14A4 (10 bytes)
_DATA_149B_:
.db $54 $03 $63 $2A $61 $17 $2F $1A $00 $00

; 19th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14A5 to 14AE (10 bytes)
_DATA_14A5_:
.db $34 $03 $7C $2A $61 $17 $3A $1A $01 $00

; 20th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14AF to 14B8 (10 bytes)
_DATA_14AF_:
.db $48 $03 $8B $2A $61 $17 $4A $1A $02 $00

; 21st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14B9 to 14C2 (10 bytes)
_DATA_14B9_:
.db $40 $03 $9F $2A $61 $17 $55 $1A $02 $00

; 22nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14C3 to 14CC (10 bytes)
_DATA_14C3_:
.db $18 $03 $B3 $2A $61 $17 $60 $1A $01 $00

; 23rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14CD to 14D6 (10 bytes)
_DATA_14CD_:
.db $38 $01 $A9 $25 $61 $17 $6B $1A $03 $00

; 24th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14D7 to 14E0 (10 bytes)
_DATA_14D7_:
.db $3C $01 $B8 $25 $6D $17 $7B $1A $03 $00

; 25th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14E1 to 14EA (10 bytes)
_DATA_14E1_:
.db $18 $02 $13 $2A $61 $17 $86 $1A $00 $00

; 26th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14EB to 14F4 (10 bytes)
_DATA_14EB_:
.db $14 $04 $EE $2A $61 $17 $8C $1A $00 $00

; 27th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14F5 to 14FE (10 bytes)
_DATA_14F5_:
.db $30 $04 $F8 $2A $61 $17 $92 $1A $01 $00

; 28th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 14FF to 1508 (10 bytes)
_DATA_14FF_:
.db $14 $04 $07 $2B $61 $17 $9D $1A $00 $00

; 29th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1509 to 1512 (10 bytes)
_DATA_1509_:
.db $24 $04 $11 $2B $61 $17 $A8 $1A $01 $00

; 30th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1513 to 151C (10 bytes)
_DATA_1513_:
.db $70 $04 $1B $2B $61 $17 $B3 $1A $00 $00

; 31st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 151D to 1526 (10 bytes)
_DATA_151D_:
.db $34 $04 $39 $2B $61 $17 $C3 $1A $01 $00

; 32nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1527 to 1530 (10 bytes)
_DATA_1527_:
.db $14 $04 $48 $2B $61 $17 $DD $1A $00 $00

; 33rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1531 to 153A (10 bytes)
_DATA_1531_:
.db $14 $04 $52 $2B $61 $17 $E3 $1A $00 $00

; 34th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 153B to 1544 (10 bytes)
_DATA_153B_:
.db $14 $04 $5C $2B $61 $17 $E9 $1A $00 $00

; 35th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1545 to 154E (10 bytes)
_DATA_1545_:
.db $1C $04 $66 $2B $61 $17 $EF $1A $00 $00

; 36th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 154F to 1558 (10 bytes)
_DATA_154F_:
.db $30 $04 $70 $2B $61 $17 $FA $1A $01 $00

; 37th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1559 to 1562 (10 bytes)
_DATA_1559_:
.db $14 $04 $7F $2B $61 $17 $05 $1B $01 $00

; 38th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1563 to 156C (10 bytes)
_DATA_1563_:
.db $28 $03 $BD $2A $61 $17 $06 $1B $03 $00

; 39th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 156D to 1576 (10 bytes)
_DATA_156D_:
.db $24 $02 $1D $2A $70 $17 $0C $1B $03 $00

; 40th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1577 to 1580 (10 bytes)
_DATA_1577_:
.db $44 $06 $DD $2A $61 $17 $17 $1B $00 $00

; 41st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1581 to 158A (10 bytes)
_DATA_1581_:
.db $18 $04 $7F $2B $61 $17 $18 $1B $00 $00

; 42nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 158B to 1594 (10 bytes)
_DATA_158B_:
.db $14 $04 $89 $2B $61 $17 $23 $1B $01 $00

; 43rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1595 to 159E (10 bytes)
_DATA_1595_:
.db $34 $04 $93 $2B $61 $17 $2E $1B $00 $00

; 44th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 159F to 15A8 (10 bytes)
_DATA_159F_:
.db $20 $04 $A2 $2B $61 $17 $39 $1B $01 $00

; 45th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15A9 to 15B2 (10 bytes)
_DATA_15A9_:
.db $14 $04 $AC $2B $61 $17 $44 $1B $01 $00

; 46th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15B3 to 15BC (10 bytes)
_DATA_15B3_:
.db $18 $04 $B6 $2B $61 $17 $4F $1B $01 $00

; 47th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15BD to 15C6 (10 bytes)
_DATA_15BD_:
.db $40 $04 $C0 $2B $61 $17 $55 $1B $00 $00

; 48th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15C7 to 15D0 (10 bytes)
_DATA_15C7_:
.db $20 $04 $D4 $2B $61 $17 $6A $1B $01 $00

; 49th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15D1 to 15DA (10 bytes)
_DATA_15D1_:
.db $20 $04 $DE $2B $61 $17 $70 $1B $01 $00

; 50th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15DB to 15E4 (10 bytes)
_DATA_15DB_:
.db $20 $04 $E8 $2B $61 $17 $76 $1B $01 $00

; 51st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15E5 to 15EE (10 bytes)
_DATA_15E5_:
.db $24 $02 $27 $2A $61 $17 $81 $1B $03 $00

; 52nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15EF to 15F8 (10 bytes)
_DATA_15EF_:
.db $1C $02 $31 $2A $61 $17 $8C $1B $00 $00

; 53rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 15F9 to 1602 (10 bytes)
_DATA_15F9_:
.db $28 $02 $3B $2A $61 $17 $97 $1B $02 $00

; 54th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1603 to 160C (10 bytes)
_DATA_1603_:
.db $60 $02 $4A $2A $79 $17 $A2 $1B $02 $00

; 55th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 160D to 1616 (10 bytes)
_DATA_160D_:
.db $78 $01 $CC $25 $7C $17 $AD $1B $00 $00

; 56th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1617 to 1620 (10 bytes)
_DATA_1617_:
.db $78 $01 $EF $25 $7F $17 $FE $1B $00 $00

; 57th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1621 to 162A (10 bytes)
_DATA_1621_:
.db $78 $01 $12 $26 $84 $17 $4A $1C $00 $00

; 58th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 162B to 1634 (10 bytes)
_DATA_162B_:
.db $78 $01 $35 $26 $89 $17 $96 $1C $00 $00

; 59th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1635 to 163E (10 bytes)
_DATA_1635_:
.db $78 $01 $58 $26 $8C $17 $E2 $1C $00 $00

; 60th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 163F to 1648 (10 bytes)
_DATA_163F_:
.db $78 $01 $7B $26 $95 $17 $2E $1D $00 $00

; 61st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1649 to 1652 (10 bytes)
_DATA_1649_:
.db $78 $01 $9E $26 $A0 $17 $7A $1D $00 $00

; 62nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1653 to 165C (10 bytes)
_DATA_1653_:
.db $78 $01 $C1 $26 $A9 $17 $C6 $1D $00 $00

; 63rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 165D to 1666 (10 bytes)
_DATA_165D_:
.db $78 $01 $E4 $26 $B4 $17 $12 $1E $00 $00

; 64th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1667 to 1670 (10 bytes)
_DATA_1667_:
.db $78 $01 $07 $27 $BB $17 $5E $1E $00 $00

; 65th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1671 to 167A (10 bytes)
_DATA_1671_:
.db $78 $01 $2A $27 $C4 $17 $AA $1E $00 $00

; 66th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 167B to 1684 (10 bytes)
_DATA_167B_:
.db $78 $01 $4D $27 $D3 $17 $F6 $1E $00 $00

; 67th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1685 to 168E (10 bytes)
_DATA_1685_:
.db $78 $01 $70 $27 $EC $17 $42 $1F $00 $00

; 68th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 168F to 1698 (10 bytes)
_DATA_168F_:
.db $78 $01 $93 $27 $05 $18 $8E $1F $00 $00

; 69th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1699 to 16A2 (10 bytes)
_DATA_1699_:
.db $78 $01 $B6 $27 $61 $17 $DA $1F $00 $00

; 70th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16A3 to 16AC (10 bytes)
_DATA_16A3_:
.db $78 $01 $D9 $27 $10 $18 $2B $20 $01 $00

; 71st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16AD to 16B6 (10 bytes)
_DATA_16AD_:
.db $78 $01 $FC $27 $1B $18 $77 $20 $01 $00

; 72nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16B7 to 16C0 (10 bytes)
_DATA_16B7_:
.db $78 $01 $1F $28 $2E $18 $C3 $20 $01 $00

; 73rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16C1 to 16CA (10 bytes)
_DATA_16C1_:
.db $78 $01 $42 $28 $43 $18 $0F $21 $01 $00

; 74th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16CB to 16D4 (10 bytes)
_DATA_16CB_:
.db $78 $01 $65 $28 $56 $18 $5B $21 $01 $00

; 75th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16D5 to 16DE (10 bytes)
_DATA_16D5_:
.db $78 $01 $88 $28 $67 $18 $A7 $21 $01 $00

; 76th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16DF to 16E8 (10 bytes)
_DATA_16DF_:
.db $78 $01 $AB $28 $76 $18 $F3 $21 $01 $00

; 77th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16E9 to 16F2 (10 bytes)
_DATA_16E9_:
.db $78 $01 $CE $28 $83 $18 $3F $22 $01 $00

; 78th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16F3 to 16FC (10 bytes)
_DATA_16F3_:
.db $78 $01 $F1 $28 $92 $18 $8B $22 $01 $00

; 79th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 16FD to 1706 (10 bytes)
_DATA_16FD_:
.db $78 $01 $14 $29 $A3 $18 $D7 $22 $01 $00

; 80th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1707 to 1710 (10 bytes)
_DATA_1707_:
.db $78 $01 $37 $29 $BA $18 $23 $23 $01 $00

; 81st entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1711 to 171A (10 bytes)
_DATA_1711_:
.db $78 $01 $5A $29 $CD $18 $6F $23 $01 $00

; 82nd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 171B to 1724 (10 bytes)
_DATA_171B_:
.db $78 $01 $7D $29 $DE $18 $BB $23 $01 $00

; 83rd entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1725 to 172E (10 bytes)
_DATA_1725_:
.db $78 $01 $A0 $29 $ED $18 $07 $24 $01 $00

; 84th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 172F to 1738 (10 bytes)
_DATA_172F_:
.db $78 $01 $C3 $29 $FE $18 $53 $24 $01 $00

; 85th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1739 to 1742 (10 bytes)
_DATA_1739_:
.db $26 $01 $E6 $29 $61 $17 $9F $24 $03 $00

; 86th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 1743 to 174C (10 bytes)
_DATA_1743_:
.db $26 $01 $E6 $29 $61 $17 $A0 $24 $03 $00

; 87th entry of Pointer Table from 1343 (indexed by _RAM_DE52_ROOM_NR)
; Data from 174D to 2ACB (4991 bytes)
_DATA_174D_:
.incbin "HOTL_mod_DATA_174D_.inc"

; Data from 2ACC to 2BF1 (294 bytes)
_DATA_2ACC_:
.dsb 15, $00
.db $04
.dsb 11, $00
.db $01 $02 $03 $00 $00 $04 $00 $00 $01 $01 $01 $02 $03 $03 $03 $03
.db $03 $00 $01 $01 $01 $01 $04 $01 $01 $01 $01 $01 $02 $03 $03 $03
.db $05 $01 $01 $06 $00 $03 $03 $03 $03 $03 $00 $01 $01 $01 $01 $01
.db $06 $01 $02 $03 $01 $01 $07 $01 $01 $04
.dsb 20, $01
.db $07 $00 $03 $03 $05 $01 $07 $01 $07 $01 $07 $01 $07 $01 $01 $01
.db $00 $03 $03 $05 $01 $01 $01 $00 $03 $03 $03 $03 $03 $05 $01 $01
.db $01 $00 $03 $03 $03 $03 $03 $05 $01 $01 $01 $00 $03 $03 $03 $03
.db $03 $05 $01 $01 $01 $01 $01 $02 $03 $03 $03 $01 $01 $01 $01 $01
.db $01 $04 $01 $07 $01 $01 $00 $03 $03 $03 $08 $01 $01 $01 $07 $00
.db $03 $03 $03 $03 $00 $01 $07 $01 $09 $03 $03 $03 $03 $03 $08
.dsb 10, $01
.db $07 $00 $03 $03 $00 $07 $01 $01 $01 $01 $01 $09 $03 $03 $00 $07
.db $01 $01 $09 $03 $03 $03 $03 $03 $08 $01 $01 $01 $01 $00 $03 $03
.db $03 $03 $08 $01 $01 $01 $01 $01 $01 $01 $07 $01 $01 $07 $01 $01
.db $07 $00 $03 $03 $03 $03 $00 $01 $01 $01 $01 $01 $01 $09 $03 $03
.db $00 $01 $01 $01 $01 $01 $01 $09 $03 $03 $00 $0A $01 $01 $01 $01
.db $01 $09 $03 $03

_LABEL_2BF2_CLEAR_INRAMSAT:	;SEEMS TO DO HOUSEKEEPING OF THE INRAM SAT VALUES. THERE ARE TWO TABLES. IF THIS IS DISABLED, I CAN'T SEE ANY MAJOR DIFFERENCE. PROBABLY HERE TO BE SAFE, OR THERE IS A BUG ALONG THE WAY THAT THIS FIXES.
	xor a
	ld (_RAM_DEB5_), a
	ld hl, _RAM_D400_
	ld de, _RAM_D400_ + 1
	ld bc, $00FF
	ld (hl), $D0	;THIS SEEMS LIKE THE INRAM SAT TABLE.
	ldir
	ld hl, $0000
	ld (_RAM_DE42_), hl
	ld hl, _RAM_D900_
	ld de, _RAM_D900_ + 1
	ld bc, $014F
	ld (hl), $00
	ldir
	call _LABEL_2C1A_
	;NOP
	;NOP
	;NOP
	
	ret

_LABEL_2C1A_:
	ld a, (_RAM_DEB5_)
	xor $40
	ld (_RAM_DEB5_), a
	ld de, $0000
	ld hl, _RAM_D400_
	jr z, +
	ld de, $0800
+:
	ld (_RAM_DEB3_), de
	ld (_RAM_DEA9_), hl
	ld hl, (_RAM_DE42_)
	ld (_RAM_DE44_), hl
	ld hl, _RAM_D900_
	ld de, _RAM_DA50_
	ld bc, $0150
	ldir
	ret

; Data from 2C46 to 2C53 (14 bytes)
.db $AF $32 $B5 $DE $3E $D0 $32 $00 $D4 $C9 $CD $E2 $2D $C9

_LABEL_2C54_:
	ld hl, (_RAM_DEA9_)
	ld (hl), $D0
	ld (_RAM_DEAB_), hl
	ld de, $0080
	add hl, de
	ld (_RAM_DEAD_), hl
	ld a, (_RAM_DEB5_)
	xor $40
	ld (_RAM_DEAF_), a
	ld ix, _RAM_DA50_
	ld b, $0C
-:
	push ix
	push bc
	ld a, (_RAM_DEAF_)
	and $3F
	ld c, a
	ld a, (ix+12)
	and a
	jr z, ++
	add a, c
	cp $40
	jr c, +
	ld a, $40
	sub c
	ld (ix+12), a
	call +++
	pop bc
	pop ix
	ret

+:
	call +++
++:
	pop bc
	pop ix
	ld de, $001C
	add ix, de
	djnz -
	ret

; Data from 2CA0 to 2CA6 (7 bytes)
.db $16 $00 $CB $7B $C8 $15 $C9

+++:
	ld l, (ix+16)
	ld h, (ix+17)
	ld de, (_RAM_DE34_)
	and a
	sbc hl, de
	ld (_RAM_DEA1_), hl
	ld l, (ix+18)
	ld h, (ix+19)
	ld de, (_RAM_DE36_)
	and a
	sbc hl, de
	ld (_RAM_DEA3_), hl
	ld a, (ix+4)
	ld (_RAM_DEB6_), a
	ld e, (ix+13)
	ld d, (ix+14)
	ld a, (ix+15)
	ld (_RAM_FFFF_), a
	push de
	pop iy
	ld d, $00
	ld hl, (_RAM_DEA1_)
	ld a, (_RAM_DEB6_)
	and a
	jr z, +
	ld e, (ix+20)
	add hl, de
	ld e, $08
	and a
	sbc hl, de
	jr ++

+:
	ld e, (ix+20)
	and a
	sbc hl, de
++:
	ld e, $08
	add hl, de
	ld (_RAM_DEA5_), hl
	ld hl, (_RAM_DEA3_)
	ld e, (ix+21)
	and a
	sbc hl, de
	ld (_RAM_DEA7_), hl
	ld b, (ix+12)
	exx
	ld hl, (_RAM_DEAB_)
	ld de, (_RAM_DEAD_)
	ld a, (_RAM_DEAF_)
	ld c, a
	exx
	ld a, (_RAM_DEB6_)
	and a
	jp nz, _LABEL_2D7E_
_LABEL_2D21_:
	ld d, $00
	ld hl, (_RAM_DEA7_)
	ld a, l
	ld e, (iy+3)
	add hl, de
	ld e, a
	ld a, l
	inc h
	jr z, +
	dec h
	jr z, ++
	jr +++

+:
	cp $F8
	jr nc, ++++
	jr +++

++:
	bit 7, a
	jr nz, +++
	cp $C8
	jr c, ++++
+++:
	exx
	inc c
	exx
	jr +++++

++++:
	exx
	ld (hl), a
	inc hl
	exx
	ld hl, (_RAM_DEA5_)
	ld e, (iy+2)
	add hl, de
	ld a, h
	and a
	ld a, l
	jr z, +
	exx
	dec hl
	inc c
	exx
	jr +++++

+:
	exx
	ld (de), a
	inc de
	ld a, c
	ld (de), a
	inc c
	inc de
	exx
+++++:
	ld e, $04
	add iy, de
	dec b
	jp nz, _LABEL_2D21_
	exx
	ld (hl), $D0
	ld (_RAM_DEAB_), hl
	ld (_RAM_DEAD_), de
	ld a, c
	ld (_RAM_DEAF_), a
	exx
	ret

_LABEL_2D7E_:
	ld d, $00
	ld hl, (_RAM_DEA7_)
	ld a, l
	ld e, (iy+3)
	add hl, de
	ld e, a
	ld a, l
	inc h
	jr z, +
	dec h
	jr z, ++
	jr +++

; Data from 2D92 to 2D93 (2 bytes)
.db $18 $13

+:
	cp $F8
	jr nc, ++++
	jr +++

++:
	bit 7, a
	jr nz, +++
	cp $C8
	jr c, ++++
+++:
	exx
	inc c
	exx
	jr +++++

++++:
	exx
	ld (hl), a
	inc hl
	exx
	ld hl, (_RAM_DEA5_)
	ld e, (iy+2)
	and a
	sbc hl, de
	ld e, $08
	add hl, de
	ld a, h
	and a
	ld a, l
	jr z, +
	exx
	dec hl
	inc c
	exx
	jr +++++

+:
	exx
	ld (de), a
	inc de
	ld a, c
	ld (de), a
	inc c
	inc de
	exx
+++++:
	ld e, $04
	add iy, de
	dec b
	jp nz, _LABEL_2D7E_
	exx
	ld (hl), $D0
	ld (_RAM_DEAB_), hl
	ld (_RAM_DEAD_), de
	ld a, c
	ld (_RAM_DEAF_), a
	exx
	ret

_LABEL_2DE2_:
	ld hl, (_RAM_DEB3_)
	ld de, $0020
	ld bc, $0004
	exx
	ld ix, _RAM_D900_
	ld hl, _RAM_D000_
	ld (_RAM_DEB7_), hl
	ld b, $0C
	ld c, $00
-:
	push bc
	push ix
	call +
	pop ix
	pop bc
	ld a, (ix+12)
	add a, c
	ld c, a
	cp $40
	ret nc
	ld de, $001C
	add ix, de
	djnz -
	ret

+:
	ld (ix+12), $00
	ld a, (ix+9)
	and a
	ret z
	ld c, a
	ld hl, (_RAM_DE34_)
	ld de, $0040
	and a
	sbc hl, de
	jr nc, +
	ld hl, $0000
+:
	ex de, hl
	ld l, (ix+0)
	ld h, (ix+1)
	and a
	sbc hl, de
	ret c
	ld de, $0180
	sbc hl, de
	ret nc
	ld l, c
	ld h, $00
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	ld a, $08
	ld (_RAM_FFFF_), a
	ld de, _DATA_20000_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld a, (hl)
	ld (ix+15), a
	ld (_RAM_FFFF_), a
	ld a, (ix+7)
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	ex de, hl
	ld h, b
	ld l, c
	sbc hl, de
	ret c
	ex de, hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld (ix+12), b
	ld (ix+13), e
	ld (ix+14), d
	inc hl
	ld a, (hl)
	inc hl
	ld (ix+20), a
	inc hl
	ld a, (hl)
	ld (ix+21), a
	push de
	pop iy
	ld hl, (_RAM_DEB7_)
	ld c, (ix+4)
-:
	ld a, (iy+0)
	and $E0
	ld e, a
	ld d, (iy+1)
	ld (hl), c
	inc hl
	ld a, (iy+0)
	xor e
	ld (hl), a
	inc hl
	ld (hl), e
	inc hl
	ld (hl), d
	inc hl
	exx
	add iy, bc
	add hl, de
	exx
	djnz -
	ld (hl), $AA
	ld (_RAM_DEB7_), hl
	ret

_LABEL_2EB1_:
	ld hl, _RAM_D000_
	ld (_RAM_DEB7_), hl
	ld c, Port_VDPAddress
	ld hl, (_RAM_DEB3_)
	out (c), l
	ld a, h
	set 6, a
	out (Port_VDPAddress), a
	ld de, $0020
	jr _LABEL_2EDF_

_LABEL_2EC8_:
	ld hl, _RAM_D000_
	ld (_RAM_DEB7_), hl
_LABEL_2ECE_:
	ld c, Port_VDPAddress
	ld hl, (_RAM_DEB3_)
	di
	out (c), l
	ld a, h
	set 6, a
	out (Port_VDPAddress), a
	ei
	ld de, $0020
_LABEL_2EDF_:
	exx
	ld hl, (_RAM_DEB7_)
	ld a, (hl)
	cp $AA
	ret z
	inc hl
	ld c, a
	ld a, (hl)
	inc hl
	add a, $0B
	ld (_RAM_FFFF_), a
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (_RAM_DEB7_), hl
	ex de, hl
	ld a, c
	and a
	jr nz, +
	ld bc, $4000 | Port_VDPData
-:
	outi
	djnz -
	exx
	add hl, de
	djnz _LABEL_2EDF_
	ld (_RAM_DEB3_), hl
	ret

+:
	ld d, $01
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	ld e, (hl)
	ld a, (de)
	inc l
	out (Port_VDPData), a
	exx
	add hl, de
	dec b
	jp nz, _LABEL_2EDF_
	ld (_RAM_DEB3_), hl
	ret

_LABEL_2FB7_:
	xor a
	ld d, a
	out (Port_VDPAddress), a
	ld a, $7F
	out (Port_VDPAddress), a
	ld bc, $4000 | Port_VDPData
	ld e, b
	ld hl, (_RAM_DEA9_)
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	inc a
	out (Port_VDPAddress), a
	dec a
	out (Port_VDPAddress), a
	add hl, de
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	ret

_LABEL_314E_:
	ld ix, _RAM_DA50_
	ld b, $0C
	ld de, $001C
_LABEL_3157_:
	exx
	ld a, (ix+12)
	and a
	jp z, _LABEL_31D7_
	ld a, (ix+26)
	and a
	jr z, +++
	ld h, (ix+17)
	ld l, (ix+16)
	ld d, (ix+1)
	ld e, (ix+0)
	and a
	ld c, l
	ld b, h
	inc h
	inc d
	sbc hl, de
	jr z, +++
	jr nc, +
	ld e, a
	ld d, $00
	ld hl, (_RAM_DEB9_)
	add hl, de
	ld l, (hl)
	ld h, d
	add hl, bc
	jr ++

+:
	ld e, a
	ld d, $00
	ld hl, (_RAM_DEB9_)
	add hl, de
	ld e, (hl)
	ld h, b
	ld l, c
	and a
	sbc hl, de
++:
	ld (ix+17), h
	ld (ix+16), l
+++:
	ld a, (ix+27)
	and a
	jr z, _LABEL_31D7_
	ld h, (ix+19)
	ld l, (ix+18)
	ld d, (ix+3)
	ld e, (ix+2)
	and a
	ld b, h
	ld c, l
	inc h
	inc d
	sbc hl, de
	jr z, _LABEL_31D7_
	jr nc, +
	ld e, a
	ld d, $00
	ld hl, (_RAM_DEB9_)
	add hl, de
	ld l, (hl)
	ld h, d
	add hl, bc
	jr ++

+:
	ld e, a
	ld d, $00
	ld hl, (_RAM_DEB9_)
	add hl, de
	ld e, (hl)
	ld h, b
	ld l, c
	and a
	sbc hl, de
++:
	ld (ix+19), h
	ld (ix+18), l
_LABEL_31D7_:
	exx
	add ix, de
	dec b
	jp nz, _LABEL_3157_
	ret

_LABEL_31DF_:
	ld ix, _RAM_D900_
	ld b, $0C
-:
	push bc
	ld (ix+26), $00
	ld (ix+27), $00
	ld a, (ix+12)
	and a
	jp z, +
	ld h, (ix+1)
	ld l, (ix+0)
	ld d, (ix+17)
	ld e, (ix+16)
	call ++
	ld (ix+26), l
	ld h, (ix+3)
	ld l, (ix+2)
	ld d, (ix+19)
	ld e, (ix+18)
	call ++
	ld (ix+27), l
+:
	pop bc
	ld de, $001C
	add ix, de
	dec b
	jp nz, -
	ret

++:
	and a
	inc h
	inc d
	sbc hl, de
	jr nc, +
	ex de, hl
	ld hl, $0000
	and a
	sbc hl, de
+:
	ld a, h
	and a
	ret z
	ld l, $FF
	ret

_LABEL_3238_:
	ld b, $0C
	ld de, $001C
	ld ix, _RAM_D900_
-:
	ld a, (ix+0)
	ld (ix+16), a
	ld a, (ix+1)
	ld (ix+17), a
	ld a, (ix+2)
	ld (ix+18), a
	ld a, (ix+3)
	ld (ix+19), a
	add ix, de
	djnz -
	ret

_LABEL_325E_:
	ld c, $F0
	jr +

_LABEL_3262_:
	ld c, $F4
+:
	ld ix, _RAM_D100_
	ld a, e
	sub $04
	and $F0
	ld e, a
	ld (ix+16), e
	ld (ix+17), d
	ld (ix+18), $60
	ld (ix+19), $00
	ld a, $08
	ld (_RAM_FFFF_), a
	ld hl, (_DATA_20000_)
	ld b, $04
	push hl
	pop iy
	ld de, $0004
	exx
	ld hl, (_RAM_DE36_)
	ld a, l
	and $F8
	ld l, a
	ld e, (ix+18)
	ld d, (ix+19)
	and a
	ex de, hl
	sbc hl, de
	ld a, l
	and $F8
	ld l, a
	ld c, l
	ld b, h
	ld de, (_RAM_DE34_)
	ld l, (ix+16)
	ld h, (ix+17)
	and a
	sbc hl, de
	ex de, hl
	ld h, $00
	exx
	ld de, $FFFF
_LABEL_32B8_:
	exx
	ld l, (iy+2)
	ld a, l
	ld (_RAM_DE6A_), a
	add hl, de
	ld a, h
	and a
	jr nz, _LABEL_332E_
	exx
	ld a, (iy+3)
	cp d
	jr nz, +
	ld a, (_RAM_DE6A_)
	sub $08
	cp e
	jr z, _LABEL_333D_
+:
	exx
	ld a, (_RAM_DE4A_)
	srl l
	srl l
	add a, l
	and $3E
	ex af, af'
	ld l, (iy+3)
	add hl, bc
	ld a, h
	and a
	jr nz, _LABEL_332E_
	ld a, l
	cp $D9
	jr nc, _LABEL_332E_
	and $F8
	exx
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, (_RAM_DE4C_)
	res 6, d
	add hl, de
	ld a, h
	cp $3F
	jr c, +
	sub $07
+:
	or $40
	ld h, a
	ex af, af'
	ld e, a
	ld d, $00
	add hl, de
-:
	di
	ld a, l
	out (Port_VDPAddress), a
	ld a, h
	out (Port_VDPAddress), a
	ei
	ld a, c
	ld de, $0004
	out (Port_VDPData), a
	ld e, $04
	ld a, $09
	inc c
	out (Port_VDPData), a
	ld a, (iy+3)
	add iy, de
	ld d, a
	ld a, (_RAM_DE6A_)
	ld e, a
	djnz _LABEL_32B8_
	ret

_LABEL_332E_:
	ld h, $00
	exx
	inc c
	ld de, $0004
	add iy, de
	dec d
	dec b
	jp nz, _LABEL_32B8_
	ret

_LABEL_333D_:
	ld a, l
	and $3E
	cp $3E
	jr z, +
	inc l
	inc l
	jr -

+:
	xor l
	ld l, a
	jr -

_LABEL_334C_DECOMPRESS_ART:	;$14 OR $01 AT FIRST. 0001 0100 OR 0000 0001
	push af
	call _LABEL_4BB_VDP_RAM_WRITE
	pop af
	ld l, a
	ld a, $19		;SELECT BANK 25.
	ld (_RAM_FFFF_), a	;BANKSWITCH.
	ld h, $00
	add hl, hl	;0010
	add hl, hl	;0100
	add hl, hl	;0000 1000	WE ROLL SOME BYTES IN L.
	ld de, _DATA_64000_
	add hl, de	;64008
	ld de, _RAM_D120_
	ld bc, $0008
	ldir		;COPY EIGHT BYTES TO RAM.
	ld ix, _RAM_D120_	;LOAD IT INTO THE INDEX REG.
	ld h, (ix+0)		;$80
	ld l, (ix+1)		;$C0	SET UP A SOURCE ADDRESS. HL IS $80C0.
	ld b, (ix+2)		;$02
	ld c, (ix+3)		;$1D	SET UP THE BYTE AMOUNT.	BC IS $021D.
	dec bc			;$1C
	ld e, $20		;021C
	ld iy, _RAM_D100_
	ld a, (ix+6)	;$D126
	add a, $19	;We calculate the correct bank to switch to.
	ld (_RAM_FFFF_), a
	cp $20
	jp nc, _LABEL_3503_JUST_RET
	ld a, (hl)
	ld (_RAM_DEE4_), a
	inc hl
	dec bc
	ld a, (ix+7)
	cp $02
	jp z, _LABEL_34DA_
	cp $03
	jp z, _LABEL_341D_
	and a
	jp nz, _LABEL_33A6_DECOMPRESS
	jp _LABEL_3498_

_LABEL_33A6_DECOMPRESS:
;If this is commented out from running, the intro's pictures are not showing properly, and the game's collision detection would break.
;
	ld d, (hl)
	inc hl
	dec bc
	ld a, (_RAM_DEE4_)
	cp d
	jr z, +
	ld (iy+0), d
	inc iy
	dec e
	call z, _LABEL_33F6_
---:
	ld a, b
	inc a
	jr nz, _LABEL_33A6_DECOMPRESS
	ld b, (ix+4)
	ld c, (ix+5)
	ld a, b
	or c
	ret z
	dec bc
	ld a, (ix+6)
	add a, $19
	inc a
	ld (_RAM_FFFF_), a
	ld (ix+4), $00
	ld (ix+5), $00
	ld hl, $8000
	jp _LABEL_33A6_DECOMPRESS

--:
	inc hl
	dec bc
	inc hl
	dec bc
	jr ---

+:
	inc hl
	ld d, (hl)
	inc d
	dec hl
-:
	dec d
	jr z, --
	ld a, (hl)
	ld (iy+0), a
	inc iy
	dec e
	call z, _LABEL_33F6_
	jr -

_LABEL_33F6_:
	ld iy, _RAM_D100_
	push bc
	ld b, $08
-:
	ld a, (iy+0)
	out (Port_VDPData), a
	ld a, (iy+8)
	out (Port_VDPData), a
	ld a, (iy+16)
	out (Port_VDPData), a
	ld a, (iy+24)
	out (Port_VDPData), a
	inc iy
	djnz -
	pop bc
	ld e, $20
	ld iy, $D100
	ret

_LABEL_341D_:
	ld e, $03
----:
	ld d, (hl)
	inc hl
	dec bc
	ld a, (_RAM_DEE4_)
	cp d
	jr z, +
	ld (iy+0), d
	inc iy
	dec e
	call z, _LABEL_346F_
---:
	ld a, b
	inc a
	jr nz, ----
	ld b, (ix+4)
	ld c, (ix+5)
	ld a, b
	or c
	ret z
	dec bc
	ld a, (ix+6)
	add a, $19
	inc a
	ld (_RAM_FFFF_), a
	ld (ix+4), $00
	ld (ix+5), $00
	ld hl, $8000
	jp ----

--:
	inc hl
	dec bc
	inc hl
	dec bc
	jr ---

+:
	inc hl
	ld d, (hl)
	inc d
	dec hl
-:
	dec d
	jr z, --
	ld a, (hl)
	ld (iy+0), a
	inc iy
	dec e
	call z, _LABEL_346F_
	jr -

_LABEL_346F_:
	ld iy, _RAM_D100_
	ld a, (iy+0)
	out (Port_VDPData), a
	ld a, (iy+2)
	and $0F
	out (Port_VDPData), a
	ld a, (iy+1)
	out (Port_VDPData), a
	ld a, (iy+2)
	srl a
	srl a
	srl a
	srl a
	out (Port_VDPData), a
	ld e, $03
	ld iy, $D100
	ret

_LABEL_3498_:
	ld d, (hl)
	inc hl
	dec bc
	ld a, (_RAM_DEE4_)
	cp d
	jr z, +
	ld a, d
	out (Port_VDPData), a
---:
	ld a, b
	inc a
	jr nz, _LABEL_3498_
	ld b, (ix+4)
	ld c, (ix+5)
	ld a, b
	or c
	ret z
	ld a, (ix+6)
	add a, $19
	inc a
	ld (_RAM_FFFF_), a
	ld (ix+4), $00
	ld (ix+5), $00
	ld hl, $8000
	jp _LABEL_3498_

--:
	inc hl
	dec bc
	inc hl
	dec bc
	jr ---

+:
	inc hl
	ld d, (hl)
	inc d
	dec hl
-:
	dec d
	jr z, --
	ld a, (hl)
	out (Port_VDPData), a
	jr -

_LABEL_34DA_:
	ld a, (hl)
	inc hl
	dec bc
	out (Port_VDPData), a
	ld a, b
	inc a
	jr nz, _LABEL_34DA_
	ld b, (ix+4)
	ld c, (ix+5)
	ld a, b
	or c
	ret z
	ld a, (ix+6)
	add a, $19
	inc a
	ld (_RAM_FFFF_), a
	ld (ix+4), $00
	ld (ix+5), $00
	ld hl, $8000
	jp _LABEL_34DA_

_LABEL_3503_JUST_RET:
	ret

_LABEL_3504_CHAR_BIOS:
;THIS SHOWS THE PLAYABLE CHARACTERS BIOS BEFORE WE GO INTO THE MAIN GAME.
	ld a, $1F
	ld (_RAM_FFFF_), a	;BANK 31.
	ld hl, _DATA_7C000_CHAR_BIO_TEXT
	ld de, $2800
	ld bc, $0C00
	di
	call _LABEL_48C_LOAD_VDP_DATA
	;SHOWING THE TEXT FIRST
	ei
	ld hl, $0140
	ld (_RAM_DE62_), hl
	ld hl, _DATA_366C_CHAR_DATA
_LABEL_3520_CHAR_SHOW:	;THIS SHOWS THE COMPANIONS, AND SHOWS BIOS, PICTURES AND SO ON.
	ld a, (hl)
	inc hl
	and a
	jr z, _LABEL_3581_JUSTRET	;IF THIS IS ZERO, JUST RETURN, AND START THE GAME.
	push hl
	ld hl, $0000
	call _LABEL_334C_DECOMPRESS_ART	;TILES
	pop hl
	ld a, (hl)
	inc hl
	push hl
	ld hl, $3800
	call _LABEL_334C_DECOMPRESS_ART	;TILEMAP
	pop hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	push hl
	ex de, hl
	ld de, _RAM_C040_INRAM_PAL
	ld bc, $0010
	ldir
	ld hl, _DATA_3D8_CHAR_PALS
	ld bc, $0010
	ldir
	ld hl, _RAM_C040_INRAM_PAL
	call _LABEL_4CF_LOAD2PALS	;LOAD PALS INTO RAM, AND THEN INTO VRAM.
	pop hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	push hl
	ld a, d
	or e
	jr z, +
	call _LABEL_35A6_
+:
	ld de, _DATA_A73A_TEXT	
	call _LABEL_35A6_	;PRINTS THE PRESS BUTTON TEXT.
-:
	call _LABEL_59B_MAIN
	call _LABEL_552_CHECK_AB_BUTTONS	;CHECK FOR ANY AB BUTTON PRESS.
	ld a, (_RAM_DE95_GAMEPAD)
	ld b, a
	ld a, (_RAM_DE94_GAMEPAD)
	or b
	jr z, -
	push bc
	call _LABEL_4F9_PALETTE
	pop bc
	pop hl
	ld a, b
	and a
	jp z, _LABEL_3520_CHAR_SHOW
_LABEL_3581_JUSTRET:
	ret

_LABEL_3582_:
	ex de, hl
	ld hl, _RAM_DE66_
	ld b, $2F
-:
	inc b
	sub $64
	jr nc, -
	add a, $64
	ld (hl), b
	inc hl
	ld b, $2F
-:
	inc b
	sub $0A
	jr nc, -
	add a, $0A
	ld (hl), b
	inc hl
	add a, $30
	ld (hl), a
	inc hl
	ld (hl), $FF
	ex de, hl
	ld de, _RAM_DE66_
_LABEL_35A6_:	;HL 3C00 DE $FF
	ld a, r	;GET A VALUE FROM THE R REGISTER...
	jp po, +
	di
	call _LABEL_4BB_VDP_RAM_WRITE
	ei
	jr ++

+:
	call _LABEL_4BB_VDP_RAM_WRITE
++:
	ld c, l
	ld b, h
	ld a, (_RAM_FFFF_)
	push af
	ld a, $02	;BANKSWITCH.
	ld (_RAM_FFFF_), a
	call _LABEL_35C8_
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_35C8_:
	ld a, (de)
	inc de
	cp $FF
	ret z
	cp $FE
	jr z, _LABEL_3615_
	cp $0D
	jr z, _LABEL_3624_
	cp $0E
	jr z, _LABEL_361D_
	cp $41
	jr c, +
	cp $5B
	jr nc, +
	sub $41
	jr _LABEL_362D_

+:
	cp $61
	jr c, +
	cp $7B
	jr nc, +
	sub $41
	jr _LABEL_362D_

+:
	cp $30
	jr c, +
	cp $3A
	jr nc, +
	add a, $10
	jr _LABEL_362D_

+:
	ld hl, _DATA_3645_
	push bc
	ld b, a
-:
	ld a, (hl)
	inc hl
	cp $FF
	jr z, ++
	cp b
	jr nz, +
	ld a, (hl)
	pop bc
	jr _LABEL_362D_

+:
	inc hl
	jr -

++:
	pop bc
	jr _LABEL_35C8_

_LABEL_3615_:
	ld a, (de)
	ld l, a
	inc de
	ld a, (de)
	ld h, a
	inc de
	jr _LABEL_35A6_

_LABEL_361D_:
	ld l, c
	ld h, b
	ld bc, $0042
	jr +

_LABEL_3624_:
	ld l, c
	ld h, b
	ld bc, $0040
+:
	add hl, bc
	jp _LABEL_35A6_

_LABEL_362D_:
	ld l, a
	ld a, (_RAM_DE62_)
	add a, l
	ld l, a
	ld a, (_RAM_DE63_)
	adc a, $00
	ld h, a
	ld a, l
	out (Port_VDPData), a
	neg
	ld a, h
	or $08
	out (Port_VDPData), a
	jr _LABEL_35C8_

; Data from 3645 to 366B (39 bytes)
_DATA_3645_:
.db $20 $3F $3A $1C $27 $1F $26 $3A $2E $1D $2C $1E $2B $1A $2D $1B
.db $3F $3B $22 $3C $21 $3D $2F $3E $00 $4A $01 $4B $02 $4C $03 $4D
.db $04 $4E $05 $4F $06 $50 $FF

; Data from 366C to 369D (50 bytes)
_DATA_366C_CHAR_DATA:
.db $05 $04 $E8 $03 $DB $A0 $07 $06 $F8 $03 $2C $A5 $09 $08 $08 $04
.db $A1 $A1 $0B $0A $18 $04 $46 $A3 $0D $0C $28 $04 $00 $A0 $0F $0E
.db $38 $04 $21 $A6 $11 $10 $48 $04 $3A $A4 $13 $12 $58 $04 $76 $A2
.db $00 $00

_LABEL_369E_:
	call _LABEL_7565_
	call _LABEL_3CCF_
	exx
	ld hl, $0000
	ld (_RAM_DE5B_), hl
	ld de, $001C
	exx
	ld b, $05
	ld de, (_RAM_D900_)
	ld ix, _RAM_D91C_
_LABEL_36B9_:
	ld a, (ix+9)
	and a
	jr z, ++
	ld a, (ix+10)
	cp $11
	jr z, ++
	ld l, (ix+0)
	ld h, (ix+1)
	and a
	sbc hl, de
	push hl
	exx
	pop bc
	exx
	jr nc, +
	push de
	ld de, $0000
	ex de, hl
	and a
	sbc hl, de
	pop de
+:
	ld a, h
	and a
	jr nz, ++
	ld a, l
	cp $78
	jr nc, ++
	cp $38
	jr nc, +
	ld a, (ix+9)
	cp $13
	jr z, +
	ld hl, $0001
	ld (_RAM_DE5B_), hl
+:
	exx
	add hl, bc
	exx
++:
	exx
	add ix, de
	exx
	djnz _LABEL_36B9_
	exx
	ld bc, (_RAM_D900_)
	sra h
	rr l
	sra h
	rr l
	sra h
	rr l
	add hl, bc
	ld c, l
	ld b, h
	xor a
	ld (_RAM_DE42_), a
	ld de, (_RAM_DE34_)
	ld hl, $0070
	add hl, de
	and a
	sbc hl, bc
	jr c, ++
	ld a, l
	cp $10
	ret c
	cp $20
	ld a, $FF
	jr c, +
	ld a, $FE
+:
	ld (_RAM_DE42_), a
	ret

++:
	ld hl, $0090
	add hl, de
	and a
	sbc hl, bc
	ret nc
	ld a, l
	cp $F0
	ld a, $01
	jr nc, +
	ld a, $02
+:
	ld (_RAM_DE42_), a
	ret

_LABEL_374B_:
	call _LABEL_552_CHECK_AB_BUTTONS
	ld a, (_RAM_DE54_)
	and a
	jr z, +
	xor a
	ld (_RAM_DE95_GAMEPAD), a
	ld (_RAM_DE94_GAMEPAD), a
	ld (_RAM_DE90_), a
+:
	ld ix, _RAM_D900_
	ld a, (_RAM_DE95_GAMEPAD)
	and a
	jr z, _LABEL_3786_
	ld a, (ix+10)
	cp $05
	jr z, _LABEL_3786_
	ld a, (_RAM_DEBB_DEBUG)
	and a
	jr nz, +
	call _LABEL_7A14_
	ld a, (_RAM_DE52_ROOM_NR)
	inc a
	ld (_RAM_DE52_ROOM_NR), a
	pop hl
	jp _LABEL_726_

+:
	call _LABEL_5C07_
_LABEL_3786_:
	ld ix, _RAM_D900_
	ld c, (ix+0)
	ld b, (ix+1)
	ld a, (ix+9)
	dec a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_51FD_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (ix+10)
	and a
	jp z, _LABEL_3938_
	ld e, a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld e, (hl)
	ld a, e
	ld (_RAM_DE6E_), a
	inc hl
	ld a, (ix+11)
	cp e
	call z, _LABEL_53F6_
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc a
	jp nz, _LABEL_3887_
_LABEL_37C8_:
	ld a, (ix+10)
	cp $04
	jr nz, +
	ld a, (ix+4)
	xor $01
	ld (ix+4), a
	jp _LABEL_3876_

+:
	cp $12
	jp z, _LABEL_3B6E_
	cp $13
	jp z, _LABEL_3B77_
	cp $0F
	jp nz, _LABEL_3876_
	ld a, (_RAM_DE54_)
	and a
	jr z, _LABEL_3839_
	ld a, (ix+0)
	cp $C0
	jr nc, +
	ld (ix+11), $00
	jp _LABEL_3786_

+:
	pop hl
	xor a
	ld (_RAM_DE54_), a
	pop hl
	pop de
	pop bc
	pop af
	ld (_RAM_D900_), hl
	ld (_RAM_D910_), hl
	ld (_RAM_DE34_), de
	ld (_RAM_DE52_ROOM_NR), bc
	ld (_RAM_D904_), a
	ld (ix+2), $74
	ld (ix+3), $00
	ld (ix+18), $74
	ld (ix+19), $00
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	call _LABEL_5B9D_
	jp _LABEL_726_

_LABEL_3839_:
	ld hl, _RAM_DEBD_
	ld de, _RAM_DEBC_INRAM_HUD_PORTRAITS
	ld bc, $0007
	ld a, (de)
	ldir
	ld (_RAM_DEC3_), a
	call _LABEL_7E74_
	ld (hl), $00
	ld bc, (_RAM_DE6F_)
	ld (ix+16), c
	ld (ix+17), b
	ld (ix+0), c
	ld (ix+1), b
	ld (ix+2), $74
	ld (ix+18), $74
	ld (ix+3), $00
	ld (ix+19), $00
	xor a
	ld (_RAM_DE90_), a
	ld a, $06
	ld (_RAM_DE96_), a
_LABEL_3876_:
	ld a, (ix+10)
	ld (_RAM_DE6A_), a
	ld (ix+10), $00
	ld (ix+11), $00
	jp _LABEL_3938_

_LABEL_3887_:
	ld a, (ix+10)
	cp $04
	jr nc, ++
	ld a, (_RAM_DE90_)
	ld e, a
	ld a, (_RAM_DE93_)
	cp e
	jr z, ++
	ld a, (ix+10)
	cp $02
	jp nz, +
	ld a, (_RAM_DE94_GAMEPAD)
	and a
	jr z, +
	ld (ix+10), $05
	ld (ix+11), $00
	ld a, (_RAM_DE90_)
	jp _LABEL_3786_

+:
	jp _LABEL_37C8_

++:
	inc (ix+11)
	ld a, (hl)
	ld (ix+7), a
	inc hl
	ld a, (hl)
	ld l, $00
	cp $63
	jr z, +
	ld l, a
	ld a, (ix+4)
	and a
	jr z, +
	ld a, l
	neg
	ld l, a
+:
	ld a, l
	cp $80
	ccf
	sbc a, a
	ld h, a
	ld a, (ix+10)
	cp $0F
	jr nz, ++
	push hl
	bit 7, h
	jr z, +
	ld de, $0000
	ex de, hl
	and a
	sbc hl, de
+:
	ld e, (ix+2)
	ld d, (ix+3)
	ld a, (_RAM_DE54_)
	and a
	jr z, +
	sra h
	rr l
+:
	ex de, hl
	add hl, de
	ld (ix+2), l
	ld (ix+3), h
	ex de, hl
	pop hl
++:
	add hl, bc
	ld (ix+0), l
	ld (ix+1), h
	ld a, (_RAM_DE54_)
	and a
	ret nz
	ld de, (_RAM_DE34_)
	and a
	sbc hl, de
	ld a, h
	and a
	jr nz, +
	ld a, l
	cp $10
	jr c, +
	cp $F0
	jr nc, +
	ret

+:
	ld (ix+0), c
	ld (ix+1), b
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	ret

_LABEL_3938_:
	ld (ix+7), $00
	ld a, (_RAM_DE90_)
	ld (_RAM_DE93_), a
	call _LABEL_3C89_
	ld a, (_RAM_DE91_)
	bit 4, a
	jr nz, ++
	xor a
	ld (_RAM_DE5D_), a
	ld hl, _DATA_3B65_
_LABEL_3953_:
	ld a, e
	and $0F
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	bit 7, a
	jr z, +
	inc a
	jp z, _LABEL_3C32_
	inc a
	jp z, _LABEL_3C43_
	inc a
	ret nz
	ld (ix+10), $04
	ld (ix+11), $00
	jp _LABEL_3786_

+:
	ld (ix+10), a
	and a
	jp nz, _LABEL_3786_
	ret

++:
	ld hl, (_RAM_DE5B_)
	ld a, h
	or l
	jr z, +
	ld a, $01
	ld (_RAM_DE5D_), a
	ld hl, _DATA_3B5C_
	jp _LABEL_3953_

+:
	ld a, (_RAM_DE5D_)
	and a
	jp nz, _LABEL_3B2E_
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	call _LABEL_6573_
	ld bc, _RAM_DBB1_
	add hl, bc
	ld c, l
	ld b, h
	ld a, (hl)
	and a
	jp z, _LABEL_3B2E_
	bit 7, a
	jp nz, _LABEL_3B2E_
	ld a, (_RAM_DEF4_)
	dec a
	ld a, (hl)
	jr nz, +
	and $7F
	cp $01
	jr nz, +
	ld hl, _DATA_3B4A_
	jr ++

+:
	and $7F
	cp $01
	jr nz, +
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	and a
	jp nz, _LABEL_3B2E_
+:
	ld hl, _DATA_3B41_
++:
	ld a, e
	and $0F
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	ld (ix+10), a
	cp $15
	jp z, _LABEL_3A4A_
	cp $0D
	jp nz, _LABEL_3786_
	ld a, e
	sub $03
	add a, a
	ld d, a
	ld l, c
	ld h, b
	ld a, (hl)
	cp $28
	jp z, _LABEL_3A92_
	cp $03
	jp z, _LABEL_3A92_
	cp $02
	jr z, +
	cp $01
	jr z, _LABEL_3A54_
	cp $09
	jr z, _LABEL_3A71_
	cp $06
	jp z, _LABEL_3A88_
	cp $0B
	jp z, _LABEL_3A66_
	jp _LABEL_3786_

+:
	ld a, (_RAM_DEE6_)
	inc a
	jp z, _LABEL_3786_
	dec a
	cp $FD
	jr nz, +
	ld a, $01
	ld (_RAM_DEF2_), a
	ld b, $08
	ld hl, _RAM_DBB4_
	ld de, $0027
-:
	ld (hl), $00
	inc hl
	ld (hl), $00
	add hl, de
	djnz -
	jp _LABEL_3786_

+:
	ld b, a
	ld a, (_RAM_DEE7_)
	bit 7, a
	jr z, ++
	inc a
	ld (_RAM_DEE7_), a
	jr nz, +
	dec a
	ld (_RAM_DEE6_), a
+:
	xor a
++:
	call _LABEL_597A_
	jp _LABEL_3786_

_LABEL_3A4A_:
	ld l, c
	ld h, b
	ld (hl), $00
	ld b, $0F
	ld l, $2C
	jr _LABEL_3AA1_

_LABEL_3A54_:
	ld a, (_RAM_DEE8_)
	inc a
	jp z, _LABEL_3786_
	dec a
	ld b, a
	ld a, (_RAM_DEE9_)
	call _LABEL_5999_
	jp _LABEL_3786_

_LABEL_3A66_:
	ld (hl), $00
	ld b, $0D
	ld l, $24
	ld a, $05
	jp ++

_LABEL_3A71_:
	ld (hl), $00
	ld b, $0B
	ld l, $2C
	jr _LABEL_3AA1_

-:
	inc hl
	inc hl
	dec (hl)
	ret nz
	dec hl
	dec hl
	set 7, (hl)
	inc hl
	ld (hl), $00
	inc hl
	ld (hl), $00
	ret

_LABEL_3A88_:
	call -
	dec hl
	ld b, $0C
	ld l, $20
	jr _LABEL_3AA1_

_LABEL_3A92_:
	call -
	dec hl
	ld b, $00
	ld a, (hl)
	cp $0F
	jr nz, +
	ld b, $01
+:
	ld l, $24
_LABEL_3AA1_:
	ld a, $04
++:
	ld c, $18
	ld e, $0C
	ld h, $18
	call _LABEL_3AAF_
	jp _LABEL_3786_

_LABEL_3AAF_:
	ld iy, _RAM_D9A8_
	push af
	push bc
	push de
	ld de, $001C
	ld b, $06
-:
	ld a, (iy+9)
	cp $14
	jr nz, +
	add iy, de
	djnz -
	pop de
	pop bc
	ld iy, _RAM_D9A8_
	ld a, b
	cp $0F
	jr z, ++
	pop af
	ret

+:
	pop de
	pop bc
++:
	pop af
	ld (iy+25), a
	ld (iy+7), $FF
	ld (iy+24), b
	ld (iy+9), $14
	ld (iy+8), e
	ld (iy+23), d
	ld a, (ix+4)
	ld (iy+4), a
	and a
	jr z, +
	ld a, h
	neg
	ld h, a
	ld a, c
	neg
	ld c, a
+:
	ld (iy+22), h
	ld a, (ix+2)
	sub l
	ld (iy+2), a
	ld (iy+18), a
	ld a, (ix+3)
	sbc a, $00
	ld (iy+3), a
	ld (iy+19), a
	ld l, (ix+0)
	ld h, (ix+1)
	ld a, c
	and $80
	add a, a
	sbc a, $00
	ld b, a
	add hl, bc
	ld (iy+0), l
	ld (iy+16), l
	ld (iy+1), h
	ld (iy+17), h
	ret

_LABEL_3B2E_:
	ld a, (_RAM_DE6A_)
	and a
	jr nz, +
	ld (ix+10), $06
	jp _LABEL_3786_

+:
	ld hl, _DATA_3B53_
	jp _LABEL_3953_

; Data from 3B41 to 3B49 (9 bytes)
_DATA_3B41_:
.db $0C $0C $0D $0D $0D $0B $0C $0C $0C

; Data from 3B4A to 3B52 (9 bytes)
_DATA_3B4A_:
.db $14 $14 $15 $15 $15 $0B $14 $14 $14

; Data from 3B53 to 3B5B (9 bytes)
_DATA_3B53_:
.db $10 $10 $10 $10 $10 $0B $10 $10 $10

; Data from 3B5C to 3B64 (9 bytes)
_DATA_3B5C_:
.db $00 $00 $08 $09 $0A $0B $03 $03 $03

; Data from 3B65 to 3B6D (9 bytes)
_DATA_3B65_:
.db $00 $FF $02 $01 $01 $FE $00 $FD $00

_LABEL_3B6E_:
	ld b, $01
	call _LABEL_3C54_
	ld b, $00
	jr +

_LABEL_3B77_:
	ld b, $02
	call _LABEL_3C54_
	ld b, $02
+:
	jp z, _LABEL_3876_
	call _LABEL_7A14_
	ld a, (hl)
	and $04
	jr z, +
	ld a, $FF
	ld (_RAM_DE54_), a
+:
	ld a, (hl)
	and $10
	jr z, +
	ld a, (_RAM_DE55_WATERFALL)
	or $01
	ld (_RAM_DE55_WATERFALL), a
+:
	ld a, (_RAM_DE53_COMPASS)
	inc a
	and $02
	xor $02
	xor b
	ld b, a
	inc hl
	ld a, (hl)
	ld (_RAM_DE52_ROOM_NR), a
	push hl
	ld hl, _DATA_1343_LVL_POINTERS - 2
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, $0008
	add hl, de
	ld a, (hl)
	pop hl
	and $02
	xor b
	rrca
	ld (ix+4), a
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	inc hl
	ld l, (hl)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (_RAM_D900_), hl
	ld (_RAM_D910_), hl
	ld de, $0080
	and a
	sbc hl, de
	jr nc, +
	ld hl, $0000
+:
	ld (_RAM_DE34_), hl
	pop hl
	ld a, (_RAM_DE54_)
	and a
	jp z, _LABEL_726_
	ld hl, (_RAM_D900_)
	ld de, (_RAM_DE34_)
	ld bc, (_RAM_DE52_ROOM_NR)
	ld a, (_RAM_D904_)
	push af
	push bc
	push de
	push hl
	xor a
	ld (_RAM_D904_), a
	ld bc, $0057
	ld (_RAM_DE52_ROOM_NR), bc
	ld de, $0000
	ld (_RAM_DE34_), de
	ld hl, $0000
	ld (_RAM_D900_), hl
	ld (_RAM_D910_), hl
	ld a, $0F
	ld (_RAM_D90A_), a
	ld hl, $0040
	ld (_RAM_D902_), hl
	ld (_RAM_D912_), hl
	jp _LABEL_726_

_LABEL_3C32_:
	ld b, $01
	call _LABEL_3C54_
	ret z
	ld (ix+10), $12
	ld (ix+11), $00
	jp _LABEL_3786_

_LABEL_3C43_:
	ld b, $02
	call _LABEL_3C54_
	ret z
	ld (ix+10), $13
	ld (ix+11), $00
	jp _LABEL_3786_

_LABEL_3C54_:
	ld hl, (_RAM_D900_)
	call _LABEL_7AE7_
	ld c, l
	ld hl, (_RAM_DE60_)
-:
	ld e, l
	ld d, h
	ld a, (hl)
	and a
	jr z, +++
	dec a
	cp c
	jr nc, ++
	inc hl
	ld a, (hl)
	cp c
	jr c, ++
	inc hl
	bit 7, (hl)
	jr z, +
	ld a, (_RAM_DE71_)
	and a
	jr z, ++
+:
	ld a, (hl)
	and b
	cp b
	jr nz, ++
	ld a, $01
	and a
	ret

++:
	ld hl, $0005
	add hl, de
	jr -

+++:
	xor a
	ret

_LABEL_3C89_:
	ld a, (_RAM_DE90_)
	ld e, a
	and $0A
	srl a
	xor e
	and $05
	ld d, a
	add a, a
	or d
	or $F0
	ld d, a
	ld a, e
	and d
	ld e, a
	ld d, e
	ld a, (ix+4)
	and a
	jr z, +
	ld a, e
	and $03
	ld e, a
	srl e
	add a, a
	and $02
	or e
	ld e, a
	ld a, d
	and $FC
	or e
	ld e, a
+:
	push hl
	ld hl, _DATA_3CC4_
	ld a, e
	and $0F
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	ld e, (hl)
	pop hl
	ret

; Data from 3CC4 to 3CCE (11 bytes)
_DATA_3CC4_:
.db $00 $03 $07 $00 $05 $04 $06 $00 $01 $02 $08

_LABEL_3CCF_:
	ld ix, _RAM_D91C_
	ld b, $05
-:
	ld a, (ix+9)
	and a
	jr z, +
	push bc
	call ++
	pop bc
+:
	ld de, $001C
	add ix, de
	djnz -
	ret

++:
	cp $09
	ret c
	cp $13
	jp z, _LABEL_3DFD_
	ld a, (_RAM_DEF2_)
	cp $1E
	jr c, ++
	ld a, (ix+9)
	cp $15
	jr nz, +
	ld a, (ix+24)
	ld (ix+9), a
+:
	ld a, (ix+10)
	cp $11
	jp z, _LABEL_3D99_
	ld (ix+10), $11
	ld (ix+5), $00
	ld (ix+22), $00
	ld (ix+23), $00
	ld a, (ix+9)
	call _LABEL_6DC9_
	jp _LABEL_3D99_

++:
	ld a, (ix+5)
	and a
	jr z, _LABEL_3D38_
	dec (ix+5)
	ld a, (ix+10)
	cp $0F
	ret c
	ld (ix+5), $00
_LABEL_3D38_:
	ld l, (ix+22)
	ld h, (ix+23)
	ld a, h
	or l
	jr z, _LABEL_3D99_
	ld a, h
	and $7F
	ld b, h
	ld h, a
	dec hl
	ld a, h
	or l
	jr z, +
	ld a, b
	and $80
	or h
	ld (ix+23), a
	ld (ix+22), l
	ld a, (ix+10)
	cp $11
	ret nz
	ld (ix+22), $00
	ld (ix+23), $00
	bit 7, b
	jr z, _LABEL_3D99_
	ld a, (ix+24)
	ld (ix+9), a
	ld (ix+11), $00
	ld (ix+7), $00
	jr _LABEL_3D99_

+:
	bit 7, b
	jr z, +
	ld a, (ix+7)
	add a, $09
	ld (ix+9), a
+:
	ld (ix+22), $00
	ld (ix+23), $00
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	ret

_LABEL_3D99_:
	ld a, (ix+10)
	and a
	jr nz, ++
	ld l, (ix+0)
	ld h, (ix+1)
	ld c, l
	ld b, h
	ld de, (_RAM_DE34_)
	and a
	sbc hl, de
	jr c, +
	ld de, $0120
	sbc hl, de
	ret nc
	jr ++

+:
	ld de, $0020
	add hl, de
	ret nc
-:
	ld a, (ix+6)
	and a
	jr z, +++
	call _LABEL_3F7E_
	jp _LABEL_3F5A_

++:
	ld a, (ix+10)
	cp $02
	jr z, -
	jp nc, _LABEL_3F7E_
+++:
	ld hl, _DATA_3DE7_
	ld a, (ix+9)
	sub $09
	add a, a
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

; Jump Table from 3DE7 to 3DFC (11 entries, indexed by _RAM_D941_)
_DATA_3DE7_:
.dw _LABEL_3E5E_ _LABEL_3E5E_ _LABEL_3E5E_ _LABEL_3E5E_ _LABEL_3E59_ _LABEL_3E5E_ _LABEL_3E5E_ _LABEL_3E5E_
.dw _LABEL_3E5E_ _LABEL_3E5E_ _LABEL_3DFD_

; 11th entry of Jump Table from 3DE7 (indexed by _RAM_D941_)
_LABEL_3DFD_:
	xor a
	ld (_RAM_DEF3_), a
	ld (_RAM_D920_), a
	ld a, (_RAM_DEF4_)
	and a
	jr nz, +
	ld a, $01
	ld (_RAM_DEF4_), a
	ld hl, (_RAM_DE3E_)
	ld (_RAM_DE3C_), hl
	ld hl, $0240
	ld (_RAM_DE3E_), hl
+:
	ld (ix+10), $00
	ld (ix+11), $00
	ld a, (ix+7)
	and a
	jr z, +
	dec (ix+5)
	ret nz
	ld (ix+7), $00
	ld a, $04
	call _LABEL_652_
	inc a
	ld (ix+5), a
	ret

+:
	dec (ix+5)
	ret nz
	ld (ix+7), $01
	ld (ix+5), $0C
	ld d, $00
	ld a, $01
	ld c, $0C
	ld e, $0C
	ld l, $40
	ld h, $00
	ld b, $0E
	call _LABEL_3AAF_
	ret

; 5th entry of Jump Table from 3DE7 (indexed by _RAM_D941_)
_LABEL_3E59_:
	ld a, $02
	call _LABEL_2FF_
; 1st entry of Jump Table from 3DE7 (indexed by _RAM_D941_)
_LABEL_3E5E_:
	ld l, (ix+0)
	ld h, (ix+1)
	ld de, (_RAM_D900_)
	and a
	sbc hl, de
	jr nc, +
	ld de, $0000
	ex de, hl
	and a
	sbc hl, de
+:
	ld a, (ix+9)
	dec a
	ld e, a
	add a, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld iy, _DATA_4EC4_
	add iy, de
	ld e, (iy+0)
	ld d, $00
	ld c, (iy+1)
	ld b, $00
	and a
	sbc hl, de
	jr c, +
	sbc hl, bc
	jp nc, _LABEL_3EF2_
	jp _LABEL_3EA0_

+:
	add hl, bc
	jp nc, ++
_LABEL_3EA0_:
	ld a, (_RAM_DEF3_)
	and a
	jr z, +
	call _LABEL_3F5A_
	jp _LABEL_3F7E_

+:
	ld a, $0C
	call _LABEL_652_
	add a, $03
	ld (ix+10), a
	ld (ix+11), $00
	call _LABEL_3F67_
	jp _LABEL_3F7E_

++:
	ld de, $0008
	add hl, de
	jr c, _LABEL_3EA0_
	ld a, (ix+10)
	ld (ix+10), $02
	cp $02
	jr z, +
	ld (ix+11), $00
	ld (ix+6), $00
+:
	ld bc, $FFFC
	ld a, (ix+4)
	and a
	jr z, +
	ld bc, $0004
+:
	call _LABEL_3F18_
	ld a, (ix+10)
	and a
	jp nz, _LABEL_3F7E_
	jp _LABEL_3EA0_

_LABEL_3EF2_:
	ld a, (ix+10)
	cp $01
	jr z, +
	ld (ix+10), $01
	ld (ix+11), $00
+:
	ld a, (_RAM_DEF3_)
	and a
	jr z, +
	call _LABEL_3F5A_
	jr ++

+:
	call _LABEL_3F67_
	ld bc, $0004
	call _LABEL_3F18_
++:
	jp _LABEL_3F7E_

_LABEL_3F18_:
	ld a, (_RAM_DE6C_)
	bit 7, a
	jr nz, _LABEL_3F5A_
	ld a, (ix+4)
	and a
	jr z, +
	ld a, c
	neg
	ld c, a
	ld a, b
	cpl
	ld b, a
+:
	ld l, (ix+0)
	ld h, (ix+1)
	ld de, $0008
	add hl, de
	add hl, bc
	call _LABEL_7AE7_
	ld a, (ix+9)
	ld c, $00
	cp $12
	jr nz, +
	ld c, $01
+:
	ld de, (_RAM_DE5E_)
-:
	ld a, (de)
	and a
	jr z, +
	ld h, a
	inc de
	ld a, (de)
	inc de
	add a, c
	cp l
	jr c, -
	ld a, h
	dec a
	cp l
	jr nc, -
_LABEL_3F5A_:
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+6), $00
+:
	ret

_LABEL_3F67_:
	ld (ix+4), $00
	ld l, (ix+0)
	ld h, (ix+1)
	ld de, (_RAM_D900_)
	and a
	sbc hl, de
	ret c
	ld (ix+4), $01
	ret

_LABEL_3F7E_:
	ld c, (ix+0)
	ld b, (ix+1)
	ld a, (ix+9)
	dec a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_51FD_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (ix+10)
	and a
	jr nz, +
	ld (ix+7), $00
	ld (ix+11), $00
	ret

+:
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld e, (hl)
	inc hl
	ld a, (ix+11)
	cp e
	call z, _LABEL_53F6_
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc a
	jr nz, ++
	ld a, (ix+10)
	cp $11
	jr nz, +
	ld (ix+9), $00
	ret

+:
	ld a, (ix+6)
	and a
	jr z, +
	dec a
	ld (ix+6), a
	ld (ix+11), $00
	jp _LABEL_3D38_

+:
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	jp _LABEL_3D38_

++:
	inc (ix+11)
	ld a, (hl)
	ld (ix+7), a
	inc hl
	ld a, (hl)
	ld l, $00
	cp $63
	jr z, +
	ld l, a
	ld a, (ix+4)
	and a
	jr z, +
	ld a, l
	neg
	ld l, a
+:
	ld a, l
	cp $80
	ccf
	sbc a, a
	ld h, a
	add hl, bc
	ld a, h
	inc a
	ret z
	ld (ix+0), l
	ld (ix+1), h
	ld bc, $FFFC
	ld a, (ix+10)
	cp $02
	jp z, _LABEL_3F18_
	ret

; Data from 4020 to 4EC3 (3748 bytes)
.incbin "HOTL_mod_DATA_4020_.inc"

; Data from 4EC4 to 4F22 (95 bytes)
_DATA_4EC4_:
.db $10 $10 $2D $18 $0A $12 $1D $2A $1E $0B $15 $1A $2A $1D $0B $10
.db $10 $2D $18 $0A $12 $1D $2A $1E $0B $10 $10 $24 $14 $07 $12 $1D
.db $2A $1E $0B $10 $10 $1C $15 $05 $0B $0A $27 $17 $07 $2E $08 $27
.db $17 $07 $0A $0C $29 $1B $0F $08 $0C $14 $14 $14 $0B $0A $29 $1E
.db $0B $06 $04 $1B $16 $16 $06 $04 $18 $0D $0D $0B $0A $29 $1E $0B
.db $09 $08 $15 $15 $15 $1C $20 $26 $16 $26 $40 $08 $26 $16 $16

; 1st entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 4F23 to 4F4E (44 bytes)
_DATA_4F23_:
.db $20 $40 $24 $40 $34 $40 $46 $40 $56 $40 $5C $40 $72 $40 $76 $40
.db $7A $40 $84 $40 $8E $40 $98 $40 $9C $40 $A0 $40 $AA $40 $AE $40
.db $BC $40 $C0 $40 $C4 $40 $CA $40 $D0 $40 $D4 $40

; 2nd entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 4F4F to 4F7A (44 bytes)
_DATA_4F4F_:
.db $E0 $40 $E4 $40 $F6 $40 $08 $41 $1A $41 $20 $41 $3A $41 $40 $41
.db $46 $41 $54 $41 $60 $41 $6E $41 $72 $41 $76 $41 $82 $41 $86 $41
.db $94 $41 $98 $41 $9C $41 $A2 $41 $A8 $41 $AC $41

; 3rd entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 4F7B to 4FA6 (44 bytes)
_DATA_4F7B_:
.db $BA $41 $BE $41 $D0 $41 $E2 $41 $F4 $41 $FA $41 $14 $42 $1A $42
.db $20 $42 $2A $42 $32 $42 $3A $42 $3E $42 $42 $42 $4E $42 $52 $42
.db $60 $42 $64 $42 $68 $42 $6E $42 $74 $42 $78 $42

; 4th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 4FA7 to 4FD2 (44 bytes)
_DATA_4FA7_:
.db $84 $42 $88 $42 $9A $42 $AC $42 $BE $42 $C4 $42 $E8 $42 $EC $42
.db $F0 $42 $FA $42 $04 $43 $0E $43 $12 $43 $16 $43 $26 $43 $2A $43
.db $38 $43 $3C $43 $40 $43 $46 $43 $4C $43 $6C $43

; 5th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 4FD3 to 4FFE (44 bytes)
_DATA_4FD3_:
.db $70 $43 $74 $43 $86 $43 $98 $43 $AA $43 $B0 $43 $CA $43 $D0 $43
.db $D6 $43 $DE $43 $E6 $43 $EE $43 $F2 $43 $F6 $43 $02 $44 $06 $44
.db $14 $44 $18 $44 $1C $44 $22 $44 $28 $44 $42 $44

; 6th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 4FFF to 502A (44 bytes)
_DATA_4FFF_:
.db $76 $44 $7A $44 $8C $44 $9E $44 $B0 $44 $B6 $44 $CC $44 $D0 $44
.db $D4 $44 $E0 $44 $EC $44 $F8 $44 $FC $44 $04 $45 $12 $45 $16 $45
.db $24 $45 $28 $45 $2C $45 $32 $45 $38 $45 $38 $45

; 7th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 502B to 5056 (44 bytes)
_DATA_502B_:
.db $60 $45 $64 $45 $76 $45 $88 $45 $9A $45 $A0 $45 $BA $45 $C0 $45
.db $C6 $45 $D0 $45 $D8 $45 $E0 $45 $E4 $45 $E8 $45 $F4 $45 $F8 $45
.db $06 $46 $0A $46 $0E $46 $14 $46 $1A $46 $1E $46

; 8th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 5057 to 5082 (44 bytes)
_DATA_5057_:
.db $2C $46 $30 $46 $42 $46 $54 $46 $66 $46 $6C $46 $82 $46 $86 $46
.db $8A $46 $96 $46 $A4 $46 $B0 $46 $B4 $46 $B8 $46 $C8 $46 $CC $46
.db $DA $46 $DE $46 $E2 $46 $E8 $46 $EE $46 $EE $46

; 9th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 5083 to 50A6 (36 bytes)
_DATA_5083_:
.db $04 $47 $08 $47 $1A $47 $2C $47 $38 $47 $46 $47 $4E $47 $5A $47
.db $66 $47 $72 $47 $80 $47 $8E $47 $9A $47 $A8 $47 $AE $47 $B4 $47
.db $B8 $47 $C0 $47

; 10th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 50A7 to 50CA (36 bytes)
_DATA_50A7_:
.db $00 $48 $04 $48 $16 $48 $28 $48 $32 $48 $3C $48 $46 $48 $50 $48
.db $5A $48 $64 $48 $6E $48 $78 $48 $82 $48 $8C $48 $94 $48 $9C $48
.db $A4 $48 $AC $48

; 11th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 50CB to 50EE (36 bytes)
_DATA_50CB_:
.db $0C $4B $10 $4B $22 $4B $34 $4B $40 $4B $4E $4B $5E $4B $6A $4B
.db $78 $4B $88 $4B $94 $4B $A2 $4B $AA $4B $BA $4B $C4 $4B $CC $4B
.db $D0 $4B $D8 $4B

; 12th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 50EF to 5112 (36 bytes)
_DATA_50EF_:
.db $E4 $4B $EC $4B $F4 $4B $FC $4B $06 $4C $10 $4C $1A $4C $24 $4C
.db $2E $4C $38 $4C $42 $4C $4C $4C $56 $4C $60 $4C $6A $4C $74 $4C
.db $7C $4C $84 $4C

; 13th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 5113 to 5136 (36 bytes)
_DATA_5113_:
.db $8A $4C $8E $4C $A0 $4C $B2 $4C $C0 $4C $CE $4C $DC $4C $E6 $4C
.db $F4 $4C $00 $4D $0C $4D $16 $4D $24 $4D $2E $4D $34 $4D $3A $4D
.db $3E $4D $46 $4D

; 14th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 5137 to 515A (36 bytes)
_DATA_5137_:
.db $D8 $48 $DC $48 $EE $48 $00 $49 $08 $49 $10 $49 $18 $49 $20 $49
.db $28 $49 $30 $49 $38 $49 $40 $49 $48 $49 $50 $49 $5C $49 $6A $49
.db $70 $49 $78 $49

; 15th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 515B to 517E (36 bytes)
_DATA_515B_:
.db $86 $49 $8A $49 $9C $49 $AE $49 $BA $49 $C6 $49 $D2 $49 $DE $49
.db $E6 $49 $EE $49 $F6 $49 $02 $4A $0E $4A $1A $4A $20 $4A $28 $4A
.db $2E $4A $36 $4A

; 16th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 517F to 51A2 (36 bytes)
_DATA_517F_:
.db $44 $4A $48 $4A $5A $4A $6C $4A $7A $4A $88 $4A $96 $4A $A0 $4A
.db $AE $4A $BA $4A $C6 $4A $D0 $4A $DE $4A $E8 $4A $EE $4A $F4 $4A
.db $F8 $4A $00 $4B

; 17th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 51A3 to 51C6 (36 bytes)
_DATA_51A3_:
.db $54 $4D $58 $4D $62 $4D $6A $4D $76 $4D $82 $4D $8E $4D $9A $4D
.db $A6 $4D $B2 $4D $BE $4D $CA $4D $D6 $4D $E2 $4D $EA $4D $F2 $4D
.db $F6 $4D $FE $4D

; 18th entry of Pointer Table from 51FD (indexed by _RAM_D909_)
; Data from 51C7 to 51FC (54 bytes)
_DATA_51C7_:
.db $0C $4E $10 $4E $EB $51 $34 $4E $3E $4E $48 $4E $52 $4E $5C $4E
.db $66 $4E $70 $4E $7A $4E $84 $4E $8E $4E $98 $4E $A0 $4E $A8 $4E
.db $B0 $4E $B8 $4E $FF $07 $F4 $06 $F4 $00 $F4 $05 $F4 $04 $F4 $03
.db $F4 $02 $F4 $01 $F4 $FF

; Pointer Table from 51FD to 5222 (19 entries, indexed by _RAM_D909_)
_DATA_51FD_:
.dw _DATA_4F23_ _DATA_4F4F_ _DATA_4F7B_ _DATA_4FA7_ _DATA_4FD3_ _DATA_4FFF_ _DATA_502B_ _DATA_5057_
.dw _DATA_5083_ _DATA_50A7_ _DATA_50CB_ _DATA_50EF_ _DATA_5113_ _DATA_5137_ _DATA_515B_ _DATA_517F_
.dw _DATA_51A3_ _DATA_51C7_ _DATA_51C7_

_LABEL_5223_:
	ld hl, (_RAM_D900_)
	call _LABEL_7AE7_
	ld c, l
	ld ix, _RAM_DCE0_
_LABEL_522E_:
	ld l, (ix+0)
	ld h, (ix+1)
	ld a, h
	or l
	ret z
	ld a, (hl)
	cp $46
	jp z, _LABEL_5321_
	cp $47
	jr z, _LABEL_5294_
	ld a, (_RAM_D90A_)
	cp $05
	jp z, _LABEL_539C_
	inc hl
	inc hl
	ld a, (hl)
	cp c
	jp nz, _LABEL_539C_
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	cp $05
	jr nz, +++
	ld a, $64
	call _LABEL_652_
	cp $46
	jr nc, +++
	dec hl
	dec hl
	ld a, (hl)
	cp $48
	jr nz, ++
	push ix
	push bc
	push de
	ld ix, _RAM_D9A8_
	ld b, $06
-:
	ld a, (ix+24)
	cp $13
	jr nz, +
	ld (ix+9), $00
+:
	add ix, de
	djnz -
	pop de
	pop bc
	pop ix
++:
	ld (hl), $00
	call _LABEL_799A_
	jp _LABEL_5BA2_

+++:
	dec hl
	dec hl
	ld a, (hl)
	cp $47
	jp nz, _LABEL_52D5_
_LABEL_5294_:
	push ix
	ld a, $20
	call _LABEL_652_
	and a
	jr nz, +
	inc hl
	inc hl
	ld a, (hl)
	ld ix, _RAM_D100_
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (ix+0), l
	ld (ix+1), h
	ld hl, (_RAM_D902_)
	ld (ix+2), l
	ld (ix+3), h
	ld (ix+4), $00
	ld b, $12
	ld a, $02
	ld c, $00
	ld e, $28
	ld h, $00
	ld d, $00
	ld l, $28
	call _LABEL_3AAF_
+:
	pop ix
	jp _LABEL_539C_

_LABEL_52D5_:
	cp $48
	jp nz, _LABEL_531C_
	ld hl, _RAM_D900_
	ld de, _RAM_D100_
	ld bc, $001C
	ldir
	ld ix, _RAM_D100_
	ld l, (ix+0)
	ld h, (ix+1)
	ld de, $0100
	and a
	sbc hl, de
	jr nc, +
	ld hl, $0000
+:
	ld (ix+0), l
	ld (ix+1), h
	ld (ix+4), $00
	ld b, $13
	ld a, $20
	call _LABEL_652_
	and $18
	add a, $10
	ld l, a
	ld a, $02
	ld c, $00
	ld h, $20
	ld e, $10
	ld d, c
	jp _LABEL_3AAF_

_LABEL_531C_:
	cp $46
	jp nz, _LABEL_536C_
_LABEL_5321_:
	push ix
	ld a, (_RAM_DE58_)
	inc a
	ld (_RAM_DE58_), a
	and $3F
	cp $30
	jr nc, +
	and $03
	jr nz, +
	inc hl
	inc hl
	ld a, (hl)
	ld ix, _RAM_D100_
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (ix+0), l
	ld (ix+1), h
	ld hl, (_RAM_D902_)
	ld (ix+2), l
	ld (ix+3), h
	ld b, $14
	ld a, $01
	ld c, $00
	ld e, $08
	ld h, $00
	ld d, $EC
	ld l, $00
	call _LABEL_3AAF_
	ld a, $03
	call _LABEL_2FF_
+:
	pop ix
	jp _LABEL_539C_

_LABEL_536C_:
	jp nz, +
	ret

+:
	ld (hl), $00
	ld b, $10
	cp $44
	jr nz, +
	inc b
+:
	ld a, (_RAM_D904_)
	push af
	xor a
	ld (_RAM_D904_), a
	ld l, $64
	ld d, $10
	ld a, $02
	ld c, $F8
	ld e, $07
	ld h, $00
	ld ix, $D900
	call _LABEL_3AAF_
	pop af
	ld (_RAM_D904_), a
	call _LABEL_799A_
	ret

_LABEL_539C_:
	inc ix
	inc ix
	jp _LABEL_522E_

_LABEL_53A3_:
	ld a, (_RAM_D90A_)
	cp $05
	jr nz, +
	ld a, (ix+11)
	ld b, a
	ld a, (_RAM_DE6E_)
	cp b
	ret nc
	jr ++

+:
	cp $0F
	ret z
++:
	ld a, (_RAM_DE6C_)
	bit 6, a
	ret nz
	ld hl, (_RAM_D900_)
	ld de, $0008
	add hl, de
	call _LABEL_7AE7_
	ld de, (_RAM_DE5E_)
-:
	ld a, (de)
	and a
	jr z, +
	cp $02
	sbc a, $00
	ld h, a
	inc de
	ld a, (de)
	dec a
	inc de
	cp l
	jr c, -
	ld a, h
	cp l
	jr nc, -
	ld ix, _RAM_D900_
	ld (ix+11), $00
	ld (ix+10), $0F
	jp _LABEL_3786_

+:
	ld hl, (_RAM_D900_)
	ld (_RAM_DE6F_), hl
	ret

_LABEL_53F6_:
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a, (ix+9)
	ld b, a
	dec a
	ld e, a
	add a, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld hl, _DATA_4EC4_
	add hl, de
	push hl
	pop iy
	ld a, b
	cp $09
	jp nc, _LABEL_5573_
	ld a, (ix+10)
	cp $05
	jp z, _LABEL_5442_
	ld ix, _RAM_D91C_
	ld b, $05
-:
	ld a, (ix+9)
	and a
	jr z, +
	ld a, (ix+10)
	cp $11
	jr z, +
	ld a, (ix+9)
	cp $13
	push bc
	jr nz, ++
_LABEL_543A_:
	pop bc
+:
	ld de, $001C
	add ix, de
	djnz -
_LABEL_5442_:
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret

++:
	ld hl, (_RAM_D900_)
	ld e, (iy+0)
	ld d, $00
	ld a, (_RAM_D904_)
	and a
	jr z, +
	sbc hl, de
	jr ++

+:
	add hl, de
++:
	and a
	ld e, (iy+1)
	sbc hl, de
	ld c, l
	ld b, h
	add hl, de
	add hl, de
	ld e, (ix+0)
	ld d, (ix+1)
	ld a, e
	sub c
	ld a, d
	sbc a, b
	jr c, _LABEL_543A_
	push hl
	push de
	ex de, hl
	and a
	sbc hl, de
	pop de
	pop hl
	jr nc, _LABEL_543A_
	ld a, (ix+9)
	call _LABEL_5851_
	ld l, a
	ld a, (_RAM_D90A_)
	sub $08
	ld h, (iy+2)
	jr z, +
	ld h, (iy+3)
	dec a
	jr z, +
	ld h, (iy+4)
+:
	ld a, h
	cp l
	jr nc, _LABEL_543A_
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	cp $02
	jr nz, +
	ld a, (ix+9)
	cp $0C
	jp z, _LABEL_543A_
	cp $0D
	jp z, _LABEL_543A_
+:
	ld a, $08
	call _LABEL_652_
	inc a
	ld c, a
	ld a, (_RAM_DEEE_)
	and a
	jr z, +
	inc c
	inc c
+:
	ld a, (_RAM_DEF1_)
	and a
	jr z, +
	dec a
	ld (_RAM_DEF1_), a
	ld a, c
	add a, $07
	ld c, a
+:
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	call _LABEL_6573_
	ld de, _RAM_DBB9_
	add hl, de
	ld e, (hl)
	ld d, $00
	ld hl, _DATA_5800_
	add hl, de
	ld a, (hl)
	add a, c
	ld c, a
	call _LABEL_54ED_
	ld a, $01
	call _LABEL_2FF_
	pop bc
	jp _LABEL_5442_

_LABEL_54ED_:
	ld a, (ix+9)
	cp $15
	ld a, c
	jr z, +
	ld a, (ix+9)
	cp $0B
	ld a, c
	jr z, +
	cp $04
	jr c, +
	ld (ix+11), $00
	ld (ix+10), $0F
	ld (ix+6), $03
	cp $07
	jr nc, +
	ld (ix+10), $02
	ld (ix+6), $01
	ld (ix+4), $00
	ld l, (ix+0)
	ld h, (ix+1)
	ld de, (_RAM_D900_)
	and a
	sbc hl, de
	jr c, +
	ld (ix+4), $01
+:
	xor a
	ld (_RAM_DEF3_), a
	ld a, (ix+8)
	sub c
	ld (ix+8), $00
	jr nc, ++
	ld (ix+10), $11
	ld (ix+6), $00
	ld a, (ix+9)
	cp $15
	jr nz, +
	ld a, (ix+24)
	ld (ix+9), a
+:
	call _LABEL_6DC9_
	ld a, (ix+9)
	cp $0A
	jr nz, +
	ld b, $0A
	ld d, $00
	ld c, $04
	ld e, $12
	ld l, $18
	ld h, $10
	ld a, $14
	jp _LABEL_3AAF_

+:
	ret

++:
	ld (ix+8), a
	ret

_LABEL_5573_:
	ld a, (_RAM_DEF2_)
	and a
	jp nz, _LABEL_5442_
	ld a, (_RAM_D90A_)
	cp $0F
	jp z, _LABEL_5442_
	ld a, (ix+9)
	cp $0A
	jr nz, +
	ld a, (ix+10)
	cp $11
	jp z, ++
	ld a, $03
	call _LABEL_652_
	dec a
	add a, a
	ld d, a
	ld a, $01
	ld c, $0C
	ld e, $14
	ld l, $20
	ld h, $14
	ld b, $0A
	call _LABEL_3AAF_
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	ld a, $08
	call _LABEL_652_
	inc a
	ld (ix+5), a
	jp _LABEL_5442_

+:
	cp $13
	jr nz, ++
	jp _LABEL_5442_

++:
	ld l, (ix+0)
	ld h, (ix+1)
	and a
	ld de, (_RAM_D900_)
	sbc hl, de
	jr nc, +
	ld de, $0000
	ex de, hl
	and a
	sbc hl, de
+:
	ld e, (iy+0)
	ld d, $00
	and a
	sbc hl, de
	jr z, ++
	jr nc, +
	ld e, (iy+1)
	add hl, de
	jp nc, _LABEL_5442_
	jr ++

+:
	ld e, (iy+1)
	and a
	sbc hl, de
	jp nc, _LABEL_5442_
++:
	ld a, (ix+9)
	cp $12
	jr nz, +
	ld b, $15
	ld d, $00
	ld c, $04
	ld e, $04
	ld l, $20
	ld h, $10
	ld a, $01
	call _LABEL_3AAF_
	jp _LABEL_5442_

+:
	ld a, (ix+10)
	cp $06
	jr nc, +
	ld c, (iy+3)
	jr ++

+:
	cp $09
	jr nc, +
	ld c, (iy+2)
	jr ++

+:
	ld c, (iy+4)
++:
	ld a, (_RAM_D90A_)
	cp $0B
	jr nz, +
	ld a, c
	srl a
	add a, c
	ld c, a
+:
	ld a, (_RAM_D909_)
	call _LABEL_5851_
	cp c
	jp c, _LABEL_5442_
	ld a, $08
	call _LABEL_652_
	inc a
	ld c, a
	ld a, (ix+9)
	cp $0E
	jr c, +
	cp $0F
	jr nc, +
	srl c
+:
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	cp $01
	jr z, +
	ld a, (_RAM_D90A_)
	cp $04
	jr z, ++
	cp $12
	jr z, ++
	cp $13
	jr z, ++
	ld a, $0E
	ld (_RAM_D90A_), a
	xor a
	ld (_RAM_D90B_), a
	jr ++

+:
	srl c
++:
	call _LABEL_57CC_
	call _LABEL_5689_
	ld a, $01
	call _LABEL_2FF_
	jp _LABEL_5442_

_LABEL_5689_:
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	call _LABEL_6573_
	ld de, _RAM_DBB5_GOLDMOON_HP
	add hl, de
	ld a, (hl)
	sub c
	jr z, +
	jp nc, _LABEL_579F_
+:
	push hl
	ld de, (_RAM_D900_)
	call _LABEL_7AFE_
	ld l, c
	ld h, b
	call _LABEL_7AED_
-:
	ld a, (hl)
	and a
	jr z, ++
	ld b, a
	inc hl
	ld a, (hl)
	inc hl
	cp e
	jr c, -
	ld a, b
	cp e
	jr nc, -
	ld a, (_RAM_D904_)
	and a
	jr z, +
	dec hl
	ld b, (hl)
	inc b
+:
	ld l, b
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (_RAM_D900_), hl
++:
	pop hl
	ld (hl), $00
	ld de, $0005
	add hl, de
	ld (hl), $00
	ld e, l
	ld d, h
	inc de
	ld bc, $0006
	ldir
	ld bc, $FFE0
	add hl, bc
	ld bc, (_RAM_D900_)
	ld a, b
	srl a
	rr c
	srl a
	rr c
	srl a
	rr c
	srl a
	rr c
	ld b, $08
-:
	ld a, (hl)
	and a
	jr z, +
	push hl
	call _LABEL_79DB_
	ex de, hl
	pop hl
	ld a, (hl)
	ld (hl), $00
	inc hl
	ld (de), a
	inc de
	ld a, (_RAM_DE52_ROOM_NR)
	ld (de), a
	inc de
	ld a, c
	ld (de), a
	inc de
	ld a, $00
	ld (de), a
	ld a, (hl)
	ld (hl), $00
	inc de
	ld (de), a
	dec hl
+:
	inc hl
	inc hl
	djnz -
	inc hl
	ld a, (hl)
	and a
	jr z, +
	push hl
	call _LABEL_79DB_
	ex de, hl
	pop hl
	ld a, (hl)
	ld (hl), $00
	and $7F
	inc hl
	ld (de), a
	inc de
	ld a, (_RAM_DE52_ROOM_NR)
	ld (de), a
	ld a, c
	inc de
	ld (de), a
	inc de
	xor a
	ld (de), a
	inc de
	ld (de), a
	ld a, (hl)
	and a
	jr z, +
	push hl
	call _LABEL_79DB_
	ex de, hl
	pop hl
	ld a, (hl)
	ld (hl), $00
	inc hl
	ld (de), a
	inc de
	ld a, (_RAM_DE52_ROOM_NR)
	ld (de), a
	ld a, c
	inc de
	ld (de), a
	inc de
	ld a, $00
	ld (de), a
	ld a, (hl)
	ld (hl), $00
	inc de
	ld (de), a
+:
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, $DCF2
	add hl, de
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	ld (hl), a
	inc hl
	ld de, (_RAM_D900_)
	ld (hl), e
	inc hl
	ld (hl), d
	inc hl
	ld (hl), e
	ld a, d
	rrd
	call _LABEL_3262_
	call _LABEL_5887_
	ld hl, _RAM_DEBD_
	ld de, _RAM_DEBC_INRAM_HUD_PORTRAITS
	ld bc, $0007
	ld a, (de)
	ldir
	ld (_RAM_DEC3_), a
	ld hl, (_RAM_DE6F_)
	ld (_RAM_D900_), hl
	ld (_RAM_D910_), hl
	xor a
	ld (_RAM_D90A_), a
	ld (_RAM_D907_), a
	ld (_RAM_D90B_), a
	ret

_LABEL_579F_:
	ld (hl), a
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	and a
	ret nz
	ld a, (hl)
	cp $05
	ret nc
	ld a, (_RAM_DEF4_)
	and a
	ret nz
	ld a, (_RAM_DCA5_)
	and a
	ret z
	ld hl, _RAM_DEBD_
-:
	ld a, (hl)
	cp $06
	jr z, +
	inc hl
	jr -

+:
	ld (hl), $00
	ld a, $06
	ld (_RAM_DEBC_INRAM_HUD_PORTRAITS), a
	call _LABEL_6F3B__UPD_HUD
	call _LABEL_5BA7_
	ret

_LABEL_57CC_:
	push bc
	ld a, c
	srl a
	srl a
	srl a
	ld c, a
	srl a
	add a, c
	jr z, ++
	ld c, a
	push de
	push hl
	push ix
	ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS
	ld b, $03
-:
	ld a, (ix+1)
	call _LABEL_6573_
	ld de, _RAM_DBB5_GOLDMOON_HP
	add hl, de
	ld a, (hl)
	sub c
	jr c, +
	jr z, +
	ld (hl), a
+:
	inc ix
	djnz -
	pop ix
	pop hl
	pop de
++:
	pop bc
	ret

; Data from 5800 to 5818 (25 bytes)
_DATA_5800_:
.dsb 16, $00
.db $01 $05 $02 $03 $03 $04 $04 $05 $05

_LABEL_5819_:
	ld b, $08
	ld hl, _RAM_DBB5_GOLDMOON_HP
-:
	ld a, (hl)	;READ GOLDMOON'S HEALTH INTO A.
	and a
	jr Nz, +	;IF THIS IS Z, PLAYERS ARE SHOWN AS PERMADEAD.
	dec hl
	ld a, (hl)
	inc hl
	and a
	jr z, +		;DOES NOT DO ANYTHING WHEN CHANGED
	push hl
	push bc
	dec hl
	ld (hl), $00
	ld de, $0006
	add hl, de
	ld e, l
	ld d, h
	inc de
	ld bc, $000D
	ld (hl), $00
	ldir
	;nop
	;nop
	pop bc
	pop hl
+:		;DOES NOT DO ANYTHING NOTICEABLE AT THE MOMENT.
	;ret
	ld de, $0028
	add hl, de
	djnz -
	ld hl, _RAM_DCF2_
	ld de, _RAM_DCF2_ + 1
	ld (hl), $00
	ld bc, $001F
	ldir
	ret

_LABEL_5851_:
	cp $12
	jr nz, +
	ld a, $20
	ret

+:
	cp $15
	jr nz, +
	ld a, (ix+24)
+:
	add a, a
	ld e, a
	add a, a
	add a, e
	push de
	push hl
	ld e, a
	ld d, $00
	ld hl, $8000
	add hl, de
	ld a, $08
	ld (_RAM_FFFF_), a
	ld d, (hl)
	inc hl
	ld e, (hl)
	inc hl
	inc hl
	inc hl
	ld a, (hl)
	ld (_RAM_FFFF_), a
	ld a, d
	add a, $06
	ld l, a
	ld a, e
	adc a, $00
	ld h, a
	ld a, (hl)
	pop hl
	pop de
	ret

_LABEL_5887_:
	ld hl, $DCF2
	ld b, $08
-:
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	inc hl
	ld a, d
	or e
	jr z, +
	push hl
	dec hl
	ld l, (hl)
	ld h, $CE
	ld (hl), $FE
	pop hl
+:
	djnz -
	ret

; Data from 58A1 to 5979 (217 bytes)
.db $3A $BC $DE $FE $03 $28 $06 $11 $DB $AA $C3 $8E $65 $AF $32 $E6
.db $DE $AF $32 $E7 $DE $3E $01 $32 $F2 $DE $06 $08 $21 $B4 $DB $11
.db $27 $00 $36 $00 $23 $36 $00 $19 $10 $F8 $C3 $53 $60 $3E $02 $CD
.db $DE $59 $DA $DA $5A $DD $21 $E0 $DC $DD $6E $00 $DD $66 $01 $7C
.db $B5 $CA $53 $60 $DD $E5 $23 $23 $7E $DD $21 $00 $D1 $6F $26 $00
.db $29 $29 $29 $29 $DD $75 $00 $DD $74 $01 $DD $36 $02 $90 $DD $36
.db $03 $00 $DD $36 $04 $00 $3E $01 $0E $00 $1E $28 $2E $20 $26 $00
.db $16 $00 $06 $09 $CD $AF $3A $DD $E1 $DD $23 $DD $23 $18 $BA $3E
.db $03 $06 $32 $18 $04 $3E $01 $06 $64 $CD $DE $59 $DA $DA $5A $78
.db $32 $EE $DE $C3 $53 $60 $3E $0A $CD $DE $59 $DA $DA $5A $3E $3F
.db $32 $F0 $DE $C3 $53 $60 $06 $06 $3E $01 $18 $16 $06 $05 $3E $01
.db $18 $10 $06 $04 $3E $02 $18 $0A $06 $03 $3E $01 $18 $04 $06 $02
.db $3E $01 $57 $3A $BC $DE $FE $03 $7A $16 $00 $20 $0C $57 $78 $32
.db $E6 $DE $7A $32 $E7 $DE $C3 $53 $60

_LABEL_597A_:
	call _LABEL_59CE_
	jp c, _LABEL_5AD5_
	ld a, $01
-:
	ld c, $0C
	ld e, $14
	ld l, $20
	ld h, $14
	ld ix, _RAM_D900_
	call _LABEL_3AAF_
	ld a, (_RAM_DEE5_)
	and a
	ret z
	jp _LABEL_6053_

_LABEL_5999_:
	call _LABEL_59DE_
	jp c, _LABEL_5ADA_
	ld a, $03
	jr -

; Data from 59A3 to 59CD (43 bytes)
.db $06 $08 $3E $02 $18 $04 $06 $07 $3E $02 $57 $3A $BC $DE $A7 $7A
.db $16 $00 $C2 $C4 $59 $57 $78 $32 $E8 $DE $7A $32 $E9 $DE $C3 $53
.db $60 $CD $DE $59 $DA $DA $5A $3E $01 $18 $B4

_LABEL_59CE_:
	ld hl, (_RAM_DEEC_)
	push de
	ld e, a
	ld d, $00
	and a
	sbc hl, de
	pop de
	ret c
	ld (_RAM_DEEC_), hl
	ret

_LABEL_59DE_:
	ld hl, (_RAM_DEEA_)
	push de
	ld e, a
	ld d, $00
	and a
	sbc hl, de
	pop de
	ret c
	ld (_RAM_DEEA_), hl
	ret

; Data from 59EE to 5AD4 (231 bytes)
.db $3E $05 $01 $06 $16 $18 $05 $3E $01 $01 $01 $08 $C5 $CD $DE $59
.db $C1 $DA $DA $5A $C5 $CD $A2 $5A $C1 $78 $CD $52 $06 $81 $4F $CD
.db $83 $5A $5E $23 $56 $7B $A7 $CA $53 $60 $7A $A7 $CA $53 $60 $81
.db $BB $38 $01 $7B $77 $F3 $CD $3B $6F $FB $C3 $53 $60 $3E $05 $CD
.db $DE $59 $DA $DA $5A $CD $A2 $5A $CD $83 $5A $7E $A7 $CA $53 $60
.db $57 $23 $7E $A7 $C2 $53 $60 $7A $CB $3F $CB $3F $77 $01 $05 $00
.db $09 $11 $07 $00 $EB $19 $01 $07 $00 $ED $B0 $3A $FF $C7 $6F $26
.db $00 $11 $BC $DE $19 $7E $87 $87 $5F $16 $00 $21 $F2 $DC $19 $36
.db $00 $23 $36 $00 $23 $36 $00 $23 $36 $00 $CD $7C $71 $F3 $CD $3B
.db $6F $FB $C3 $53 $60 $3A $FF $C7 $6F $26 $00 $D5 $11 $BC $DE $19
.db $7E $87 $87 $87 $5F $87 $87 $83 $5F $3E $00 $CE $00 $57 $21 $B4
.db $DB $19 $D1 $C9 $AF $32 $FF $C7 $11 $A2 $01 $DD $21 $00 $C7 $F3
.db $D5 $DD $E5 $CD $F1 $5E $DD $E1 $D1 $FB $D5 $DD $E5 $CD $64 $5E
.db $06 $0C $CD $58 $5E $DD $E1 $D1 $3A $94 $DE $A7 $28 $EC $3A $FF
.db $C7 $F3 $CD $C6 $5E $FB $C9

_LABEL_5AD5_:
	ld de, _DATA_5B2E_
	jr +

_LABEL_5ADA_:
	ld de, _DATA_5B05_
+:
	push de
	ld a, (_RAM_DEE5_)
	ld b, a
	and a
	jr nz, +
	push bc
	call _LABEL_5C0C_
	pop bc
+:
	di
	push bc
	call _LABEL_6B42_
	pop bc
	pop de
	ld hl, $3908
	push bc
	call _LABEL_35A6_
	ei
	call _LABEL_62B1_
	pop bc
	ld a, b
	and a
	jp nz, _LABEL_6053_
	jp _LABEL_6A6C_

; Data from 5B05 to 5B2D (41 bytes)
_DATA_5B05_:
.db $54 $68 $65 $20 $62 $6C $75 $65 $20 $73 $74 $61 $66 $66 $20 $68
.db $61 $73 $0D $0D $6E $6F $20 $70 $6F $77 $65 $72 $20 $61 $74 $0D
.db $0D $70 $72 $65 $73 $65 $6E $74 $FF

; Data from 5B2E to 5B9C (111 bytes)
_DATA_5B2E_:
.db $54 $68 $65 $20 $73 $74 $61 $66 $66 $20 $6F $66 $20 $4D $61 $67
.db $69 $75 $73 $0D $0D $68 $61 $73 $20 $6E $6F $20 $70 $6F $77 $65
.db $72 $20 $61 $74 $0D $0D $70 $72 $65 $73 $65 $6E $74 $FF $3E $01
.db $0E $DF $18 $04 $3E $02 $0E $9F $CD $DE $59 $DA $DA $5A $21 $00
.db $D6 $06 $96 $3A $52 $DE $5F $7E $A7 $28 $0D $23 $7E $BB $20 $09
.db $23 $23 $23 $7E $A1 $77 $18 $04 $23 $23 $23 $23 $23 $10 $E8 $3A
.db $52 $DE $FE $0F $C2 $53 $60 $3E $01 $32 $71 $DE $C3 $53 $60

_LABEL_5B9D_:
	ld de, _DATA_AD32_
	jr +

_LABEL_5BA2_:
	ld de, _DATA_ACD2_
	jr +

_LABEL_5BA7_:
	ld de, _DATA_ACFC_
+:
	push de
	call _LABEL_5C0C_
	call _LABEL_6B42_
	pop de
	ld hl, $3908
_LABEL_5BB5_:
	call _LABEL_35A6_
---:
	call _LABEL_62B1_
	jp _LABEL_6A6C_

_LABEL_5BBE_:
	call _LABEL_5C0C_
	call _LABEL_6B42_
	ld de, _DATA_AC9C_
	ld a, (_RAM_DE55_WATERFALL)
	and $02
	jr nz, ++
	ld de, _DATA_AC6C_
	ld hl, $3908
	call _LABEL_35A6_
--:
	ld hl, _RAM_DBB4_
	ld b, $08
	ld de, $0027
-:
	ld c, (hl)
	inc hl
	ld a, (hl)
	and a
	jr z, +
	cp c
	jr z, +
	inc (hl)
	ld d, $01
+:
	ld a, l
	add a, e
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	djnz -
	ld a, d
	and a
	jr z, ---
	call _LABEL_6F3B__UPD_HUD
	ld b, $04
	call _LABEL_5E58_
	jr --

++:
	ld hl, $3908
	jr _LABEL_5BB5_

_LABEL_5C07_:
	call _LABEL_5C0C_
	jr _LABEL_5C65_

_LABEL_5C0C_:
	ld a, (_RAM_DE34_)
	and $F0
	ld (_RAM_DE34_), a
	ld a, $FF
	ld (_RAM_DEE5_), a
	ld a, (_RAM_DE9F_)
	ld (_RAM_DEA0_), a
	xor a
	ld (_RAM_DE9F_), a
	ld (_RAM_DE9E_), a
	call _LABEL_59B_MAIN
	call _LABEL_63B_CLEAR_SAT
	call _LABEL_BB7_
	ld hl, $2960
	di
	call _LABEL_4BB_VDP_RAM_WRITE
	ei
	ld bc, $2000 | Port_VDPData
-:
	xor a
	out (c), a
	djnz -
	call _LABEL_6B42_
	ld hl, (_RAM_DE62_)
	ld (_RAM_DE64_), hl
	xor a
	ld (_RAM_C04F_), a
	ld a, $1F
	ld (_RAM_FFFF_), a
	ld b, $60
	ld hl, $2180
	ld de, _DATA_7C000_CHAR_BIO_TEXT
	ld c, $17
	call _LABEL_6AAE_
	ld hl, $010C
	ld (_RAM_DE62_), hl
	ret

_LABEL_5C65_:
	ld hl, $3888
	ld de, _DATA_A871_
	call _LABEL_35A6_
	ld hl, $3888
	ld de, $016C
	ld b, $0B
	ld c, $97
	ld ix, _RAM_C000_RAM_START
	call _LABEL_6AE6_
	ld a, (_RAM_C04F_)
	ld (_RAM_C040_INRAM_PAL), a
	ld iy, _DATA_6CAD_
_LABEL_5C89_:
	ld a, (_RAM_C040_INRAM_PAL)
	push iy
	pop hl
	add a, a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)
	push bc
	ld l, e
	ld h, d
	ld de, $018C
	ld b, $15
	ld c, $37
	ld ix, _RAM_C000_RAM_START
	push iy
	call _LABEL_6AE6_
	pop iy
	pop bc
_LABEL_5CB2_:
	push bc
	push iy
	call _LABEL_59B_MAIN
	call _LABEL_552_CHECK_AB_BUTTONS
	pop iy
	pop bc
	ld a, (_RAM_DE94_GAMEPAD)
	and a
	jr z, +
	ld h, b
	ld l, c
	jp (hl)

+:
	ld a, (_RAM_DE95_GAMEPAD)
	and a
	jr z, ++
	push iy
	pop hl
-:
	ld a, (hl)
	inc hl
	ld d, (hl)
	or d
	jr z, +
	ld de, $0003
	add hl, de
	jr -

+:
	ld de, $FFFD
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

++:
	ld a, (_RAM_DE90_)
	bit 3, a
	jr z, +
	ld a, (_RAM_C040_INRAM_PAL)
	and a
	jp z, +
	dec a
	ld (_RAM_C040_INRAM_PAL), a
	inc a
	jr ++

+:
	ld a, (_RAM_DE90_)
	bit 2, a
	jp z, _LABEL_5CB2_
	ld a, (_RAM_C040_INRAM_PAL)
	inc a
	ld d, a
	add a, a
	add a, a
	push iy
	pop hl
	ld e, a
	ld a, d
	ld d, $00
	add hl, de
	ld d, a
	ld e, (hl)
	inc hl
	ld a, (hl)
	or e
	jp z, _LABEL_5CB2_
	ld a, d
	ld (_RAM_C040_INRAM_PAL), a
	dec a
++:
	add a, a
	add a, a
	push iy
	pop hl
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	di
	call _LABEL_4BB_VDP_RAM_WRITE
	ei
	ld hl, _RAM_C000_RAM_START
	ld b, $2A
-:
	ld a, (hl)
	inc hl
	out (Port_VDPData), a
	djnz -
	ld b, $04
	call _LABEL_5E58_
	jp _LABEL_5C89_

; Data from 5D43 to 5E57 (277 bytes)
.db $AF $32 $4F $C0 $CD $46 $60 $CD $42 $6B $21 $C8 $38 $11 $4A $A7
.db $CD $A6 $35 $AF $32 $FF $C7 $DD $21 $00 $C7 $11 $A2 $01 $D5 $DD
.db $E5 $F3 $CD $F1 $5E $FB $DD $E1 $D1 $CD $6D $6B $CD $64 $5E $3A
.db $90 $DE $CB $6F $28 $0B $3A $FF $C7 $F3 $CD $C6 $5E $FB $C3 $53
.db $60 $CD $6D $6B $06 $0C $CD $58 $5E $3A $94 $DE $A7 $28 $DD $3A
.db $FF $C7 $6F $26 $00 $01 $BC $DE $09 $7E $CD $73 $65 $01 $B5 $DB
.db $09 $7E $A7 $28 $C7 $3A $FF $C7 $32 $FE $C7 $A7 $20 $0D $3A $0A
.db $D9 $FE $0F $20 $06 $3A $54 $DE $A7 $28 $B1 $AF $32 $FF $C7 $DD
.db $21 $20 $C7 $11 $AC $01 $D5 $DD $E5 $F3 $CD $F1 $5E $FB $DD $E1
.db $D1 $CD $64 $5E $3A $90 $DE $CB $6F $28 $13 $3A $FE $C7 $47 $3A
.db $FF $C7 $B8 $CA $49 $5E $F3 $CD $C6 $5E $FB $C3 $49 $5E $06 $0C
.db $CD $58 $5E $3A $94 $DE $A7 $28 $D8 $3A $FF $C7 $47 $3A $FE $C7
.db $B8 $28 $43 $68 $26 $00 $01 $BC $DE $09 $7E $CD $73 $65 $01 $B5
.db $DB $09 $7E $A7 $28 $BB $3A $FF $C7 $A7 $20 $0D $3A $0A $D9 $FE
.db $0F $20 $06 $3A $54 $DE $A7 $28 $A8 $3A $FE $C7 $21 $BC $DE $4F
.db $06 $00 $5D $54 $09 $EB $3A $FF $C7 $4F $09 $4E $1A $77 $79 $12
.db $CD $3B $6F $C3 $53 $60 $3A $FE $C7 $DD $21 $00 $C7 $F3 $CD $C6
.db $5E $FB $C3 $53 $60

_LABEL_5E58_:
	push bc
	push de
	push hl
	call _LABEL_59B_MAIN
	pop hl
	pop de
	pop bc
	djnz _LABEL_5E58_
	ret

; Data from 5E64 to 6045 (482 bytes)
.db $D5 $CD $9B $05 $CD $52 $05 $D1 $3A $90 $DE $CB $6F $C0 $E6 $1F
.db $CA $64 $5E $CB $67 $C0 $3A $FF $C7 $F3 $DD $E5 $D5 $CD $C6 $5E
.db $D1 $DD $E1 $FB $3A $90 $DE $47 $3A $FF $C7 $CB $58 $28 $02 $D6
.db $04 $CB $50 $28 $02 $C6 $04 $CB $48 $28 $09 $4F $E6 $04 $6F $79
.db $3D $E6 $03 $B5 $CB $40 $28 $09 $4F $E6 $04 $6F $79 $3C $E6 $03
.db $B5 $E6 $07 $32 $FF $C7 $D5 $DD $E5 $F3 $CD $F1 $5E $FB $DD $E1
.db $D1 $C9 $21 $6B $70 $87 $85 $6F $7C $CE $00 $67 $7E $23 $66 $6F
.db $23 $23 $11 $40 $00 $CD $DF $5E $CD $DF $5E $F3 $CD $BB $04 $FB
.db $06 $06 $DD $7E $00 $D3 $BE $DD $23 $10 $F7 $19 $C9 $21 $6B $70
.db $87 $85 $6F $7C $CE $00 $67 $7E $23 $66 $6F $23 $23 $06 $03 $FD
.db $21 $98 $5F $E5 $CD $17 $5F $E1 $7D $C6 $40 $6F $7C $CE $00 $67
.db $10 $F1 $C9 $CD $1D $5F $CD $1D $5F $C5 $D5 $E5 $CD $BD $04 $DB
.db $BE $DD $77 $00 $DB $BE $DD $77 $01 $F3 $CD $BB $04 $FB $7B $D3
.db $BE $DD $7E $01 $E6 $FE $B2 $D3 $BE $DD $6E $00 $DD $7E $01 $E6
.db $01 $67 $29 $29 $29 $29 $29 $CD $BD $04 $DD $23 $DD $23 $06 $20
.db $21 $00 $C8 $DB $BE $77 $23 $10 $FA $EB $29 $29 $29 $29 $29 $F3
.db $CD $BB $04 $FB $11 $00 $C8 $06 $08 $1A $FD $B6 $00 $13 $D3 $BE
.db $1A $FD $B6 $00 $13 $D3 $BE $1A $4F $FD $AE $00 $A1 $13 $D3 $BE
.db $1A $4F $FD $AE $00 $A1 $13 $D3 $BE $FD $23 $10 $DC $E1 $D1 $C1
.db $13 $23 $23 $C9 $FF $C0 $C0 $C0 $C0 $C0 $C0 $C0 $FF $00 $00 $00
.db $00 $00 $00 $00 $FF $03 $03 $03 $03 $03 $03 $03 $C0 $C0 $C0 $C0
.db $C0 $C0 $C0 $C0 $00 $00 $00 $00 $00 $00 $00 $00 $03 $03 $03 $03
.db $03 $03 $03 $03 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $FF $00 $00 $00 $00
.db $00 $00 $00 $FF $03 $03 $03 $03 $03 $03 $03 $FF $CD $46 $60 $3A
.db $4E $C0 $A7 $28 $3B $3D $28 $12 $3A $40 $C0 $A7 $CA $F5 $59 $3D
.db $CA $CE $58 $3D $CA $EE $59 $C3 $37 $59 $3A $40 $C0 $A7 $CA $F5
.db $59 $3D $CA $26 $59 $3D $CA $CE $58 $3D $CA $A9 $59 $3D $CA $A3
.db $59 $3D $CA $20 $59 $3D $CA $EE $59 $3D $CA $2B $5A $C3 $37 $59
.db $3A $40 $C0 $A7 $CA $47 $59 $3D $CA $59 $59 $3D $CA $5F $59 $3D
.db $CA $53 $59 $3D $CA $5C $5B $3D $CA $62 $5B $3D $CA $A1 $58 $C3
.db $4D $59

-:
	call _LABEL_59B_MAIN
	call _LABEL_552_CHECK_AB_BUTTONS
	ld a, (_RAM_DE94_GAMEPAD)
	and a
	ret z
	jr -

_LABEL_6053_:
	call -
	call _LABEL_6B42_
	jp _LABEL_5C65_

; Data from 605C to 61F9 (414 bytes)
.db $11 $10 $AB $06 $11 $FD $21 $D3 $6C $2E $04 $26 $00 $3E $01 $32
.db $4F $C0 $3D $32 $4E $C0 $DD $21 $BC $DE $DD $7E $00 $FE $03 $28
.db $12 $DD $23 $24 $2D $20 $F3 $11 $5F $AA $06 $11 $FD $21 $F3 $6C
.db $C3 $41 $6A $CD $73 $65 $D5 $11 $B5 $DB $19 $D1 $7E $A7 $28 $E7
.db $D5 $11 $FC $FF $19 $D1 $7E $FE $02 $C2 $AB $60 $C3 $41 $6A $11
.db $09 $AA $18 $D6 $DD $21 $BC $DE $1E $04 $16 $00 $3E $02 $32 $4F
.db $C0 $DD $7E $00 $CD $73 $65 $01 $B1 $DB $09 $7E $FE $01 $28 $12
.db $DD $23 $14 $1D $20 $EB $11 $5B $AD $06 $15 $FD $21 $F3 $6C $C3
.db $41 $6A $01 $04 $00 $09 $7E $A7 $28 $EC $DD $7E $00 $11 $BD $AD
.db $06 $15 $FD $21 $0F $6D $A7 $3E $01 $CA $00 $61 $3C $11 $69 $AE
.db $FD $21 $F9 $6C $32 $4E $C0 $C3 $41 $6A $21 $8C $67 $11 $78 $66
.db $3E $06 $32 $4F $C0 $C3 $30 $61 $21 $A8 $67 $11 $67 $64 $3E $03
.db $32 $4F $C0 $C3 $30 $61 $21 $9A $67 $11 $C2 $66 $3E $05 $32 $4F
.db $C0 $C3 $30 $61 $D5 $E5 $CD $46 $60 $CD $42 $6B $E1 $FD $21 $00
.db $C1 $11 $00 $00 $DD $21 $00 $C3 $01 $00 $00 $CD $1D $6A $DD $21
.db $00 $C3 $11 $88 $38 $D5 $CD $60 $6B $D9 $0E $00 $06 $08 $D9 $7E
.db $A7 $28 $30 $D1 $C1 $C5 $7B $C6 $40 $5F $7A $CE $00 $57 $D5 $E5
.db $C5 $4E $E5 $D9 $D1 $26 $C3 $79 $87 $F6 $80 $6F $73 $23 $72 $D9
.db $21 $09 $68 $7E $23 $3C $20 $FB $0D $20 $F8 $C1 $CD $1D $6A $E1
.db $D9 $0C $D9 $23 $23 $D9 $10 $C6 $D1 $E1 $79 $A7 $20 $17 $DD $21
.db $00 $C3 $21 $B5 $67 $01 $00 $00 $11 $00 $00 $CD $1D $6A $DD $21
.db $00 $C3 $11 $08 $3A $01 $53 $60 $21 $40 $00 $19 $EB $21 $DB $67
.db $CD $1D $6A $11 $00 $C1 $06 $0C $FD $21 $00 $C3 $C3 $41 $6A $CD
.db $46 $60 $CD $42 $6B $21 $48 $38 $11 $B5 $A7 $CD $A6 $35 $FB $21
.db $88 $38 $11 $6C $01 $06 $0B $0E $97 $DD $21 $00 $C0 $CD $E6 $6A
.db $CD $FA $61 $3E $07 $32 $4F $C0 $CD $B1 $62 $C3 $53 $60

_LABEL_61FA_:
	ld b, $0A
	ld ix, _RAM_DE7A_
	ld iy, _DATA_6E7F_
-:
	ld l, (ix+0)
	ld h, (ix+1)
	ld c, $00
	ld de, _RAM_D100_
	push bc
	call _LABEL_6E09_
	ld de, _RAM_D103_
	ld l, (iy+0)
	ld h, (iy+1)
	call _LABEL_35A6_
	pop bc
	inc ix
	inc ix
	inc iy
	inc iy
	djnz -
	ld hl, (_RAM_DE74_)
	ld a, (_RAM_DE76_)
	ld c, a
	ld de, _RAM_D100_
	call _LABEL_6E09_
	ld de, _RAM_D101_
	ld hl, $3B72
	call _LABEL_35A6_
	ld de, $0000
	ld (_RAM_DE77_), de
	xor a
	ld (_RAM_DE79_), a
	ld b, $08
	ld ix, _RAM_DBA0_PLYR_STATS
--:
	ld a, (ix+21)
	and a
	jr z, ++
	ld c, $08
-:
	ld a, (ix+0)
	add a, a
	ld hl, _DATA_6E93_
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	add hl, de
	jr nc, +
	ld a, (_RAM_DE79_)
	inc a
	ld (_RAM_DE79_), a
+:
	ex de, hl
	inc ix
	inc ix
	dec c
	jr nz, -
	ex de, hl
	ld de, $0018
	jr +++

++:
	ex de, hl
	ld de, $0028
+++:
	add ix, de
	ex de, hl
	djnz --
	ld a, (_RAM_DE56_)
	and a
	jr z, +
	ld hl, $2710
	add hl, de
	ex de, hl
+:
	ld (_RAM_DE77_), de
	ld hl, (_RAM_DE77_)
	ld a, (_RAM_DE79_)
	ld c, a
	ld de, _RAM_D100_
	call _LABEL_6E09_
	ld de, _RAM_D101_
	ld hl, $3BB2
	call _LABEL_35A6_
	ret

_LABEL_62B1_:
	call _LABEL_59B_MAIN
	call _LABEL_552_CHECK_AB_BUTTONS
	ld a, (_RAM_DE94_GAMEPAD)
	ld b, a
	ld a, (_RAM_DE95_GAMEPAD)
	or b
	jr z, _LABEL_62B1_
	ret

; Data from 62C2 to 6572 (689 bytes)
.db $C3 $C2 $62 $CD $46 $60 $CD $42 $6B $21 $7E $67 $FD $21 $00 $C1
.db $11 $00 $00 $DD $21 $00 $C3 $01 $00 $00 $3E $04 $32 $4F $C0 $CD
.db $1D $6A $11 $C8 $38 $DD $21 $00 $C3 $D5 $DD $E5 $06 $96 $0E $00
.db $2A $00 $D9 $11 $08 $00 $A7 $ED $52 $5D $54 $DD $21 $00 $D6 $30
.db $03 $11 $01 $00 $CB $3A $CB $1B $CB $3A $CB $1B $CB $3A $CB $1B
.db $CB $3A $CB $1B $3A $52 $DE $DD $BE $01 $20 $5C $DD $7E $04 $E6
.db $E0 $20 $55 $DD $7E $00 $A7 $28 $4F $FE $40 $30 $4B $DD $7E $02
.db $93 $38 $45 $FE $03 $30 $41 $3E $96 $90 $08 $79 $D9 $DD $E5 $D1
.db $26 $C4 $6F $08 $77 $62 $6B $DD $7E $00 $DD $E1 $D1 $D5 $E5 $4F
.db $21 $09 $68 $7E $23 $3C $20 $FB $0D $20 $F8 $01 $B6 $63 $CD $1D
.db $6A $E1 $D1 $7B $C6 $40 $5F $3E $00 $8A $57 $D5 $DD $E5 $E5 $DD
.db $E1 $D9 $0C $79 $FE $0B $28 $09 $D9 $11 $05 $00 $DD $19 $D9 $10
.db $93 $DD $E1 $D1 $79 $A7 $20 $17 $DD $21 $00 $C3 $21 $B5 $67 $01
.db $00 $00 $11 $00 $00 $CD $1D $6A $DD $21 $00 $C3 $11 $48 $3A $01
.db $53 $60 $21 $DB $67 $CD $1D $6A $11 $00 $C1 $06 $0C $FD $21 $00
.db $C3 $C3 $41 $6A $CD $60 $6B $06 $08 $7E $A7 $28 $10 $23 $23 $10
.db $F8 $11 $81 $A9 $06 $11 $FD $21 $F3 $6C $C3 $41 $6A $E5 $3A $40
.db $C0 $26 $C4 $6F $7E $11 $00 $D6 $6F $26 $00 $4F $44 $29 $29 $09
.db $19 $D1 $7E $FE $37 $CA $46 $64 $FE $02 $20 $1C $3A $BC $DE $FE
.db $03 $28 $68 $3A $BC $DE $CD $73 $65 $11 $B5 $DB $19 $7E $11 $83
.db $AB $3D $CA $32 $64 $77 $18 $28 $FE $01 $20 $3F $3A $BC $DE $A7
.db $28 $39 $FE $06 $28 $35 $FE $01 $28 $31 $FE $02 $28 $2D $3A $BC
.db $DE $CD $73 $65 $11 $B5 $DB $19 $7E $11 $BD $AB $3D $28 $01 $77
.db $D5 $CD $42 $6B $D1 $21 $08 $39 $CD $A6 $35 $CD $3B $6F $CD $B1
.db $62 $C3 $53 $60 $ED $7B $27 $DE $C3 $06 $09 $7E $36 $00 $12 $13
.db $01 $04 $00 $09 $7E $E6 $1F $12 $C3 $53 $60 $36 $00 $3E $02 $32
.db $29 $DC $C3 $53 $60 $3A $40 $C0 $87 $F6 $80 $26 $C3 $6F $7E $23
.db $66 $6F $4E $79 $FE $02 $CA $25 $66 $FE $03 $CA $CD $65 $FE $28
.db $CA $CD $65 $FE $0B $CA $FD $65 $FE $09 $CA $0C $66 $FE $0E $CA
.db $36 $66 $FE $0F $CA $36 $66 $FE $10 $CA $47 $66 $FE $06 $CA $E9
.db $65 $FE $01 $CA $9F $65 $FE $2F $CA $3D $65 $FE $30 $28 $7A $FE
.db $38 $28 $76 $FE $31 $CA $81 $65 $FE $32 $CA $45 $65 $FE $33 $28
.db $41 $FE $34 $28 $44 $FE $35 $28 $44 $FE $2D $DA $FC $64 $FE $37
.db $D2 $FC $64 $3A $BC $DE $FE $03 $20 $1A $79 $06 $02 $FE $2D $20
.db $02 $06 $05 $78 $32 $E6 $DE $3E $FF $32 $E7 $DE $36 $00 $11 $D1
.db $AE $C3 $8E $65 $11 $B7 $AA $C3 $8E $65 $3E $04 $CD $FF $02 $C3
.db $53 $60 $0E $02 $11 $37 $A9 $18 $09 $0E $01 $18 $02 $0E $04 $11
.db $53 $A9 $36 $00 $3A $BC $DE $CD $73 $65 $79 $01 $C0 $DB $09 $4E
.db $81 $01 $07 $00 $09 $77 $C3 $8E $65 $36 $00 $3E $05 $CD $52 $06
.db $C6 $02 $32 $F1 $DE $11 $22 $A9 $C3 $8E $65 $3E $08 $CD $52 $06
.db $3C $18 $07 $3E $07 $CD $52 $06 $C6 $04 $4F $36 $00 $3A $BC $DE
.db $CD $73 $65 $11 $B4 $DB $19 $11 $F9 $A8 $46 $23 $7E $81 $77 $B8
.db $38 $01 $70 $D5 $CD $3B $6F $D1 $C3 $8E $65 $EB $CD $73 $65 $EB
.db $C9

_LABEL_6573_:
	add a, a
	add a, a
	add a, a
	ld l, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld a, $00
	adc a, $00
	ld h, a
	ret

; Data from 6581 to 6A6B (1259 bytes)
.incbin "HOTL_mod_DATA_6581_.inc"

_LABEL_6A6C_:
	call _LABEL_552_CHECK_AB_BUTTONS
	ld a, (_RAM_DE91_)
	and $30
	jr z, +
	call _LABEL_59B_MAIN
	jr _LABEL_6A6C_

+:
	ld hl, (_RAM_D900_)
	ld de, $0078
	and a
	sbc hl, de
	jr nc, +
	ld hl, $0000
+:
	ld a, l
	and $F0
	ld l, a
	ld (_RAM_DE34_), hl
	xor a
	ld (_RAM_DE42_), a
	ld (_RAM_DE44_), a
	call _LABEL_C43_LEVEL_LOAD
	ld hl, (_RAM_DE64_)
	ld (_RAM_DE62_), hl
	xor a
	ld (_RAM_DEE5_), a
	ld (_RAM_DE9E_), a
	ld a, (_RAM_DEA0_)
	ld (_RAM_DE9F_), a
	ret

_LABEL_6AAE_:
	di
	call _LABEL_4BB_VDP_RAM_WRITE
	ei
	ex de, hl
	ld d, c
---:
	push bc
	ld b, $08
--:
	ld a, (hl)
	inc hl
	inc hl
	inc hl
	inc hl
	ld c, $04
	ex af, af'
-:
	ex af, af'
	ld e, a
	ex af, af'
	ld a, e
	bit 4, d
	jr nz, +
	ld e, $00
+:
	cpl
	bit 0, d
	jr nz, +
	xor a
+:
	or e
	out (Port_VDPData), a
	rrc d
	dec c
	jr nz, -
	rrc d
	rrc d
	rrc d
	rrc d
	djnz --
	pop bc
	djnz ---
	ret

_LABEL_6AE6_:
	push bc
	push de
	push hl
	di
	call _LABEL_4BD_
	ei
	in a, (Port_VDPData)
	ld (ix+0), a
	in a, (Port_VDPData)
	ld (ix+1), a
	pop hl
	push hl
	di
	call _LABEL_4BB_VDP_RAM_WRITE
	ei
	ld a, e
	out (Port_VDPData), a
	ld a, (ix+1)
	and $FE
	or d
	out (Port_VDPData), a
	ld l, (ix+0)
	ld h, (ix+1)
	ld a, c
	ld bc, $010C
	and a
	sbc hl, bc
	ld c, a
	inc ix
	inc ix
	ld a, h
	and $01
	ld h, a
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, h
	or $80
	ld h, a
	ld a, $1F
	ld (_RAM_FFFF_), a
	ld b, $01
	ex de, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	call _LABEL_6AAE_
	pop hl
	pop de
	pop bc
	inc hl
	inc hl
	inc de
	djnz _LABEL_6AE6_
	ret

_LABEL_6B42_:
	ld hl, $3800
	di
	call _LABEL_4BB_VDP_RAM_WRITE
	ei
	ld de, $014B
	ld bc, $0200
-:
	ld a, e
	out (Port_VDPData), a
	neg
	ld a, d
	or $08
	out (Port_VDPData), a
	dec bc
	ld a, b
	or c
	jr nz, -
	ret

; Data from 6B60 to 6CAC (333 bytes)
.db $3A $BC $DE $D5 $CD $73 $65 $11 $A0 $DB $19 $D1 $C9 $C5 $D5 $E5
.db $DD $E5 $CD $9B $05 $3A $FF $C7 $21 $BC $DE $4F $06 $00 $09 $7E
.db $4F $CD $73 $65 $11 $B5 $DB $19 $E5 $7E $A7 $79 $20 $02 $3E $08
.db $6F $26 $00 $29 $4D $44 $29 $29 $5D $54 $09 $EB $29 $01 $39 $6D
.db $09 $EB $21 $88 $38 $CD $A6 $35 $21 $88 $38 $11 $6C $01 $06 $0E
.db $0E $97 $DD $21 $00 $C0 $CD $E6 $6A $D1 $21 $05 $00 $19 $E5 $DD
.db $E1 $01 $20 $39 $26 $06 $E5 $DD $6E $00 $11 $14 $00 $C5 $CD $61
.db $6C $C1 $21 $40 $00 $09 $4D $44 $DD $23 $E1 $25 $20 $E8 $11 $F4
.db $FF $DD $19 $21 $40 $00 $09 $4D $44 $DD $5E $00 $16 $00 $DD $6E
.db $01 $D5 $E5 $CD $61 $6C $E1 $11 $00 $D1 $26 $00 $4C $CD $09 $6E
.db $21 $22 $3B $11 $04 $D1 $CD $A6 $35 $E1 $26 $00 $4C $11 $00 $D1
.db $CD $09 $6E $21 $28 $3B $11 $01 $D1 $3E $2F $12 $13 $3E $20 $12
.db $13 $12 $1B $1B $CD $A6 $35 $DD $2B $DD $2B $DD $2B $21 $8C $3B
.db $11 $F6 $67 $E5 $CD $A6 $35 $E1 $11 $F6 $67 $DD $7E $04 $A7 $28
.db $17 $11 $E6 $67 $DD $7E $00 $A7 $28 $0E $11 $09 $68 $E6 $7F $4F
.db $1A $13 $3C $20 $FB $0D $20 $F8 $CD $A6 $35 $DD $E1 $E1 $D1 $C1
.db $C9 $C5 $D5 $26 $00 $29 $29 $4D $44 $29 $5D $54 $29 $29 $19 $09
.db $D1 $0E $00 $7A $B3 $28 $0C $4B $44 $0B $3E $FF $A7 $3C $ED $52
.db $30 $FB $4F $11 $00 $D1 $AF $12 $13 $06 $0B $79 $FE $04 $38 $02
.db $3E $04 $3C $12 $13 $79 $D6 $04 $30 $01 $AF $4F $10 $ED $3E $06
.db $12 $13 $3E $FF $12 $E1 $11 $00 $D1 $CD $A6 $35 $C9

; Data from 6CAD to 6DC8 (284 bytes)
_DATA_6CAD_:
.db $C8 $38 $43 $5D $08 $39 $5C $60 $48 $39 $B0 $60 $88 $39 $14 $61
.db $C8 $39 $C5 $62 $08 $3A $22 $61 $48 $3A $06 $61 $88 $3A $CB $61
.db $C8 $3A $6C $6A $00 $00 $C8 $38 $E0 $5F $08 $39 $E0 $5F $48 $39
.db $E0 $5F $88 $39 $E0 $5F $C8 $39 $E0 $5F $08 $3A $E0 $5F $48 $3A
.db $E0 $5F $88 $3A $E0 $5F $C8 $3A $53 $60 $00 $00 $C8 $38 $E0 $5F
.db $08 $39 $E0 $5F $48 $39 $E0 $5F $88 $39 $E0 $5F $C8 $39 $53 $60
.db $00 $00 $C8 $38 $E0 $5F $08 $39 $E0 $5F $48 $39 $E0 $5F $88 $39
.db $E0 $5F $C8 $39 $E0 $5F $08 $3A $E0 $5F $48 $3A $E0 $5F $88 $3A
.db $E0 $5F $C8 $3A $E0 $5F $08 $3B $53 $60 $00 $00 $20 $47 $6F $6C
.db $64 $6D $6F $6F $6E $20 $20 $20 $20 $20 $FF $00 $20 $20 $53 $74
.db $75 $72 $6D $20 $20 $20 $20 $20 $20 $20 $FF $00 $20 $43 $61 $72
.db $61 $6D $6F $6E $20 $20 $20 $20 $20 $20 $FF $00 $20 $52 $61 $69
.db $73 $74 $6C $69 $6E $20 $20 $20 $20 $20 $FF $00 $20 $20 $54 $61
.db $6E $69 $73 $20 $20 $20 $20 $20 $20 $20 $FF $00 $54 $61 $73 $73
.db $6C $65 $68 $6F $66 $66 $20 $20 $20 $20 $FF $00 $52 $69 $76 $65
.db $72 $77 $69 $6E $64 $20 $20 $20 $20 $20 $FF $00 $20 $20 $46 $6C
.db $69 $6E $74 $20 $20 $20 $20 $20 $20 $20 $FF $00 $44 $65 $61 $64
.db $20 $63 $68 $61 $72 $61 $63 $74 $65 $72 $FF $00

_LABEL_6DC9_:
	sub $09
	add a, a
	push hl
	push de
	ld e, a
	ld d, $00
	ld hl, $DE7A
	add hl, de
	inc (hl)
	jr nz, +
	inc hl
	inc (hl)
+:
	ld hl, _DATA_6DF3_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld hl, (_RAM_DE74_)
	add hl, de
	ld (_RAM_DE74_), hl
	ld a, (_RAM_DE76_)
	adc a, $00
	ld (_RAM_DE76_), a
	pop de
	pop hl
	ret

; Data from 6DF3 to 6E08 (22 bytes)
_DATA_6DF3_:
.db $52 $00 $AF $00 $0D $02 $3F $02 $78 $00 $1C $00 $0E $00 $3C $00
.db $3B $01 $58 $02 $D0 $07

_LABEL_6E09_:
	ld a, $20
	ld (de), a
	ld a, c
	and a
	jr z, +
	ld a, $06
	ld bc, $15A0
	add hl, bc
	jr nc, +
	inc a
	ld bc, $2710
	and a
	sbc hl, bc
+:
	ld bc, $2710
	call _LABEL_6E76_
	cp $0A
	jr c, +
	ld a, $39
	ld b, $05
-:
	ld (de), a
	inc de
	djnz -
	ld a, $FF
	ld (de), a
	ret

+:
	call ++
	ld bc, $03E8
	call +++
	call ++
	ld bc, $0064
	call +++
	call ++
	ld bc, $000A
	call +++
	call ++
	ld a, l
	call ++
	ld a, (de)
	cp $20
	jr nz, +
	ld a, $30
	ld (de), a
+:
	inc de
	ld a, $FF
	ld (de), a
	ret

++:
	and a
	jr nz, +
	ld a, (de)
	cp $20
	jr z, _LABEL_6E6E_
	ld a, $30
_LABEL_6E6E_:
	inc de
	ld (de), a
	ret

+:
	or $30
	jr _LABEL_6E6E_

+++:
	xor a
_LABEL_6E76_:
	inc a
	and a
	sbc hl, bc
	jr nc, _LABEL_6E76_
	add hl, bc
	dec a
	ret

; Data from 6E7F to 6E92 (20 bytes)
_DATA_6E7F_:
.db $58 $39 $76 $39 $98 $39 $B6 $39 $D8 $39 $F6 $39 $18 $3A $36 $3A
.db $58 $3A $76 $3A

; Data from 6E93 to 6F04 (114 bytes)
_DATA_6E93_:
.dsb 34, $00
.db $88 $13 $64 $00 $64 $00 $64 $00 $64 $00 $64 $00 $0A $00 $0A $00
.db $0A $00 $0A $00 $0A $00 $32 $00 $32 $00 $32 $00 $32 $00 $32
.dsb 17, $00
.db $0A $00 $00 $00 $00 $00 $64
.dsb 21, $00
.db $10 $27 $00 $00

; Data from 6F05 to 6F05 (1 bytes)
_DATA_6F05_:
.db $FF

_LABEL_6F06_HUD:	;THIS DRAWS THE HUD.
	ld a, (_RAM_DEBB_DEBUG)	;THIS SEEMS LIKE A DEBUG FLAG.
	and a
	jp z, _LABEL_7117_ENABLE_DEBUG	;IF THIS IS ZERO, ENABLE THE DEBUG PARTS, WHICH REPLACE THE HUD, AND DISABLES SOME FUNCTIONS.
	di
	ld a, $04
	ld (_RAM_FFFF_), a
	ld hl, _DATA_125C0_HUD_DATA
	ld de, $1000
	ld bc, $11C0
	call _LABEL_48C_LOAD_VDP_DATA	;COMMENTING THIS OUT, THE HUD'S TILES WONT GET LOADED.
	ld hl, _DATA_121C0_HUD_TILEMAP	;THIS IS THE HUD TILEMAP. PORTRAITS AND COMPASS DIRECTIONS ARE NOT AFFECTED.
	ld de, $3C00
	ld b, $00
	ex de, hl
	call _LABEL_4BB_VDP_RAM_WRITE	;THIS WRITES TO THE APPROPRIATE PART OF THE TILEMAP, AND IT'S FOR THE HUD.
-:
	ld a, (de)
	out (Port_VDPData), a
	inc de
	ld a, (de)
	inc de
	or $18
	out (Port_VDPData), a
	djnz -
	call _LABEL_6F3B__UPD_HUD	;DRAW COMPANIONS, LIFE BARS AND SO ON.
	ret

_LABEL_6F3B__UPD_HUD:	;UPDATE THE INFORMATION ON THE HUD ITSELF.
	ld a, (_RAM_DEBB_DEBUG)
	and a
	jp z, _LABEL_714D_	;IF THE DEBUG IS ON, WE WILL SEE THE VALUES, AND SOME SEMI-FUNCTIONAL HUD, AND A WORKING MENU.
	ld a, $04
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_DE5B_)
	ld a, h
	or l
	ld de, _DATA_12306_	;THIS IS THE NON-COMBAT TILES ON THE COMPASS.
	jr z, +
	ld de, _DATA_12550_	;COMMENT IT OUT, AND THE COMBAT TEXT WONT APPEAR.
+:
	ld hl, $3D46
	call _LABEL_4BB_VDP_RAM_WRITE
	ld b, $04	;THIS TELLS THE PROGRAM HOW MANY TILES TO DRAW. (COMBAT TEXT)
-:
	ld a, (de)
	out (Port_VDPData), a
	inc de
	ld a, (de)
	inc de
	or $08
	out (Port_VDPData), a
	djnz -		;WRITE DATA INTO VRAM.
	ld hl, (_RAM_D900_)	;IN RAM DETAILS FOR THE PLAYER, DIRECTION AND SUCH.
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld c, l
	ld hl, (_RAM_DE60_)	;NO IDEA ABOUT THIS RIGHT NOW.
	ld b, $00
-:
	ld e, l
	ld d, h
	ld a, (hl)
	and a
	jr z, +++
	dec a
	cp c
	jr Nc, ++	;IF THIS IS C, THE COMPASS ARROWS ARE NOT UPDATED, ONLY ONCE, THEN THEY STAY HOW THEY WERE.
	inc hl
	ld a, (hl)
	cp c
	jr c, ++	;SET TO NC, IT INVERTS THE MARKS ON THE COMPASS. SO IF ITS ORANGE, YOU CAN'T GO IN THAT DIRECTION.
	inc hl
	bit 7, (hl)
	jr z, +		;CHANGING THIS TO NZ PREVENTS THE COMPASS FROM WORKING ENTIRELY.
	ld a, (_RAM_DE71_)
	and a
	jr z, ++	;I CAN'T SEEM TO NOTICE ANYTHING DIFFERENT, BUT FREEZING THE RAM VALUE WILL MESS UP MUSIC, (DISABLE A CHANNEL)
+:
	ld a, (hl)
	or b
	ld b, a
++:
	ld hl, $0005
	add hl, de
	jr -

+++:
	ld a, $04
	ld (_RAM_FFFF_), a
	ld a, (_RAM_DE53_COMPASS)
	add a, a
	add a, a
	add a, a
	ld hl, _DATA_70F7_COMPASS_TILEMAP	;SEEMS TO BE THE TILEMAP OF THE COMPASS.
	ld e, a
	ld d, $00
	add hl, de
	ex de, hl
	ld a, b
	and $01
	ld hl, $3C48			;TILEMAP COORDINATES ON SCREEN.
	call _LABEL_70C4_DRAW_COMPASS	;DRAW COMPASS MARKER (UP)
	xor a
	ld hl, $3CCE
	call _LABEL_70C4_DRAW_COMPASS	;RIGHT
	ld a, b
	and $02
	ld hl, $3D88
	call _LABEL_70C4_DRAW_COMPASS	;DOWN
	xor a
	ld hl, $3CC2
	call _LABEL_70C4_DRAW_COMPASS	;LEFT
	ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS
	ld iy, _DATA_706B_HUD_PORTRAITS
	ld b, $08	;COPY THE DEFAULT PORTRAIT ORDER FROM ROM TO RAM.
	;HOW MANY COMPANIONS WE HAVE TO DRAW.
_LABEL_6FE1_:	;DRAWING ON THE HUD, PLAYER HEALTH AND SO ON.
	push bc
	ld a, (ix+0)
	add a, a
	ld hl, _DATA_7059_CHAR_PORTRAIT_MAP
	ld c, a
	ld b, $00
	add hl, bc
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld hl, _DATA_121C0_HUD_TILEMAP
	add hl, de
	ex de, hl
	ld l, c
	ld h, $00
	add hl, hl
	add hl, hl
	ld c, l
	ld b, h
	add hl, hl
	add hl, hl
	add hl, bc
	ld bc, _RAM_DBB5_GOLDMOON_HP	;THIS IS GOLDMOON'S HEALTH. WHY DO WE CHECK THIS? I GUESS FOR RIVERWIND, IF HE HAS TO INTERVENE.
	add hl, bc
	ld c, $08
	ld a, (hl)
	and a
	jr nz, _COMP_DEAD_	;IF THIS IS JUST Z, THE PLAYERS PORTRAITS ARE IN GREYSCALE.(DEAD) BUT NOT DEAD THOUGH
	ld c, $00
 _COMP_DEAD_:			;PLAYER IS DEAD, AND MARK THE PORTRAIT IN GREYSCALE.
	push de
	dec hl
	ld e, (hl)
	ld l, a
	ld a, e
	and a
	jr Nz, _COMP_RLYDED_	;IF THIS IS Z, THE PLAYERS ARE -REALLY- DEAD. (NOT RESURRECTABLE.) NOT DEAD THOUGH.
	pop de
	ld de, (_DATA_706B_HUD_PORTRAITS - 2)
	ld a, l
	ld hl, $A1C0
	add hl, de
	ex de, hl
	ld l, a
	push de
 _COMP_RLYDED_:		;SHOW THE COMPANIONS AS NON-RESURRECTABLE, IF THAT'S THE CASE,
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld d, $00
	add hl, de
	dec hl
	ld a, $FF
	and a
-:
	inc a
	sbc hl, de
	jr nc, -	;SET IT TO C, AND THE LIFE BARS ARE NOT SHOWN\ZEROED OUT.
	sub $08
	neg
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_12480_LIFEBAR_TILES
	add hl, de
	ex de, hl
	ld l, (iy+0)
	ld h, (iy+1)
	push hl
	call _LABEL_70A2_DRAW_LIFEBAR
	pop hl
	pop de
	inc hl
	inc hl
	call +
	inc iy
	inc iy
	inc ix
	pop bc
	djnz _LABEL_6FE1_
	ret

; Data from 7059 to 706A (18 bytes)
_DATA_7059_CHAR_PORTRAIT_MAP:
.db $00 $02 $06 $02 $0C $02 $12 $02 $18 $02 $1E $02 $24 $02 $2A $02
.db $30 $02

; Data from 706B to 707A (16 bytes)
_DATA_706B_HUD_PORTRAITS:
.db $56 $3C $60 $3C $6A $3C $74 $3C $16 $3D $20 $3D $2A $3D $34 $3D

+:	;CHARACTER\COMPANION PORTRAITS ARE DRAWN IN LINES FROM BOTTOM TO TOP.
	call +	;LAST LINE.
	call +	;MIDDLE LINE
+:	;UPPER LINE.
	call _LABEL_4BB_VDP_RAM_WRITE
	ld b, $03 ;03	;COLUMN NUMBER.
-:
	ld a, (de)
	inc de
	out (Port_VDPData), a
	ld a, (de)
	inc de
	or c
	out (Port_VDPData), a
	djnz -
	ld a, $3A
;	nop
;	nop
	add a, e
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	ld a, $40
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	ret

_LABEL_70A2_DRAW_LIFEBAR:
	ld b, $03
-:
	call _LABEL_4BB_VDP_RAM_WRITE
	ld a, (de)
	inc de
	out (Port_VDPData), a
	ld a, $40
	add a, l
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	ld a, (de)
	or $08
	inc de
	out (Port_VDPData), a
	ld a, $3E
	add a, e
	ld e, a
	ld a, d
	adc a, $00
	ld d, a
	djnz -
	ret

_LABEL_70C4_DRAW_COMPASS:
	push af
	call _LABEL_4BB_VDP_RAM_WRITE
	pop af
	ex de, hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	push hl
	ld hl, _DATA_121C0_HUD_TILEMAP
	add hl, de
	ex de, hl
	pop hl
	inc hl
	and a
	jr z, +
	ld a, $40
	add a, e
	ld e, a
	ld a, $00
	adc a, d
	ld d, a
+:
	ld a, (de)
	out (Port_VDPData), a
	inc de
	ld a, (de)
	or $08
	out (Port_VDPData), a
	neg
	inc de
	ld a, (de)
	out (Port_VDPData), a
	inc de
	ld a, (de)
	or $08
	out (Port_VDPData), a
	ex de, hl
	ret

; Data from 70F7 to 7116 (32 bytes)
_DATA_70F7_COMPASS_TILEMAP:
.db $80 $03 $84 $03 $88 $03 $8C $03 $84 $03 $88 $03 $8C $03 $80 $03
.db $88 $03 $8C $03 $80 $03 $84 $03 $8C $03 $80 $03 $84 $03 $88 $03

_LABEL_7117_ENABLE_DEBUG:
;THIS WILL PRINT SOME EXTRA INFO ON THE HUD, AND DISABLE THE REST OF THE INFO YOU ARE NORMALLY GIVEN.
	ld a, $1F
	ld (_RAM_FFFF_), a	;SELECT THE LAST BANK.
	ld hl, _DATA_7C000_CHAR_BIO_TEXT
	ld de, $1000	;WHERE WE WILL DRAW ON THE TILEMAP.
	ld bc, $0C00
	di
	call _LABEL_48C_LOAD_VDP_DATA
	ei
	ld hl, $0080
	ld (_RAM_DE62_), hl
	ld hl, $3C00
	ld de, _DATA_6F05_	;THIS IS AN $FF.
	di
	call _LABEL_35A6_	;NO IDEA YET, IT DOES NOT DO ANYTHING NOTICEABLE.
	ld a, (_RAM_DE52_ROOM_NR)	;GET THE ROOM NR WHERE THE PARTY IS.
	ld hl, $3CA0	;THIS IS THE TILEMAP VALUE FOR THE ROOM NR DISPLAY.
	call _LABEL_3582_
	ld a, (_RAM_DE59_LEFT_DEBUG_NR)
	ld hl, $3CCC
	call _LABEL_3582_
	ret

_LABEL_714D_:
	ld hl, (_RAM_D900_)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld a, l
	ld hl, $3C36
	di
	call _LABEL_3582_
	ld a, (_RAM_DE52_ROOM_NR)
	ld hl, $3CA0
	call _LABEL_3582_
	ld a, (_RAM_DE59_LEFT_DEBUG_NR)
	ld hl, $3CCC
	call _LABEL_3582_
	ei
	ret

_LABEL_717C_:
	ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS
	ld b, $07
--:
	ld a, (ix+0)
	call _LABEL_6573_
	ld de, _RAM_DBB5_GOLDMOON_HP
	add hl, de
	ld a, (hl)
	and a
	jr nz, _LABEL_71B9_
	dec hl
	ld a, (hl)
	and a
	jr z, ++
	ld c, b
	push ix
	pop iy
-:
	inc iy
	ld a, (iy+0)
	call _LABEL_6573_
	add hl, de
	ld a, (hl)
	and a
	jr nz, +
	dec c
	jr nz, -
	jp _LABEL_71B9_

+:
	ld c, (iy+0)
	ld a, (ix+0)
	ld (iy+0), a
	ld (ix+0), c
_LABEL_71B9_:
	inc ix
	djnz --
	ret

++:
	dec de
	ld c, b
	push ix
	pop iy
-:
	inc iy
	ld a, (iy+0)
	call _LABEL_6573_
	add hl, de
	ld a, (hl)
	and a
	jr nz, +
	dec c
	jr nz, -
	inc de
	jp _LABEL_71B9_

+:
	ld c, (iy+0)
	ld a, (ix+0)
	ld (iy+0), a
	ld (ix+0), c
	inc de
	jp _LABEL_71B9_

; Data from 71E8 to 721B (52 bytes)
.db $3A $C3 $DE $CD $73 $65 $11 $B4 $DB $19 $46 $23 $7E $4F $B0 $C8
.db $06 $07 $DD $21 $BC $DE $DD $7E $00 $CD $73 $65 $19 $7E $A7 $28
.db $05 $DD $23 $10 $F1 $C9 $DD $4E $00 $3A $C3 $DE $DD $77 $00 $79
.db $32 $C3 $DE $C9

_LABEL_721C_INIT_NME:	;THIS SEEMS TO DO SOMETHING.
	ld b, $05	;$05
	ld ix, _RAM_D91C_
	ld de, $001C
-:
	ld (ix+9), $00	;D925
	ld (ix+10), $00	;D926
	ld (ix+22), $00	;D932
	ld (ix+23), $00	;D933
	ld (ix+24), $00	;D934
	ld (ix+5), $00	;D921
	add ix, de	;D938
	djnz -		;INITING SOME RAM VALUES TO ZERO.
	ld a, (_RAM_DE52_ROOM_NR)	;GET THE ROOM NUMBER. EXAMPLE ROOM 1.
	ld ix, _RAM_D91C_		;SET THE IX TO THE TABLE'S FIRST ADDRESS WE JUST RESET.
	ld hl, _DATA_72D1_
	inc hl	;$72D2
	ld b, a	;1-->B
_LABEL_724D_NME:
	ld de, $0006
-:
	ld a, (hl)	;$01 IS ON THAT ADDRESS.
	and a
	ret z		;RETURN IF VALUE 0.	IF THIS IS NZ, THEN MONSTERS WON'T SPAWN. TRAPS AND ITEMS STILL WORK THOUGH.
	cp b		;COMPARE WITH ROOM NR.
	jr z, +		;IF THE ROOM NR IS THE SAME AS THE READ VAL, JUMP TO +. THE NZ HERE WILL SPAWN AS MANY ENEMIES AS THE ENGINE CAN, AND MAKE THE GAME REALLY REALLY HARD.
	ret nc		;SETTING TO C WILL DISABLE SOME ENEMIES, BUT NOT ALL OF THEM. THE HUMAN-LIKE ENEMIES WILL NOT SPAWN.
	add hl, de
	jr -

+:
	dec hl
	ld a, (hl)
	add a, $08
	ld (ix+9), a
	cp $10 ;$13
	jr nz, +		;SET TO Z WILL SPAWN SOME ENEMY TYPES EARLY IN THE GAME, NEEDS INVESTIGATION.
	ld (ix+5), $01
+:
	inc hl
	inc hl
	ld a, (hl)
	ld (ix+0), a
	ld (ix+16), a
	inc hl
	ld a, (hl)
	ld (ix+1), a
	ld (ix+17), a
	ld (ix+7), $00
	ld (ix+2), $74
	ld (ix+18), $74
	ld (ix+3), $00
	ld (ix+19), $00
	ld a, (ix+9)
	sub $09
	ex de, hl
	add a, a
	push bc
	ld c, a
	ld b, $00
	ld hl, _DATA_72BB_
	add hl, bc
	ld a, (hl)
	inc hl
	ld c, (hl)
	ex de, hl
	ld b, a
-:
	ld a, $06
	call _LABEL_652_
	add a, c
	inc a
	ld c, a
	djnz -
	pop bc
	ld (ix+8), a
	ld de, $001C
	add ix, de
	inc hl
	inc hl
	inc hl
	inc hl
	
	jr _LABEL_724D_NME

; Data from 72BB to 72D0 (22 bytes)
_DATA_72BB_:
.db $02 $03 $04 $01 $06 $0C $05 $03 $03 $00 $03 $FE $03 $FE $04 $00
.db $04 $03 $06 $00 $01 $50

; Data from 72D1 to 7564 (660 bytes)
_DATA_72D1_:
.db $05 $02 $0f $01 $0f $00 $02 $01 $20 $03 $00 $00 $08 $01 $E8 $03  ;.db $01 $01 $90 $01 $00 $00 $02 $01 $20 $03 $00 $00 $08 $01 $E8 $03
.db $00 $00 $08 $02 $A4 $00 $00 $00 $02 $02 $C8 $00 $00 $00 $06 $02
.db $18 $01 $00 $00 $07 $03 $2C $01 $00 $00 $01 $03 $26 $02 $00 $00
.db $08 $03 $B2 $02 $00 $00 $08 $04 $40 $00 $00 $00 $01 $04 $58 $02
.db $00 $00 $07 $05 $A4 $00 $00 $00 $06 $05 $90 $01 $00 $00 $07 $06
.db $C8 $00 $00 $00 $06 $06 $2C $01 $00 $00 $01 $07 $C2 $01 $00 $00
.db $08 $07 $C8 $00 $00 $00 $02 $08 $B0 $00 $00 $00 $01 $09 $8C $00
.db $00 $00 $01 $09 $BC $02 $00 $00 $08 $09 $B8 $06 $00 $00 $01 $0B
.db $50 $00 $00 $00 $06 $0B $B8 $01 $00 $00 $0A $0C $50 $00 $00 $00
.db $05 $0C $D0 $00 $00 $00 $09 $0C $50 $01 $00 $00 $04 $0D $34 $00
.db $00 $00 $05 $0D $FA $00 $00 $00 $02 $0D $58 $02 $00 $00 $0A $0D
.db $E8 $03 $00 $00 $05 $0E $64 $00 $00 $00 $0A $0E $2C $01 $00 $00
.db $09 $0E $F4 $01 $00 $00 $03 $0E $84 $03 $00 $00 $04 $0E $4C $04
.db $00 $00 $07 $0F $32 $00 $00 $00 $06 $0F $50 $00 $00 $00 $09 $12
.db $A0 $00 $00 $00 $07 $12 $82 $00 $00 $00 $01 $15 $A0 $00 $00 $00
.db $07 $16 $C0 $00 $00 $00 $0A $18 $5E $01 $00 $00 $07 $19 $38 $00
.db $00 $00 $07 $19 $46 $00 $00 $00 $06 $19 $54 $00 $00 $00 $07 $19
.db $60 $00 $00 $00 $09 $1A $C8 $00 $00 $00 $09 $1B $1C $02 $00 $00
.db $03 $1C $50 $00 $00 $00 $09 $1E $20 $03 $00 $00 $09 $1E $40 $06
.db $00 $00 $03 $23 $96 $00 $00 $00 $09 $24 $E0 $01 $00 $00 $01 $26
.db $A0 $00 $00 $00 $02 $26 $40 $01 $00 $00 $08 $26 $E0 $01 $00 $00
.db $0B $28 $A0 $02 $00 $00 $09 $29 $A0 $00 $00 $00 $09 $2B $40 $01
.db $00 $00 $03 $2D $A0 $00 $00 $00 $09 $2F $20 $03 $00 $00 $01 $32
.db $40 $01 $00 $00 $07 $33 $96 $00 $00 $00 $07 $33 $C8 $00 $00 $00
.db $01 $34 $A0 $00 $00 $00 $07 $34 $FA $00 $00 $00 $07 $34 $5E $01
.db $00 $00 $01 $36 $C2 $01 $00 $00 $08 $36 $04 $01 $00 $00 $05 $37
.db $40 $01 $00 $00 $09 $37 $80 $02 $00 $00 $05 $37 $40 $06 $00 $00
.db $09 $38 $E0 $01 $00 $00 $05 $38 $C0 $04 $00 $00 $03 $39 $40 $01
.db $00 $00 $05 $39 $40 $04 $00 $00 $03 $39 $C0 $06 $00 $00 $09 $3A
.db $00 $01 $00 $00 $0A $3A $20 $03 $00 $00 $04 $3A $80 $04 $00 $00
.db $05 $3A $40 $06 $00 $00 $09 $3B $00 $01 $00 $00 $05 $3B $C0 $02
.db $00 $00 $09 $3B $C0 $04 $00 $00 $09 $3B $DC $05 $00 $00 $03 $3B
.db $40 $06 $00 $00 $03 $3C $40 $01 $00 $00 $04 $3D $40 $01 $00 $00
.db $03 $3D $E0 $01 $00 $00 $09 $3D $80 $02 $00 $00 $0A $3D $20 $03
.db $00 $00 $05 $3D $60 $04 $00 $00 $09 $3F $80 $01 $00 $00 $05 $3F
.db $40 $04 $00 $00 $09 $40 $40 $01 $00 $00 $03 $40 $00 $04 $00 $00
.db $05 $41 $C0 $00 $00 $00 $03 $41 $40 $05 $00 $00 $09 $44 $C0 $04
.db $00 $00 $0A $45 $C0 $01 $00 $00 $09 $45 $C0 $02 $00 $00 $04 $45
.db $40 $04 $00 $00 $05 $45 $C0 $05 $00 $00 $05 $48 $80 $06 $00 $00
.db $09 $4B $80 $05 $00 $00 $09 $4C $80 $05 $00 $00 $05 $51 $00 $03
.db $00 $00 $04 $52 $00 $06
.dsb 14, $00

_LABEL_7565_:
	ld b, $06
	ld ix, _RAM_D9A8_
_LABEL_756B_:
	ld a, (ix+9)
	and a
	jp z, _LABEL_76D2_
	cp $14
	jp nz, _LABEL_76D2_
	ld a, (ix+25)
	and a
	jr z, +
	dec a
	ld (ix+25), a
	jp nz, _LABEL_76D2_
	ld hl, _DATA_7D2C_
	ld e, (ix+24)
	ld d, $00
	add hl, de
	ld a, (hl)
	ld (ix+7), a
	jp _LABEL_76D2_

+:
	ld hl, _DATA_7D0B_
	ld e, (ix+7)
	ld d, $00
	add hl, de
	ld e, (hl)
	ld (ix+7), e
	ld a, (ix+8)
	and a
	jr z, +
	dec a
	jr nz, +
	call _LABEL_7A33_
	jp _LABEL_76D2_

+:
	ld (ix+8), a
	ld l, (ix+2)
	ld h, (ix+3)
	ld e, (ix+23)
	ld a, e
	and $80
	add a, a
	sbc a, $00
	ld d, a
	add hl, de
	ld (ix+2), l
	ld (ix+3), h
	ld l, (ix+0)
	ld h, (ix+1)
	ld e, (ix+22)
	ld a, e
	and $80
	add a, a
	sbc a, $00
	ld d, a
	add hl, de
	ld (ix+0), l
	ld (ix+1), h
	ld a, (ix+24)
	cp $09
	jp z, _LABEL_76D2_
	cp $0A
	jp z, _LABEL_7851_
	cp $0E
	jp z, _LABEL_7851_
	cp $10
	jp z, _LABEL_7851_
	cp $11
	jp z, _LABEL_7851_
	cp $12
	jp z, _LABEL_7851_
	cp $13
	jp z, _LABEL_7851_
	cp $14
	jp z, _LABEL_7851_
	cp $15
	jp z, _LABEL_7851_
	and a
	sbc hl, de
	ex de, hl
	ld iy, _RAM_D91C_
	push bc
	ld b, $05
_LABEL_761C_:
	ld a, (iy+9)
	and a
	jp z, _LABEL_76C6_
	ld a, (iy+10)
	cp $11
	jp z, _LABEL_76C6_
	ld a, (iy+0)
	add a, $0E
	ld l, a
	ld a, (iy+1)
	adc a, $00
	ld h, a
	and a
	sbc hl, de
	ld a, (ix+24)
	cp $0F
	jr nz, +
	ld a, (_RAM_DEF4_)
	dec a
	jr nz, +
	push hl
	push de
	ld l, (ix+0)
	ld h, (ix+1)
	ld de, $0276
	and a
	sbc hl, de
	pop de
	pop hl
	jr c, _LABEL_76C6_
	jp _LABEL_7771_

+:
	ld a, h
	and a
	jp nz, _LABEL_76C6_
	ld a, l
	cp $1C
	jr nc, _LABEL_76C6_
	ld c, (ix+2)
	ld a, $78
	sub c
	sub $08
	ld c, a
	ld a, (iy+9)
	call _LABEL_5851_
	cp c
	jr c, _LABEL_76C6_
	ld a, (ix+24)
	cp $03
	jp z, _LABEL_771A_
	cp $06
	jp z, _LABEL_76DC_
	cp $07
	jp z, _LABEL_76E5_
	and a
	jp z, _LABEL_7740_
	cp $01
	jp z, _LABEL_7749_
	cp $02
	jp z, _LABEL_773A_
	cp $08
	jp z, _LABEL_772E_
	cp $05
	jp z, _LABEL_7734_
	cp $04
	jp z, _LABEL_76E9_
	cp $0B
	jp z, _LABEL_774F_
	cp $0C
	jp z, _LABEL_7754_
	cp $0D
	jp z, _LABEL_775A_
	cp $0F
	jp z, _LABEL_7771_
	ld (iy+9), $00
	ld (ix+9), $00
	pop bc
	jr _LABEL_76D2_

_LABEL_76C6_:
	ld a, b
	ld bc, $001C
	add iy, bc
	ld b, a
	dec b
	jp nz, _LABEL_761C_
_LABEL_76D1_:
	pop bc
_LABEL_76D2_:
	ld de, $001C
	add ix, de
	dec b
	jp nz, _LABEL_756B_
	ret

_LABEL_76DC_:
	ld a, $1E
	call _LABEL_652_
	add a, $04
	jr _LABEL_7724_

_LABEL_76E5_:
	ld a, $05
	jr ++

_LABEL_76E9_:
	ld a, (iy+9)
	cp $13
	jr z, +
	cp $0C
	jp z, _LABEL_76C6_
	cp $0D
	jp z, _LABEL_76C6_
	cp $15
	jp z, _LABEL_76C6_
	ld (iy+24), a
	sub $09
	ld (iy+7), a
	ld (iy+9), $15
	ld (iy+23), $81
	ld (iy+22), $FF
+:
	ld (ix+9), $00
	jp _LABEL_76D1_

_LABEL_771A_:
	ld a, $0A
++:
	call _LABEL_652_
	add a, $0A
	add a, a
	add a, a
	add a, a
_LABEL_7724_:
	ld (iy+5), a
	ld (ix+9), $00
	jp _LABEL_76D1_

_LABEL_772E_:
	ld bc, $0802
	jp _LABEL_7830_

_LABEL_7734_:
	ld bc, $0404
	jp _LABEL_7830_

_LABEL_773A_:
	ld bc, $0703
	jp _LABEL_7830_

_LABEL_7740_:
	ld a, (iy+9)
	ld bc, $0600
	jp _LABEL_7830_

_LABEL_7749_:
	ld bc, $0601
	jp _LABEL_7830_

_LABEL_774F_:
	ld bc, $0907
	jr +

_LABEL_7754_:
	ld bc, $0400
	jp _LABEL_7830_

_LABEL_775A_:
	ld bc, $0C02
+:
	push bc
	ld e, (iy+0)
	ld d, (iy+1)
	ld (ix+0), e
	ld (ix+1), d
	call _LABEL_7A33_
	pop bc
	jp _LABEL_7830_

_LABEL_7771_:
	ld (iy+9), $00
	ld (ix+9), $00
	ld a, $02
	ld (_RAM_DEF4_), a
	ld hl, (_RAM_DE74_)
	ld de, $2710
	add hl, de
	ld (_RAM_DE74_), hl
	ld a, (_RAM_DE76_)
	adc a, $00
	ld (_RAM_DE76_), a
	ld hl, (_RAM_DE3C_)
	ld (_RAM_DE3E_), hl
	ld a, $08
	ld hl, _RAM_C834_
	ld de, _RAM_C824_
-:
	push hl
	push de
	ld bc, $0004
	ldir
	pop de
	pop hl
	inc h
	inc d
	dec a
	jr nz, -
	ld a, $08
	ld hl, _RAM_C824_
	ld de, $C828
-:
	push hl
	push de
	ld bc, $000C
	ldir
	pop de
	pop hl
	inc h
	inc d
	dec a
	jr nz, -
	ld bc, $08C0
	ld hl, $3800
	ld de, _RAM_C800_
_LABEL_77CB_:
	push bc
	push de
	push hl
	call _LABEL_4BB_VDP_RAM_WRITE
	ld a, (de)
	ld h, c
	ld l, a
	ld c, (hl)
	inc h
	ld d, (hl)
	inc h
	ld e, (hl)
	inc h
	ld h, (hl)
	ld b, $10
	di
-:
	ld a, c
	nop
	out (Port_VDPData), a
	neg
	neg
	ld a, d
	out (Port_VDPData), a
	neg
	neg
	ld a, e
	out (Port_VDPData), a
	neg
	neg
	ld a, h
	out (Port_VDPData), a
	djnz -
	ei
	pop hl
	ld de, $0040
	add hl, de
	pop de
	pop bc
	ld a, c
	xor $04
	ld c, a
	bit 2, c
	jp nz, _LABEL_77CB_
	inc d
	djnz _LABEL_77CB_
	push ix
	push bc
	push de
	ld de, $001C
	ld ix, _RAM_D9A8_
	ld b, $06
-:
	ld a, (ix+24)
	cp $0E
	jr nz, +
	ld (ix+9), $00
+:
	add ix, de
	djnz -
	pop de
	pop bc
	pop ix
	jp _LABEL_76D1_

_LABEL_7830_:
	ld (ix+9), $00
	ld a, (iy+9)
	cp $13
	jp z, _LABEL_76D1_
	ld a, b
	call _LABEL_652_
	inc a
	add a, c
	ld c, a
	push ix
	push iy
	pop ix
	call _LABEL_54ED_
	pop ix
	jp _LABEL_76D1_

_LABEL_7851_:
	push bc
	ld a, (_RAM_DEF2_)
	and a
	jp nz, _LABEL_76D1_
	ld a, (_RAM_DEF4_)
	dec a
	jr nz, +
	ld bc, $FFB4
	add hl, bc
+:
	ex de, hl
	ld a, (_RAM_D909_)
	and a
	jp z, _LABEL_78F3_
	ld a, (_RAM_D90A_)
	cp $11
	jp z, _LABEL_78F3_
	ld a, (_RAM_D900_)
	add a, $0E
	ld l, a
	ld a, (_RAM_D901_)
	adc a, $00
	ld h, a
	and a
	sbc hl, de
	ld a, h
	and a
	jr nz, _LABEL_78F3_
	ld h, $1C
	ld a, (ix+24)
	cp $10
	jr nz, +
	ld h, $40
+:
	ld a, l
	cp h
	jr nc, _LABEL_78F3_
	ld a, (ix+24)
	cp $14
	jr z, +
	cp $12
	jr nz, ++
	ld a, l
	cp $06
	jp c, _LABEL_78F3_
	cp $17
	jp nc, _LABEL_78F3_
	jr ++

+:
	ld a, l
	cp $14
	jr nc, _LABEL_78F3_
	ld a, l
	cp $40
	jr nc, _LABEL_78F3_
++:
	ld a, (_RAM_D902_)
	ld c, a
	ld a, $78
	sub c
	ld c, a
	ld a, (_RAM_D909_)
	call _LABEL_5851_
	cp c
	jr c, _LABEL_78F3_
	ld a, (ix+24)
	cp $0A
	jp z, _LABEL_790E_
	cp $0E
	jp z, _LABEL_794B_
	cp $10
	jp z, +
	cp $11
	jp z, +
	cp $13
	jp z, ++
	cp $12
	jp z, ++++
	cp $14
	jp z, +++
	cp $15
	jp z, _LABEL_793A_
_LABEL_78F3_:
	jp _LABEL_76D1_

+:
	ld bc, $0101
	jp _LABEL_795C_

++:
	ld bc, $0601
	jp _LABEL_7958_

+++:
	ld bc, $0304
	jp _LABEL_795C_

++++:
	ld bc, $0302
	jp _LABEL_795C_

_LABEL_790E_:
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	and a
	jr nz, ++
	ld a, (_RAM_DBB1_)
	cp $01
	jr nz, ++
	ld a, (_RAM_DEEA_)
	cp $C8
	jr z, ++
	add a, $04
	cp $C8
	jr c, +
	ld a, $C8
+:
	ld (_RAM_DEEA_), a
	ld (ix+9), $00
	jp _LABEL_76D1_

++:
	ld bc, $0804
	jp _LABEL_7958_

_LABEL_793A_:
	ld (ix+9), $00
	ld a, (_RAM_DEF0_)
	and a
	jp nz, _LABEL_76D1_
	ld bc, $0408
	jp _LABEL_795C_

_LABEL_794B_:
	ld a, (ix+7)
	cp $18
	jr c, _LABEL_78F3_
	ld bc, $140C
	jp _LABEL_795C_

_LABEL_7958_:
	ld (ix+9), $00
_LABEL_795C_:
	ld a, b
	call _LABEL_652_
	inc a
	add a, c
	ld c, a
	push ix
	ld ix, $D900
	call _LABEL_5689_
	pop ix
	jp _LABEL_76D1_

_LABEL_7971_INIT_TRAPS:
	ld b, $06
	ld ix, _RAM_D9A8_
	ld de, $001C
-:
	ld (ix+9), $00
	ld (ix+10), $00
	ld (ix+22), $00
	ld (ix+23), $00
	ld (ix+24), $00
	ld (ix+25), $00
	ld (ix+8), $00
	add ix, de
	djnz -
_LABEL_799A_:
	ld a, (_RAM_DE52_ROOM_NR)
	ld ix, _RAM_DCE0_
	ld (ix+0), $00
	ld (ix+1), $00
	ld hl, _RAM_D601_
	ld b, a
	ld c, $96
	ld de, $0005
--:
	ld a, (hl)
	cp b
	jr z, +
-:
	add hl, de
	dec c
	jr nz, --
	ret

+:
	dec hl
	ld a, (hl)
	inc hl
	and a
	jr z, -
	cp $40
	jr c, -
	dec hl
	ld (ix+0), l
	ld (ix+1), h
	ld (ix+2), $00
	ld (ix+3), $00
	inc ix
	inc ix
	inc hl
	jr -

_LABEL_79DB_:
	ld hl, _RAM_D600_
	ld de, $0005
-:
	ld a, (hl)
	and a
	ret z
	add hl, de
	jr -

_LABEL_79E7_SPAWN_ITEMTRAP:
	ld hl, _DATA_7B16_
	ld de, _RAM_D600_
	ld b, $96
-:
	ld a, (hl)
	and a
	jr z, _LABEL_7A01_
	ld c, $04
	ldi
	ldi
	ldi
	ldi
	ldi
	jr -

_LABEL_7A01_:
	xor a
	ld hl, _DATA_AB_
	ld c, $05
	ldi
	ldi
	ldi
	ldi
	ldi
	djnz _LABEL_7A01_
	ret

_LABEL_7A14_:
	push af
	push bc
	push de
	push hl
	push ix
	ld b, $06
	ld ix, _RAM_D9A8_
-:
	call _LABEL_7A33_
	ld de, $001C
	add ix, de
	dec b
	jp nz, -
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret

_LABEL_7A33_:
	ld (ix+9), $00
	ld a, (ix+24)
	cp $0B
	jr z, +
	cp $0D
	jr z, +
	cp $0F
	ret nz
+:
	ld (ix+24), $00
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld hl, _RAM_D600_
	ld de, $0005
	ld c, a
-:
	ld a, (hl)
	and a
	jr z, +
	add hl, de
	jr -

+:
	ld a, c
	ld c, $01
	cp $0F
	jr z, +
	ld c, $09
	cp $0B
	jr z, +
	ld c, $0B
+:
	ld (hl), c
	ld a, (_RAM_DE52_ROOM_NR)
	inc hl
	ld (hl), a
	ld a, (ix+0)
	and $F0
	ld e, a
	ld d, (ix+1)
	ld a, d
	bit 7, a
	jr z, +
	ld de, $0000
+:
	push hl
	push bc
	call _LABEL_7AFE_
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	and a
	sbc hl, de
	jr nc, +
	add hl, de
	ld e, l
	ld d, h
+:
	ld l, c
	ld h, b
	ld c, (ix+4)
	call _LABEL_7AED_
-:
	ld b, (hl)
	ld a, b
	and a
	jr z, +
	inc hl
	ld a, (hl)
	inc hl
	cp e
	jr c, -
	ld d, a
	ld a, b
	cp e
	jr nc, -
	ld a, c
	and a
	ld e, d
	inc e
	ld a, c
	and a
	jr z, +
	ld e, b
	dec e
+:
	ld d, $00
	ex de, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	pop bc
	pop hl
	push de
	call _LABEL_7AED_
	inc hl
	ld (hl), e
	inc hl
	ld (hl), $00
	inc hl
	ld (hl), $00
	ld hl, $CE00
	ld d, $00
	add hl, de
	ld (hl), $FF
	pop de
	call _LABEL_325E_
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret

_LABEL_7AE7_:
	ex de, hl
	call _LABEL_7AED_
	ex de, hl
	ret

_LABEL_7AED_:
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	srl d
	rr e
	ret

_LABEL_7AFE_:
	ld a, (_RAM_DE52_ROOM_NR)
	add a, a
	ld hl, _DATA_1343_LVL_POINTERS - 2
	ld c, a
	ld b, $00
	add hl, bc
	ld c, (hl)
	inc hl
	ld h, (hl)
	ld l, c
	ld a, (hl)
	ld bc, $0004
	add hl, bc
	ld c, (hl)
	inc hl
	ld b, (hl)
	ret

; Data from 7B16 to 7D0A (501 bytes)
_DATA_7B16_:
.db $18 $01 $40 $00 $00 $17 $01 $17 $00 $00 $1C $02 $37 $00 $00 $10
.db $02 $09 $00 $14 $45 $03 $30 $00 $80 $2F $03 $36 $00 $00 $2D $04
.db $01 $00 $00 $2C $04 $10 $00 $40 $45 $04 $12 $00 $80 $44 $04 $08
.db $00 $80 $44 $04 $20 $00 $80 $31 $04 $26 $00 $60 $1A $05 $27 $00
.db $00 $20 $06 $34 $00 $00 $29 $07 $29 $1F $00 $29 $07 $2D $1F $00
.db $29 $07 $31 $1F $00 $45 $07 $21 $00 $80 $2D $08 $0C $00 $00 $1E
.db $09 $21 $00 $00 $44 $09 $50 $00 $80 $46 $09 $33 $00 $80 $33 $0B
.db $18 $1B $00 $19 $0B $1A $1B $00 $32 $0B $1C $1B $00 $19 $0B $1E
.db $1B $00 $14 $0B $04 $00 $00 $48 $0C $39 $00 $80 $38 $0C $02 $00
.db $00 $12 $0D $0A $1C $00 $13 $0D $0C $20 $00 $14 $0D $0E $20 $00
.db $15 $0D $2E $20 $00 $16 $0D $2C $20 $00 $32 $0E $02 $00 $00 $1E
.db $0F $0C $00 $00 $1F $0F $0E $00 $00 $2D $0F $02 $00 $00 $32 $0F
.db $08 $00 $00 $33 $0F $10 $00 $00 $33 $0F $12 $00 $00 $1C $12 $01
.db $16 $00 $1D $12 $04 $16 $00 $20 $12 $05 $00 $00 $45 $12 $06 $00
.db $80 $44 $12 $07 $00 $80 $19 $12 $08 $00 $00 $1B $12 $09 $00 $00
.db $10 $14 $02 $00 $14 $44 $14 $0A $00 $80 $34 $17 $32 $00 $00 $0E
.db $18 $14 $00 $0C $0F $18 $28 $00 $14 $35 $19 $01 $00 $00 $35 $19
.db $03 $00 $00 $18 $1A $06 $00 $00 $20 $1C $0A $00 $00 $31 $1E $2E
.db $00 $00 $10 $1E $3C $00 $00 $36 $1F $30 $00 $00 $19 $20 $12 $14
.db $00 $1A $21 $12 $14 $00 $1B $22 $12 $14 $00 $0E $24 $02 $00 $0C
.db $0F $26 $04 $00 $14 $44 $26 $0F $00 $80 $44 $28 $0A $00 $80 $37
.db $28 $3D $00 $00 $33 $2B $08 $00 $00 $20 $2F $14 $00 $00 $47 $35
.db $1A $00 $80 $48 $35 $18 $00 $80 $47 $35 $16 $00 $80 $48 $35 $14
.db $00 $80 $47 $35 $12 $00 $80 $48 $35 $10 $00 $80 $47 $35 $0E $00
.db $80 $44 $37 $13 $00 $80 $44 $37 $4A $00 $80 $44 $37 $4D $00 $80
.db $0F $37 $46 $00 $14 $2E $37 $3C $00 $00 $30 $38 $76 $00 $00 $20
.db $38 $30 $00 $00 $2F $3A $04 $00 $00 $1E $3C $08 $00 $00 $2D $3C
.db $30 $00 $00 $30 $3C $3C $00 $00 $2F $3E $16 $00 $00 $2F $3E $18
.db $00 $00 $2F $3E $1A $00 $00 $1F $3F $04 $00 $00 $2E $40 $52 $00
.db $00 $2E $41 $6E $00 $00 $44 $44 $1E $00 $80 $11 $44 $20 $00 $40
.db $1F $46 $42 $00 $00 $44 $4B $5C $00 $80 $44 $4B $6B $00 $80 $31
.db $50 $2C $00 $00 $00

; Data from 7D0B to 7D2B (33 bytes)
_DATA_7D0B_:
.db $00 $02 $01 $04 $03 $06 $05 $08 $07 $0A $09 $0C $0B $0E $0D $0F
.db $10 $11 $12 $13 $14 $16 $17 $18 $19 $1A $1B $19 $1D $1C $1F $20
.db $1E

; Data from 7D2C to 7D41 (22 bytes)
_DATA_7D2C_:
.db $11 $11 $0D $03 $05 $07 $01 $09 $0B $09 $09 $0F $00 $12 $15 $14
.db $13 $1C $1E $11 $01 $07

_LABEL_7D42_LOAD_PLYRSTAT:	;SIMPLY LOAD FROM ROM INTO RAM THE PLAYER STATS.
	ld hl, _DATA_7D6C_PLYRSTATS
	ld de, _RAM_DBA0_PLYR_STATS
	ld b, $08	;08	;HOW MANY PLAYERS ARE TOTALLY.
--:
	ld c, $21
-:
	ldi
	ld a, c
	and a
	jr nz, -
	ld c, $07
	ld a, l
	sub c
	ld l, a
	ld a, h
	sbc a, $00
	ld h, a
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	djnz --
	ret

; Data from 7D6C to 7E73 (264 bytes)
_DATA_7D6C_PLYRSTATS:
.dsb 16, $00
.db $01 $01 $00 $00 $13 $13 $00 $05 $00 $05 $0C $0C $10 $0C $0E $11
.db $06
.dsb 16, $00
.db $0A $00 $00 $00 $1D $1D $02 $06 $00 $05 $11 $0E $0B $10 $0C $0C
.db $05
.dsb 16, $00
.db $04 $09 $00 $00 $24 $24 $02 $06 $00 $05 $14 $0C $0A $11 $0B $0F
.db $06
.dsb 16, $00
.db $02 $02 $00 $00 $08 $08 $03 $03 $00 $00 $0A $11 $0E $0A $10 $0A
.db $05 $0E $14
.dsb 14, $00
.db $04 $83 $00 $00 $23 $23 $02 $05 $00 $02 $10 $0C $0D $0C $10 $0F
.db $04 $10 $14
.dsb 14, $00
.db $07 $86 $00 $00 $0F $0F $04 $04 $00 $00 $0D $09 $0C $0E $10 $0B
.db $05 $0E $14
.dsb 14, $00
.db $04 $83 $00 $00 $22 $22 $02 $05 $00 $05 $13 $0D $0E $0D $10 $0D
.db $05
.dsb 16, $00
.db $0B $0B $00 $00 $2A $2A $02 $04 $00 $02 $10 $07 $0C $12 $0A $0D
.db $06

_LABEL_7E74_:
	call _LABEL_6573_
	ld de, $DBB5
	add hl, de
	ld (hl), $00
	push hl
	ld de, $0005
	add hl, de
	ld e, l
	ld d, h
	ld (hl), $00
	inc de
	ld bc, $0006
	ldir
	pop hl
	dec hl
	ret

; Data from 7E8F to 7E99 (11 bytes)
_DATA_7E8F_:
.db $36 $E0 $FF $FF $FF $FF $FB $00 $06 $00 $FF

_LABEL_7E9A_:
	di
	ld hl, _DATA_7E8F_
	call _LABEL_61F_WRITE_VDP_REG	;WE WRITE THE INITIAL VDP REGISTERS, GET A DEFAULT VDP STATE.
	ei
	halt
	halt
	halt
	ld hl, _RAM_DE9D_
	ld bc, $0000
	halt
	ld a, (hl)
-:
	inc bc
	cp (hl)
	jr z, - ;THIS IS SOME WAITING RIGHT HERE, BUT IT'S NOT REALLY NECESSARY.
	di
	ld a, b
	cp $0D
	jp nc, _LABEL_7E9A_
	cp $08
	jp c, _LABEL_7E9A_	;USELESS COMPARISON,WE'LL BRANCH BACK ANYWAYS.
	ld h, b
	ld l, c
	ld de, $0A41
	and a
	sbc hl, de
	ld a, $00
	jr nc, +		;WON'T GET TAKEN.
	ld a, $01
+:
	ld (_RAM_DE23_CONSOLE_REGION), a	;GET THE CONSOLE'S REGION, AND THEN SET UP THE CORRECT LEGAL SCREEN. 0 IS PAL, ANYTHING ELSE IS NTSC.
	ret

_LABEL_7ECF_DRAW_NORMAL_HUD_NODEBUG:
	xor a
	ld l, a
	ld h, a
	ld (_RAM_DE5B_), hl
	ld (_RAM_DE74_), hl
	ld (_RAM_DE76_), a
	ld (_RAM_DE96_), a
	ld (_RAM_DE56_), a
	ld (_RAM_DE55_WATERFALL), a
	ld (_RAM_DEE5_), a
	ld (_RAM_DEEE_), a
	ld (_RAM_DEF1_), a
	ld (_RAM_DE54_), a
	ld (_RAM_DEF4_), a
	ld (_RAM_DEF3_), a
	ld (_RAM_DEF2_), a
	ld (_RAM_DEF0_), a
	ld (_RAM_DE71_), a
	inc a
	ld (_RAM_DEBB_DEBUG), a
	ld a, (_RAM_DE6D_)
	ld (_RAM_DE6C_), a
	xor a
	ld (_RAM_DE6D_), a
	ld a, $FF
	ld (_RAM_DEE6_), a
	ld (_RAM_DEE8_), a
	ld hl, _RAM_DE7A_
	ld de, _RAM_DE7A_ + 1
	ld bc, $0015
	ld (hl), $00
	ldir
	ld hl, _RAM_DCF2_
	ld de, _RAM_DCF2_ + 1
	ld bc, $001F
	ld (hl), $00
	ldir
	ld hl, $0064
	ld (_RAM_DEEC_), hl
	add hl, hl
	ld (_RAM_DEEA_), hl
	ret

; Data from 7F3A to 7FEF (182 bytes)
.dsb 182, $00

.BANK 1 SLOT 1
.ORG $0000

; Data from 7FF0 to 7FFF (16 bytes)
.db $54 $4D $52 $20 $53 $45 $47 $41 $20 $20 $CA $20 $03 $90 $20 $40

.BANK 2
.ORG $0000

; Data from 8000 to A739 (10042 bytes)
.incbin "HOTL_mod_DATA_8000_.inc"

; Data from A73A to A7C1 (136 bytes)
_DATA_A73A_TEXT:
.db $FE $A2 $3D $50 $72 $65 $73 $73 $20 $42 $75 $74 $74 $6F $6E $FF
.dsb 12, $20
.db $4D $49 $4E $20 $20 $20 $20 $20 $20 $20 $4D $41 $58 $0D $53 $74
.db $72 $65 $6E $67 $74 $68 $0D $49 $6E $74 $65 $6C $6C $69 $67 $65
.db $6E $63 $65 $0D $57 $69 $73 $64 $6F $6D $0D $43 $6F $6E $73 $74
.db $69 $74 $75 $74 $69 $6F $6E $0D $44 $65 $78 $74 $65 $72 $69 $74
.db $79 $0D $43 $68 $61 $72 $69 $73 $6D $61 $0D $0D $48 $69 $74 $20
.db $70 $6F $69 $6E $74 $73 $0D $0D $55 $73 $69 $6E $67 $3A $FF $20
.db $20 $20 $20 $20 $20 $53 $43 $4F $52 $45 $0D $0D

; Data from A7C2 to A870 (175 bytes)
_DATA_A7C2_:
.db $20 $20 $20 $20 $4D $6F $6E $73 $74 $65 $72 $73 $20 $6B $69 $6C
.db $6C $65 $64 $3A $0D $0D $42 $61 $61 $7A $20 $20 $20 $20 $20 $20
.db $20 $20 $42 $6F $7A $61 $6B $0D $54 $72 $6F $6C $6C $20 $20 $20
.db $20 $20 $20 $20 $57 $72 $61 $69 $74 $68 $0D $53 $70 $65 $63 $74
.db $72 $61 $6C $20 $20 $20 $20 $41 $67 $68 $61 $72 $20 $6C $72 $67
.db $0D $41 $67 $68 $61 $72 $20 $20 $20 $20 $20 $20 $20 $4D $65 $6E
.db $0D $53 $70 $69 $64 $65 $72 $20 $20 $20 $20 $20 $20 $48 $61 $74
.db $63 $68 $6C $69 $6E $67 $0D $0D $50 $61 $72 $74 $79 $20 $45 $78
.db $70 $65 $72 $69 $65 $6E $63 $65 $0D $0D $50 $6F $69 $6E $74 $73
.db $20 $66 $6F $72 $20 $43 $6F $6D $62 $61 $74 $3A $0D $50 $6F $69
.db $6E $74 $73 $20 $66 $6F $72 $20 $69 $74 $65 $6D $73 $3A $FF

; Data from A871 to AC6B (1019 bytes)
_DATA_A871_:
.db $20 $20 $4D $41 $49 $4E $20 $4D $45 $4E $55 $0D $48 $65 $72 $6F
.db $20 $73 $65 $6C $65 $63 $74 $0D $4D $61 $67 $69 $63 $20 $75 $73
.db $65 $72 $20 $73 $70 $65 $6C $6C $73 $0D $43 $6C $65 $72 $69 $63
.db $61 $6C $20 $73 $74 $61 $66 $66 $20 $73 $70 $65 $6C $6C $73 $0D
.db $55 $73 $65 $0D $54 $61 $6B $65 $0D $47 $69 $76 $65 $0D $44 $72
.db $6F $70 $0D $53 $63 $6F $72 $65 $0D $45 $78 $69 $74 $20 $6D $65
.db $6E $75 $FF $0D $0D $0D $54 $68 $65 $20 $6D $6F $6E $73 $74 $65
.db $72 $73 $20 $61 $70 $70 $65 $61 $72 $0D $0D $74 $6F $20 $73 $6C
.db $6F $77 $20 $64 $6F $77 $6E $FF $0D $0D $0D $54 $68 $65 $20 $70
.db $6F $74 $69 $6F $6E $20 $63 $75 $72 $65 $73 $0D $0D $73 $6F $6D
.db $65 $20 $6F $66 $20 $79 $6F $75 $72 $20 $77 $6F $75 $6E $64 $73
.db $FF $0D $0D $0D $59 $6F $75 $20 $66 $65 $65 $6C $20 $73 $74 $72
.db $6F $6E $67 $65 $72 $FF $0D $0D $0D $59 $6F $75 $20 $66 $65 $65
.db $6C $20 $6D $6F $72 $65 $0D $0D $63 $6F $6E $66 $69 $64 $65 $6E
.db $74 $FF $0D $0D $0D $59 $6F $75 $20 $66 $65 $65 $6C $20 $6D $6F
.db $72 $65 $0D $0D $63 $6F $6E $66 $69 $64 $65 $6E $74 $20 $77 $65
.db $61 $72 $69 $6E $67 $0D $0D $74 $68 $65 $20 $72 $69 $6E $67 $FF
.db $20 $20 $20 $54 $41 $4B $45 $20 $4D $45 $4E $55 $0D $0D $0D $0D
.db $59 $6F $75 $20 $63 $61 $6E $6E $6F $74 $20 $63 $61 $72 $72 $79
.db $20 $61 $6E $79 $0D $0D $6D $6F $72 $65 $20 $69 $74 $65 $6D $73
.db $0D $0D $0D $45 $78 $69 $74 $20 $6D $65 $6E $75 $FF $20 $20 $20
.db $47 $49 $56 $45 $20 $4D $45 $4E $55 $0D $0D $0D $73 $65 $6C $65
.db $63 $74 $65 $64 $20 $63 $68 $61 $72 $61 $63 $74 $65 $72 $0D $0D
.db $63 $61 $6E $6E $6F $74 $20 $63 $61 $72 $72 $79 $20 $61 $6E $79
.db $0D $0D $6D $6F $72 $65 $20 $69 $74 $65 $6D $73 $0D $0D $45 $78
.db $69 $74 $20 $6D $65 $6E $75 $FF $4D $41 $47 $49 $43 $20 $55 $53
.db $45 $52 $20 $53 $50 $45 $4C $4C $53 $0D $0D $0D $20 $20 $52 $61
.db $69 $73 $74 $6C $69 $6E $20 $68 $61 $73 $20 $6E $6F $74 $0D $0D
.db $20 $20 $20 $20 $72 $65 $61 $64 $69 $65 $64 $20 $74 $68 $65 $0D
.db $0D $20 $20 $53 $74 $61 $66 $66 $20 $6F $66 $20 $4D $61 $67 $69
.db $75 $73 $0D $0D $45 $78 $69 $74 $20 $6D $65 $6E $75 $FF $4D $41
.db $47 $49 $43 $20 $55 $53 $45 $52 $20 $53 $50 $45 $4C $4C $53 $0D
.db $0D $0D $52 $61 $69 $73 $74 $6C $69 $6E $20 $69 $73 $20 $6E $6F
.db $74 $20 $6F $6E $65 $20 $6F $66 $0D $0D $20 $20 $74 $68 $65 $20
.db $66 $69 $72 $73 $74 $20 $66 $6F $75 $72 $0D $0D $20 $20 $20 $20
.db $63 $68 $61 $72 $61 $63 $74 $65 $72 $73 $0D $0D $45 $78 $69 $74
.db $20 $6D $65 $6E $75 $FF $0D $0D $0D $4F $6E $6C $79 $20 $52 $61
.db $69 $73 $74 $6C $69 $6E $20 $63 $61 $6E $0D $0D $75 $73 $65 $20
.db $74 $68 $69 $73 $20 $69 $74 $65 $6D $FF $0D $0D $0D $52 $61 $69
.db $73 $74 $6C $69 $6E $20 $6D $75 $73 $74 $20 $62 $65 $0D $0D $70
.db $61 $72 $74 $79 $20 $6C $65 $61 $64 $65 $72 $20 $74 $6F $20 $75
.db $73 $65 $0D $0D $74 $68 $69 $73 $20 $73 $70 $65 $6C $6C $FF $4D
.db $41 $47 $49 $43 $20 $55 $53 $45 $52 $20 $53 $50 $45 $4C $4C $53
.db $0D $43 $68 $61 $72 $6D $0D $53 $6C $65 $65 $70 $0D $4D $61 $67
.db $69 $63 $20 $6D $69 $73 $73 $69 $6C $65 $0D $57 $65 $62 $0D $44
.db $65 $74 $65 $63 $74 $20 $4D $61 $67 $69 $63 $0D $44 $65 $74 $65
.db $63 $74 $20 $69 $6E $76 $69 $73 $69 $62 $6C $65 $0D $46 $69 $6E
.db $61 $6C $20 $73 $74 $72 $69 $6B $65 $0D $42 $75 $72 $6E $69 $6E
.db $67 $20 $68 $61 $6E $64 $73 $0D $45 $78 $69 $74 $20 $6D $65 $6E
.db $75 $FF $0D $0D $0D $54 $68 $65 $20 $53 $74 $61 $66 $66 $20 $6F
.db $66 $20 $4D $61 $67 $69 $75 $73 $0D $0D $62 $75 $72 $6E $73 $20
.db $79 $6F $75 $72 $20 $68 $61 $6E $64 $73 $20 $61 $73 $0D $0D $79
.db $6F $75 $20 $74 $6F $75 $63 $68 $20 $69 $74 $FF $0D $0D $0D $41
.db $20 $62 $72 $69 $65 $66 $20 $62 $6C $75 $65 $20 $66 $6C $61 $72
.db $65 $0D $0D $62 $75 $72 $6E $73 $20 $79 $6F $75 $72 $20 $68 $61
.db $6E $64 $73 $20 $61 $73 $0D $0D $79 $6F $75 $20 $74 $6F $75 $63
.db $68 $20 $69 $74 $FF $0D $0D $0D $54 $68 $65 $20 $73 $74 $61 $66
.db $66 $20 $66 $6C $61 $72 $65 $73 $0D $0D $61 $73 $20 $79 $6F $75
.db $20 $61 $74 $74 $65 $6D $70 $74 $20 $74 $6F $20 $67 $69 $76 $65
.db $0D $0D $69 $74 $20 $74 $6F $20 $74 $68 $69 $73 $20 $63 $68 $61
.db $72 $61 $63 $74 $65 $72 $FF $0D $0D $0D $59 $6F $75 $20 $63 $61
.db $6E $20 $6E $6F $74 $20 $67 $69 $76 $65 $0D $0D $61 $6E $20 $6F
.db $62 $6A $65 $63 $74 $20 $74 $6F $20 $61 $0D $0D $64 $65 $61 $64
.db $20 $63 $68 $61 $72 $61 $63 $74 $65 $72 $FF

; Data from AC6C to AC9B (48 bytes)
_DATA_AC6C_:
.db $57 $41 $54 $45 $52 $46 $41 $4C $4C $0D $0D $0D $54 $68 $65 $20
.db $77 $61 $74 $65 $72 $66 $61 $6C $6C $20 $63 $75 $72 $65 $73 $20
.db $61 $6C $6C $0D $79 $6F $75 $72 $20 $77 $6F $75 $6E $64 $73 $FF

; Data from AC9C to ACD1 (54 bytes)
_DATA_AC9C_:
.db $57 $41 $54 $45 $52 $46 $41 $4C $4C $0D $0D $0D $54 $68 $65 $20
.db $77 $61 $74 $65 $72 $66 $61 $6C $6C $20 $68 $61 $73 $20 $6E $6F
.db $0D $65 $66 $66 $65 $63 $74 $20 $6F $6E $20 $79 $6F $75 $72 $20
.db $70 $61 $72 $74 $79 $FF

; Data from ACD2 to ACFB (42 bytes)
_DATA_ACD2_:
.db $0D $0D $0D $54 $61 $73 $73 $6C $65 $68 $6F $66 $66 $20 $6C $6F
.db $63 $61 $74 $65 $73 $0D $0D $61 $6E $64 $20 $72 $65 $6D $6F $76
.db $65 $73 $20 $61 $20 $74 $72 $61 $70 $FF

; Data from ACFC to AD31 (54 bytes)
_DATA_ACFC_:
.db $0D $0D $0D $52 $69 $76 $65 $72 $77 $69 $6E $64 $20 $6D $6F $76
.db $65 $73 $20 $74 $6F $0D $0D $74 $68 $65 $20 $66 $72 $6F $6E $74
.db $20 $74 $6F $0D $0D $70 $72 $6F $74 $65 $63 $74 $20 $47 $6F $6C
.db $64 $6D $6F $6F $6E $FF

; Data from AD32 to AEF1 (448 bytes)
_DATA_AD32_:
.db $0D $0D $0D $59 $6F $75 $20 $68 $65 $61 $72 $20 $61 $6C $61 $72
.db $6D $0D $0D $62 $65 $6C $6C $73 $20 $69 $6E $20 $74 $68 $65 $20
.db $64 $69 $73 $74 $61 $6E $63 $65 $FF $43 $4C $45 $52 $49 $43 $41
.db $4C $20 $53 $54 $41 $46 $46 $20 $53 $50 $45 $4C $4C $53 $0D $0D
.db $0D $43 $68 $61 $72 $61 $63 $74 $65 $72 $73 $20 $31 $20 $74 $6F
.db $20 $34 $0D $0D $20 $20 $61 $72 $65 $20 $6E $6F $74 $20 $68 $6F
.db $6C $64 $69 $6E $67 $20 $74 $68 $65 $0D $0D $20 $20 $42 $6C $75
.db $65 $20 $43 $72 $79 $73 $74 $61 $6C $20 $53 $74 $61 $66 $66 $0D
.db $0D $45 $78 $69 $74 $20 $6D $65 $6E $75 $FF $43 $4C $45 $52 $49
.db $43 $41 $4C $20 $53 $54 $41 $46 $46 $20 $53 $50 $45 $4C $4C $53
.db $0D $43 $75 $72 $65 $20 $6C $69 $67 $68 $74 $20 $77 $6F $75 $6E
.db $64 $73 $0D $50 $72 $6F $74 $65 $63 $74 $69 $6F $6E $20 $66 $72
.db $6F $6D $20 $65 $76 $69 $6C $0D $46 $69 $6E $64 $20 $74 $72 $61
.db $70 $73 $0D $48 $6F $6C $64 $20 $70 $65 $72 $73 $6F $6E $0D $53
.db $70 $69 $72 $69 $74 $75 $61 $6C $20 $68 $61 $6D $6D $65 $72 $0D
.db $50 $72 $61 $79 $65 $72 $0D $43 $75 $72 $65 $20 $63 $72 $69 $74
.db $69 $63 $61 $6C $20 $77 $6F $75 $6E $64 $73 $0D $52 $61 $69 $73
.db $65 $20 $64 $65 $61 $64 $0D $44 $65 $66 $6C $65 $63 $74 $20 $64
.db $72 $61 $67 $6F $6E $20 $62 $72 $65 $61 $74 $68 $0D $45 $78 $69
.db $74 $20 $6D $65 $6E $75 $FF $43 $4C $45 $52 $49 $43 $41 $4C $20
.db $53 $54 $41 $46 $46 $20 $53 $50 $45 $4C $4C $53 $0D $43 $75 $72
.db $65 $20 $6C $69 $67 $68 $74 $20 $77 $6F $75 $6E $64 $73 $0D $46
.db $69 $6E $64 $20 $74 $72 $61 $70 $73 $0D $43 $75 $72 $65 $20 $63
.db $72 $69 $74 $69 $63 $61 $6C $20 $77 $6F $75 $6E $64 $73 $0D $44
.db $65 $66 $6C $65 $63 $74 $20 $64 $72 $61 $67 $6F $6E $20 $62 $72
.db $65 $61 $74 $68 $0D $45 $78 $69 $74 $20 $6D $65 $6E $75 $FF $0D
.db $0D $0D $52 $61 $69 $73 $74 $6C $69 $6E $20 $70 $72 $65 $70 $61
.db $72 $65 $73 $0D $0D $74 $68 $69 $73 $20 $73 $70 $65 $6C $6C $FF

; Data from AEF2 to BFFF (4366 bytes)
_DATA_AEF2_:
.incbin "HOTL_mod_DATA_AEF2_.inc"

.BANK 3
.ORG $0000

; Data from C000 to FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_C000_.inc"

.BANK 4
.ORG $0000

; Data from 10000 to 121BF (8640 bytes)
.incbin "HOTL_mod_DATA_10000_.inc"

; Data from 121C0 to 12305 (326 bytes)
_DATA_121C0_HUD_TILEMAP:
.db $80 $00 $81 $00 $81 $00 $81 $00 $81 $00 $81 $00 $81 $00 $81 $00
.db $81 $00 $82 $00 $83 $00 $84 $00 $85 $00 $86 $00 $84 $00 $87 $00
.db $84 $00 $85 $00 $86 $00 $84 $00 $87 $00 $84 $00 $85 $00 $86 $00
.db $84 $00 $87 $00 $84 $00 $85 $00 $86 $00 $84 $00 $88 $00 $89 $00
.db $8A $00 $8B $00 $8C $00 $8B $00 $8B $00 $8B $00 $8B $00 $8C $02
.db $8B $00 $8D $00 $8E $00 $89 $00 $89 $00 $89 $00 $89 $00 $8F $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $8F $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $8F $00 $89 $00 $89 $00 $89 $00 $89 $00 $8F $00 $89 $00
.db $8A $00 $8B $00 $8B $00 $90 $00 $8B $00 $8B $00 $90 $02 $8B $00
.db $8B $00 $8D $00 $91 $00 $89 $00 $89 $00 $89 $00 $89 $00 $92 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $92 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $92 $00 $89 $00 $89 $00 $89 $00 $89 $00 $93 $00 $89 $00
.db $8A $00 $8B $00 $8B $00 $94 $00 $90 $00 $90 $02 $94 $02 $8B $00
.db $8B $00 $8D $00 $95 $00 $89 $00 $89 $00 $89 $00 $89 $00 $95 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $95 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $95 $00 $89 $00 $89 $00 $89 $00 $89 $00 $95 $00 $89 $00
.db $8A $00 $8B $00 $8B $00 $96 $00 $90 $02 $90 $00 $96 $02 $8B $00
.db $8B $00 $8D $00 $8F $00 $89 $00 $89 $00 $89 $00 $89 $00 $8F $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $8F $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $8F $00 $89 $00 $89 $00 $89 $00 $89 $00 $8F $00 $89 $00
.db $8A $00 $8B $00 $8B $00

; Data from 12306 to 1247F (378 bytes)
_DATA_12306_:
.db $90 $02 $8B $00 $8B $00 $90 $00 $8B $00 $8B $00 $8D $00 $91 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $92 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $92 $00 $89 $00 $89 $00 $89 $00 $89 $00 $92 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $93 $00 $89 $00 $8A $00 $8B $00 $8C $04
.db $8B $00 $8B $00 $8B $00 $8B $00 $8C $06 $8B $00 $8D $00 $97 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $98 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $98 $00 $89 $00 $89 $00 $89 $00 $89 $00 $98 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $99 $00 $89 $00 $9A $00 $9B $00 $9B $00
.db $9B $00 $9B $00 $9B $00 $9B $00 $9B $00 $9B $00 $9C $00 $9D $00
.db $9E $00 $9F $00 $A0 $00 $9E $00 $A1 $00 $9E $00 $9F $00 $A0 $00
.db $9E $00 $A1 $00 $9E $00 $9F $00 $A0 $00 $9E $00 $A1 $00 $9E $00
.db $9F $00 $A0 $00 $9E $00 $A2 $00 $89 $00 $A3 $00 $A4 $00 $A5 $00
.db $A6 $00 $A7 $00 $A8 $00 $A9 $00 $AA $00 $AB $00 $AC $00 $AD $00
.db $AE $00 $AF $00 $B0 $00 $B1 $00 $B2 $00 $B3 $00 $B4 $00 $B5 $00
.db $B6 $00 $B7 $00 $B8 $00 $B9 $00 $BA $00 $BB $00 $BC $00 $BD $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $BE $00 $BF $00 $C0 $00
.db $C1 $00 $C2 $00 $C3 $00 $C4 $00 $C5 $00 $C6 $00 $C7 $00 $C8 $00
.db $C9 $00 $CA $00 $CB $00 $CC $00 $CD $00 $CE $00 $CF $00 $D0 $00
.db $D1 $00 $D2 $00 $D3 $00 $D4 $00 $D5 $00 $89 $00 $D6 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $D7 $00 $D8 $00 $D9 $00
.db $DA $00 $DB $00 $DC $00 $DD $00 $DE $00 $DF $00 $E0 $00 $E1 $00
.db $E2 $00 $E3 $00 $E4 $00 $E5 $00 $E6 $00 $E7 $00 $E8 $00 $E9 $00
.db $EA $00 $EB $00 $EC $00 $ED $00 $EE $00 $89 $00 $EF $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00

; Data from 12480 to 1254F (208 bytes)
_DATA_12480_LIFEBAR_TILES:
.db $F0 $00 $F1 $00 $F2 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $F3 $00 $F3 $00 $F3 $00 $F4 $00 $F1 $00 $F5 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $F6 $00 $F6 $00 $F6 $00 $F6 $00 $F6 $00 $F6 $00 $F6 $00 $F7 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $F8 $00 $F9 $00 $FA $00 $FB $00 $FC $00 $FD $00 $FE $00 $FF $00

; Data from 12550 to 125BF (112 bytes)
_DATA_12550_:
.db $00 $01 $01 $01 $02 $01 $03 $01 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $04 $01 $05 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00

; Data from 125C0 to 13FFF (6720 bytes)
_DATA_125C0_HUD_DATA:
.incbin "HOTL_mod_DATA_125C0_.inc"

.BANK 5
.ORG $0000

; Data from 14000 to 17FFF (16384 bytes)
.incbin "HOTL_mod_DATA_14000_.inc"

.BANK 6
.ORG $0000

; Data from 18000 to 1BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_18000_.inc"

.BANK 7
.ORG $0000

; Data from 1C000 to 1FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_1C000_.inc"

.BANK 8
.ORG $0000

; Data from 20000 to 20077 (120 bytes)
_DATA_20000_:
.db $84 $80 $00 $00 $00 $00 $94 $80 $BE $81 $08 $00 $98 $8A $D2 $8B
.db $08 $00 $40 $96 $7A $97 $08 $00 $74 $A3 $26 $A4 $08 $00 $E8 $A9
.db $0A $AB $08 $00 $64 $B5 $86 $B6 $08 $00 $00 $80 $42 $81 $09 $00
.db $60 $8B $82 $8C $09 $00 $98 $94 $4A $95 $09 $00 $08 $9B $A2 $9B
.db $09 $00 $C0 $A1 $32 $A2 $09 $00 $A4 $A6 $E6 $A6 $09 $00 $C8 $A8
.db $42 $A9 $09 $00 $3C $AD $A6 $AD $09 $00 $B4 $AF $0E $B0 $09 $00
.db $BC $B1 $36 $B2 $09 $00 $2C $B6 $66 $B6 $09 $00 $8C $B7 $E6 $B7
.db $09 $00 $00 $80 $0A $80 $0A $00

; Data from 20078 to 2007B (4 bytes)
_DATA_20078_:
.db $EC $80 $EE $81

; Data from 2007C to 23FFF (16260 bytes)
_DATA_2007C_:
.incbin "HOTL_mod_DATA_2007C_.inc"

.BANK 9
.ORG $0000

; Data from 24000 to 27FFF (16384 bytes)
.incbin "HOTL_mod_DATA_24000_.inc"

.BANK 10
.ORG $0000

; Data from 28000 to 2BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_28000_.inc"

.BANK 11
.ORG $0000

; Data from 2C000 to 2FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_2C000_.inc"

.BANK 12
.ORG $0000

; Data from 30000 to 33FFF (16384 bytes)
.incbin "HOTL_mod_DATA_30000_.inc"

.BANK 13
.ORG $0000

; Data from 34000 to 37FFF (16384 bytes)
.incbin "HOTL_mod_DATA_34000_.inc"

.BANK 14
.ORG $0000

; Data from 38000 to 3BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_38000_.inc"

.BANK 15
.ORG $0000

; Data from 3C000 to 3FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_3C000_.inc"

.BANK 16
.ORG $0000

; Data from 40000 to 43FFF (16384 bytes)
.incbin "HOTL_mod_DATA_40000_.inc"

.BANK 17
.ORG $0000

; Data from 44000 to 47FFF (16384 bytes)
.incbin "HOTL_mod_DATA_44000_.inc"

.BANK 18
.ORG $0000

; Data from 48000 to 4BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_48000_.inc"

.BANK 19
.ORG $0000

; Data from 4C000 to 4FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_4C000_.inc"

.BANK 20
.ORG $0000

; Data from 50000 to 53FFF (16384 bytes)
.incbin "HOTL_mod_DATA_50000_.inc"

.BANK 21
.ORG $0000

; Data from 54000 to 57FFF (16384 bytes)
.incbin "HOTL_mod_DATA_54000_.inc"

.BANK 22
.ORG $0000

; Data from 58000 to 5BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_58000_.inc"

.BANK 23
.ORG $0000

; Data from 5C000 to 5FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_5C000_.inc"

.BANK 24
.ORG $0000

; Data from 60000 to 600E5 (230 bytes)
_DATA_60000_:
.dsb 34, $00
.db $E4 $0F $00 $0F $29 $0E $5D $0D $9C $0C $E7 $0B $3C $0B $9B $0A
.db $02 $0A $73 $09 $EB $08 $6B $08 $F2 $07 $80 $07 $14 $07 $AE $06
.db $4E $06 $F4 $05 $9E $05 $4D $05 $01 $05 $B9 $04 $75 $04 $35 $04
.db $F9 $03 $C0 $03 $8A $03 $57 $03 $27 $03 $FA $02 $CF $02 $A7 $02
.db $81 $02 $5D $02 $3B $02 $1B $02 $FC $01 $E0 $01 $C5 $01 $AC $01
.db $94 $01 $7D $01 $68 $01 $53 $01 $40 $01 $2E $01 $1D $01 $0D $01
.db $FE $00 $F0 $00 $E2 $00 $D6 $00 $CA $00 $BE $00 $B4 $00 $AA $00
.db $A0 $00 $97 $00 $8F $00 $87 $00 $7F $00 $78 $00 $71 $00 $6B $00
.db $65 $00 $5F $00 $5A $00 $55 $00 $50 $00 $4C $00 $47 $00 $43 $00
.db $40 $00 $3C $00 $39 $00 $35 $00 $32 $00 $30 $00 $2D $00 $2A $00
.db $28 $00 $26 $00 $24 $00 $22 $00 $20 $00 $1E $00 $1C $00 $1B $00
.db $19 $00 $18 $00 $16 $00 $15 $00 $14 $00 $13 $00 $12 $00 $11 $00
.db $10 $00 $0F $00

; 11th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 600E6 to 60126 (65 bytes)
_DATA_600E6_:
.db $13 $1E $01 $00 $01 $0C $0C $0C $0B $0B $0B $0A $0A $0A $09 $09
.db $09 $08 $08 $08 $08 $07 $07 $07 $07 $07 $07 $06 $06 $06 $06 $05
.db $05 $04 $00 $00 $00 $FF $01 $FE $02 $00 $02 $FE $02 $FF $01 $02
.db $FE $FF $01 $02 $FE $01 $FF
.dsb 10, $00

; 10th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 60127 to 60161 (59 bytes)
_DATA_60127_:
.db $13 $1B $01 $00 $01 $0E $0E $0D $0C $0B $0B $0A $0A $0A $0A $09
.db $09 $09 $09 $09 $08 $08 $07 $07 $06 $06 $05 $04 $03 $02 $01
.dsb 28, $00

; 2nd entry of Pointer Table from 6064E (indexed by unknown)
; Data from 60162 to 601E5 (132 bytes)
_DATA_60162_:
.db $13 $40 $01 $01 $0E $0E $0E $0E $0D $0D $0D $0D $0C $0C $0C $0C
.db $0B $0B $0B $0B $0A $0A $0A $0A $09 $09 $09 $09 $08 $08 $08 $08
.db $07 $07 $07 $07 $06 $06 $06 $06 $05 $05 $05 $05 $04 $04 $04 $04
.db $03 $03 $03 $03 $02 $02 $02 $02 $01 $01 $01 $01 $00 $00 $00 $00
.db $00 $00 $00 $00 $01 $64 $9D $00 $FF $00 $FF $00 $FF $00 $FF $00
.db $01 $00 $01 $00 $02 $00 $02 $00 $FE $00 $FE $00 $FE $00 $FE $00
.db $02 $00 $02
.dsb 33, $00

; 3rd entry of Pointer Table from 6064E (indexed by unknown)
; Data from 601E6 to 601FC (23 bytes)
_DATA_601E6_:
.db $13 $09 $01 $00 $01 $0A $0A $0A $0A $0A $0A $0A $0A $FF $00 $02
.db $02 $FE $FE $FE $02 $00 $00

; 7th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 601FD to 60258 (92 bytes)
_DATA_601FD_:
.db $13 $09 $01 $00 $01 $00 $00 $00 $00 $00 $00 $00 $00 $FF $28 $28
.db $28 $28 $28 $28 $28 $28 $00 $13 $20 $01 $00 $01 $06 $07 $08
.dsb 26, $09
.db $08 $07 $06 $00 $64 $9C $00 $01 $01 $FF $FF $FF $FF $01 $01 $01
.db $01 $FF $FF $FF $FF $01 $01 $01 $01 $FF $FF $FF $FF $01 $01 $01
.db $01 $00 $00

; 8th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 60259 to 60339 (225 bytes)
_DATA_60259_:
.db $13 $6E $01 $00 $01
.dsb 27, $0C
.dsb 16, $0B
.dsb 17, $0A
.dsb 16, $09
.dsb 9, $08
.db $07 $07 $07 $07 $07 $06 $06 $06 $06 $06 $06 $05 $05 $05 $05 $04
.db $04 $04 $04 $03 $03 $03 $02 $01
.dsb 61, $00
.db $01 $01 $01 $FF $FF $FF $FF $FF $FF $01 $01 $01 $01 $01 $01 $FF
.db $FF $FF $FF $FF $FF $01 $01 $01 $01 $01 $01 $FF $FF $FF $FF $FF
.db $FF $01 $01 $01 $01 $01 $01 $FF $FF $FF $FF $FF $01 $01 $01 $01
.db $FF $FF

; 9th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 6033A to 6045E (293 bytes)
_DATA_6033A_:
.db $13 $6E $01 $00 $01
.dsb 27, $0B
.dsb 17, $0A
.dsb 11, $09
.dsb 15, $08
.dsb 14, $07
.dsb 10, $06
.db $05 $05 $05 $05 $05 $05 $04 $04 $04 $04 $03 $03 $03 $02 $01
.dsb 61, $00
.db $01 $01 $01 $FF $FF $FF $FF $FF $FF $01 $01 $01 $01 $01 $01 $FF
.db $FF $FF $FF $FF $FF $01 $01 $01 $01 $01 $01 $FF $FF $FF $FF $FF
.db $FF $01 $01 $01 $01 $01 $01 $FF $FF $FF $FF $FF $01 $01 $01 $01
.db $FF $FF $0D $20 $01 $01 $08 $09 $0A
.dsb 26, $0B
.db $0A $09 $08
.dsb 32, $07

; 5th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 6045F to 60482 (36 bytes)
_DATA_6045F_:
.db $13 $10 $01 $01 $0E $0C $0A $08 $0C $0A $08 $06 $0A $08 $06 $04
.db $08 $06 $04 $00 $00 $28 $28 $28 $88 $28 $28 $28 $88 $28 $28 $28
.db $88 $28 $28 $28

; 6th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 60483 to 604A6 (36 bytes)
_DATA_60483_:
.db $13 $10 $01 $01 $0E $0C $0A $08 $06 $04 $02
.dsb 10, $00
.dsb 14, $3C
.db $1E

; 4th entry of Pointer Table from 6064E (indexed by unknown)
; Data from 604A7 to 6062B (389 bytes)
_DATA_604A7_:
.db $13 $C0 $00 $01 $01 $0F $0F $0E $0E $0E $0E $0E $0E
.dsb 12, $0D
.dsb 24, $0C
.dsb 48, $0B
.dsb 100, $0A
.dsb 192, $00

; Data from 6062C to 6062D (2 bytes)
_DATA_6062C_:
.db $3E $87

; Pointer Table from 6062E to 6064B (15 entries, indexed by _RAM_DD13_)
.dw _DATA_60BE2_ _DATA_61276_ _DATA_60666_ _DATA_6153E_ _DATA_61910_ _DATA_60666_ _DATA_60666_ _DATA_61CC2_
.dw _DATA_61D0D_ _DATA_61D7A_ _DATA_60666_ _DATA_61E11_ _DATA_6203A_ _DATA_6224F_ _DATA_60666_

; Data from 6064C to 6064D (2 bytes)
.db $00 $00

; Pointer Table from 6064E to 60663 (11 entries, indexed by unknown)
_DATA_6064E_:
.dw _DATA_61276_ _DATA_60162_ _DATA_601E6_ _DATA_604A7_ _DATA_6045F_ _DATA_60483_ _DATA_601FD_ _DATA_60259_
.dw _DATA_6033A_ _DATA_60127_ _DATA_600E6_

; Data from 60664 to 60665 (2 bytes)
.db $00 $00

; 3rd entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 60666 to 6066C (7 bytes)
_DATA_60666_:
.db $86 $9E $FE $00 $FE $9D $FF

; 1st entry of Pointer Table from 60732 (indexed by unknown)
; Data from 6066D to 606C9 (93 bytes)
_DATA_6066D_:
.db $0D $2C $01 $00
.dsb 17, $01
.db $0A $0A $0C $0C $0E $0E $0F $0F $0E $0E $0D $0D $0C $0C $0B $0B
.db $0A $0A $09 $09 $08 $08 $07 $07 $06 $06 $03
.dsb 17, $00
.db $14 $28 $32 $3C
.dsb 15, $FE
.db $FC $FA $F8 $F6 $EC $EC $EC $EC $EC

; 2nd entry of Pointer Table from 60732 (indexed by unknown)
; Data from 606CA to 606DC (19 bytes)
_DATA_606CA_:
.db $0D $07 $01 $00 $01 $0C $0B $00 $00 $00 $00 $00 $14 $FB $FB $FB
.db $FB $FB $FB

; 3rd entry of Pointer Table from 60732 (indexed by unknown)
; Data from 606DD to 6070B (47 bytes)
_DATA_606DD_:
.db $13 $15 $E0 $00 $01 $0F $0E $0E $0E $0D $0D $0C $0C $0C $0C $0C
.db $0B $0B $0B $0B $0A $0A $09 $09 $08 $00 $F4 $0C $00 $F4 $0C $00
.db $F8 $08 $00 $F8 $04 $04 $00 $04 $04 $00 $02 $02 $02 $02 $00

; 4th entry of Pointer Table from 60732 (indexed by unknown)
; Data from 6070C to 6071E (19 bytes)
_DATA_6070C_:
.db $13 $07 $00 $02 $01 $0C $07 $03 $03 $02 $02 $00 $00 $00 $00 $00
.db $00 $00 $00

; 5th entry of Pointer Table from 60732 (indexed by unknown)
; Data from 6071F to 60731 (19 bytes)
_DATA_6071F_:
.db $13 $07 $80 $03 $01 $0C $07 $03 $03 $02 $02 $00 $00 $00 $00 $00
.db $00 $00 $00

; Pointer Table from 60732 to 6073B (5 entries, indexed by unknown)
_DATA_60732_:
.dw _DATA_6066D_ _DATA_606CA_ _DATA_606DD_ _DATA_6070C_ _DATA_6071F_

; Data from 6073C to 60BE1 (1190 bytes)
.incbin "HOTL_mod_DATA_6073C_.inc"

; 1st entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 60BE2 to 61275 (1684 bytes)
_DATA_60BE2_:
.incbin "HOTL_mod_DATA_60BE2_.inc"

; 1st entry of Pointer Table from 6064E (indexed by unknown)
; Data from 61276 to 6153D (712 bytes)
_DATA_61276_:
.db $83 $37 $01 $30 $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33
.db $05 $00 $2B $3C $05 $00 $07 $3C $05 $00 $13 $3A $0B $00 $0D $33
.db $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $67 $30
.db $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $2B $3C
.db $05 $00 $07 $3C $05 $00 $13 $3A $0B $00 $0D $33 $0B $00 $25 $33
.db $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $67 $30 $0B $00 $25 $33
.db $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $2B $3C $05 $00 $07 $3C
.db $05 $00 $13 $3A $0B $00 $0D $33 $0B $00 $25 $33 $0B $00 $01 $32
.db $17 $00 $01 $33 $05 $00 $67 $30 $0B $00 $25 $33 $0B $00 $01 $32
.db $17 $00 $01 $33 $05 $00 $2B $3C $05 $00 $07 $3C $05 $00 $13 $3A
.db $0B $00 $0D $33 $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33
.db $05 $00 $67 $30 $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33
.db $05 $00 $2B $3C $05 $00 $07 $3C $05 $00 $13 $3A $0B $00 $0D $33
.db $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $67 $30
.db $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $2B $3C
.db $05 $00 $07 $3C $05 $00 $13 $3A $0B $00 $0D $33 $0B $00 $25 $33
.db $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $67 $2C $23 $00 $01 $33
.db $23 $00 $01 $30 $17 $00 $01 $2B $24 $32 $05 $00 $1F $2E $05 $00
.db $12 $00 $01 $30 $24 $32 $05 $00 $1E $00 $01 $33 $17 $00 $01 $3A
.db $23 $00 $01 $37 $23 $00 $01 $33 $11 $00 $07 $2C $23 $00 $01 $33
.db $23 $00 $01 $30 $17 $00 $01 $2B $24 $32 $05 $00 $1F $2E $05 $00
.db $12 $00 $01 $30 $24 $32 $05 $00 $1E $00 $01 $33 $17 $00 $01 $3A
.db $23 $00 $01 $37 $23 $00 $01 $33 $11 $00 $07 $30 $0B $00 $25 $33
.db $0B $00 $01 $32 $17 $00 $01 $33 $05 $00 $2B $3C $05 $00 $07 $3C
.db $05 $00 $13 $3A $0B $00 $0D $33 $0B $00 $25 $33 $0B $00 $01 $32
.db $17 $00 $01 $33 $05 $00 $67 $30 $0B $00 $25 $33 $0B $00 $01 $32
.db $17 $00 $01 $33 $05 $00 $2B $3C $05 $00 $07 $3C $05 $00 $13 $3A
.db $0B $00 $0D $33 $0B $00 $25 $33 $0B $00 $01 $32 $17 $00 $01 $33
.db $05 $00 $67 $37 $23 $00 $01 $33 $0B $00 $19 $37 $0B $00 $0D $37
.db $23 $00 $01 $33 $0B $00 $0D $33 $23 $00 $01 $35 $23 $00 $01 $33
.db $11 $00 $13 $32 $17 $00 $01 $30 $47 $00 $01 $32 $11 $00 $07 $37
.db $23 $00 $01 $33 $0B $00 $19 $37 $0B $00 $0D $37 $23 $00 $01 $33
.db $0B $00 $0D $33 $23 $00 $01 $35 $23 $00 $01 $33 $11 $00 $13 $32
.db $17 $00 $01 $30 $47 $00 $01 $32 $11 $00 $07 $30 $05 $00 $07 $30
.db $0B $00 $01 $3C $0C $3A $05 $00 $06 $00 $31 $2C $05 $00 $07 $2C
.db $0B $00 $01 $38 $0C $37 $05 $00 $06 $00 $19 $32 $17 $00 $01 $30
.db $05 $00 $07 $30 $0B $00 $01 $3C $0C $3A $05 $00 $06 $00 $31 $38
.db $05 $00 $07 $38 $0B $00 $0D $37 $0B $00 $0D $32 $1D $00 $07 $30
.db $05 $00 $07 $30 $0B $00 $01 $3C $0C $3A $05 $00 $06 $00 $31 $2C
.db $05 $00 $07 $2C $0B $00 $01 $38 $0C $37 $05 $00 $06 $00 $19 $32
.db $17 $00 $01 $30 $05 $00 $07 $30 $0B $00 $01 $3C $0C $3A $05 $00
.db $06 $00 $31 $38 $05 $00 $07 $38 $0B $00 $0D $37 $0B $00 $0D $32
.db $1D $00 $07 $32 $23 $00 $01 $33 $23 $00 $01 $37 $17 $00 $01 $2C
.db $23 $00 $01 $33 $23 $00 $01 $30 $17 $00 $01 $2B $5F $00 $01 $2E
.db $2F $00 $01 $32 $29 $00 $00 $FF

; 4th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 6153E to 6190F (978 bytes)
_DATA_6153E_:
.db $82 $33 $00 $30 $3C $00 $31 $00 $74 $2E $08 $32 $07 $00 $00 $00
.db $01 $33 $00 $30 $3F $00 $0B $00 $A5 $30 $07 $00 $08 $37 $07 $00
.db $01 $35 $07 $00 $1F $30 $06 $00 $08 $35 $07 $00 $01 $33 $07 $00
.db $0F $33 $07 $00 $01 $30 $07 $00 $01 $2C $12 $00 $04 $33 $25 $00
.db $01 $32 $1D $00 $0F $2F $0F $00 $01 $30 $00 $41 $06 $00 $08 $37
.db $04 $00 $03 $00 $01 $35 $00 $3F $07 $00 $0B $00 $04 $3E $0B $00
.db $05 $30 $00 $3F $06 $00 $08 $35 $04 $00 $03 $00 $01 $33 $00 $3E
.db $07 $00 $0B $00 $04 $33 $00 $3C $07 $00 $01 $30 $07 $00 $00 $00
.db $01 $2C $00 $43 $12 $00 $03 $00 $01 $33 $00 $41 $16 $00 $01 $3F
.db $06 $00 $08 $00 $01 $32 $00 $3E $12 $00 $04 $3B $07 $00 $0F $00
.db $01 $2F $00 $3E $0E $00 $00 $00 $01 $30 $00 $30 $0E $00 $01 $3C
.db $07 $3A $03 $00 $05 $37 $03 $00 $04 $35 $03 $00 $04 $37 $04 $00
.db $00 $00 $03 $00 $01 $3A $00 $30 $07 $00 $01 $3C $00 $2E $03 $00
.db $0B $00 $01 $3F $07 $3C $03 $00 $04 $00 $08 $3C $07 $3F $04 $00
.db $00 $00 $00 $00 $04 $41 $07 $2B $0F $00 $01 $3F $06 $00 $01 $3C
.db $07 $00 $01 $3A $06 $00 $01 $3C $03 $00 $04 $00 $01 $3A $00 $2B
.db $06 $00 $01 $37 $07 $00 $01 $29 $06 $00 $01 $35 $07 $00 $01 $33
.db $07 $35 $03 $00 $05 $37 $03 $00 $03 $00 $01 $3A $07 $00 $01 $37
.db $03 $00 $03 $00 $01 $3C $07 $00 $01 $3A $00 $30 $06 $00 $01 $30
.db $07 $00 $01 $3C $06 $00 $01 $3A $07 $00 $01 $37 $06 $00 $01 $3C
.db $07 $00 $01 $3A $03 $00 $03 $00 $01 $37 $00 $30 $07 $00 $00 $00
.db $01 $3C $00 $2E $07 $3F $03 $00 $04 $00 $01 $41 $06 $00 $01 $3F
.db $08 $3C $03 $00 $03 $00 $01 $3F $07 $00 $01 $41 $03 $00 $00 $00
.db $04 $43 $07 $2B $07 $00 $01 $41 $07 $00 $01 $3F $07 $41 $03 $00
.db $04 $00 $01 $43 $03 $00 $07 $00 $04 $46 $00 $2B $08 $48 $03 $00
.db $04 $00 $01 $46 $00 $29 $03 $00 $03 $00 $01 $43 $07 $00 $01 $41
.db $06 $00 $01 $3F $03 $00 $05 $3C $06 $00 $01 $3A $07 $00 $00 $00
.db $01 $3C $0A $00 $05 $30 $06 $00 $08 $37 $07 $00 $01 $35 $07 $00
.db $1F $30 $06 $00 $08 $35 $07 $00 $01 $33 $07 $00 $0F $33 $07 $00
.db $01 $30 $07 $00 $01 $2C $12 $00 $04 $33 $25 $00 $01 $32 $1D $00
.db $0F $2F $0F $00 $01 $30 $06 $00 $08 $37 $07 $00 $01 $35 $07 $00
.db $1F $30 $06 $00 $08 $35 $07 $00 $01 $33 $07 $00 $0F $33 $07 $00
.db $01 $30 $07 $00 $01 $2C $12 $00 $04 $33 $25 $00 $01 $32 $1D $00
.db $0F $2F $0F $00 $01 $30 $1D $00 $01 $33 $1D $00 $01 $32 $2C $00
.db $0F $33 $2D $37 $04 $00 $0B $35 $04 $00 $1A $00 $01 $38 $19 $00
.db $04 $2C $1E $2B $04 $00 $0B $2C $04 $00 $0B $00 $01 $30 $1D $2C
.db $04 $00 $0B $30 $04 $00 $0B $00 $01 $38 $00 $35 $15 $00 $08 $00
.db $01 $37 $00 $33 $0E $00 $01 $38 $00 $32 $03 $00 $0B $00 $00 $00
.db $01 $37 $00 $33 $19 $00 $13 $00 $01 $32 $00 $3A $0A $00 $04 $00
.db $01 $30 $06 $00 $08 $37 $07 $00 $01 $35 $07 $00 $1F $30 $06 $00
.db $08 $35 $07 $00 $01 $33 $07 $00 $0F $33 $07 $00 $01 $30 $07 $00
.db $01 $2C $12 $00 $04 $33 $25 $00 $01 $32 $1D $00 $0F $2F $0F $00
.db $01 $29 $0F $2C $03 $00 $04 $30 $03 $00 $04 $00 $01 $35 $07 $30
.db $03 $00 $04 $00 $01 $35 $07 $30 $03 $00 $04 $00 $01 $35 $07 $38
.db $03 $00 $05 $3C $03 $00 $04 $41 $03 $00 $22 $00 $01 $38 $06 $00
.db $01 $3C $08 $3F $03 $00 $03 $00 $01 $41 $0F $3F $07 $00 $01 $3C
.db $03 $00 $04 $38 $03 $00 $04 $00 $01 $3A $07 $3E $03 $00 $04 $3F
.db $04 $00 $03 $00 $01 $41 $07 $3F $07 $00 $01 $3E $03 $00 $05 $3A
.db $03 $00 $07 $00 $04 $29 $10 $2C $03 $00 $04 $30 $03 $00 $04 $00
.db $01 $35 $07 $30 $03 $00 $04 $00 $01 $35 $07 $30 $03 $00 $04 $00
.db $01 $35 $07 $38 $03 $00 $05 $3C $03 $00 $04 $41 $03 $00 $22 $00
.db $01 $38 $06 $00 $01 $3C $08 $3F $03 $00 $03 $00 $01 $41 $0F $3F
.db $07 $00 $01 $3C $03 $00 $04 $38 $03 $00 $04 $00 $01 $3A $07 $3E
.db $03 $00 $04 $3F $04 $00 $03 $00 $01 $41 $07 $3F $07 $00 $01 $3E
.db $03 $00 $05 $3A $03 $00 $07 $00 $04 $2C $16 $00 $01 $30 $16 $00
.db $01 $2C $0E $00 $01 $33 $15 $00 $01 $30 $16 $00 $01 $2C $06 $00
.db $01 $30 $07 $00 $01 $33 $15 $00 $01 $35 $16 $37 $04 $00 $0B $00
.db $01 $3B $16 $3E $03 $00 $13 $00 $01 $3B $0E $00 $01 $2C $15 $00
.db $01 $30 $16 $00 $01 $2C $0E $00 $01 $33 $15 $00 $01 $30 $16 $00
.db $01 $2C $06 $00 $01 $30 $07 $00 $01 $33 $15 $00 $01 $35 $16 $37
.db $04 $00 $0B $00 $01 $3B $16 $3E $03 $00 $13 $00 $01 $3B $0E $00
.db $00 $FF

; 5th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 61910 to 61CC1 (946 bytes)
_DATA_61910_:
.db $82 $24 $07 $00 $08 $24 $07 $00 $08 $24 $07 $00 $08 $24 $07 $00
.db $01 $22 $07 $00 $01 $24 $06 $00 $08 $24 $07 $00 $08 $24 $07 $00
.db $08 $24 $0F $00 $01 $20 $06 $00 $08 $20 $07 $00 $08 $20 $07 $00
.db $08 $20 $07 $00 $08 $1F $07 $00 $08 $1F $07 $00 $08 $1F $07 $00
.db $08 $1F $07 $00 $09 $24 $06 $00 $08 $24 $07 $00 $08 $24 $07 $00
.db $08 $24 $07 $00 $01 $22 $07 $00 $01 $24 $06 $00 $09 $24 $06 $00
.db $08 $24 $07 $00 $08 $24 $0F $00 $01 $20 $06 $00 $08 $20 $07 $00
.db $08 $20 $07 $00 $08 $20 $07 $00 $08 $1F $07 $00 $08 $1F $07 $00
.db $08 $1F $07 $00 $08 $1F $07 $00 $08 $24 $07 $00 $08 $24 $07 $00
.db $09 $24 $06 $00 $08 $24 $07 $00 $01 $22 $07 $00 $01 $24 $06 $00
.db $08 $24 $07 $00 $09 $24 $06 $00 $08 $24 $0F $00 $01 $20 $06 $00
.db $08 $20 $07 $00 $08 $20 $07 $00 $08 $20 $07 $00 $09 $1F $06 $00
.db $08 $1F $07 $00 $09 $1F $06 $00 $08 $1F $07 $00 $09 $24 $06 $00
.db $08 $24 $07 $00 $09 $24 $06 $00 $08 $24 $07 $00 $01 $22 $07 $00
.db $01 $24 $06 $00 $08 $24 $07 $00 $09 $24 $06 $00 $08 $24 $0F $00
.db $01 $20 $06 $00 $08 $20 $07 $00 $08 $20 $07 $00 $09 $20 $06 $00
.db $09 $1F $06 $00 $08 $1F $07 $00 $09 $1F $06 $00 $09 $1F $06 $00
.db $09 $1D $12 $00 $04 $1D $07 $00 $0F $1D $07 $00 $01 $1B $08 $1F
.db $03 $00 $0B $00 $08 $1F $07 $00 $0F $1F $07 $00 $08 $20 $13 $00
.db $04 $20 $07 $00 $10 $20 $06 $00 $09 $1F $0E $00 $08 $1F $07 $00
.db $10 $1F $0E $00 $01 $1D $12 $00 $04 $1D $07 $00 $10 $1D $06 $00
.db $01 $1B $08 $1F $03 $00 $0B $00 $08 $1F $07 $00 $10 $1F $06 $00
.db $08 $20 $13 $00 $04 $20 $07 $00 $0F $20 $07 $00 $09 $1F $0E $00
.db $08 $1F $07 $00 $10 $1F $0E $00 $01 $24 $06 $00 $08 $24 $07 $00
.db $09 $24 $06 $00 $08 $24 $07 $00 $01 $22 $07 $00 $01 $24 $06 $00
.db $08 $24 $07 $00 $09 $24 $06 $00 $08 $24 $0F $00 $01 $20 $06 $00
.db $08 $20 $07 $00 $08 $20 $07 $00 $08 $20 $07 $00 $09 $1F $06 $00
.db $08 $1F $07 $00 $09 $1F $06 $00 $08 $1F $07 $00 $09 $24 $06 $00
.db $08 $24 $07 $00 $09 $24 $06 $00 $08 $24 $07 $00 $01 $22 $07 $00
.db $01 $24 $06 $00 $08 $24 $07 $00 $09 $24 $06 $00 $08 $24 $0F $00
.db $01 $20 $06 $00 $08 $20 $07 $00 $08 $20 $07 $00 $08 $20 $07 $00
.db $09 $1F $06 $00 $08 $1F $07 $00 $09 $1F $06 $00 $08 $1F $07 $00
.db $09 $24 $06 $00 $08 $24 $07 $00 $09 $24 $06 $00 $08 $24 $07 $00
.db $09 $22 $06 $00 $08 $22 $07 $00 $08 $22 $07 $00 $09 $22 $06 $00
.db $08 $27 $07 $00 $08 $27 $07 $00 $08 $27 $07 $00 $08 $27 $07 $00
.db $08 $29 $07 $00 $08 $29 $07 $00 $09 $29 $06 $00 $08 $29 $07 $00
.db $08 $20 $07 $00 $08 $20 $07 $00 $08 $20 $07 $00 $08 $20 $07 $00
.db $09 $20 $06 $00 $08 $20 $07 $00 $08 $20 $07 $00 $08 $20 $07 $00
.db $01 $24 $07 $00 $01 $1F $06 $00 $08 $1F $07 $00 $09 $1F $06 $00
.db $09 $1F $06 $00 $09 $1D $06 $00 $08 $1D $07 $00 $08 $1D $07 $00
.db $09 $22 $06 $00 $09 $24 $06 $00 $08 $24 $07 $00 $09 $24 $06 $00
.db $08 $24 $07 $00 $01 $22 $07 $00 $01 $24 $06 $00 $08 $24 $07 $00
.db $09 $24 $06 $00 $08 $24 $0F $00 $01 $20 $06 $00 $08 $20 $07 $00
.db $08 $20 $07 $00 $08 $20 $07 $00 $09 $1F $06 $00 $08 $1F $07 $00
.db $09 $1F $06 $00 $08 $1F $07 $00 $09 $29 $03 $00 $04 $29 $07 $00
.db $01 $27 $06 $00 $01 $29 $07 $00 $1F $29 $03 $00 $04 $29 $07 $00
.db $01 $27 $06 $00 $01 $29 $03 $00 $13 $29 $07 $00 $01 $27 $07 $00
.db $01 $2C $03 $00 $04 $2C $07 $00 $01 $2B $06 $00 $01 $2C $07 $00
.db $10 $2C $06 $00 $01 $2B $07 $00 $01 $2E $06 $00 $08 $2E $07 $00
.db $08 $2E $07 $00 $01 $2C $07 $00 $01 $2B $0A $00 $04 $29 $04 $00
.db $04 $29 $07 $00 $01 $27 $06 $00 $01 $29 $07 $00 $1F $29 $03 $00
.db $04 $29 $07 $00 $01 $27 $06 $00 $01 $29 $03 $00 $13 $29 $07 $00
.db $01 $27 $07 $00 $01 $2C $03 $00 $04 $2C $07 $00 $01 $2B $06 $00
.db $01 $2C $07 $00 $10 $2C $06 $00 $01 $2B $07 $00 $01 $2E $06 $00
.db $08 $2E $07 $00 $08 $2E $07 $00 $01 $2C $07 $00 $01 $2B $0A $00
.db $04 $29 $31 $00 $04 $27 $07 $00 $01 $29 $30 $00 $04 $27 $08 $29
.db $03 $00 $21 $00 $08 $27 $0F $00 $01 $1F $28 $00 $05 $1F $06 $00
.db $09 $29 $30 $00 $04 $27 $07 $00 $01 $29 $30 $00 $04 $27 $08 $29
.db $03 $00 $21 $00 $08 $27 $0F $00 $01 $1F $28 $00 $05 $1F $06 $00
.db $08 $FF

; 8th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 61CC2 to 61D0C (75 bytes)
_DATA_61CC2_:
.db $95 $01 $F4 $C7 $9C $87 $39 $87 $38 $9A $35 $9B $34 $74 $32 $09
.db $34 $0A $35 $0A $34 $09 $32 $0A $31 $0A $39 $3A $35 $4D $31 $4D
.db $34 $4E $32 $4D $34 $4D $35 $4D $37 $14 $3A $43 $00 $0A $3E $3A
.db $40 $3A $3E $13 $40 $14 $41 $13 $40 $13 $3E $14 $39 $3A $39 $13
.db $37 $3A $3C $13 $39 $3A $37 $27 $39 $9B $FF

; 9th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 61D0D to 61D79 (109 bytes)
_DATA_61D0D_:
.db $95 $01 $F4 $12 $9D $88 $35 $13 $3C $13 $3B $61 $3F $AE $37 $13
.db $3E $13 $3A $61 $3D $60 $3A $27 $39 $27 $32 $09 $31 $0A $32 $0A
.db $34 $09 $35 $14 $32 $09 $31 $0A $32 $0A $34 $09 $35 $14 $37 $13
.db $34 $4D $37 $61 $32 $0A $31 $09 $32 $0A $34 $0A $35 $13 $32 $0A
.db $31 $09 $32 $0A $34 $09 $35 $14 $37 $13 $39 $4D $3A $14 $3D $4D
.db $35 $3A $37 $3A $35 $13 $37 $14 $39 $13 $37 $13 $35 $14 $32 $3A
.db $32 $13 $30 $3A $35 $13 $32 $3A $30 $27 $34 $9B $FF

; 10th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 61D7A to 61E10 (151 bytes)
_DATA_61D7A_:
.db $95 $01 $F4 $7F $9D $89 $26 $26 $26 $13 $26 $14 $26 $26 $26 $14
.db $26 $13 $26 $27 $26 $13 $26 $13 $26 $27 $26 $13 $26 $14 $26 $26
.db $26 $14 $26 $13 $26 $27 $26 $13 $26 $13 $26 $27 $26 $13 $26 $13
.db $26 $27 $26 $13 $26 $14 $26 $26 $26 $14 $26 $13 $26 $27 $26 $13
.db $26 $13 $22 $27 $22 $13 $22 $14 $22 $26 $22 $14 $22 $13 $26 $27
.db $26 $13 $26 $13 $26 $27 $26 $13 $26 $13 $22 $27 $22 $13 $22 $14
.db $22 $26 $22 $14 $22 $13 $26 $27 $26 $13 $26 $13 $24 $27 $24 $13
.db $24 $14 $22 $27 $22 $14 $22 $13 $21 $27 $21 $13 $21 $13 $1F $27
.db $1F $13 $1F $13 $1D $27 $1D $13 $1D $14 $1C $27 $1C $14 $1C $13
.db $21 $27 $21 $13 $21 $78 $94

; 12th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 61E11 to 62039 (553 bytes)
_DATA_61E11_:
.db $95 $01 $F7 $16 $9E $89 $1A $09 $26 $0A $1A $0A $26 $0A $1A $0A
.db $26 $0A $1A $0A $26 $0A $18 $0A $24 $0A $18 $0A $24 $0A $18 $0A
.db $24 $0A $18 $0A $24 $0A $22 $0A $2E $09 $22 $0A $2E $0A $22 $0A
.db $2E $0A $22 $0A $2E $0A $1F $0A $2B $0A $1F $0A $2B $0A $21 $0A
.db $2D $0A $21 $0A $2D $0A $1A $0A $26 $0A $1A $09 $26 $0A $1A $0A
.db $26 $0A $1A $0A $26 $0A $1A $0A $26 $0A $1A $0A $26 $0A $1A $0A
.db $26 $0A $1A $0A $26 $0A $18 $0A $24 $0A $18 $0A $24 $09 $18 $0A
.db $24 $0A $18 $0A $24 $0A $18 $0A $24 $0A $18 $0A $24 $0A $18 $0A
.db $24 $0A $18 $0A $24 $0A $22 $0A $2E $0A $22 $0A $2E $0A $22 $09
.db $2E $0A $22 $0A $2E $0A $1F $0A $2B $0A $1F $0A $2B $0A $1F $0A
.db $2B $0A $1F $0A $2B $0A $21 $0A $2D $0A $21 $0A $2D $0A $21 $0A
.db $2D $09 $21 $0A $2D $0A $21 $0A $2D $0A $1F $0A $2B $0A $1D $0A
.db $29 $0A $1C $0A $28 $0A $1A $0A $1A $0A $1A $0A $1A $0A $1A $0A
.db $1A $0A $1A $09 $1A $0A $1D $0A $1D $0A $1D $0A $1D $0A $1D $0A
.db $1D $0A $1D $0A $1D $0A $22 $0A $22 $0A $22 $0A $22 $0A $22 $0A
.db $22 $0A $22 $0A $22 $0A $21 $09 $21 $0A $21 $0A $21 $0A $21 $0A
.db $21 $0A $21 $0A $21 $0A $26 $0A $26 $0A $26 $0A $26 $0A $24 $0A
.db $24 $0A $24 $0A $24 $0A $22 $0A $22 $09 $22 $0A $22 $0A $1F $0A
.db $1F $0A $1F $0A $1F $0A $21 $0A $21 $0A $21 $0A $21 $0A $1F $0A
.db $1F $0A $1F $0A $1F $0A $1D $0A $1D $0A $1D $09 $1D $0A $1C $0A
.db $1C $0A $1C $0A $1C $0A $1A $14 $1A $0A $1A $0A $1A $14 $1A $0A
.db $1A $0A $1A $14 $1A $0A $1A $09 $1A $14 $1A $0A $1A $0A $1A $14
.db $1A $0A $1A $0A $1A $14 $1A $0A $1A $0A $1A $14 $1A $0A $1A $0A
.db $1A $13 $1A $0A $1A $0A $1F $14 $1F $14 $1F $14 $1F $0A $1F $05
.db $21 $05 $22 $0A $21 $0A $1F $0A $1D $0A $1F $13 $1A $14 $1D $14
.db $1D $14 $1D $14 $1D $0A $1D $05 $1F $05 $21 $0A $1F $0A $1D $0A
.db $21 $0A $1F $27 $1F $05 $21 $05 $22 $0A $1F $14 $21 $05 $22 $05
.db $24 $0A $21 $14 $22 $05 $24 $05 $26 $0A $24 $05 $26 $05 $27 $0A
.db $26 $14 $2A $14 $2B $13 $29 $0F $27 $05 $26 $0A $24 $0A $22 $14
.db $21 $14 $22 $0A $21 $0A $1F $28 $1F $0A $1F $09 $1F $0A $1F $0A
.db $1D $0A $1D $0A $1D $0A $1D $0A $1C $0A $1C $0A $1C $0A $1C $0A
.db $1B $0A $1B $0A $1B $0A $1B $0A $1A $0A $1A $0A $1A $13 $1A $0A
.db $1A $0A $1A $14 $21 $0A $21 $0A $21 $14 $21 $0A $21 $0A $21 $14
.db $21 $14 $21 $0A $21 $09 $21 $14 $21 $0A $21 $0A $21 $14 $21 $0A
.db $21 $0A $21 $14 $21 $0A $21 $0B $94

; 13th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 6203A to 6224E (533 bytes)
_DATA_6203A_:
.db $95 $01 $F7 $3F $A0 $8A $39 $09 $39 $05 $39 $05 $39 $14 $39 $0A
.db $39 $05 $39 $05 $39 $14 $3C $0A $3C $05 $3C $05 $3C $3C $39 $0A
.db $39 $04 $39 $05 $39 $14 $39 $0A $39 $05 $39 $05 $39 $14 $3E $0A
.db $3E $05 $3E $05 $3E $14 $40 $0A $40 $05 $40 $05 $40 $14 $32 $05
.db $34 $05 $35 $05 $34 $05 $35 $04 $37 $05 $35 $05 $37 $05 $39 $28
.db $32 $05 $34 $05 $35 $05 $34 $05 $35 $05 $37 $05 $35 $05 $37 $05
.db $39 $28 $32 $05 $34 $05 $35 $05 $34 $05 $35 $05 $37 $05 $35 $04
.db $37 $05 $39 $28 $32 $05 $34 $05 $35 $05 $34 $05 $35 $05 $37 $05
.db $35 $05 $37 $05 $39 $28 $3E $1E $3C $1D $3A $14 $3E $1E $3C $1E
.db $3E $14 $40 $1E $41 $1D $3E $14 $40 $5A $39 $03 $37 $03 $35 $04
.db $32 $45 $45 $04 $43 $03 $41 $03 $3E $0A $45 $04 $43 $03 $41 $03
.db $3E $32 $39 $03 $37 $04 $35 $03 $32 $45 $45 $04 $43 $03 $41 $03
.db $3E $0A $45 $04 $43 $03 $41 $03 $3E $28 $43 $03 $44 $02 $45 $05
.db $48 $07 $43 $03 $44 $05 $45 $05 $48 $02 $43 $03 $44 $05 $45 $02
.db $48 $03 $45 $02 $44 $03 $43 $05 $41 $05 $3E $1E $39 $05 $3C $05
.db $3E $05 $41 $06 $3E $04 $3C $05 $3E $02 $3C $04 $39 $05 $37 $0A
.db $39 $17 $40 $05 $41 $0A $40 $0A $3E $0A $40 $0A $41 $0A $40 $0A
.db $3E $0A $40 $0A $41 $0A $40 $09 $41 $0A $43 $0A $41 $0A $43 $0A
.db $45 $0A $2D $1E $2B $1E $29 $14 $28 $1E $26 $1D $24 $14 $26 $1E
.db $28 $1E $29 $14 $2B $4F $3A $0A $41 $0A $41 $0A $41 $0A $3A $0A
.db $41 $0A $41 $0A $41 $0A $37 $0A $3E $0A $3E $0A $3E $0A $37 $0A
.db $3E $09 $3E $0A $3E $0A $35 $0A $3C $0A $3C $0A $3C $0A $35 $0A
.db $3C $0A $3C $0A $3C $0A $35 $0A $3C $0A $3C $0A $3C $0A $37 $0A
.db $3E $0A $3E $0A $3E $09 $37 $05 $3A $05 $3E $05 $3A $05 $37 $14
.db $37 $05 $3A $05 $3E $05 $3A $05 $39 $14 $37 $05 $3A $05 $3E $05
.db $3A $05 $37 $14 $37 $05 $3A $05 $3E $05 $3A $05 $39 $14 $3A $13
.db $39 $0F $37 $05 $35 $0A $33 $0A $32 $0A $30 $0A $2D $14 $2E $0A
.db $2D $0A $2B $28 $37 $05 $3A $05 $3E $04 $3A $05 $37 $14 $37 $05
.db $3A $05 $3E $05 $3A $05 $37 $14 $37 $05 $3A $05 $3E $05 $3A $05
.db $37 $14 $37 $05 $3A $05 $3E $05 $3A $05 $3D $14 $36 $0A $36 $0A
.db $36 $13 $36 $0A $36 $0A $36 $14 $37 $0A $37 $0A $37 $14 $37 $0A
.db $37 $0A $37 $14 $37 $0A $37 $0A $34 $0A $34 $09 $31 $0A $31 $0A
.db $34 $0A $34 $0A $37 $0A $37 $0A $34 $0A $34 $0A $31 $0A $31 $0A
.db $34 $0A $34 $0B $FF

; 14th entry of Pointer Table from 6062E (indexed by _RAM_DD13_)
; Data from 6224F to 623E7 (409 bytes)
_DATA_6224F_:
.db $95 $01 $F7 $54 $A2 $8A $32 $09 $32 $05 $32 $05 $32 $14 $32 $0A
.db $32 $05 $32 $05 $32 $14 $35 $0A $35 $05 $35 $05 $35 $3C $32 $0A
.db $32 $04 $32 $05 $32 $14 $32 $0A $32 $05 $32 $05 $32 $14 $37 $0A
.db $37 $05 $37 $05 $37 $14 $39 $0A $39 $05 $39 $05 $39 $14 $32 $3B
.db $30 $0A $32 $0A $2D $50 $32 $3B $32 $05 $34 $05 $35 $0A $34 $1E
.db $32 $1E $34 $14 $35 $1E $34 $1D $32 $14 $37 $1E $35 $1E $37 $14
.db $39 $1E $3A $1D $37 $14 $39 $0A $3A $0A $37 $0A $39 $0A $35 $0A
.db $37 $0A $34 $0A $35 $14 $3C $03 $3B $03 $39 $04 $35 $45 $48 $04
.db $47 $03 $45 $03 $41 $0A $48 $04 $47 $03 $45 $03 $41 $32 $3C $03
.db $3B $04 $39 $03 $35 $45 $48 $04 $47 $03 $45 $03 $41 $0A $48 $04
.db $47 $03 $45 $03 $41 $28 $32 $28 $34 $28 $35 $27 $37 $28 $39 $28
.db $3A $14 $37 $14 $39 $27 $3D $28 $26 $1E $24 $1E $22 $14 $21 $1E
.db $1F $1D $1D $14 $1F $1E $21 $1E $22 $14 $24 $4F $2B $0A $32 $0A
.db $32 $0A $32 $0A $33 $0A $32 $0A $32 $0A $32 $0A $37 $0A $32 $0A
.db $37 $0A $39 $0A $3A $0A $39 $09 $37 $0A $37 $0A $39 $14 $39 $14
.db $39 $14 $39 $0A $39 $05 $3A $05 $3C $0A $3A $0A $39 $0A $3C $0A
.db $3A $27 $3E $05 $3C $05 $3A $0A $3A $14 $3C $05 $3A $05 $39 $0A
.db $36 $14 $37 $0A $3E $14 $3E $14 $3E $0A $3F $14 $3E $13 $3C $0F
.db $3A $05 $39 $0A $37 $0A $35 $14 $33 $14 $35 $0A $33 $0A $32 $28
.db $3D $05 $3E $05 $43 $04 $3D $05 $3C $05 $3A $05 $37 $05 $39 $05
.db $3A $05 $39 $05 $37 $05 $35 $05 $32 $05 $35 $05 $37 $0A $39 $05
.db $3A $05 $39 $05 $37 $05 $39 $05 $37 $05 $35 $05 $32 $19 $39 $14
.db $39 $0A $39 $0A $39 $13 $39 $0A $39 $0A $39 $14 $3D $0A $3D $0A
.db $3D $14 $40 $0A $40 $0A $40 $14 $2D $0A $2D $0A $31 $0A $31 $09
.db $34 $0A $34 $0A $39 $0A $39 $0A $3D $0A $3D $0A $40 $0A $40 $0A
.db $45 $0A $45 $0A $49 $0A $49 $0B $FF

_LABEL_623E8_PREP_MUS_BANK:
	ld hl, _RAM_DD12_
	ld de, _RAM_DD12_ + 1
	ld (hl), $00
	ld bc, $010F
	ldir
	ld ix, _RAM_DD42_
	ld de, $001C
	ld (ix+0), $00
	add ix, de
	ld (ix+0), $01
	add ix, de
	ld (ix+0), $02
	add ix, de
	ld (ix+0), $03
	add ix, de
	ld (ix+0), $00
	add ix, de
	ld (ix+0), $01
	add ix, de
	ld (ix+0), $02
	add ix, de
	ld (ix+0), $03
	ret

_LABEL_6242B_SET_MUS:
	push de
	push bc
	push hl
	push ix
	push iy
	call +
	pop iy
	pop ix
	pop hl
	pop bc
	pop de
	ret

+:
	ld (_RAM_DD13_), a
	ld a, (_RAM_DD13_)
	ld iy, $DD32
	cp $FF
	jp z, _LABEL_62549_
	dec a
	call _LABEL_624D0_
	ld a, $01
	ld (_RAM_DD12_), a
	ld a, (_RAM_DD13_)
	dec a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_6062C_
	add hl, de
	ex de, hl
	ld hl, $864A
	sbc hl, de
	jp c, _LABEL_624D0_
	ex de, hl
	ld ix, _RAM_DD42_
	ld b, $04
-:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (ix+12), e
	ld (ix+13), d
	ld (ix+10), $01
	ld de, $001C
	add ix, de
	djnz -
	ret

_LABEL_62489_:
	push bc
	push de
	push hl
_LABEL_6248C_:
	push ix
	push iy
	call +
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	ret

+:
	ld iy, $DD22
	ld ix, $DDB2
	ld (_RAM_DD15_), a
	dec a
	bit 7, a
	jp nz, _LABEL_62502_
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_60732_
	add hl, de
	ex de, hl
	ld hl, $873B
	sbc hl, de
	ret c
	ex de, hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ld ix, _RAM_DDEA_
	bit 2, (hl)
	jp z, _LABEL_62520_
	ld ix, _RAM_DE06_
	jp _LABEL_62520_

_LABEL_624D0_:
	ld ix, _RAM_DD42_
	ld b, $04
	ld hl, _RAM_DD3A_
	ld de, $001C
	xor a
-:
	ld (hl), a
	inc hl
	ld (ix+5), a
	ld (ix+14), a
	ld (ix+18), a
	ld (ix+15), a
	ld (ix+21), a
	ld (ix+22), a
	ld (ix+26), a
	ld (ix+6), a
	add ix, de
	djnz -
	ld (_RAM_DD16_), a
	ld (_RAM_DD12_), a
	ret

_LABEL_62502_:
	ld b, $04
	ld ix, _RAM_DDB2_
	ld hl, _RAM_DD2A_
	ld de, $001C
-:
	ld (hl), $00
	inc hl
	ld a, (ix+5)
	inc a
	jr z, +
	ld (ix+5), $00
+:
	add ix, de
	djnz -
	ret

_LABEL_62520_:
	ld (ix+6), $00
	ld (ix+3), l
	ld (ix+4), h
	ld a, (hl)
	inc hl
	ld (ix+7), a
	ld a, (hl)
	inc hl
	ld (ix+8), a
	ld a, (hl)
	inc hl
	ld (ix+1), a
	ld a, (hl)
	inc hl
	ld (ix+2), a
	ld a, (hl)
	ld (ix+5), a
	ld a, (_RAM_DD15_)
	ld (ix+9), a
	ret

_LABEL_62549_:
	ld a, $10
	ld (_RAM_DD16_), a
	ld a, c
	ld (_RAM_DD19_), a
	ld a, $00
	ld (_RAM_DD17_), a
	ret

_LABEL_62558_:
	ld a, (_RAM_DD16_)
	and a
	ret z
	ld a, (_RAM_DD17_)
	dec a
	ld (_RAM_DD17_), a
	jp p, +
	ld a, (_RAM_DD19_)
	ld (_RAM_DD17_), a
	ld a, (_RAM_DD16_)
	dec a
	ld (_RAM_DD16_), a
	jr nz, +
	xor a
	ld c, a
	jp _LABEL_6242B_SET_MUS

+:
	ld hl, _RAM_DD3A_
	ld b, $03
--:
	ld d, (hl)
	ld a, (_RAM_DD16_)
	ld e, a
	xor a
	dec e
	jp m, +
-:
	add a, d
	dec e
	jp p, -
+:
	srl a
	srl a
	srl a
	srl a
	ld (hl), a
	inc hl
	djnz --
	ret

_LABEL_6259C_:
	ld a, (ix+5)
	and a
	jp z, _LABEL_6263B_
	inc a
	jp z, _LABEL_6263B_
	ld l, (ix+3)
	ld h, (ix+4)
	ld a, (ix+6)
	add a, $05
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	cp $FE
	jr nz, +
	inc (ix+6)
	inc (ix+6)
	inc hl
	ld a, (hl)
	push ix
	push bc
	call _LABEL_62489_
	pop bc
	pop ix
	jr _LABEL_6259C_

+:
	cp $FF
	jr nz, +
	ld (ix+6), $00
	jr _LABEL_6259C_

+:
	ld c, a
	ld e, (ix+0)
	ld d, $00
	push iy
	add iy, de
	ld (iy+8), c
	pop iy
	ld a, c
	and a
	jr nz, +
	ld (ix+5), $00
	jr _LABEL_6263B_

+:
	ld e, (ix+8)
	ld d, $00
	add hl, de
	ld a, (ix+0)
	cp $03
	jr z, ++
	ld e, (hl)
	ld d, $00
	bit 7, e
	jr z, +
	dec d
+:
	push hl
	ld l, (ix+1)
	ld h, (ix+2)
	ld a, l
	or h
	jr z, +
	add hl, de
	ld (ix+1), l
	ld (ix+2), h
+:
	pop hl
	ld e, (ix+0)
	sla e
	ld d, $00
	push iy
	add iy, de
	ld a, (ix+1)
	ld (iy+0), a
	ld a, (ix+2)
	ld (iy+1), a
	pop iy
	jr +++

++:
	ld a, (hl)
	ld (iy+6), a
+++:
	inc (ix+6)
_LABEL_6263B_:
	ld de, $001C
	add ix, de
	dec b
	jp nz, _LABEL_6259C_
	ret

_LABEL_62645_:
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	ld a, (_RAM_DE23_CONSOLE_REGION)
	and a
	jr z, _LABEL_62660_
	ld hl, _RAM_DE24_
	inc (hl)
	ld a, (hl)
	cp $06
	jr nz, _LABEL_62660_
	ld (hl), $00
	jr +

_LABEL_62660_:
	call _LABEL_6286E_
	ld iy, _RAM_DD32_
	ld ix, _RAM_DD42_
	ld b, $04
	call _LABEL_6259C_
	ld iy, $DD22
	ld ix, _RAM_DDEA_
	ld b, $02
	call _LABEL_6259C_
	call _LABEL_62558_
	call ++
+:
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret

++:
	ld iy, _RAM_DD22_
	ld ix, $DD42
	ld a, (iy+16)
	ld (_RAM_DD18_), a
	ld a, (iy+17)
	ld e, $80
	call _LABEL_6270C_
	ld a, (iy+24)
	and $0F
	xor $9F
	out (Port_PSG), a
	ld bc, $001C
	add ix, bc
	ld a, (iy+18)
	ld (_RAM_DD18_), a
	ld a, (iy+19)
	ld e, $A0
	call _LABEL_6270C_
	ld a, (iy+25)
	and $0F
	xor $BF
	out (Port_PSG), a
	add ix, bc
	ld e, $04
	call _LABEL_6272F_
	ld (_RAM_DD18_), a
	ld e, $05
	call _LABEL_6272F_
	ld e, $C0
	call _LABEL_6270C_
	ld e, $0A
	call _LABEL_6272F_
	and $0F
	xor $DF
	out (Port_PSG), a
	add ix, bc
	ld e, $06
	call _LABEL_6272F_
	and $07
	or $E0
	ld e, a
	ld a, (_RAM_DD14_)
	cp e
	jr z, +
	ld a, e
	ld (_RAM_DD14_), a
	out (Port_PSG), a
+:
	ld e, $0B
	call _LABEL_6272F_
	and $0F
	xor $0F
	or $F0
	out (Port_PSG), a
	ret

_LABEL_6270C_:
	ld h, a
	ld a, (_RAM_DD18_)
	ld l, a
	srl h
	rr l
	srl h
	rr l
	ld a, l
	and $0F
	or e
	out (Port_PSG), a
	srl h
	rr l
	srl h
	rr l
	srl l
	srl l
	ld a, l
	out (Port_PSG), a
	ret

_LABEL_6272F_:
	push iy
	ld d, $00
	add iy, de
	ld d, (iy+16)
	ld a, (ix+117)
	and a
	jr z, +
	inc a
	jr z, +
	ld d, (iy+0)
+:
	pop iy
	ld a, d
	ret

_LABEL_62748_:
	push ix
	pop iy
	ld a, (ix+21)
	and a
	jr z, +
	ld de, $0008
	add iy, de
+:
	ld l, (iy+12)
	ld h, (iy+13)
	ld e, (iy+14)
	ld d, (iy+18)
	add hl, de
	bit 7, (hl)
	jr nz, +
	inc de
	inc de
	ld (iy+14), e
	ld (iy+18), d
	ret

+:
	ld a, (hl)
	cp $94
	jp z, _LABEL_627CC_
	cp $95
	jp z, _LABEL_627E1_
	cp $9D
	jp z, _LABEL_62810_
	cp $9E
	jp z, _LABEL_62837_
	cp $FF
	jp z, _LABEL_6285B_
	cp $FE
	jp z, _LABEL_62866_
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_6064E_
	add hl, de
	ex de, hl
	ld hl, $8662
	sbc hl, de
	jr nc, +
	ld de, _DATA_6064E_
+:
	ex de, hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	push bc
	push iy
	ld iy, $DD32
	call _LABEL_62520_
	ld (ix+9), $FF
	pop iy
	pop bc
	ld a, (iy+14)
	add a, $01
	ld (iy+14), a
	ld a, (iy+18)
	adc a, $00
	ld (iy+18), a
	jp _LABEL_62748_

_LABEL_627CC_:
	ld (iy+14), $00
	ld (iy+18), $00
	dec (ix+11)
	jp nz, _LABEL_62748_
	ld (ix+21), $00
	jp _LABEL_62748_

_LABEL_627E1_:
	inc hl
	ld a, (hl)
	ld (ix+11), a
	inc hl
	ld a, (hl)
	ld (ix+25), a
	inc hl
	ld a, (hl)
	ld (ix+20), a
	inc hl
	ld a, (hl)
	ld (ix+21), a
	ld a, (ix+14)
	add a, $05
	ld (ix+14), a
	ld a, (ix+18)
	adc a, $00
	ld (ix+18), a
	ld (ix+22), $00
	ld (ix+26), $00
	jp _LABEL_62748_

_LABEL_62810_:
	dec (iy+15)
	jr nz, +
	ld a, (iy+14)
	add a, $01
	ld (iy+14), a
	ld a, (iy+18)
	adc a, $00
	ld (iy+18), a
	jp _LABEL_62748_

+:
	ld a, (iy+16)
	ld (iy+14), a
	ld a, (iy+19)
	ld (iy+18), a
	jp _LABEL_62748_

_LABEL_62837_:
	ld a, (iy+14)
	add a, $02
	ld (iy+14), a
	ld a, (iy+18)
	adc a, $00
	ld (iy+18), a
	ld a, (iy+14)
	ld (iy+16), a
	ld a, (iy+18)
	ld (iy+19), a
	inc hl
	ld a, (hl)
	ld (iy+15), a
	jp _LABEL_62748_

_LABEL_6285B_:
	pop bc
	pop bc
	ld a, (_RAM_DD13_)
	call _LABEL_6242B_SET_MUS
	jp _LABEL_62660_

_LABEL_62866_:
	pop bc
	pop bc
	call _LABEL_624D0_
	jp _LABEL_62660_

_LABEL_6286E_:
	ld a, (_RAM_DD12_)
	and a
	ret z
	ld ix, _RAM_DD42_
	ld b, $04
--:
	dec (ix+10)
	jr nz, _LABEL_628B2_
-:
	call _LABEL_62748_
	ld a, (hl)
	and a
	jr z, +
	cp $7F
	jr z, ++
	add a, (iy+17)
+:
	add a, a
	ld e, a
	ld d, $00
	ld iy, _DATA_60000_
	add iy, de
	ld e, (iy+0)
	ld d, (iy+1)
	ld (ix+2), d
	ld (ix+1), e
	inc hl
	ld a, (hl)
	and a
	jr z, -
	ld (ix+10), a
	ld (ix+6), $00
	ld (ix+5), $01
_LABEL_628B2_:
	ld de, $001C
	add ix, de
	djnz --
	ret

++:
	inc hl
	ld a, (hl)
	and a
	jr z, -
	ld (ix+10), a
	jr _LABEL_628B2_

; Data from 628C4 to 63FFF (5948 bytes)
.incbin "HOTL_mod_DATA_628C4_.inc"

.BANK 25
.ORG $0000

; Data from 64000 to 67FFF (16384 bytes)
_DATA_64000_:
.incbin "HOTL_mod_DATA_64000_.inc"

.BANK 26
.ORG $0000

; Data from 68000 to 6BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_68000_.inc"

.BANK 27
.ORG $0000

; Data from 6C000 to 6FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_6C000_.inc"

.BANK 28
.ORG $0000

; Data from 70000 to 73FFF (16384 bytes)
.incbin "HOTL_mod_DATA_70000_.inc"

.BANK 29
.ORG $0000

; Data from 74000 to 77FFF (16384 bytes)
.incbin "HOTL_mod_DATA_74000_.inc"

.BANK 30
.ORG $0000

; Data from 78000 to 7BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_78000_.inc"

.BANK 31
.ORG $0000

; Data from 7C000 to 7FFFF (16384 bytes)
_DATA_7C000_CHAR_BIO_TEXT:
.incbin "HOTL_mod_DATA_7C000_.inc"

