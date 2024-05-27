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
_RAM_C000_RAM_START dsb $20			;Holds many things from mapdata to palettes.
_RAM_C001_ db
.ende
.enum $C020 export
_RAM_C020_INTROSCR_NR db			;This number holds the screen number in the intro. I mean which screen to show. Some values are written here during gameplay.
_RAM_C021_ db
;Apperently this is also used by some menu tilemap thing. I have to get to that part later on. Sometimes the memory management part is not the best,
.ende

.enum $C040 export
_RAM_C040_SELECTED_MENUITEMINRAM_PAL dsb $f	;This is also used to check what menu item was selected in the ingame menu. Also, the character introduction screens are using this memory to store the characters palettes.
.ENDE
.ENUM $C04E EXPORT
_RAM_C04E_ACTIVE_MENUITEM DB	;Active menu item number. Used for both the magic and clerical things.
.ende
.enum $C04F export
_RAM_C04F_LAST_ENTERED_MENU db			;Stores what was the last menu before we entered a submenu. You know, so we know where we were, and what to select again.
.ende
.enum $c050 export
_RAM_C050_ dsb $10				;Check this later. Some menu items are handled here as well. Not sure why 16 bytes are used for this, but it will be clearer later, i'm sure.
.ende
.enum $C0FE export
_RAM_C0FE_UNUSED dw		;Only written once, i'm not sure if this is used at all, not even read from during normal gameplay.
.ende

.enum $C100 export
_RAM_C100_LEVEL_TILEMAP1 db	;This is one part of the tilemap used by the engine. These are scattered around RAM, i don't know why exactly.
.ende

.enum $C1FE export
_RAM_C1FE_UNUSED dw						;Only written once, but that's it.
_RAM_C200_LEVEL_TILEMAP2 DB						;Second part of the tilemap engine.
.ende

.enum $C2FE export
_RAM_C2FE_ dw
.ende
.enum $c300 export
_RAM_C300_LEVEL_TILEMAP3 DB						;Third part of the tilemap engine.
.ende

.enum $C3FE export
_RAM_C3FE_ dw		;Does not seem to be used, just written once.
.ende
.enum $C400 export
_RAM_C400_TILEMAP db								;Another part of the tilemap, or similar. Every $100th there is a small array for something. Why would you do this at all? There must be a logical reason....
.ende

.enum $C4FE export
_RAM_C4FE_ dw
_RAM_C500_TILEMAP db
.ende

.enum $C5FE export
_RAM_C5FE_ dw
_RAM_C600_TILEMAP db
.ende
			;These are not marked in the code, yet seems to be used to draw the tilemap on the gameplay screen. I wonder what was the decision to scatter these so far apart. Maybe to load longer levels?
.enum $C6FE export
_RAM_C6FE_ dw		;Again, this is just written once, not seems to be used at all.
.ende
.enum $C700 export
_RAM_C700_SELECTED_HERO_TILES db ;This array is used to store the tiles of the selected companion on the HUD. What I don't really understand, that this is used for the tilemaps in the game as well. How many bytes does it use for it?! If the values are frozen, then of course the selected hero's tiles will be garbled.
.ende

.enum $C720 export
_RAM_C720_NEW_HERO_SELECTIONTILES db	;Used to hold the tiles of the hero, while using the select hero menu. this holds the second hero's tiles that the first selected hero will be switched, if that makes any sense.
.ende
				;There is a 220 bytes hole here, not used for anything. The memory partitioning is horrible here.
.enum $C7FE export
_RAM_C7FE_HEROSELECT_VAR db
_RAM_C7FF_FIRST_SELECTED_COMPANION db
_RAM_C800_ dsb $24		;This is the actual tilemap for the screen! If you modify these, the relevant 16x16 metatiles are changed. Starting at $C800 would modify the very first metatile.
_RAM_C824_ dsb $10
_RAM_C834_ dsb $4
.ende

.enum $C924 export
_RAM_C924_ dsb $10		;This is also the part of the screen map.
_RAM_C934_ dsb $4
.ende

.enum $D000 export
_RAM_D000_IN_RAM_SPRITETABLE dsb $100
_RAM_D100_IN_RAM_SPRITETABLE db 	;This is the second sprite table, and also used for decompressed images before sending them to the VDP. A second sprite table is needed to handle sprite flickers, so you see less of it. This way, the game runs on a lower framerate, but could handle more enemies on screen.
_RAM_D101_ db
.ende

.enum $D103 export
_RAM_D103_ db
_RAM_D104_ db
.ende

.enum $D120 export
_RAM_D120_ART_DECOMP dsb $8	;Used with the art decompression.
.ende

.enum $D12C export
_RAM_D12C_IN_RAM_SPRITETABLE db			;This seems like to control where the second sprite array's sprites would be drawn on the screen. Also, there is a whole sprite array here as well!
.ende

.enum $D1AC export
_RAM_D1AC_ db
.ende

.enum $D200 export
_RAM_D200_INRAM_TILEMAP dsb $200		;512 bytes. This is also some tilemap stuff. How many damn memory addresses are needed to decode level data?!
_RAM_D400_IN_RAM_SPRITETABLE dsb $100		;Another sprite table! I know the game can handle things, but this is ridiculous.
.ende

.enum $D600 export
_RAM_D600_ITEMNTRAP_TYPES db
_RAM_D601_ db
.ende

.enum $D900 export
_RAM_D900_CHARA_COORD db
_RAM_D901_SCREEN_NR db		;As the level is split into several screens sometimes, this is what it represents. The screen will try to scroll to this part, and if there is no such screen, the level ends, and it won't get further. Monsters, that are "awake" will pursue you, and they go off screen to catch up with you.
_RAM_D902_HERO_GROUNDLEVEL1 dw
_RAM_D904_HERO_DIRECTION db			;0-right, 01-left
.ende

.enum $D907 export
_RAM_D907_HERO_ANIM_FRAME db			;What this says on the tin. There might be other addresses for the enemy animations too.
.ende

.enum $D909 export
_RAM_D909_FIRST_COMPANION db	;Who is the first companion in the list.
_RAM_D90A_HERO_ACTION db			;This is the player's actions.
				;00-standing still
				;01-walking
				;02-running
				;03-walking backward\moonwalking
				;04-turning around
				;05-jumping
				;06-getting weapon out. Strangely, the weapons just appear in the hands of the warriors usually.
				;07-same
				;08-upper sword swing\attack
				;09-middle swing
				;0A-low swing
				;0B-duck
				;0C-getting bow ready.
				;0D-looks like getting attacked\falling, then gets a spear ready. This is for Sturm. Otherwise fire the bow. I guess this is firing with the secondary weapon.
				;0E-damage frame.
				;0F-falling. Not just the falling anim, it checks for collision, and kill the player, if this is not the "transition" level.
				;10-Using a second weapon? Swords disappear, so this might be attack without the weapon ready.
				;11-Blocking.
				;12-Turning up for taking a route\door that is pointing up.
				;13-Same, but down.
				;14-Getting the staff\spear ready to throw. For Raistlin, he teleports backwards half a screen!
				;15-Raistlin blinks out a bit, then comes back. For everyone else, it's the spear throw. Even for Sturm.
				;16-Nothing. It may have anim frames, but does nothing.
				;17-Walk forward a bit.
				;18-Raistlin does some really awesome ninja attack! Never seen it before.
					;Goldmoon runs a bit.
					;Other walk, or moonwalk.
				;19-moonwalking.
				;1A-looking down
				;1B-Same as 18, may be invalid.
				;Anything over these values seem to provide random outcomes.

_RAM_D90B_ANIM_FRAME_COUNTER db		;This is a counter, that counts down the animation frames, and the player action is not stopped, until this counter is zero.
.ende

.enum $D910 export
_RAM_D910_SECOND_HERO_COORD dw		;This contains the second copy of the player coordinates, to be used with the system, that draws sprites on the screen.
_RAM_D912_HERO_GROUNDLEVEL2 dw				;The second "frame"'s hero ground level. If this is changed, then the player's character will jump up and down, as the game puts these together. If the second byte is not zero, the hero sprite is not drawn.
.ende

.enum $D91C export
_RAM_D91C_NME_COORD_ARRAY db		
;This is the first enemy's X coordinate. 
;The next byte is the screen number, similarly to how the player movement works.
			;The next, third byte is the "ground" level for the enemy. Some of the enemies are floating, so this is why this might be important.
			;Fourth byte hides the enemy.
			;Fifth byte is the direction the enemy is facing. 01 is left, 00 is right.
			;Sixth freezes it.
			;Seventh does nothing so far. (human enemy)
			;Eighth is the animation frame.
			;Ninth is the health of the enemy.
			;Tenth is the enemy state:
				;00-standing still.
				;01-walking\following.
				;02-stops in its tracks.
				;03-upper attack.
				;04-attack2
				;05-middle attack.
				;06-thrusting attack.
				;07-another upper attack.
				;08-upper attack 4.
				;09-upper thrust.
				;0A-lower thrust attack.
				;0B-lower slash attack.
				;0C-lower thrust attack 2.
				;0D-the enemy sticks the sword to his body.
				;0E-lifts the sword. what is strange, that the upper part of the sword is not visible.
				;0F-seems like a little walk, then a dodge.
				;10-backpedalling\moonwalking
				;11-dies?
				;12-nothing
				;13-some broken walking animation.
				;14-also some backpedalling
				;15-small walking.
				;16 and over seems to be invalid values.
			;11th byte is the animation frame of the action.
			;Other monsters are after this one. There might be other details, but this was my finding at the moment.
.ende

.enum $D920 export
_RAM_D920_MNE1_DIR db		;Enemy 1 direction.
.ende

.enum $D9A8 export
_RAM_D9A8_PROJECTILE_ARRAY db	;I have to fix the rom, but this is the part where the player and possibly the enemy projectiles are stored.
.ende

.enum $D9B0 export
_RAM_D9B0_FINDTRAPS_TIME db ;This is the timer for the 'Find Traps' spell.
.ende

.enum $DA50 export
_RAM_DA50_NME_COORD_ARRAY2 dsb $c		;Another array for player positions and so on.
_RAM_DA5C_NME_ARRAY_VAL db			;This also stores the array for the second player, enemy coordinates as well, to be used by the game engine.
.ende

.enum $DBA0 export
_RAM_DBA0_PLYR_STATS db
.ende

.enum $DBB1 export
_RAM_DBB1_GMSTAFF_IN4CHARS db	;This will tell the game if the Blue Crystal Staff if held by the first four Companions. This does not check explicitly for Goldmoon. Even if she's in the first four, this variable will prevent you from casting spells.
.ende

.enum $DBB4 export
_RAM_DBB4_GOLDMOON_MAXHP db
_RAM_DBB5_GOLDMOON_HP db
.ende

.enum $DBB9 export
_RAM_DBB9_PLYRSTATS_RELATED db
_RAM_DBBA_ dsb $e
.ende
.enum $DBC0 export
_RAM_DBC0_ db
.ende
.ENUM $DBDC EXPORT
_RAM_DBDC_STURM_MAXHP DB
_RAM_DBDD_STURM_HP DB
.ENDE

.enum $DBE2 export
_RAM_DBE2_ dsb $e
.ende
.enum $DC29 export
_RAM_DC29_ db
.ende
.ENUM $DC2C EXPORT
_RAM_DC2C_RAISTLIN_MAXHP DB
_RAM_DC2D_RAISTLIN_HP DB
.ENDE
.ENUM $DC04 EXPORT
_RAM_DC04_CARAMON_MAXHP DB
_RAM_DC05_CARAMON_HP DB
.ENDE
.enum $dc54 export
_RAM_DC54_TANIS_MAXHP DB
_RAM_DC55_TANIS_HP DB
.ende
.ENUM $DC7C EXPORT
_RAM_DC7C_TASSLEHOFF_MAXHP DB
_RAM_DC7D_TASSLEHOFF_HP DB
.ENDE
.enum $DCA4 export
_RAM_DCA4_RIVERWIND_MAXHP DB
_RAM_DCA5_RIVERWIND_HP db
.ende

.enum $DCCC export
_RAM_DCCC_FLINT_MAXHP DB
_RAM_DCCD_FLINT_HP DB
.ENDE

.enum $DCE0 export
_RAM_DCE0_TRAPARRAY db	;This seems like an array for the traps in a given room. If this is nulled, no traps are spawned. It seems like there are two bytes for every trap on the screen, but i've not checked what makes them behave. There is an X coordinate and a trap type. The game then looks up the player position, and then checks this array to see if the player needs some love, then unleashes the trap.
.ende

.enum $DCF2 export
_RAM_DCF2_DEAD_CHARS dsb $20	;Hm, checking this does not seem to reveal anything. The code does not write here anything other than zeroes, so I think this is unused. More strange that here, 32 bytes are assigned to this, but only 16 bytes are written.
_RAM_DD12_MUS_ENA db	;Does as what's written on the tin.
_RAM_DD13_MUSIC_NR db	;Valid from 1-4. 0 is silence, and anything over that too. Goes to FF after you enter the character bio screens, then disables music, but that's it.
_RAM_DD14_SFX_PLAY db	;These are the sound the player and the enemies will make, but not the environment. The number here always starts as $Ex.
_RAM_DD15_ db
_RAM_DD16_ db
_RAM_DD17_ db
_RAM_DD18_SOUND_NOTE db
_RAM_DD19_ db
.ende

.enum $DD22 export
_RAM_DD22_ db
.ende

.enum $DD2A export
_RAM_DD2A_ db
.ende

.enum $DD32 export
_RAM_DD32_SOUND db
.ende

.enum $DD3A export
_RAM_DD3A_ db
.ende

.enum $DD42 export
_RAM_DD42_SOUND db
.ende

.enum $DDB2 export
_RAM_DDB2_ db
.ende

.enum $DDEA export
_RAM_DDEA_ db
.ende

.enum $DE06 export
_RAM_DE06_ db
.ende	;These are all sound related.

.enum $DE22 export
_RAM_DE22_RESET db
_RAM_DE23_CONSOLE_REGION db
_RAM_DE24_NTSC_COMP db
_RAM_DE25_MUSIC_COUNTER db
_RAM_DE26_ db			;This does nothing at all. Even if it's zeroed, no difference in gameplay behaviour.
.ende

.enum $DE29 export
_RAM_DE29_METATILE_TILE_LOAD db			;Some level loading stuff, but not sure what it is.
_RAM_DE2A_ dw			;Also used with level loading.
.ende

.enum $DE2E export
_RAM_DE2E_BANKSWITCH_LEVEL db
_RAM_DE2F_ dw
_RAM_DE31_METATILE_BANK db	;These two are used for bankswitching. I'll check later what it does exactly.
_RAM_DE32_ dw
_RAM_DE34_SCRN_SCROLL dw
_RAM_DE36_ dw
_RAM_DE38_ dw
_RAM_DE3A_COLUMN_00_01 db
_RAM_DE3B_ db
_RAM_DE3C_MAX_LVL_LEN2 dw
_RAM_DE3E_MAX_LVL_LEN dw
_RAM_DE40_ dw
_RAM_DE42_ dw
_RAM_DE44_SCRNSCRL_2FRMSET db
_RAM_DE45_ db
_RAM_DE46_SCROLLBG db
_RAM_DE47_ db
_RAM_DE48_ db
_RAM_DE49_ db
_RAM_DE4A_COLUMN_NR_SCROLL dw
_RAM_DE4C_ dw
_RAM_DE4E_SCROLL_DIR db	;1 IS RIGHT, 2 IS LEFT.
_RAM_DE4F_ db
_RAM_DE50_COLUMN_DRW_NR db
_RAM_DE51_ db
_RAM_DE52_ROOM_NR db
_RAM_DE53_COMPASS db
_RAM_DE54_HOLD_PLYR db
_RAM_DE55_WATERFALL db
_RAM_DE56_WINPOINT_ADD db	;If this is non-zero, then the game adds 10k points to items. I guess, the Disks of Mishakal worth this much points.
_RAM_DE57_ db
_RAM_DE58_ db
_RAM_DE59_LEFT_DEBUG_NR db
_RAM_DE5A_ db
_RAM_DE5B_COMBAT_MARK dw	;If this is not zero, we are in combat, and able to attack.
_RAM_DE5D_ db
_RAM_DE5E_FLOORFALLXCOORD dw
_RAM_DE60_ dw
_RAM_DE62_ db
_RAM_DE63_ db
_RAM_DE64_ dw
_RAM_DE66_ db
.ende

.enum $DE6A export
_RAM_DE6A_ db
_RAM_DE6B_ db
_RAM_DE6C_NME_MOVE7BIT db
_RAM_DE6D_GAME_WIN db		;If this is not zero, the game is won automatically.
_RAM_DE6E_ db
_RAM_DE6F_ dw
_RAM_DE71_ db
_RAM_DE72_LVL_LOAD dw	;This is used in the level transition routine. Freezing it will however not prevent anyone from going elsewhere in the game.
_RAM_DE74_PT_FOR_CMBT dw
_RAM_DE76_CR_DMGLINK db
_RAM_DE77_PT_FOR_ITEMS dw
_RAM_DE79_KILLCNT_ARRAY db
_RAM_DE7A_KILLCOUNT_ARRAY dsb $16
_RAM_DE90_GAMEPAD db
_RAM_DE91_ db
_RAM_DE92_ db
_RAM_DE93_ db
_RAM_DE94_GAMEPAD db
_RAM_DE95_GAMEPAD db
_RAM_DE96_STOPGAME db
_RAM_DE97_ db
_RAM_DE98_ dw
_RAM_DE9A_ db
_RAM_DE9B_ db
_RAM_DE9C_PLYR_BLOCK db
_RAM_DE9D_TIMER db
_RAM_DE9E_ db
_RAM_DE9F_TIMER db
_RAM_DEA0_TIMER_TEMP db
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
_RAM_DEB5_FRAMESET db
_RAM_DEB6_ db
_RAM_DEB7_INRAM_SPRITETABLE_TEMP dw
_RAM_DEB9_ANIM_POINTER dw		;Some pointer, that helps with animations, but the connecting data is not obvious what it is now.
_RAM_DEBB_DEBUG db
_RAM_DEBC_INRAM_HUD_PORTRAITS db
_RAM_DEBD_SECOND_HERO_ARRAY dsb $6	;A small array starting with the second hero.
_RAM_DEC3_ db
_RAM_DEC4_PALETTE_LOAD_POINTER db	;This is just a pointer, from where the code gets the palette data, and showes it out to the VDP directly.
_RAM_DEC5_FADEOUT_WORKPAL dsb $f	;The code writes here the temporary palette for fadeout.
.ende

.enum $DED3 export
_RAM_DED3_FADEOUT_VAR db		;After this one, there is an array for the BG colors during fadeouts.
_RAM_DED4_FADEOUT_BG_PAL dsb $F		;It's not marked in the code, but here, some palette data is loaded while the fadeout is there.
.ende

.enum $DEE4 export
_RAM_DEE4_ db
_RAM_DEE5_MENUORGAME db			;If this is $FF, then we are in a menu, or info screen, anything not gameplay.
_RAM_DEE6_ db				;I don't know what these do at the moment.
_RAM_DEE7_ db				;Used with the magic missile, but I just don't know what it is.
_RAM_DEE8_PROJECTILE_TYPE db		;What the spellcasters will shoot. Or if you use a bow, that would also count as a similar projectile.
_RAM_DEE9_HOLDPERSON_VAR db		;Used with the spell, but not sure yet what it does, maybe some temp space.
_RAM_DEEA_GMOON_STAFF_CHRG dw		;Goldmoon's staff charge.
_RAM_DEEC_RAIST_STFFCHRG dw		;Raistlin's staff charge.
_RAM_DEEE_PROT_EVIL_TIMER db		;This 'Protection from Evil' spell is on a timer, and this is what that is.
_RAM_DEEF_DEFL_DRAGONB_SPELL_TIMER db	;Used around the deflect spell, but that's it.
_RAM_DEF0_DEFLECT_DRGN_BREATH db	;This is the timer for the 'Deflect Dragon Breath' spell. $3F is the default value.
_RAM_DEF1_STR_POTION db	;This is the strength potion's remaining power. It increases damage output or course. It also decreases with each use. The damage calculation is also around this variable.
_RAM_DEF2_HOLD_PLYR db			;Will prevent the player from moving.
_RAM_DEF3_ENEMY_MOV_ENA db		;Does the same thing for any enemy on the screen.
_RAM_DEF4_FALLING_STONES db		;Set this to $02, and stones will fall on your head constantly, like after you defeat the final boss.
.ende
;.emptyfill $FF
.enum $FFFF export
_RAM_FFFF_ db				;Slot 2 mapping is at the top of RAM, and this is that.
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
	ld bc, $1EFF	;7936 bytes
	ldir	;Clear RAM.
	;ld l, $FC
	;ld a, $80
	;ld (hl), a
	;inc l
	;xor a
	;ld (hl), a
	;inc l
	;inc a
	;ld (hl), a
	;inc l
	;inc a
	;ld (hl), a	;From DEFC: 80 00 01 02

;This is not really needed now or before.	
	ei
	jp _LABEL_200_ENTRY	;Jump to program start.
;.dsb 13,$00
; Data from 2B to 37 (13 bytes)
.db $0C $1D $0C $3D $04 $3D $95 $10 $E4 $58 $0C $3D $04 ;I think this is used, so it remains now.
.org $0038
_LABEL_38_:
	push af
	in a, (Port_VDPStatus)
	rla
	jr c, ++	;JUMP AHEAD IF WE ARE IN VBLANK.
	ld a, (_RAM_DE9F_TIMER)	;IF THIS IS NOT ZERO, THE BACKGROUNDS IN THE INTRO PICTURE ARE BROKEN AND THE MAIN MENU IS NOT CLEARED, EXCEPT FOR THE TEXT TILES.
	and a
	jr z, +			;SETTING THIS TO NZ WILL DO THE SAME AS THE ABOVE LONGER COMMENT.
	ld a, $08		;0000 1000
	out (Port_VDPAddress), a
	ld a, $88		;1000 1000
	out (Port_VDPAddress), a	;WRITE 8 TO THE SCROLL REGISTER, SO WE SCROLL THE SCREEN A WEE BIT.
+:
	ld a, (_RAM_DE25_MUSIC_COUNTER)
	and a
	jr nz, +
	call +++
+:
	pop af
	ei
	reti

; Data from 59 to 63 (11 bytes)
.dsb 11, $00	;11 
.org $0064	;With the ORG, this above is not needed, we can use that space for something later.
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

++:	;WE JUMP HERE IF WE ARE IN VBLANK.
	ld a, (_RAM_DE9D_TIMER)
	INC A			;THE STRANGE THING IS, THAT NO MATTER IF THIS IS INCREASED, DECREASED, IT WORKS THE SAME. iT DOES NOT MATTER, IF YOU INCREASE THIS WITH MORE THAN JUST ONE. THE ENGINE DOES NOT CARE.
	ld (_RAM_DE9D_TIMER), a	;INCREASE THIS TIMER, IT IS USED EVERYWHERE IN THE GAME, AND THE CODE WON'T WORK WITHOUT IT AT ALL.
	ld a, $01	;$01
	ld (_RAM_DE26_), a
	xor a
	ld (_RAM_DE26_), a	;WELL, THIS DOES NOT AFFECT THE GAMEPLAY MUCH. COMMENTED THE XOR OUT, AND THE GAME WENT AS IT WAS STILL THERE.
				;EVEN COMPLETELY COMMENTING THEM OUT WILL NOT DO ANYTHING.
				;ANYWAYS, THE VBLANK JUST UPDATES THIS COUNTER, AND THATS IT.

	pop af
	ei
	reti

+++:	;AND ALSO HERE FOR $DE25
	ld a, (_RAM_FFFF_)	;GET THE CURRENT ROM PAGE.
	push af			;SAVE IT ON THE STACK.
	ld a, $18		;BANK 24, THIS IS THE MUSIC.
	ld (_RAM_FFFF_), a	;DO A BANKSWITCH.
	dec a			;DOES ABSOLUTELY NOTHING.
	ld (_RAM_DE26_), a	;MUSIC BANK -1? DOES NOT REALLY DO MUCH, THE RAM VALUE IS ONLY USED AROUND THIS CODE.
	call _LABEL_62645_SOUND_ENGINE	;CALL THE SOUND ENGINE TO UPDATE.
	pop af			;GET BACK THE LAST BANK
	ld (_RAM_FFFF_), a	;AND SWITCH BACK.
	ret



.org $00AB
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
.org $0200
_LABEL_200_ENTRY:	;Entry for the program, but nothing as a main loop or anything.
	ld sp, $DFF0
	call _LABEL_7E9A_REGION_CHKSETUP	;This region check is not really needed, since the game is only released in PAL regions, no NTSC compatibility needed.
	;I think i'll keep the code where they are at the moment, before I have to rearrange stuff again.
ld a, $18
ld (_RAM_FFFF_), a	;lOAD BANK 24.
call _LABEL_623E8_PREP_MUS_BANK
;ei
ld a, $18
ld (_RAM_FFFF_), a	
ld a, $01			;SET NR. OF MUSIC.
ld c, a
call _LABEL_6242B_SET_MUS	;SET AND PLAYS MUSIC.

_LABEL_206_ENTRY_AFTERCHECK:
	di
	ld hl, _RAM_DE29_METATILE_TILE_LOAD
	ld de, _RAM_DE29_METATILE_TILE_LOAD + 1
	ld bc, $00CB
	ld (hl), $00
	ldir
	;If the above is disabled, then the intro char descriptions, or at least the first image will use the wrong background color, and frankly these few bytes are not really that much of a deal.
	ld sp, $DFF0
	di
	ld hl, _DATA_468_VDP_INIT_DATA
	call _LABEL_61F_WRITE_VDP_REG	;DO SOME VDP HOUSEKEEPING AGAIN.
	call _LABEL_63B_CLEAR_SAT	;CLEAR SAT.
	;ld a, (_RAM_DE97_)
	nop
	nop
	nop
	;and a
	nop
	;jr nz, +
	nop
	nop
	;ld a, $18
	;ld (_RAM_FFFF_), a	;lOAD BANK 24.
	;call _LABEL_623E8_PREP_MUS_BANK
	;ei
	;ld a, $18
	;ld (_RAM_FFFF_), a	
	;ld a, $01			;SET NR. OF MUSIC.
	;ld c, a
	;call _LABEL_6242B_SET_MUS	;SET AND PLAYS MUSIC.
;+:
	;The above is relocated, so the titlescreen music will play through its entirety. I needed some padding here and there, since other offsets are not fixed that are in later editions of this hack. The original code interrupts the music, and restarts it, when the game demo ends, preventing the music to play all the way.
	;Of course, the NOPs will be removed later.
	ei
	xor a
	ld (_RAM_DE97_), a
	ld hl, _DATA_AB_		;FIRST 32 BYTES ARE AN ALL BLACK PALETTE.
	call _LABEL_4CF_LOAD2PALS	;RESET ALL PALS.
	xor a
	ld (_RAM_DE9F_TIMER), a
	ld (_RAM_DE9E_), a
	ld bc, $0001

	;Console region check.
;	ld a, (_RAM_DE23_CONSOLE_REGION)
;	and a
;	jr z, +	;JUMP TO + IF THE CONSOLE IS PAL.
;	ld bc, $1415	;NTSC LEGAL SCREEN DATA OFFSET.
;+:
;	ld a, b	
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop	

;The region check for the legal screen is now disabled.
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
	ld (_RAM_C000_RAM_START), a;($C000), a 
	ld (_RAM_C001_),a;($C001), a
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
	call _LABEL_4F9_PALETTE_FADEOUT	;FADE OUT SCREEN.
	ld a, ($C001)
	inc a
	and $03
	ld ($C001), a
	jp z, _LABEL_2ED_GAME_DEMO	;IF WE HAVE SEEN ALL SCREENS, COMMENCE TO GAME DEMO.
	;IF SET TO NZ, THE GAME DEMO STARTS AFTER THE FIRST LEGAL SCREEN.
	ld a, ($C000)
	inc a
	and $01
	ld ($C000), A
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
	call _LABEL_4F9_PALETTE_FADEOUT	;FADE SCREEN OUT.
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

_LABEL_2FF_PREPNPLAYSFX:	;If this is returned early, then there will bw no sound effects in the game.
	push bc			;We save bc for later.
	ld c, a
	ld a, (_RAM_FFFF_)	;Save the last bank into a.
	push af			;Push this also to the stack.
	ld a, $18		;This is the music\sound bank.
	ld (_RAM_FFFF_), a	;Then select this bank too.
	ld a, c			;This might be the sound number?
	call _LABEL_6248C_PLAYSFX
	pop af			;Get back the last bank number.
	ld (_RAM_FFFF_), a	;And switch back.
	pop bc			;Restore this older value.
	ret

; Data from 314 to 334 (33 bytes)		;This is connected with some animations, but not sure what this is yet.
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
_DATA_473_VDP_CONF_DATA:		;This is also sent ot the VDP.
.db $36 $E0 $FF $FF $FF $FF $FB $F0 $08 $00 $7F $3E $10 $F3 $D3 $BF
.db $3E $C0 $D3 $BF $78 $D3 $BE $FB $C9

_LABEL_48C_LOAD_VDP_DATA:
	ex de, hl
	call _LABEL_4BB_VDP_RAM_WRITESETUP
-:
	ld a, (de)
	out (Port_VDPData), a
	inc de
	dec bc
	ld a, b
	or c
	jr nz, -
	ret

--:	
		call _LABEL_4BD_VDP_OUTSETUP
-:	
		in a, (Port_VDPData)
		ld (de), a
		inc de
		dec bc
		ld a, b
		or c
		jr nz, -
		ret
	
_LABEL_4A7_DUMPVRAM_TOROM:	;Reading from VRAM, into ROM? It is not used though.
		di
		ld a, $1F	;Bank 31.
		ld (_RAM_FFFF_), a
		ld de, $8000	;This is the beginning of Slot 2 ROM page.
		ld bc, $4000	;16k of data.
		ld hl, $0000
		call --
-:	
		jr -

_LABEL_4BB_VDP_RAM_WRITESETUP:	;VDP RAM WRITE
	set 6, h
_LABEL_4BD_VDP_OUTSETUP:		;This is used to do general VDP tasks, nor just write.
	ld a, l
	out (Port_VDPAddress), a
	ld a, h
	out (Port_VDPAddress), a
	res 6, h
	ret

; Data from 4C6 to 4CE (9 bytes)
;.dsb 9, $00
;.db $11 $C4 $DE $01 $20 $00 $ED $B0 $C9

_LABEL_4C6_:	
		ld   de, _RAM_DEC4_PALETTE_LOAD_POINTER
		ld   bc, $0020
		ldir
		ret

.org $04CF
_LABEL_4CF_LOAD2PALS:
	xor a
	out (Port_VDPAddress), a
	ld a, (ix+0)
	ld a, $C0
	out (Port_VDPAddress), a
	ld b, $20
	ld de, _RAM_DEC4_PALETTE_LOAD_POINTER
-:
	ld a, (hl)
	ld (de), a
	out (Port_VDPData), a
	inc hl
	inc de
	djnz -
	ret

_LABEL_4E7_:	;This is not used by the code. Some VDP data loading. The indexing part is a bit strange, especially with the +0. Maybe this is some other error in the disassembly.	
		ld a, c
		out (Port_VDPAddress), a
		ld a, (ix+0)
		ld a, $C0
		out (Port_VDPAddress), a
		ld a, (ix+0)
		ld a, b
		out (Port_VDPData), a
		ei
		ret

.org $04F9
_LABEL_4F9_PALETTE_FADEOUT: ;Used many times by the game to load pallette details into the VDP. As it can be seen, this is a fadeout routine as well.
	ld a, (_RAM_DED3_FADEOUT_VAR)
	and a
	ret z
	ld b, $03
-:
	push bc
	ld hl, _RAM_DEC4_PALETTE_LOAD_POINTER
	ld b, $20
	call _LABEL_51E_FADEOUT
	ld hl, _RAM_DEC4_PALETTE_LOAD_POINTER
	di
	call _LABEL_4CF_LOAD2PALS
	ei
	call _LABEL_59B_MAIN
	call _LABEL_59B_MAIN
	call _LABEL_59B_MAIN
	pop bc
	djnz -
	ret

_LABEL_51E_FADEOUT:	;If this is commented out, the screen at the character BIO will just glitch out before changing to another one. If this works, then the screen will fade out, so it looks nice.

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
	djnz _LABEL_51E_FADEOUT
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
	jr z, +	;if this is NZ, THEN THE GAMEPAD WON'T GET READ.
	ld a, c
	ld (_RAM_DE9B_), a
	ld a, (_RAM_DE9A_)
	ld c, a
+:	;NO BUTTON WAS PUSHED
	ld a, (_RAM_DE92_)
	and $30
	ld b, a
	ld a, c
	ld (_RAM_DE91_), a
	ld (_RAM_DE92_), a
	xor b
	and c
	ld (_RAM_DE90_GAMEPAD), a
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
	ld (_RAM_DE9D_TIMER), a
-:
	ld a, (_RAM_DE9D_TIMER)
	and a
	jr z, -
	call _LABEL_5F4_RESET
	ld a, (_RAM_DE97_)
	and a
	jr z, +
	xor a
	ld (_RAM_DE9E_), a
	ret

+:
	ld a, (_RAM_DE9F_TIMER)
	ld b, a
	ld a, (_RAM_DE9E_)
	and b
	ret z
	ld a, ($DE46)
	ld b, a
	ld c, $08
	call _LABEL_62D_WRITE_VDP_REG
	ld a, (_RAM_DE25_MUSIC_COUNTER)
	ld d, a
	ld a, $01
	ld (_RAM_DE25_MUSIC_COUNTER), a
	call _LABEL_612_MUTE_PSG
	xor a
	ld (_RAM_DE9D_TIMER), a
-:
	ld a, (_RAM_DE9D_TIMER)
	and a
	jr z, -
	ld a, ($DE46)
	ld b, a
	ld c, $08
	call _LABEL_62D_WRITE_VDP_REG
	call _LABEL_5F4_RESET
; Data from 5E8 to 5F3 (12 bytes)
;.dsb 12, $00	;This is what it gets disassembled to, but does not seem to be valid, since the jump is a bit far for it, and at the moment, I don't know where it would jump either.
;		ld   a, (_RAM_DE9E_)
;		and  a
;		jr   nz, --
;		ld   a, d
;		ld   (_RAM_DE25_MUSIC_COUNTER), a
;		jr   _LABEL_59B_MAIN
.db $3A $9E $DE $A7 $20 $E4 $7A $32 $25 $DE $18 $A7
_LABEL_5F4_RESET:	;This is how the code handles reset. I have not thought about this, since none of my consoles have reset. The SMS2 doesn't, and neither the MD--->SMS adapter.
	in a, (Port_IOPort2)	;THE RESET IS MAPPED TO THE SECOND JOYPAD'S PORT.
	and $10			;MASK OUT ALL OTHER BUTTONS.
	ld c, a
	ld a, (_RAM_DE22_RESET)
	sub c
	ret z			;If the button is not pressed, then we should just return.
	ld a, c
	ld (_RAM_DE22_RESET), a
	bit 4, a
	ret nz
	xor a
	ld (_RAM_DE9E_), a		;THIS IS YET TO BE CHECKED OUT.
	ld hl, _DATA_AB_		;THE FIRST PART OF THIS DATA IS BLACK PALETTE ENTRIES.
	call _LABEL_4CF_LOAD2PALS	;LOAD THE PALETTES.
	jp _LABEL_200_ENTRY		;GO BACK TO THE BEGINNING OF THE CODE AFTER INIT.
;The devs thought about this, I think they programmed this on an SMS1, otherwise they would not bother with this small feature.
_LABEL_612_MUTE_PSG:
	ld hl, _DATA_61B_MUTEPSG
	ld bc, $0400 | Port_PSG
	otir
	ret

; Data from 61B to 61E (4 bytes)
_DATA_61B_MUTEPSG:	;This mutes all sound channels.
.db $9F $BF $DF $FF
;9F-->1001 1111
;BF-->1011 1111
;DF-->1101 1111
;FF-->1111 1111	;These are all the channels, and basically tells the program to shut the sound down by setting the maximum attenuation.

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

_LABEL_63B_CLEAR_SAT:	;This clears the VDP's Sprite Attribute Table, and places a sprite terminator at the end, so no sprites are drawn at all.
	ld bc, $FF05
	call _LABEL_62D_WRITE_VDP_REG
	neg
	neg
	ld hl, $3F00	;3F00
	call _LABEL_4BB_VDP_RAM_WRITESETUP
	neg
	ld a, $D0
	out (Port_VDPData), a
	ret

_LABEL_652_LOAD_NEW_SCRN:	;When you go through a door\archway\level, this will load the next part of the game. I'll look into this later, but does not seem to be that difficult.Boy I was wrong..
	push bc
	push de
	push hl			;Save the registers for later.
	ld c, a			;Move this to C.
	call ++			;Well, imo this call is not really needed, since nothing else jumps there. It would function the same I guess if i just copy that here instead.
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
	push bc			;Push these the second time, and they are do needed. The game works, but after a complete screen change, the game resets.
	ld hl, (_RAM_DE72_LVL_LOAD)
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
	ld (_RAM_DE72_LVL_LOAD), hl
	sub l
	and a
	sbc hl, bc
	pop bc
	pop de
	pop hl
	ret nz
	push hl
	ld hl, (_RAM_DE72_LVL_LOAD)
	inc h
	dec l
	ld (_RAM_DE72_LVL_LOAD), hl
	pop hl
	ret
	;nop	;This was not here.
_LABEL_697_GAME_ENTRY:	;THE ACTUAL GAME STARTS HERE.
	di
	ld hl, $3C00	;0011 1100 0000 0000	;Set the SAT as the destination address.
	call _LABEL_4BB_VDP_RAM_WRITESETUP		;Setup a write.
	ld bc, $0100				;256 bytes.
	ld de, $00BF				;191
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
	ld a,$01
	ld (_RAM_DE52_ROOM_NR), a	;SET THE STARTING ROOM.

;MESS HERE.
	call _LABEL_7D42_LOAD_PLYRSTAT	;Load player stats of course, I mapped some things at the data part.
	call _LABEL_79E7_SPAWN_ITEMTRAP	;TRAPS, ITEMS ARE NOT LOADED. THE GAME IS POSSIBLY UNWINNABLE THIS WAY, SINCE THE DISKS COULD NOT SPAWN EITHER.
	call _LABEL_7ECF_DRAW_NORMAL_HUD_NODEBUG	;DISABLING THIS WILL NOT DRAW THE USUAL HUD, BUT ENABLES SOME DEBUG HUD. A ATTACKS, AND B ADVANCES YOU TO THE NEXT "ROOM". CHARS CAN STILL DIE. CHAR MENU IS DISABLED.
	call _LABEL_2BF2_CLEAR_INRAMSAT	;We clear the SAT table stored in RAM. Since we'll use this later, this small clearing does not affect much.
	ld ix, _RAM_D900_CHARA_COORD
	;Why are the numbers so spread apart?
	ld (ix+9), $01			;Show the player. If this is zero, the companions are not shown.
	ld (ix+7), $06			;Action nr. This handles what the player is doing at the moment.
	ld (ix+0), $64			;This is the X coordinate of the companion, but on a given screenful of a map. 
	ld (ix+1), $00			;Map nr. A level is composed of these screens, so this is not a stage number or anything similar.
	ld (ix+2), $74			;Ground level. If this is less than $74, then the companion will "float, so to speak".
	ld (ix+3), $00			;Same, if this is not $00, then the companion is not shown. Maybe this is also the "screen" value.
	ld (ix+16), $64			;Last frame's X coordinate. As the game runs on 25FPS, this stores the previous frame's X value.
	ld (ix+17), $00
	ld (ix+18), $74
	ld (ix+19), $00			;This is all the same for the second frame.
	ld hl, $0000
	ld (_RAM_DE34_SCRN_SCROLL), hl		
	ld (_RAM_DE36_), hl	;Reset the maximum stage length.
	xor a
	ld hl, _RAM_DEBC_INRAM_HUD_PORTRAITS
-:
	ld (hl), a
	inc hl
	inc a
	cp $08	
	jr nz, -		;Resetting the list of the heroes.
	call _LABEL_59B_MAIN
	ld a, $08	
	ld (_RAM_DE9F_TIMER), a
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
_LABEL_726_LEVEL_WARP_LOAD:		;Since we will load a level, this will be needed.
	call _LABEL_5819_MARKDEAD_PERMADEAD		;When the game warps to another section, it checks for dead characters. If you have not resurrected them, they will be marked as permanently dead. Since at the moment we start the game, this will have no effect.
	call _LABEL_59B_MAIN
	Call _LABEL_721C_INIT_NME	;THIS PART WILL INIT THE ENEMIES.
	call _LABEL_7971_INIT_TRAPS	
	ld a, (_RAM_DE55_WATERFALL)	;See if the loaded new screen will be a waterfall\healing for the party.
	and $01
	jr z, +			;If it's not, jump and load the level instead.
	call _LABEL_5BBE_CHECKWTRFALL	
	ld a, $02
	ld (_RAM_DE55_WATERFALL), a
	jr ++

+:
	call _LABEL_C43_LEVEL_LOAD
++:
	xor a
	ld (_RAM_DE44_SCRNSCRL_2FRMSET), a ;The game marks $01 with scrolling right, and $FF with left scroll. Also, this seems to be a frame later than what's happening on the screen. In a nutshell, this will stop the screen from scrolling.
	ld h, a
	ld l, a
	ld (_RAM_DE42_), hl	;Stop the character in place. Also, no scrolling if this is frozen,but no apparent function. It is used in movement, and scroll too.
	ei
	call _LABEL_2C1A_FRAMESET_COPY	;no function to this yet.
	ld ($DE27), sp
_LABEL_757_GAME_MAIN:	;THIS SEEMS LIKE THE INGAME MAIN LOOP. LIKE AN INNER ONE.
	ld a, (_RAM_DE97_)
	and a
	jr z, +++
	ld a, (_RAM_DE9B_)
	and $30
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
	call _LABEL_717C_CYCLE_DEAD2ALIVECHARS
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	and a
	jr z, +
	ld e, a
	ld a, $FF
	ld (_RAM_DEE8_PROJECTILE_TYPE), a
	ld a, e
+:
	cp $03
	jr z, +
	ld e, a
	ld a, $FF
	ld (_RAM_DEE6_), a
	ld a, e
+:
	call _LABEL_6573_CALC_DMG
	ld de, _RAM_DBB5_GOLDMOON_HP
	add hl, de
	ld a, (hl)
	and a
	jp nz, _LABEL_924_UPDATE_GAME_SCRN
	ld a, (_RAM_DEF2_HOLD_PLYR)
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
	jr nz, +		;If the room nr is not 1, then jump to +.
	ld a, $C0
	ld (_RAM_DE6D_GAME_WIN), a		;Mark the game as lost.
+:
	ld a, (_RAM_DEF2_HOLD_PLYR)
	and a
	jp z, _LABEL_8B9_GAME_OVER
	inc a
	ld (_RAM_DEF2_HOLD_PLYR), a
	cp $02
	jr nz, +				;So, if the player has stopped, jump. If not, stop the player.
	ld a, $FF
	ld (_RAM_D907_HERO_ANIM_FRAME), a
	ld a, (_RAM_DEF2_HOLD_PLYR)
+:
	and $03
	jp nz, _LABEL_924_UPDATE_GAME_SCRN
	ld a, $08
	call _LABEL_652_LOAD_NEW_SCRN
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
	jp z, _LABEL_924_UPDATE_GAME_SCRN
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
	ld (_RAM_D904_HERO_DIRECTION), a
	ld a, $01
	ld ix, $D900
	call _LABEL_3AAF_DRAWPROJECTILE
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

_LABEL_8B9_GAME_OVER:	;THIS GETS CALLED, WHEN ALL CHARS ARE DEAD\PERMADEAD.
	call _LABEL_5C0C_PREPSCRN_4_MSG
	di
	call _LABEL_6B42_DRW_SOLID_CLR_SCRN
	xor a
	ld hl, $0000
	ld (_RAM_DE74_PT_FOR_CMBT), hl	;SET NO POINTS FOR COMBAT. HOW RUDE.
	ld (_RAM_DE76_CR_DMGLINK), a	;DISABLE THE DAMAGE LINK BETWEEN RAISTLIN AND CARAMON.
	ld a, $18			
	ld (_RAM_FFFF_), a		;SET BANK 24. (MUSIC)
	ld a, $03			;SET THE GAME OVER MUSIC.
	ld c, $01
	call _LABEL_6242B_SET_MUS	;PLAY THE GAME OVER TUNE.
	ld hl, $3808			;TILEMAP ON THE SCREEN. IF YOU OPEN A TILEMAP MONITOR IN AN EMULATOR, YOU CAN SEE THIS VALUE DIRECTLY CORRELATES WITH THE TILE\TEXT POSITION ON THE SCREEN LATER.
	ld de, _DATA_AEF2_MISSION_FAILEDTXT		;THIS IS A BLOCK OF TEXT AND OTHER DATA. BASICALLY THE CODE SETS UP THIS REGISTER TO POINT TO THE 'YOU'VE FAILED' MESSAGE.
--:	;CHANGED!
	ld a, $1F
	ld (_RAM_FFFF_), a		;BANKSWITCH TO THE BANK THAT HAS THIS DATA.
	call _LABEL_35A6_RANDOM		;PLOT TEXT TO LOCATION.
	ld hl, $38C8			;NEXT LOCATION FOR THE TABLE OF POINTS.
	ld de, _DATA_A7C2_SCORE_SCR_TEXT	;SCORE SCREEN PART, WHERE THE MONSTERS AND OTHERS ARE LISTED.
	call _LABEL_35A6_RANDOM		;PLOT TEXT AGAIN.
	call _LABEL_6F3B__UPD_HUD	;UPDATE HUD.
	call _LABEL_61FA_DRAW_SCORESCREEN	;THIS PRINTS THE NUMBERS AND SCORES ON THE SCORE SCREEN. DOES NOT DRAW THE WHOLE SCREEN THOUGH.
	call _LABEL_62B1_SCOREMENU_CONT_LOOP	;WAIT FOR A BUTTON PRESS.
-:
	call _LABEL_552_CHECK_AB_BUTTONS
	ld a, (_RAM_DE91_)
	and $30
	jp z, _LABEL_200_ENTRY;_LABEL_206_ENTRY_AFTERCHECK	;RETURN TO THE BEGINNING OF THE CODE. YEAH, NO CONTINUES.
	;Small fix, so the music after either a win or loss will not play its music after returning to the titlescreen.
	call _LABEL_59B_MAIN
	jr -

_LABEL_906_GOOD_END: ;Ending screen.
   di              ; Disable interrupts		1byte
   call _LABEL_6B42_DRW_SOLID_CLR_SCRN;$6B42      ; Call subroutine at address $6B42 3
   ld a, $18       ; This is the music bank. 2
   ld (_RAM_FFFF_), a   ; Store value of A into memory address $FF00 3
   ld a, $04           ; Decrement value in register A 1
   ld c, $01       ; Load value $01 into register C 2
   call _LABEL_6242B_SET_MUS 
   ld hl, $3808    ; This is a tilemap part. 3
   ld de, $AF25    ; Load value $AF25 into register pair DE 3
   ld a, $01       ; Load value $01 into register A 2
   ld (_RAM_DE56_WINPOINT_ADD), a ; Store value of A into memory address specified by DE+$DE56 3
   jp -- ;$08dc; Jump to address $08DC 3
;.dsb 27,$00
_LABEL_924_UPDATE_GAME_SCRN:	
	;jp _LABEL_757_GAME_MAIN
	ld a, (_RAM_DEF4_FALLING_STONES)
	cp $01
	jr nz, +	;IF THIS IS NOT ZERO, JUMP.
	ld hl, (_RAM_D900_CHARA_COORD)	;Read from the player's X position.
	ld de, $0220
	and a
	sbc hl, de
	jr c, +
	ld c, $01
	call _LABEL_5689_HITDETECT
	ld c, $08
	call _LABEL_57CC_DAMAGE_OTHERS
+:				;RAM VAL IS $01, BUT DOES NOTHING NOTICEABLE.
	ld a, (_RAM_DEF4_FALLING_STONES)
	cp $02			
	jr nz, +		;Jump of we don't want stones to fall on our heads.
	ld a, (_RAM_DE57_)
	inc a
	ld (_RAM_DE57_), a
	and $03
	jr nz, +		;To be actually playable, the game uses some counter to delay the next stone's falling. Still, I think this is a bit too quick to evade.
	ld a, (_RAM_D904_HERO_DIRECTION)	;Get the direction the player is facing.
	push af					;Save it for later. I guess this is needed to draw the stone ahead of the player, so the damage can be dealth to him\her
	xor a			
	ld (_RAM_D904_HERO_DIRECTION), a	;Reset the direction, this was maybe facing right. At the ending, you need to run in that direction, so this is good anyways.
	ld b, $10 ;$10	;Projectile type. $10 is the stone.
	;$00- Arrow.
	;$01- Arrow.
	;$02- Fireball.
	;$03- Red magic, this is maybe shot by Raistlin.
	;$04- Grey projectile.
	;$05- Small fireball\Firebolt.
	;$06- Blue magic, like the one at some waterfall.
	;$07- Bigger green animated magic.
	;$08- Bigger firebolt.
	;$09- Bigger green animated magic.
	;$0A- Same.		I guess these are the various spells in the game, since each one is a separate entity.
	;$0B- Spear. This also creates a box with said item, like if the player had thrown this one. The game gets to be funny looking if you let too many spears fall on the ground, since there isn't more than one in the game.
	;$0C- Hoopak projectile, but looks like a small pebble to me.
	;$0D- Flint's axe. Similarly to the Spear, this also leaves a box.
	;$0E- Animated Dragon breath. This one is very big, and is used by the end boss obviously.
	;$0F- Staff of Magius.
	;$10- The normal big stone.
	;$11- Three falling stones.
	;$12- Big falling fireball.
	;$13- Arrow.
	;$14- Falling smaller blue magic.
	;$15- Small firebolt.
	;$16- Arrow.
	;$17- Hoopak ammo.
	;$18- A treasure chest and tombstone combined, but looks like it works as a big falling stone, without the damage.
	;$19- Arrow.
	;$1A- Fireball.
	;$1B- Small red magic.
	;$1C- Grey projectile.
	;$1D- Small firebolt.
	;$1E- Similar.
	;$1F- Arrow.
	;$20- Hoopak ammo.
	;Others might be there, but these are not really valid or used at all.
	ld l, $78		;Might be very well the height where the projectile falls from. Yup.
	ld d, $12		;Fall speed. The damage is still applied everytime the projectile moves.
	ld a, $02		;Looks like some wait time after five projectiles until the next batch comes down.
	ld c, $F0		;X coordinate of the stones.
	ld e, $07		;How far the projectile goes. If this is low enough, then the players will not be damaged.
	ld h, $00		;This is like an angle from the source of the stone to where it lands. The bigger the value, the bigger this angle is. This is good, as you can make these stones easier to dodge while running.
	ld ix, _RAM_D900_CHARA_COORD ;$D900	;CHANGED! Use the variable instead of a hardcoded address. We also need to know the X coordinate of the player.
	call _LABEL_3AAF_DRAWPROJECTILE	;We have everything, draw the stone, and then animate it as well.
	pop af
	ld (_RAM_D904_HERO_DIRECTION), a
+:				;THIS IS $02, THEN STONES FALL ON THE CHARACTER'S HEAD, LIKE IN THE ENDING.
;---DRAGON BREATH PROTECTION TIMER.
	ld a, (_RAM_DEF0_DEFLECT_DRGN_BREATH)	;Get the dragon breath timer.
	sub $01					;Decrease the value.
	adc a, $00
	ld (_RAM_DEF0_DEFLECT_DRGN_BREATH), a	;This small part controls the dragon breath protection. Once the spell is activated, you are given a certain amount of time, where the dragonfire won't hurt you. Here, the counter for this spell is decreasing.
;----------------------------------
	ld a, (_RAM_DEEF_DEFL_DRAGONB_SPELL_TIMER)
	inc a
	and $07
	ld (_RAM_DEEF_DEFL_DRAGONB_SPELL_TIMER), a	;This goes from 0 to 7
	jr nz, +			;Jump if it's zero.
	ld a, (_RAM_DEEE_PROT_EVIL_TIMER)
	sub $01
	adc a, $00		;If this is commented out, the falling traps are only damaging you once, and not every other frame almost, so it's a lot more forgiving that way.
	ld (_RAM_DEEE_PROT_EVIL_TIMER), a	;Decrease the protection from evil timer, if the spell is active.
+:	
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)	;Get the first companion from the list.
	inc a					;Increment the value, aka get the next Companion value.
	ld (_RAM_D909_FIRST_COMPANION), a	;Put this to the first companion value.
	call _LABEL_2DE2_			;This seems to draw and\or animate the character. If this is commented out, the character is not updated while moving. So it may control animation. If the whole function is just a ret, then no sprites are drawn\updated.
	ld hl, _DATA_314_			;These data statements should mean something, but not for now.
	ld (_RAM_DEB9_ANIM_POINTER), hl		;Load this address into HL.
	call _LABEL_A95_UPDATE_SCREEN
	call _LABEL_6F3B__UPD_HUD
	call _LABEL_A10_ANIM_SPRITES
	ld b, $0D
	call _LABEL_2EC8_RELOAD_SPR_TMP		;We could save those loads by putting them in that routine, but it doesn't matter.
	
	ld hl, _DATA_335_
	ld (_RAM_DEB9_ANIM_POINTER), hl
	call _LABEL_A95_UPDATE_SCREEN
	ld b, $0D
	call _LABEL_2ECE_SET_VDP_ADDR_ANDLOAD	;Here as well.
	call _LABEL_A10_ANIM_SPRITES
	ld b, $0D
	call _LABEL_2ECE_SET_VDP_ADDR_ANDLOAD
	
	ld hl, _DATA_356_
	ld (_RAM_DEB9_ANIM_POINTER), hl
	call _LABEL_A95_UPDATE_SCREEN
	ld b, $0D
	call _LABEL_2ECE_SET_VDP_ADDR_ANDLOAD
	call _LABEL_A10_ANIM_SPRITES
	ld b, $0C
	call _LABEL_2ECE_SET_VDP_ADDR_ANDLOAD
	call _LABEL_2C1A_FRAMESET_COPY
	
	ld hl, _DATA_377_
	ld (_RAM_DEB9_ANIM_POINTER), hl
	call _LABEL_A95_UPDATE_SCREEN
	call _LABEL_3238_COPYCOORDS
	ld a, (_RAM_DE96_STOPGAME)		;This value makes the whole game stop.
	and a
	jr z, +	;If this is zero, the game shall commence normally.
	dec a	;Decrement the value.
	ld (_RAM_DE96_STOPGAME), a	;Put it back and jump ahead.
	jr ++

+:	;Normal flow.
	ld a, (_RAM_DEF2_HOLD_PLYR)
	and a
	call z, _LABEL_374B_AB_DEBUG_BUTTON	;If the player can move, call that routine with the debug parts.
	call _LABEL_53A3_FLOORCOLLISION		;Run the floor collision check.
	call _LABEL_5223_CHECKTRAP		;Run the trap check on the floor.
	call _LABEL_369E_NME_N_TRAP			;If this is commented out, then the screen scrolling won't be performed.
++:	;Stop.
	call _LABEL_31DF_FINEMOTION	;If this is commented out, then the character fine movement is disabled, and movements become very chunky.
	call _LABEL_A10_ANIM_SPRITES
	jp _LABEL_757_GAME_MAIN

_LABEL_A10_ANIM_SPRITES:			;This runs a few times a frame, so let's see if this is anything legible to me. Yes, this is some sprite move\copy thing.
	ld de, (_RAM_DEA9_)	;In other parts, these were used for one of the in-ram sprites.
	push de			;Save this address for later.
	ld hl, $0040		;64- I guess this is how many sprites are to copy or move.
	add hl, de		;Add this 64 to that source address.
	ld (hl), $D0		;D0 marks the end of the sprite drawing for the VDP.
	ld a, (_RAM_DA5C_NME_ARRAY_VAL)	;Read from this array. This is how many sprites there are for the player, it seems. The player's sprites are almost never flickering, just the enemies, and they have priority over everything.
	ld c, a		;Get that number to the counter register. (I know it's just c but whatever, you get the idea.)
	ld b, $00
	ex de, hl
	ld de, _RAM_D12C_IN_RAM_SPRITETABLE
	and a
	jr z, +		;Jump ahead if we have no sprite to draw.
	ldir		;Else copy the tiles.
+:			;We have no tiles left at this line.
	ld c, a
	ld a, $D0	;Load the 'End of Sprite list' value.
	ld (de), a	
	dec hl		
	ld b, $FF
-:
	inc b		;So b is now $00
	inc hl		;HL is the same now as before.
	ld a, (hl)	;Get that value from HL.
	and $D0
	cp $D0		;Check if that's the end of the sprite list.
	jr nz, -	;If there is anything else there, then jump back.
	ld a, b		;This part hit the end of the sprite list.
	and a
	jr z, ++	;Skip, if B is zero.
	push bc		;Save B's value.
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
	ld hl, _RAM_D12C_IN_RAM_SPRITETABLE
	ld (_RAM_DEA9_), hl
++:
	call _LABEL_59B_MAIN
	call _LABEL_2FB7_DRAWSPRITES
	pop hl
	ld (_RAM_DEA9_), hl
	ld a, (_RAM_DE46_SCROLLBG)
	ld b, a
	ld c, $08
	call _LABEL_62D_WRITE_VDP_REG
	ld a, (_RAM_DE48_)
	ld b, a
	ld c, $09
	call _LABEL_62D_WRITE_VDP_REG
	ret

_LABEL_A95_UPDATE_SCREEN:	
	ld a, (_RAM_DE46_SCROLLBG)
	ld (_RAM_DE47_), a

	ld a, (_RAM_DE48_)
	ld (_RAM_DE49_), a	;SAVE SCROLL VALUES, MAYBE FOR THE SCREEN DBL BUFFER SYSTEM.
	call +			;THIS IS THE SCREEN BORDER CHECK, WITHOUT THIS, THE SCREEN WILL NOT SCROLL ANYWHERE, AND NO BOUNDARIES WILL BE CHECKED EITHER.
	call _LABEL_314E_FINE_CHAR_MVMNT	;THIS IS THE FINE CHARACTER MOVEMENT. IF YOU COMMENT THIS OUT, IT UPDATES SPRITES MUCH LESS, AND IT BECOMES REALLY JANKY, OR SOMETHING ON A ZX SPECTRUM, BUT THE GAME WORKS FINE.
	call _LABEL_2C54_CHARA_ANIM	;CHARA ANIMATION. IT GETS THE PATTERNS FOR THE ANIMATED SPRITE, AND WHAT TO LOAD LATER.
	call _LABEL_59B_MAIN	;WOW, IF THIS IS COMMENTED OUT, THE GAME RUNS MUCH FASTER, BUT THE GFX WILL BE MESSED UP A BIT. I GUESS THE VDP WRITES ARE TOO FAST.
	call _LABEL_2FB7_DRAWSPRITES	;NO IMMEDIATELY VISIBLE EFFECT.
	ld a, (_RAM_DE46_SCROLLBG)
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
	ld a, (_RAM_DE46_SCROLLBG)
	ld b, a
	ld a, (_RAM_DE47_)
	cp b
	call nz, _LABEL_10B1_LOADNEW_FLOOR_COLLMAP
	ret

+:
	ld a, (_RAM_DE44_SCRNSCRL_2FRMSET)
	bit 7, a
	jr nz, +
	and a
	jr z, ++
	call _LABEL_B39_CHECK_MAP_RIGHT_BORDER
	ld a, (_RAM_DE44_SCRNSCRL_2FRMSET)
	cp $02
	call nc, _LABEL_B39_CHECK_MAP_RIGHT_BORDER
	ld a, (_RAM_DE44_SCRNSCRL_2FRMSET)
	cp $03
	call nc, _LABEL_B39_CHECK_MAP_RIGHT_BORDER
	jr ++

+:
	call _LABEL_B47_CHECK_MAP_LEFT_BORDER
	ld a, (_RAM_DE44_SCRNSCRL_2FRMSET)
	cp $FF
	call c, _LABEL_B47_CHECK_MAP_LEFT_BORDER
	ld a, (_RAM_DE44_SCRNSCRL_2FRMSET)
	cp $FE
	call c, _LABEL_B47_CHECK_MAP_LEFT_BORDER
++:
	ld a, (_RAM_DE45_)
	bit 7, a
	jr Nz, +	;CHANGING THIS DOES NOTHING NOTICEABLE.
	and a
	ret z
	call ++
	ld a, (_RAM_DE45_)
	cp $02
	call Nc, ++
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

_LABEL_B39_CHECK_MAP_RIGHT_BORDER:
	ld hl, (_RAM_DE34_SCRN_SCROLL)	;CAMERA POSITION ON THE STAGE AGAIN.
	ld de, (_RAM_DE3E_MAX_LVL_LEN)		;MAXIMUM LEVEL LENGTH, AS IT SEEMS.
	and a				;LOSE THE CARRY.
	sbc hl, de			;SUBTRACT THE LEVEL END POINT FROM THE CAMERA POSITION. IF THE CAMERA POS IS LOWER THAN THE LEVEL'S ENDPOINT, THEN LET IT SCROLL TO THE RIGHT, OTHERWISE DON'T.
	ret nc		;IF THIS IS SET TO C, THE SCREEN WILL NOT SCROLL TO THE RIGHT.
	jp _LABEL_FCB_SCRL_RIGHT

_LABEL_B47_CHECK_MAP_LEFT_BORDER:
;THIS LOOKS AT THE LEFTMOST BORDER OF THE LEVEL\SCENE\SCREEN WE ARE ON. THIS PREVENTS THE PLAYER TO SCROLL OUTSIDE THE LEVEL, OR IF THE RET Z IS CHANGED TO AN NZ, TO SCROLL TO THE LEFT AT ALL.
	ld hl, (_RAM_DE34_SCRN_SCROLL) ;GET THIS SCROLL VALUE. THIS IS LIKE THE CAMERA POSITION, WHERE WE LOOK AT THE STAGE.
	ld a, l	;THIS IS THE FINER SCROLL VALUE I THINK.
	or h	;THIS OR WILL BE EITHER ZERO, OR ANYTING ELSE. IF THESE ARE NOT NULL, WE CAN STILL SCROLL THE SCREEN TO THE LEFT. IF IT IS, WE RETURN, AND NO SCROLL WILL HAPPEN.
	ret z	;IF THIS IS NZ, THE SCREEN WILL NOT SCROLL LEFT, JUST RIGHT.
	;THIS CAN BE COMMENTED OUT AS WELL, THE GAME WILL NOT SCROLL WITH THE ZERO VALUE TO THE LEFT ANYWAY, MAYBE JUST AN EXTRA CHECK FROM THE PROGRAMMER.
	Jp _LABEL_FFC_SCRL_LEFT

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
_DATA_B67_DEMO_INPUT:	;CHANGED
.db $01 $00 $16 $01 $05 $00 $1A $02 $04 $08 $18 $01 $04 $00 $00 $FE
.db $E8 $DE $08 $00 $FE $E9 $DE $02 $0C $11 $05 $00 $40 $02 $00 $FE
.db $BC $DE $01 $00 $FE $BD $DE $00 $0F $00 $1E $12 $0A $00 $00 $FF
.org $0B97
; Data from B97 to BB6 (32 bytes)
_DATA_B97_:
.db $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01
.db $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01 $BF $01

_LABEL_BB7_CLR_SCREEN:
;THIS CLEARS HALF THE SCREEN, WHERE THE GAME IS, AND REMOVES SPRITES AS WELL BASED ON THE IN-RAM SAT TABLE.
;THE ROUTINE CAN TAKE A NICE BEATING BEFORE THE GAME GETS VISIBLY GLITCHED DURING SCREEN TRANSITIONS.
	call _LABEL_59B_MAIN
	xor a				;0
	out (Port_VDPAddress), a
	ld a, $7F			;0111 1111	SET UP A VRAM WRITE TO 3F00, THIS WILL WRITE TO THE SAT IN VRAM.
	out (Port_VDPAddress), a
	ld hl, _DATA_AB_		
	ld a, $D0			
	out (Port_VDPData), a		;SO WE DISABLE ALL SPRITES THIS WAY, THE MANUAL TELLS THAT D0 WILL TELL THE CONSOLE NOT TO LOOK AFTER FURTHER SPRITES TO DRAW.
	ld a, $E0			;1110 0000
	ld bc, $2000 | Port_VDPData	;SO WE'LL WRITE 32 TIMES TO THE VDP DATA PORT.
	out (Port_VDPAddress), a
	ld a, $77			;0111 1111	$3FE0 SAT TABLE ENTRY, 14TH SPRITE.
	out (Port_VDPAddress), a
	otir				;CLEAR 32 SPRITE ENTRIES AFTER THE 14TH SPRITE.
	xor a
	out (Port_VDPAddress), a
	ld a, $78			;0111 1000 $3800 THIS IS THE TILES.
	out (Port_VDPAddress), a
	ld e,$18
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
	ld (_RAM_DE46_SCROLLBG), a
	ld hl, _DATA_473_VDP_CONF_DATA
	call _LABEL_61F_WRITE_VDP_REG
	call _LABEL_59B_MAIN
	ret

_LABEL_C43_LEVEL_LOAD:	;OH SWEET JESUS... yeah this is level calculation, lets get into this one...
	call _LABEL_BB7_CLR_SCREEN	
	ld hl, _RAM_D000_IN_RAM_SPRITETABLE
	ld de, _RAM_D000_IN_RAM_SPRITETABLE + 1
	ld bc, $01FF	;512 BYTES, so both tables are cleared at the same time.
	ld (hl), c
	ldir		;Sprites are cleared. End address is $D200.
	ld hl, _RAM_D200_INRAM_TILEMAP
	ld de, _RAM_D200_INRAM_TILEMAP + 1
	LD BC, $03ff;$05FF	;1k C700
	ld (hl), c
	ldir		;We clear $FF again. $D700 is at the end.
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $07FF	;2K but there is $100 missing.
	ld (hl), $00
	ldir		;We get around 2,5k of RAM cleared. CFFF is the end.


	;This so far is just clearing the RAM's part, where the level data goes.

	ld a, (_RAM_DE52_ROOM_NR)		;So, the room nr. works like a pointer in this case,
	ld hl, _DATA_1343_LVL_POINTERS - 2	;This is needed, so the levels are in order.
			;
	add a, a	;The pointers are two bytes, so this is why *2. Level 1 would be 2 now of course.
	ld e, a		;$02
	ld d, $00	;$0002
	add hl, de	;Add 4 bytes to the initial pointer. This points to _DATA_13F1_
	ld a, (hl)	;This is $50.
	inc hl
	ld h, (hl)	;$00
	ld l, a		;HL is now $0050
	ld a, (hl)	;Reading from $0050 which is $20
	push hl		;SAVE THE ADDRESS INTO STACK. $1405
	ld l, a		
	ld h, $00	
	add hl, hl	
	add hl, hl	
	add hl, hl	
	add hl, hl	;$03C0.
	ld de, $0100
	and a		;3C3C.
	sbc hl, de	;$02C0
	ld (_RAM_DE3E_MAX_LVL_LEN), hl	;Looks like this will be the room's length.
	push af			;Save $40 on the stack
	ld a, (_RAM_DEF4_FALLING_STONES)	;Check the falling stones value. I don't know why this is relevant here, as the only part where stones will fall on your head is after you defeat the dragon at the end.
	cp $01
	jr Nz, +		;Jump, if a!=1.
	ld hl, (_RAM_DE3E_MAX_LVL_LEN)	;If this is 1, then get the max level len into hl. (We would still have it there either way.)
	ld (_RAM_DE3C_MAX_LVL_LEN2), hl		;Store it here.
	ld hl, $0240
	ld (_RAM_DE3E_MAX_LVL_LEN), hl	;Change the max len... Hm.
+:
	pop af				;We get back $20\32 from the stack.
	ld de, (_RAM_DE34_SCRN_SCROLL)	;Get the camera position. (Camera as in the screen what we look at.)
	and a				;Lose carry again.
	sbc hl, de			;Subtract the camera position from the max level lenght.(Guess this is needed on the right side.)
	jr nc, +			;I guess, if there is no carry, there is no negative value, so we can scroll or something.
	ld hl, (_RAM_DE3E_MAX_LVL_LEN)	;We are at the end, so just load the level lenght to the max camera position, and go along.
	ld (_RAM_DE34_SCRN_SCROLL), hl

;So, what we've learned so far, is that the first two bytes on that level pointer thing is the maximum room lenght.

+:
	pop hl	;HL $13F2 A:$50
	srl a	
	srl a	
	ld b, a	;A $14 HL $13F1	$14
	inc hl	;13F2
	ld a, (hl)		;$00
	inc hl			;13F3
	push hl			;HL is $13F3 and pushed to stack.
	ld hl, _DATA_12E1_	;Load the address into HL.
	;HL $12E1 a:$00 B:$14 DE:$0000
	add a, a
	ld e, a
	ld d, $00
	add hl, de		;
	ld a, (hl)		; a:$EF
	inc hl
	ld h, (hl)		; A:$12
	ld l, a			;12EF
	ld a, (hl)		;	A:$02.
	ld (_RAM_DE31_METATILE_BANK), a	;Metatile bank.
	;The default now, is that 02 is in slot 2, as it should be when the game is booted. Maybe this is for where the program should return to? I don't know yet.
	inc hl
	ld a, (hl)		;03.
	ld (_RAM_DE2E_BANKSWITCH_LEVEL), a
	inc hl
	ld a, (hl)
	ld (_RAM_DE29_METATILE_TILE_LOAD), a	;05	This is the tiles for the metatiles.
	inc hl
	ld e, (hl)		
	inc hl
	ld d, (hl)		
	ld (_RAM_DE32_), de	;DE is $8000. This seems like the beginning of slot 2.
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_DE2F_), de	;Same $8000.	;These are some data pointers. This is also a metatile pointer.
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_DE2A_), de	;$8000.		
	pop hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl			;$2D43
	push de			;Okay, this is nice! Push DE
	pop ix			;And now, it's in IX!
	ld a, (_RAM_DE52_ROOM_NR)
	cp $28
	jr nz, +		;Jump if this is not room 40.
	ld a, (_RAM_DEF4_FALLING_STONES)
	cp $02
	jr nz, +		;Jump if we don't need falling stones later.
	ld ix, _DATA_2ACC_
+:				;We continue here with level 1.
	ld e, (hl)
	inc hl
	ld d, (hl)		;DE is $1761
	inc hl
	ld (_RAM_DE5E_FLOORFALLXCOORD), de	;So, here it seems we load some traps, maybe just one.
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (_RAM_DE60_), de		;$1944.
	ld a, (hl)
	ld (_RAM_DE53_COMPASS), a	;Hm, so the compass data is also loaded here.
	exx
	ld de, _RAM_C800_
	ld bc, $0004
	exx				;These are saved for later in the shadow regs.
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
	ld a, (_RAM_DE2E_BANKSWITCH_LEVEL)
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
	ld a, (_RAM_DE2E_BANKSWITCH_LEVEL)
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
	ld a, (_RAM_DE31_METATILE_BANK)
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
	ld hl, _RAM_D200_INRAM_TILEMAP
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
	ld hl, _RAM_D200_INRAM_TILEMAP
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
	ld a, (_RAM_DE29_METATILE_TILE_LOAD)
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
	ld a, (_RAM_DE31_METATILE_BANK)
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
;.db $E1 $C1 $E1 $D1 $C1 $D1 $C1
_LABEL_E3A_:	;We save registers again. The game does not jump here on my disassy code. This is somehow connected with the chests in the game.
		pop hl
		pop bc
		pop hl
		pop de
		pop bc
		pop de
		pop bc
+:			;But the code jump here often, after a room change.
	ld a, $08
	ld (_RAM_FFFF_), a	;Get bank 8.
	ld hl, (_DATA_20078_)	;Get the very first data from this address.
	ld a, (_DATA_2007C_)	;This points to an external datafile.
	ld (_RAM_FFFF_), a	;Okay, then switch to the bank the data points us to, in this case the very first value is $0A.
	;What I don't get, is that the above will provide the same result every time, unless you change the ROM data there, so why not just hardcode them?
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
	ld (_RAM_FFFF_), a		;This is $16. Bank 22.
	ld ix, _DATA_1331_		;Changing this data will mess up some tiles of the boxes you encounter.
	ld b, $08			;How many tiles to draw for the boxes. What is strange that we use eigth tiles, but a box is okay in four. These can be even made invisible, or at least drawn with tile 0. The box tiles are loaded at the end of the tile parts.
-:
	push bc		;Save this to stack.
	ld e, (ix+0)
	ld d, (ix+1)	;1
	ld bc, $0020 ;How many bytes to load for a tile. Since one is 32 bytes, this is why it is used.
	di
	call _LABEL_48C_LOAD_VDP_DATA	;And load the tiles.
	ei
	ex de, hl
	pop bc
	inc ix
	inc ix
	djnz -		;We will loop 32 times, and load those tiles.
	ld hl, $F0F4
	ld (_RAM_C0FE_UNUSED), hl
	ld hl, $0909
	ld (_RAM_C1FE_UNUSED), hl
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
	ld (_RAM_C7FE_HEROSELECT_VAR), hl	;These writes are only done once so far, but i'm not sure we'll not see these again.
	ld ix, _RAM_D600_ITEMNTRAP_TYPES
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
	call _LABEL_2EB1_SETVRAM_ADDR_THENLOAD
	call _LABEL_2C1A_FRAMESET_COPY
	di
	ld b, $40
	call _LABEL_2EB1_SETVRAM_ADDR_THENLOAD
	call _LABEL_2DE2_
	call _LABEL_2C1A_FRAMESET_COPY
	call _LABEL_2C54_CHARA_ANIM
	call _LABEL_59B_MAIN
	di
	ld hl, _RAM_C800_
	ld (_RAM_DE2F_), hl
	ld a, $02
	ld (_RAM_DE2E_BANKSWITCH_LEVEL), a
	ld a, (_RAM_DE2E_BANKSWITCH_LEVEL)
	ld (_RAM_FFFF_), a
	ld hl, $3800
	call _LABEL_4BB_VDP_RAM_WRITESETUP
	ld de, (_RAM_DE2F_)
	ld hl, (_RAM_DE34_SCRN_SCROLL)
	call _LABEL_7AE7_RSHIFTHL
	ld a, l
	ld (_RAM_DE50_COLUMN_DRW_NR), a
	add hl, de
	ex de, hl
	ld hl, (_RAM_DE36_)
	call _LABEL_7AE7_RSHIFTHL
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
	ld (_RAM_DE4A_COLUMN_NR_SCROLL), hl
	ld hl, $3800
	ld (_RAM_DE4C_), hl
	ld a, $08
	ld (_RAM_DE46_SCROLLBG), a
	xor a
	ld (_RAM_DE48_), a
	ld (_RAM_DE3B_), a
	ld (_RAM_DE3A_COLUMN_00_01), a
	ld hl, _RAM_D12C_IN_RAM_SPRITETABLE
	ld (hl), $FF
	ld (_RAM_DE38_), hl
	ret

_LABEL_FCB_SCRL_RIGHT:	;THIS IS THE SCROLL RIGHT PART.
	ld a, $01
	ld (_RAM_DE4E_SCROLL_DIR), a	
	ld hl, (_RAM_DE34_SCRN_SCROLL)
	inc hl
	ld (_RAM_DE34_SCRN_SCROLL), hl	;INCREASE THIS SCROLL VALUE. (SINCE WE GO RIGHT.)
	ld a, (_RAM_DE46_SCROLLBG)	;IF THIS IS NOT MODIFIED, THE BG WILL NOT SCROLL, BUT THE ENEMIES WILL.
	dec a

	ld (_RAM_DE46_SCROLLBG), a
	ld a, l
	and $07	;0000 0111
	ret nz
	ld hl, (_RAM_DE4A_COLUMN_NR_SCROLL)	;THIS SEEMS TO BE A COLUMN VALUE, THESE ARE THE SLICES THE BG IS LOADED.
	ld a, l
	add a, $02	;$02 MEANS ONE COLUMN OF TILES.
	and $3F	;0011 1111 ;THIS IS SOME KIND OF MAX LENGHT. IT IS USED, BUT GETS BACK TO 0 ANYWAYS. 64 COLUMNS\ TWO SCREENFUL OF TILES.
	ld l, a
	ld (_RAM_DE4A_COLUMN_NR_SCROLL), hl
	ld a, (_RAM_DE3A_COLUMN_00_01)
	xor $01
	ld (_RAM_DE3A_COLUMN_00_01), a	;THIS LOOKS LIKE SWITCHING BACK AND FORTH FROM $00 AND $01, LIKE SOME DOUBLE BUFFER THING WHICH COLUMN TO DRAW.
	ret nz
	ld hl, _RAM_DE50_COLUMN_DRW_NR	;WHEN THE SCREEN SCROLLS, THIS TELLS THE GAME WHICH COLUMN TO DRAW, AND THESE ARE 16-PIXEL WIDE ONES.
	inc (hl)
	ret

_LABEL_FFC_SCRL_LEFT:	;THIS IS THE SCROLL LEFT PART. EVERYTHING IS THE SAME AS THE LEFT ONE, EXCEPT A FEW DETAILS.
	ld a, $02
	ld (_RAM_DE4E_SCROLL_DIR), a
	ld hl, (_RAM_DE34_SCRN_SCROLL)
	dec hl
	bit 7, h
	ret nz
	ld (_RAM_DE34_SCRN_SCROLL), hl
	ld a, (_RAM_DE46_SCROLLBG)
	inc a
	ld (_RAM_DE46_SCROLLBG), a
	ld a, l
	and $07
	cp $07
	ret nz
	ld hl, (_RAM_DE4A_COLUMN_NR_SCROLL)
	ld a, l
	sub $02
	and $3F
	ld l, a
	ld (_RAM_DE4A_COLUMN_NR_SCROLL), hl
	ld a, (_RAM_DE3A_COLUMN_00_01)
	xor $01
	ld (_RAM_DE3A_COLUMN_00_01), a
	ret z
	ld hl, _RAM_DE50_COLUMN_DRW_NR
	dec (hl)
	ret

_LABEL_1032_:
	;ret
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

_LABEL_10B1_LOADNEW_FLOOR_COLLMAP:	;So, if this is disabled, then only one screenful of tilemap is loaded. So one screen is loaded, then it gets repeated. When the screen tries to scroll, this is called. This routine is continously called, until all tilemaps are loaded for that part. If the wrong bank is selected, the floor collision gets funky. Also, the tilemap is handled here somehow.
	ld a, (_RAM_DE2E_BANKSWITCH_LEVEL)
	ld (_RAM_FFFF_), a			;Load a bank, where this data is stored. During gameplay, only $02 and for a moment $03 is used. Any other bank seems to be invalid. So it seems the collision data is stored in the first 48k of the ROM.
	ld a, (_RAM_DE4E_SCROLL_DIR)	;We get the scroll direction. 1 is right, and 2 is left.
	cp $02
	jp z, ++					;Jump if we are scrolling left.
	ld hl, (_RAM_DE2F_)			;Othewise we are scrolling rigt here.
	ld de, (_RAM_DE50_COLUMN_DRW_NR)	;We check how many columns are we from the beginning of the room. If we are at the left side of the room, it is $00. 
	add hl, de	;Hm, add the column nr. to the scroll direction.
	ld de, $000F
	add hl, de	;Add another 16.
	ld a, (_RAM_DE3A_COLUMN_00_01)	;The game loads columns in two alternating columns. As the name implies, this only changes between 01 and 00.
	ld b, $C2						;This is some kind of offset for the tilemap, as this is the second column to be loaded.
	and a
	jr z, +	;Jump if this value is 00.
	ld b, $C0					;First column offset for the loading.
	inc hl
+:			;This is the zero column draw.
	push hl
	ld hl, (_RAM_DE4C_)
	ld de, (_RAM_DE4A_COLUMN_NR_SCROLL)
	ld a, e
	add a, $3E	;62
	and $3F
	ld e, a
	add hl, de
	pop de
	jp +++

++:
	ld hl, (_RAM_DE2F_)
	ld de, (_RAM_DE50_COLUMN_DRW_NR)
	add hl, de
	ld a, (_RAM_DE3A_COLUMN_00_01)
	ld b, $C0
	and a
	jr z, +	;If this is nz, then some tiles are not being mirrored, like the half of the pillars that are put together.
	ld b, $C2
+:
	push hl
	ld hl, (_RAM_DE4C_)
	ld de, (_RAM_DE4A_COLUMN_NR_SCROLL)
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

_LABEL_116F_:	;We come here from the column calculations and other shenanigans, and from a quick look, this should draw\send data to the VDP. During normal scrolling or gameplay, this is not executed as I could see.
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

_LABEL_11C5_:	;This does not seem to be executed either. Some drawing routines, and scrolling, yet the game does not jump here. However, after redirecting the code here, it seems this works just as well as the used one. I wonder what happened that this is not used.
		ld a, (_RAM_DE2E_BANKSWITCH_LEVEL)
		ld (_RAM_FFFF_), a
		ld a, (_RAM_DE4F_)
		cp $02
		jp z, ++
		ld hl, (_RAM_DE2F_)
		ld de, (_RAM_DE50_COLUMN_DRW_NR)
		add hl, de
		ld a, h
		add a, $0D
		ld h, a
		ld a, (_RAM_DE3B_)
		ld b, $C4
		and a
		jr z, +
		ld b, $C0
		inc h
+:	
		push hl
		ld hl, (_RAM_DE4C_)
		ld de, (_RAM_DE4A_COLUMN_NR_SCROLL)
		add hl, de
		ld de, $06C0
		add hl, de
		pop de
		ld a, h
		cp $3F
		jp c, +++
		sub $07
		ld h, a
		jp +++
	
++:	
		ld hl, (_RAM_DE2F_)
		ld de, (_RAM_DE50_COLUMN_DRW_NR)
		add hl, de
		ld a, (_RAM_DE3B_)
		ld b, $C0
		and a
		jr z, 2
		ld b, $C4
		push hl
		ld hl, (_RAM_DE4C_)
		ld de, (_RAM_DE4A_COLUMN_NR_SCROLL)
		add hl, de
		pop de
		jp +++
	
+++:	
		ld a, b
		ld (_RAM_DE6A_), a
		add a, $02
		ld (_RAM_DE6B_), a
		ld a, l
		out (Port_VDPAddress), a
		nop
		nop
		ld a, h
		set 6, a
		out (Port_VDPAddress), a
		ld b, $10
		ld a, (_RAM_DE3A_COLUMN_00_01)
		and a
		jp nz, _LABEL_128F_
_LABEL_123F_:	
		push bc
		ld a, (de)
		ld c, a
		ld a, (_RAM_DE6A_)
		ld b, a
		ld a, (bc)
		out (Port_VDPData), a
		ld a, (_RAM_DE6A_)
		ld b, a
		inc b
		ld a, (bc)
		out (Port_VDPData), a
		inc l
		inc l
		ld a, l
		and $3F
		jr nz, +
		ld a, l
		sub $40
		ld l, a
		out (Port_VDPAddress), a
		nop
		nop
		ld a, h
		set 6, a
		out (Port_VDPAddress), a
+:	
		ld a, (_RAM_DE6B_)
		ld b, a
		ld a, (bc)
		out (Port_VDPData), a
		ld a, (_RAM_DE6B_)
		ld b, a
		inc b
		ld a, (bc)
		out (Port_VDPData), a
		inc l
		inc l
		ld a, l
		and $3F
		jr nz, +
		ld a, l
		sub $40
		ld l, a
		out (Port_VDPAddress), a
		nop
		nop
		ld a, h
		set 6, a
		out (Port_VDPAddress), a
+:	
		inc de
		pop bc
		dec b
		jp nz, _LABEL_123F_
		ret
	
_LABEL_128F_:	;This is connected to the unused routine, so this is also probably never executed either. Looks like some drawing routine.
		push bc
		ld a, (de)
		inc de
		ld c, a
		ld a, (_RAM_DE6B_)
		ld b, a
		ld a, (bc)
		out (Port_VDPData), a
		ld a, (_RAM_DE6B_)
		ld b, a
		inc b
		ld a, (bc)
		out (Port_VDPData), a
		ld a, (de)
		ld c, a
		inc l
		inc l
		ld a, l
		and $3F
		jr nz, +
		ld a, l
		sub $40
		ld l, a
		out (Port_VDPAddress), a
		nop
		nop
		ld a, h
		set 6, a
		out (Port_VDPAddress), a
+:	
		ld a, (_RAM_DE6A_)
		ld b, a
		ld a, (bc)
		out (Port_VDPData), a
		ld a, (_RAM_DE6A_)
		ld b, a
		inc b
		ld a, (bc)
		out (Port_VDPData), a
		inc l
		inc l
		ld a, l
		and $3F
		jr nz, +
		ld a, l
		sub $40
		ld l, a
		out (Port_VDPAddress), a
		nop
		nop
		ld a, h
		set 6, a
		out (Port_VDPAddress), a
+:	
		pop bc
		dec b
		jp nz, _LABEL_128F_
		ret



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
;.db $40 $3E $40 $3E $20 $3E $60 $3E $80 $3E $C0 $3E $A0 $3E $E0 $3E
;.db $00 $00	;THE -2 IN THE POINTERS POINT TO THIS.
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
;So, starting to dissect this:
;First byte is the level length.
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
	.db $10 $05 $57 $17 $00 $00 $00 $00 $00 $00 $00 $01 $02 $03 $0D $17
	.db $00 $2D $37 $00 $00 $01 $07 $29 $33 $00 $31 $34 $00 $01 $05 $00
	.db $04 $07 $00 $03 $05 $0B $0D $13 $15 $1B $1D $00 $06 $0A $00 $3D
	.db $43 $00 $35 $3B $3D $43 $00 $35 $3B $5D $63 $00 $1D $23 $00 $1D
	.db $23 $35 $3B $3D $43 $55 $5B $00 $35 $3B $3D $43 $4D $53 $55 $5B
	.db $5D $63 $00 $55 $5B $5D $63 $65 $6B $6D $73 $00 $05 $0B $0D $13
	.db $5D $63 $65 $6B $6D $73 $00 $05 $0B $25 $2B $2D $33 $00 $05 $0B
	.db $1D $23 $25 $2B $2D $33 $00 $15 $1B $1D $23 $25 $2B $2D $33 $3D
	.db $43 $45 $4B $5D $63 $00 $05 $0B $0D $13 $15 $1B $1D $23 $25 $2B
	.db $2D $33 $35 $3B $45 $4B $4D $53 $55 $5B $5D $63 $6D $73 $00 $05
	.db $0B $0D $13 $15 $1B $1D $23 $25 $2B $2D $33 $3D $43 $45 $4B $4D
	.db $53 $55 $5B $5D $63 $6D $73 $00 $15 $1B $25 $2B $2D $33 $35 $3B
	.db $3D $43 $00 $0D $13 $1D $23 $2D $33 $4D $53 $6D $73 $00 $05 $0B
	.db $0D $13 $15 $1B $1D $23 $25 $2B $2D $33 $4D $53 $55 $5B $6D $73
	.db $00 $05 $0B $0D $13 $15 $1B $1D $23 $25 $2B $2D $33 $35 $3B $3D
	.db $43 $45 $4B $4D $53 $00 $05 $0B $0D $13 $15 $1B $25 $2B $2D $33
	.db $35 $3B $3D $43 $45 $4B $6D $73 $00 $05 $0B $0D $13 $15 $1B $25
	.db $2B $2D $33 $35 $3B $3D $43 $6D $73 $00 $05 $0B $0D $13 $15 $1B
	.db $1D $23 $25 $2B $2D $33 $35 $3B $00 $05 $0B $15 $1B $1D $23 $2D
	.db $33 $35 $3B $3D $43 $00 $15 $1B $35 $3B $3D $43 $45 $4B $4D $53
	.db $55 $5B $5D $63 $00 $0D $13 $15 $1B $1D $23 $2D $33 $35 $3B $3D
	.db $43 $45 $4B $6D $73 $00 $05 $0B $0D $13 $15 $1B $1D $23 $25 $2B
	.db $2D $33 $35 $3B $3D $43 $45 $4B $4D $53 $6D $73 $00 $05 $0B $0D
	.db $13 $15 $1B $35 $3B $3D $43 $45 $4B $4D $53 $55 $5B $6D $73 $00
	.db $05 $0B $15 $1B $1D $23 $3D $43 $45 $4B $4D $53 $65 $6B $6D $73
	.db $00 $05 $0B $15 $1B $1D $23 $25 $2B $45 $4B $4D $53 $6D $73 $00
	.db $05 $0B $0D $13 $15 $1B $1D $23 $25 $2B $45 $4B $4D $53 $6D $73
	.db $00 $05 $0B $15 $1B $25 $2B $45 $4B $4D $53 $6D $73 $00 $05 $06
	.db $01 $04 $16 $05 $06 $02 $04 $16 $1D $1E $01 $05 $19 $1D $1E $02
	.db $05 $13 $35 $36 $03 $06 $19 $49 $4A $01 $07 $13 $49 $4A $02 $07
	.db $12 $00 $01 $02 $02 $04 $2D $19 $1A $02 $05 $2E $49 $4A $01 $07
	.db $23 $49 $4A $02 $07 $22 $00 $01 $02 $01 $04 $02 $18 $1C $01 $05
	.db $05 $31 $38 $01 $06 $0A $00 $01 $02 $02 $03 $02 $15 $1B $02 $01
	.db $06 $2D $2E $02 $02 $02 $00 $05 $06 $01 $03 $19 $05 $06 $02 $03
	.db $19 $11 $1A $01 $01 $1D $11 $1A $02 $01 $1D $2D $2E $01 $02 $1A
	.db $2D $2E $02 $02 $1A $00 $09 $0A $01 $03 $31 $15 $1E $01 $01 $36
	.db $15 $1E $02 $01 $36 $39 $3A $02 $08 $11 $00 $11 $12 $01 $01 $4A
	.db $19 $1A $06 $0A $02 $22 $23 $01 $02 $4A $36 $37 $01 $08 $04 $00
	.db $03 $06 $01 $07 $37 $0D $12 $01 $06 $3A $00 $05 $06 $09 $0C $52
	.db $0D $0E $09 $0C $56 $55 $56 $11 $09 $55 $65 $66 $02 $0B $22 $72
	.db $73 $01 $0A $11 $00 $11 $13 $02 $09 $72 $00 $21 $22 $01 $09 $65
	.db $00 $2C $30 $01 $0D $1D $2D $2E $02 $18 $38 $52 $53 $09 $09 $06
	.db $56 $57 $09 $09 $0E $00 $05 $06 $01 $17 $05 $1D $1F $02 $0C $2E
	.db $35 $36 $01 $17 $35 $00 $2D $2E $02 $17 $1C $51 $57 $01 $36 $01
	.db $00 $35 $36 $01 $19 $14 $35 $36 $02 $33 $1E $01 $03 $82 $34 $19
	.db $00 $23 $25 $01 $27 $22 $3D $3E $02 $34 $04 $4C $51 $01 $35 $02
	.db $00 $00 $11 $12 $02 $16 $06 $51 $53 $02 $26 $25 $00 $02 $03 $01
	.db $14 $42 $10 $17 $01 $15 $35 $27 $29 $01 $28 $02 $00 $2D $2E $02
	.db $45 $03 $3C $40 $01 $13 $02 $00 $05 $06 $02 $16 $16 $33 $37 $03
	.db $13 $14 $00 $05 $06 $03 $12 $11 $15 $16 $02 $15 $06 $00 $05 $06
	.db $02 $0D $05 $1B $1D $01 $0E $2E $35 $36 $02 $0D $35 $00 $01 $03
	.db $01 $37 $74 $35 $39 $01 $0C $2D $00 $15 $16 $02 $0F $35 $00 $11
	.db $12 $03 $1B $16 $00 $15 $16 $02 $1A $12 $2D $2E $02 $1C $0E $00
	.db $01 $02 $03 $1D $1A $0D $0E $01 $1B $2E $00 $19 $1A $01 $1C $02
	.db $21 $22 $03 $1E $0A $00 $09 $0A $01 $1D $22 $15 $16 $02 $1F $02
	.db $69 $6B $01 $2C $1E $00 $01 $02 $03 $1E $16 $09 $0A $01 $20 $02
	.db $11 $12 $01 $21 $02 $19 $1A $01 $22 $02 $21 $22 $01 $23 $02 $00
	.db $01 $02 $03 $1F $0A $00 $01 $02 $03 $1F $12 $00 $01 $02 $03 $1F
	.db $1A $00 $01 $02 $03 $1F $22 $19 $1A $03 $24 $1A $00 $19 $1A $02
	.db $23 $1A $21 $23 $01 $29 $02 $00 $00 $24 $26 $01 $12 $52 $00 $01
	.db $02 $05 $1A $04 $21 $22 $02 $10 $25 $00 $00 $01 $03 $03 $24 $21
	.db $11 $13 $01 $2A $12 $00 $09 $0B $01 $2B $02 $11 $13 $03 $29 $12
	.db $00 $01 $03 $03 $2A $0A $2D $2F $01 $2D $12 $00 $05 $07 $01 $2E
	.db $02 $1D $1F $03 $1E $6A $00 $05 $07 $01 $2F $02 $11 $13 $03 $2B
	.db $2E $00 $01 $03 $03 $2C $06 $00 $01 $03 $03 $2D $06 $21 $23 $01
	.db $30 $1E $2D $2F $01 $31 $1E $39 $3B $01 $32 $1E $00 $1D $1E $03
	.db $2F $22 $00 $1D $1E $03 $2F $2E $00 $05 $07 $01 $28 $14 $1D $1E
	.db $03 $2F $3A $00 $05 $06 $01 $34 $19 $1D $1E $01 $0F $36 $00 $01
	.db $07 $03 $10 $3E $19 $1A $01 $33 $05 $00 $01 $08 $01 $10 $50 $1D
	.db $1F $02 $36 $5D $00 $01 $04 $01 $0E $54 $5D $5E $01 $35 $1E $00
	.db $01 $07 $02 $46 $04 $09 $0F $02 $47 $04 $11 $17 $02 $48 $04 $19
	.db $1F $02 $49 $04 $21 $27 $02 $4A $04 $29 $2F $02 $4B $04 $31 $37
	.db $02 $4C $04 $39 $3F $02 $4D $04 $41 $47 $02 $4E $04 $49 $4F $02
	.db $4F $04 $51 $57 $02 $50 $04 $59 $5F $02 $51 $04 $61 $67 $02 $52
	.db $04 $69 $6F $02 $53 $04 $71 $77 $02 $54 $04 $74 $76 $01 $18 $02
	.db $00 $01 $07 $03 $46 $0C $09 $0F $03 $47 $0C $11 $17 $03 $48 $0C
	.db $19 $1F $03 $49 $0C $21 $27 $03 $4A $0C $29 $2F $03 $4B $0C $31
	.db $37 $03 $4C $0C $39 $3F $03 $4D $0C $41 $47 $03 $4E $0C $49 $4F
	.db $03 $4F $0C $51 $57 $03 $50 $0C $59 $5F $03 $51 $0C $61 $67 $03
	.db $52 $0C $69 $6F $03 $53 $0C $71 $77 $03 $54 $0C $00 $01 $07 $03
	.db $46 $14 $09 $0F $03 $47 $14 $11 $17 $03 $48 $14 $19 $1F $03 $49
	.db $14 $21 $27 $03 $4A $14 $29 $2F $03 $4B $14 $31 $37 $03 $4C $14
	.db $39 $3F $03 $4D $14 $41 $47 $03 $4E $14 $49 $4F $03 $4F $14 $51
	.db $57 $03 $50 $14 $59 $5F $03 $51 $14 $61 $67 $03 $52 $14 $69 $6F
	.db $03 $53 $14 $71 $77 $03 $54 $14 $00 $01 $07 $03 $46 $1C $09 $0F
	.db $03 $47 $1C $11 $17 $03 $48 $1C $19 $1F $03 $49 $1C $21 $27 $03
	.db $4A $1C $29 $2F $03 $4B $1C $31 $37 $03 $4C $1C $39 $3F $03 $4D
	.db $1C $41 $47 $03 $4E $1C $49 $4F $03 $4F $1C $51 $57 $03 $50 $1C
	.db $59 $5F $03 $51 $1C $61 $67 $03 $52 $1C $69 $6F $03 $53 $1C $71
	.db $77 $03 $54 $1C $00 $01 $07 $03 $46 $24 $09 $0F $03 $47 $24 $11
	.db $17 $03 $48 $24 $19 $1F $03 $49 $24 $21 $27 $03 $4A $24 $29 $2F
	.db $03 $4B $24 $31 $37 $03 $4C $24 $39 $3F $03 $4D $24 $41 $47 $03
	.db $4E $24 $49 $4F $03 $4F $24 $51 $57 $03 $50 $24 $59 $5F $03 $51
	.db $24 $61 $67 $03 $52 $24 $69 $6F $03 $53 $24 $71 $77 $03 $54 $24
	.db $00 $01 $07 $03 $46 $2C $09 $0F $03 $47 $2C $11 $17 $03 $48 $2C
	.db $19 $1F $03 $49 $2C $21 $27 $03 $4A $2C $29 $2F $03 $4B $2C $31
	.db $37 $03 $4C $2C $39 $3F $03 $4D $2C $41 $47 $03 $4E $2C $49 $4F
	.db $03 $4F $2C $51 $57 $03 $50 $2C $59 $5F $03 $51 $2C $61 $67 $03
	.db $52 $2C $69 $6F $03 $53 $2C $71 $77 $03 $54 $2C $00 $01 $07 $03
	.db $46 $34 $09 $0F $03 $47 $34 $11 $17 $03 $48 $34 $19 $1F $03 $49
	.db $34 $21 $27 $03 $4A $34 $29 $2F $03 $4B $34 $31 $37 $03 $4C $34
	.db $39 $3F $03 $4D $34 $41 $47 $03 $4E $34 $49 $4F $03 $4F $34 $51
	.db $57 $03 $50 $34 $59 $5F $03 $51 $34 $61 $67 $03 $52 $34 $69 $6F
	.db $03 $53 $34 $71 $77 $03 $54 $34 $00 $01 $07 $03 $46 $3C $09 $0F
	.db $03 $47 $3C $11 $17 $03 $48 $3C $19 $1F $03 $49 $3C $21 $27 $03
	.db $4A $3C $29 $2F $03 $4B $3C $31 $37 $03 $4C $3C $39 $3F $03 $4D
	.db $3C $41 $47 $03 $4E $3C $49 $4F $03 $4F $3C $51 $57 $03 $50 $3C
	.db $59 $5F $03 $51 $3C $61 $67 $03 $52 $3C $69 $6F $03 $53 $3C $71
	.db $77 $03 $54 $3C $00 $01 $07 $03 $46 $44 $09 $0F $03 $47 $44 $11
	.db $17 $03 $48 $44 $19 $1F $03 $49 $44 $21 $27 $03 $4A $44 $29 $2F
	.db $03 $4B $44 $31 $37 $03 $4C $44 $39 $3F $03 $4D $44 $41 $47 $03
	.db $4E $44 $49 $4F $03 $4F $44 $51 $57 $03 $50 $44 $59 $5F $03 $51
	.db $44 $61 $67 $03 $52 $44 $69 $6F $03 $53 $44 $71 $77 $03 $54 $44
	.db $00 $01 $07 $03 $46 $4C $09 $0F $03 $47 $4C $11 $17 $03 $48 $4C
	.db $19 $1F $03 $49 $4C $21 $27 $03 $4A $4C $29 $2F $03 $4B $4C $31
	.db $37 $03 $4C $4C $39 $3F $03 $4D $4C $41 $47 $03 $4E $4C $49 $4F
	.db $03 $4F $4C $51 $57 $03 $50 $4C $59 $5F $03 $51 $4C $61 $67 $03
	.db $52 $4C $69 $6F $03 $53 $4C $71 $77 $03 $54 $4C $00 $01 $07 $03
	.db $46 $54 $09 $0F $03 $47 $54 $11 $17 $03 $48 $54 $19 $1F $03 $49
	.db $54 $21 $27 $03 $4A $54 $29 $2F $03 $4B $54 $31 $37 $03 $4C $54
	.db $39 $3F $03 $4D $54 $41 $47 $03 $4E $54 $49 $4F $03 $4F $54 $51
	.db $57 $03 $50 $54 $59 $5F $03 $51 $54 $61 $67 $03 $52 $54 $69 $6F
	.db $03 $53 $54 $71 $77 $03 $54 $54 $00 $01 $07 $03 $46 $5C $09 $0F
	.db $03 $47 $5C $11 $17 $03 $48 $5C $19 $1F $03 $49 $5C $21 $27 $03
	.db $4A $5C $29 $2F $03 $4B $5C $31 $37 $03 $4C $5C $39 $3F $03 $4D
	.db $5C $41 $47 $03 $4E $5C $49 $4F $03 $4F $5C $51 $57 $03 $50 $5C
	.db $59 $5F $03 $51 $5C $61 $67 $03 $52 $5C $69 $6F $03 $53 $5C $71
	.db $77 $03 $54 $5C $00 $01 $07 $03 $46 $64 $09 $0F $03 $47 $64 $11
	.db $17 $03 $48 $64 $19 $1F $03 $49 $64 $21 $27 $03 $4A $64 $29 $2F
	.db $03 $4B $64 $31 $37 $03 $4C $64 $39 $3F $03 $4D $64 $41 $47 $03
	.db $4E $64 $49 $4F $03 $4F $64 $51 $57 $03 $50 $64 $59 $5F $03 $51
	.db $64 $61 $67 $03 $52 $64 $69 $6F $03 $53 $64 $71 $77 $03 $54 $64
	.db $00 $01 $07 $03 $46 $6C $09 $0F $03 $47 $6C $11 $17 $03 $48 $6C
	.db $19 $1F $03 $49 $6C $21 $27 $03 $4A $6C $29 $2F $03 $4B $6C $31
	.db $37 $03 $4C $6C $39 $3F $03 $4D $6C $41 $47 $03 $4E $6C $49 $4F
	.db $03 $4F $6C $51 $57 $03 $50 $6C $59 $5F $03 $51 $6C $61 $67 $03
	.db $52 $6C $69 $6F $03 $53 $6C $71 $77 $03 $54 $6C $00 $01 $07 $01
	.db $46 $74 $01 $05 $02 $14 $2D $09 $0F $01 $47 $74 $11 $17 $01 $48
	.db $74 $19 $1F $01 $49 $74 $21 $27 $01 $4A $74 $29 $2F $01 $4B $74
	.db $31 $37 $01 $4C $74 $39 $3F $01 $4D $74 $41 $47 $01 $4E $74 $49
	.db $4F $01 $4F $74 $51 $57 $01 $50 $74 $59 $5F $01 $51 $74 $61 $67
	.db $01 $52 $74 $69 $6F $01 $53 $74 $71 $77 $01 $54 $74 $00 $01 $07
	.db $01 $37 $04 $09 $0F $01 $38 $04 $11 $17 $01 $39 $04 $19 $1F $01
	.db $3A $04 $21 $27 $01 $3B $04 $29 $2F $01 $3C $04 $31 $37 $01 $3D
	.db $04 $39 $3F $01 $3E $04 $41 $47 $01 $3F $04 $49 $4F $01 $40 $04
	.db $51 $57 $01 $41 $04 $59 $5F $01 $42 $04 $61 $67 $01 $43 $04 $69
	.db $6F $01 $44 $04 $71 $77 $01 $45 $04 $00 $01 $07 $03 $37 $0C $09
	.db $0F $03 $38 $0C $11 $17 $03 $39 $0C $19 $1F $03 $3A $0C $21 $27
	.db $03 $3B $0C $29 $2F $03 $3C $0C $31 $37 $03 $3D $0C $39 $3F $03
	.db $3E $0C $41 $47 $03 $3F $0C $49 $4F $03 $40 $0C $51 $57 $03 $41
	.db $0C $59 $5F $03 $42 $0C $61 $67 $03 $43 $0C $69 $6F $03 $44 $0C
	.db $71 $77 $03 $45 $0C $00 $01 $07 $03 $37 $14 $09 $0F $03 $38 $14
	.db $11 $17 $03 $39 $14 $19 $1F $03 $3A $14 $21 $27 $03 $3B $14 $29
	.db $2F $03 $3C $14 $31 $37 $03 $3D $14 $39 $3F $03 $3E $14 $41 $47
	.db $03 $3F $14 $49 $4F $03 $40 $14 $51 $57 $03 $41 $14 $59 $5F $03
	.db $42 $14 $61 $67 $03 $43 $14 $69 $6F $03 $44 $14 $71 $77 $03 $45
	.db $14 $00 $01 $07 $03 $37 $1C $09 $0F $03 $38 $1C $11 $17 $03 $39
	.db $1C $19 $1F $03 $3A $1C $21 $27 $03 $3B $1C $29 $2F $03 $3C $1C
	.db $31 $37 $03 $3D $1C $39 $3F $03 $3E $1C $41 $47 $03 $3F $1C $49
	.db $4F $03 $40 $1C $51 $57 $03 $41 $1C $59 $5F $03 $42 $1C $61 $67
	.db $03 $43 $1C $69 $6F $03 $44 $1C $71 $77 $03 $45 $1C $00 $01 $07
	.db $03 $37 $24 $09 $0F $03 $38 $24 $11 $17 $03 $39 $24 $19 $1F $03
	.db $3A $24 $21 $27 $03 $3B $24 $29 $2F $03 $3C $24 $31 $37 $03 $3D
	.db $24 $39 $3F $03 $3E $24 $41 $47 $03 $3F $24 $49 $4F $03 $40 $24
	.db $51 $57 $03 $41 $24 $59 $5F $03 $42 $24 $61 $67 $03 $43 $24 $69
	.db $6F $03 $44 $24 $71 $77 $03 $45 $24 $00 $01 $07 $03 $37 $2C $09
	.db $0F $03 $38 $2C $11 $17 $03 $39 $2C $19 $1F $03 $3A $2C $21 $27
	.db $03 $3B $2C $29 $2F $03 $3C $2C $31 $37 $03 $3D $2C $39 $3F $03
	.db $3E $2C $41 $47 $03 $3F $2C $49 $4F $03 $40 $2C $51 $57 $03 $41
	.db $2C $59 $5F $03 $42 $2C $61 $67 $03 $43 $2C $69 $6F $03 $44 $2C
	.db $71 $77 $03 $45 $2C $00 $01 $07 $03 $37 $34 $09 $0F $03 $38 $34
	.db $11 $17 $03 $39 $34 $19 $1F $03 $3A $34 $21 $27 $03 $3B $34 $29
	.db $2F $03 $3C $34 $31 $37 $03 $3D $34 $39 $3F $03 $3E $34 $41 $47
	.db $03 $3F $34 $49 $4F $03 $40 $34 $51 $57 $03 $41 $34 $59 $5F $03
	.db $42 $34 $61 $67 $03 $43 $34 $69 $6F $03 $44 $34 $71 $77 $03 $45
	.db $34 $00 $01 $07 $03 $37 $3C $09 $0F $03 $38 $3C $11 $17 $03 $39
	.db $3C $19 $1F $03 $3A $3C $21 $27 $03 $3B $3C $29 $2F $03 $3C $3C
	.db $31 $37 $03 $3D $3C $39 $3F $03 $3E $3C $41 $47 $03 $3F $3C $49
	.db $4F $03 $40 $3C $51 $57 $03 $41 $3C $59 $5F $03 $42 $3C $61 $67
	.db $03 $43 $3C $69 $6F $03 $44 $3C $71 $77 $03 $45 $3C $00 $01 $07
	.db $03 $37 $44 $09 $0F $03 $38 $44 $11 $17 $03 $39 $44 $19 $1F $03
	.db $3A $44 $21 $27 $03 $3B $44 $29 $2F $03 $3C $44 $31 $37 $03 $3D
	.db $44 $39 $3F $03 $3E $44 $41 $47 $03 $3F $44 $49 $4F $03 $40 $44
	.db $51 $57 $03 $41 $44 $59 $5F $03 $42 $44 $61 $67 $03 $43 $44 $69
	.db $6F $03 $44 $44 $71 $77 $03 $45 $44 $00 $01 $07 $03 $37 $4C $09
	.db $0F $03 $38 $4C $11 $17 $03 $39 $4C $19 $1F $03 $3A $4C $21 $27
	.db $03 $3B $4C $29 $2F $03 $3C $4C $31 $37 $03 $3D $4C $39 $3F $03
	.db $3E $4C $41 $47 $03 $3F $4C $49 $4F $03 $40 $4C $51 $57 $03 $41
	.db $4C $59 $5F $03 $42 $4C $61 $67 $03 $43 $4C $69 $6F $03 $44 $4C
	.db $71 $77 $03 $45 $4C $00 $01 $07 $03 $37 $54 $09 $0F $03 $38 $54
	.db $11 $17 $03 $39 $54 $19 $1F $03 $3A $54 $21 $27 $03 $3B $54 $29
	.db $2F $03 $3C $54 $31 $37 $03 $3D $54 $39 $3F $03 $3E $54 $41 $47
	.db $01 $3F $54 $49 $4F $03 $40 $54 $51 $57 $03 $41 $54 $59 $5F $03
	.db $42 $54 $61 $67 $03 $43 $54 $69 $6F $03 $44 $54 $71 $77 $03 $45
	.db $54 $00 $01 $07 $03 $37 $5C $09 $0F $03 $38 $5C $11 $17 $03 $39
	.db $5C $19 $1F $03 $3A $5C $21 $27 $03 $3B $5C $29 $2F $03 $3C $5C
	.db $31 $37 $03 $3D $5C $39 $3F $03 $3E $5C $41 $47 $03 $3F $5C $49
	.db $4F $03 $40 $5C $51 $57 $03 $41 $5C $59 $5F $03 $42 $5C $61 $67
	.db $03 $43 $5C $69 $6F $03 $44 $5C $71 $77 $03 $45 $5C $00 $01 $07
	.db $03 $37 $64 $09 $0F $03 $38 $64 $11 $17 $03 $39 $64 $19 $1F $03
	.db $3A $64 $21 $27 $03 $3B $64 $29 $2F $03 $3C $64 $31 $37 $03 $3D
	.db $64 $39 $3F $03 $3E $64 $41 $47 $03 $3F $64 $49 $4F $03 $40 $64
	.db $51 $57 $03 $41 $64 $59 $5F $03 $42 $64 $61 $67 $03 $43 $64 $69
	.db $6F $03 $44 $64 $71 $77 $03 $45 $64 $00 $01 $07 $03 $37 $6C $09
	.db $0F $03 $38 $6C $11 $17 $03 $39 $6C $19 $1F $03 $3A $6C $21 $27
	.db $03 $3B $6C $29 $2F $03 $3C $6C $31 $37 $03 $3D $6C $39 $3F $03
	.db $3E $6C $41 $47 $03 $3F $6C $49 $4F $03 $40 $6C $51 $57 $03 $41
	.db $6C $59 $5F $03 $42 $6C $61 $67 $03 $43 $6C $69 $6F $03 $44 $6C
	.db $71 $77 $03 $45 $6C $00 $01 $07 $03 $37 $74 $09 $0F $02 $38 $74
	.db $11 $17 $02 $39 $74 $19 $1F $02 $3A $74 $21 $27 $02 $3B $74 $29
	.db $2F $02 $3C $74 $31 $37 $02 $3D $74 $39 $3F $02 $3E $74 $41 $47
	.db $02 $3F $74 $49 $4F $02 $40 $74 $51 $57 $02 $41 $74 $59 $5F $02
	.db $42 $74 $61 $67 $02 $43 $74 $69 $6F $02 $44 $74 $71 $77 $02 $45
	.db $74 $00 $00 $00 $00 $01 $02 $03 $04 $05 $02 $01 $02 $06 $07 $08
	.db $02 $01 $02 $06 $07 $08 $09 $0A $0B $0B $0B $0B $0B $0C $02 $0D
	.db $02 $0D $02 $0E $02 $0D $02 $02 $0F $10 $11 $02 $02 $02 $02 $09
	.db $02 $0B $0B $0B $0B $0B $12 $13 $0D $02 $0D $02 $14 $02 $0D $02
	.db $0D $15 $12 $16 $17 $0B $0B $18 $19 $1A $19 $1A $1B $1C $19 $1A
	.db $19 $1A $1A $0B $0B $00 $1E $02 $1F $20 $21 $22 $02 $06 $07 $08
	.db $1E $15 $0B $23 $24 $14 $02 $02 $20 $21 $22 $02 $02 $26 $0B $27
	.db $02 $28 $0B $0B $29 $2A $29 $08 $0D $06 $2B $2B $2C $13 $2D $2D
	.db $2D $2C $2E $0B $0B $2F $30 $13 $12 $16 $0B $0B $0B $0B $0B $31
	.db $32 $33 $32 $34 $35 $36 $37 $38 $38 $34 $39 $3A $3B $3C $3D $3E
	.db $3D $3E $3F $3E $40 $3D $41 $37 $37 $37 $45 $40 $45 $4A $49 $4A
	.db $4B $4C $0B $0B $0B $0B $0B $37 $37 $37 $37 $4E $4D $4F $50 $51
	.db $52 $0B $0B $0B $0B $0B $00 $01 $00 $01 $00 $01 $00 $01 $02 $00
	.db $03 $04 $05 $00 $00 $00 $00 $00 $09 $0A $0B $0C $0D $0E $0E $0F
	.db $10 $11 $12 $13 $14 $14 $15 $14 $14 $16 $12 $17 $18 $13 $19 $1A
	.db $1B $1C $0E $1D $1E $1F $1E $21 $1E $1F $1E $24 $1E $25 $26 $2B
	.db $25 $29 $2B $25 $2C $2D $1E $2E $2E $0E $0E $0E $2F $30 $31 $32
	.db $33 $34 $35 $36 $37 $38 $39 $39 $39 $3A $0E $3B $3C $3D $3E $3E
	.db $3E $3E $3E $3E $3E $3F $40 $06 $2E $41 $0E $0E $0E $0E $0E $42
	.db $43 $44 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44 $43 $44 $46 $47
	.db $43 $44 $43 $42 $43 $44 $43 $44 $45 $44 $43 $44 $43 $0E $0E $0E
	.db $0E $0E $42 $43 $44 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44 $48
	.db $47 $46 $47 $43 $44 $43 $42 $43 $44 $43 $44 $45 $44 $43 $44 $43
	.db $0E $0E $0E $0E $0E $42 $43 $44 $43 $44 $45 $44 $43 $44 $43 $42
	.db $43 $44 $48 $47 $45 $44 $43 $44 $43 $42 $43 $44 $48 $47 $45 $44
	.db $43 $44 $43 $0E $0E $0E $0E $0E $42 $43 $44 $43 $44 $45 $44 $48
	.db $47 $43 $42 $43 $44 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44 $43
	.db $44 $45 $44 $43 $44 $43 $0E $0E $0E $0E $0E $42 $43 $44 $43 $44
	.db $45 $44 $48 $47 $43 $42 $43 $44 $48 $47 $46 $47 $43 $44 $43 $42
	.db $48 $47 $43 $44 $45 $44 $43 $44 $43 $0E $0E $0E $0E $0E $42 $43
	.db $44 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44 $48 $47 $46 $47 $43
	.db $44 $48 $49 $48 $47 $48 $47 $45 $44 $43 $44 $43 $0E $0E $0E $0E
	.db $0E $42 $43 $44 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44 $43 $44
	.db $45 $44 $43 $44 $43 $42 $48 $47 $48 $47 $46 $47 $48 $47 $43 $0E
	.db $0E $0E $0E $0E $42 $48 $47 $48 $47 $45 $44 $43 $44 $43 $42 $43
	.db $44 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44 $48 $47 $46 $47 $48
	.db $47 $43 $0E $0E $0E $0E $0E $42 $48 $47 $43 $44 $45 $44 $43 $44
	.db $48 $49 $48 $47 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44 $43 $44
	.db $45 $44 $43 $44 $43 $0E $0E $0E $0E $0E $42 $48 $47 $43 $44 $45
	.db $44 $48 $47 $48 $49 $48 $47 $43 $44 $45 $44 $43 $44 $43 $42 $43
	.db $44 $43 $44 $45 $44 $43 $44 $43 $0E $0E $0E $0E $0E $42 $43 $44
	.db $43 $44 $46 $47 $48 $47 $48 $49 $48 $47 $43 $44 $46 $47 $48 $47
	.db $43 $42 $43 $44 $48 $47 $45 $44 $43 $44 $43 $0E $0E $0E $0E $0E
	.db $42 $48 $47 $48 $47 $46 $47 $48 $47 $48 $49 $48 $47 $48 $47 $45
	.db $44 $48 $47 $48 $49 $48 $47 $48 $47 $46 $47 $48 $47 $43 $0E $0E
	.db $0E $0E $0E $42 $48 $47 $48 $47 $46 $47 $48 $47 $48 $49 $48 $47
	.db $43 $44 $46 $47 $48 $47 $48 $49 $48 $47 $48 $47 $45 $44 $48 $47
	.db $43 $0E $0E $0E $0E $0E $42 $43 $44 $43 $44 $46 $47 $43 $44 $48
	.db $49 $48 $47 $48 $47 $46 $47 $43 $44 $43 $42 $43 $44 $43 $44 $45
	.db $44 $43 $44 $43 $0E $0E $0E $0E $0E $42 $43 $44 $43 $44 $45 $44
	.db $43 $44 $43 $42 $43 $44 $43 $44 $45 $44 $43 $44 $43 $42 $43 $44
	.db $43 $44 $45 $44 $43 $44 $43 $0E $0E $0E $0E $0E $42 $43 $44 $48
	.db $47 $45 $44 $48 $47 $43 $42 $48 $47 $43 $44 $45 $44 $43 $44 $48
	.db $49 $43 $44 $43 $44 $45 $44 $48 $47 $43 $0E $0E $0E $0E $0E $42
	.db $48 $47 $48 $47 $46 $47 $48 $47 $48 $49 $48 $47 $43 $44 $45 $44
	.db $43 $44 $48 $49 $48 $47 $43 $44 $45 $44 $48 $47 $43 $0E $0E $0E
	.db $0E $0E $42 $48 $47 $48 $47 $46 $47 $48 $47 $48 $49 $48 $47 $48
	.db $47 $46 $47 $48 $47 $48 $49 $43 $44 $43 $44 $45 $44 $43 $44 $43
	.db $0E $0E $0E $0E $0E $42 $48 $47 $48 $47 $46 $47 $43 $44 $48 $49
	.db $48 $47 $48 $47 $46 $47 $48 $47 $43 $42 $43 $44 $43 $44 $45 $44
	.db $48 $47 $43 $0E $0E $0E $0E $0E $42 $48 $47 $48 $47 $46 $47 $43
	.db $44 $48 $49 $48 $47 $48 $47 $46 $47 $43 $44 $43 $42 $43 $44 $43
	.db $44 $45 $44 $48 $47 $43 $0E $0E $0E $0E $0E $42 $48 $47 $48 $47
	.db $46 $47 $48 $47 $48 $49 $48 $47 $48 $47 $45 $44 $43 $44 $43 $42
	.db $43 $44 $43 $44 $45 $44 $43 $44 $43 $0E $0E $0E $0E $0E $42 $48
	.db $47 $43 $44 $46 $47 $48 $47 $43 $42 $48 $47 $48 $47 $46 $47 $43
	.db $44 $43 $42 $43 $44 $43 $44 $45 $44 $43 $44 $43 $0E $0E $0E $0E
	.db $0E $42 $43 $44 $43 $44 $46 $47 $43 $44 $43 $42 $43 $44 $48 $47
	.db $46 $47 $48 $47 $48 $49 $48 $47 $48 $47 $45 $44 $43 $44 $43 $0E
	.db $0E $0E $0E $0E $42 $43 $44 $48 $47 $46 $47 $48 $47 $43 $42 $48
	.db $47 $48 $47 $46 $47 $48 $47 $43 $42 $43 $44 $43 $44 $45 $44 $48
	.db $47 $43 $0E $0E $0E $0E $0E $42 $48 $47 $48 $47 $46 $47 $48 $47
	.db $48 $49 $48 $47 $48 $47 $46 $47 $48 $47 $48 $49 $43 $44 $43 $44
	.db $45 $44 $48 $47 $43 $0E $0E $0E $0E $0E $42 $48 $47 $48 $47 $46
	.db $47 $43 $44 $43 $42 $43 $44 $48 $47 $46 $47 $48 $47 $48 $49 $48
	.db $47 $43 $44 $45 $44 $48 $47 $43 $0E $0E $0E $0E $0E $42 $48 $47
	.db $43 $44 $46 $47 $48 $47 $43 $42 $43 $44 $43 $44 $46 $47 $48 $47
	.db $48 $49 $43 $44 $43 $44 $46 $47 $48 $47 $43 $0E $0E $0E $0E $0E
	.db $42 $48 $47 $43 $44 $46 $47 $48 $47 $48 $49 $43 $44 $43 $44 $45
	.db $44 $48 $47 $48 $49 $43 $44 $43 $44 $45 $44 $48 $47 $43 $0E $0E
	.db $0E $0E $0E $42 $48 $47 $48 $47 $46 $47 $48 $47 $48 $49 $43 $44
	.db $43 $44 $45 $4A $48 $47 $48 $49 $43 $44 $43 $44 $45 $44 $48 $47
	.db $43 $0E $0E $0E $0E $0E $42 $48 $47 $43 $44 $46 $47 $43 $44 $48
	.db $49 $43 $44 $43 $44 $45 $44 $48 $47 $48 $49 $43 $44 $43 $44 $45
	.db $44 $48 $47 $43 $0E $0E $0E $0E $0E $00 $01 $02 $01 $01 $02 $01
	.db $01 $03 $04 $05 $06 $07 $08 $09 $0A $0A $0A $0A $0A $0A $0A $0B
	.db $0C $0D $0E $0F $10 $11 $12 $13 $14 $15 $16 $15 $16 $14 $11 $1A
	.db $1B $1C $0A $0A $0A $0A $1D $1E $1F $20 $21 $22 $0A $0A $0A $0A
	.db $23 $24 $23 $24 $23 $24 $23 $24 $25 $0A $26 $27 $28 $29 $2A $2A
	.db $2A $27 $29 $0A $1B $2B $2C $2D $2D $2D $2E $0A $0A $0A $1B $2B
	.db $2C $0E $2D $2F $2D $30 $31 $32 $0A $0A $0A $0A $0A $33 $34 $35
	.db $36 $37 $38 $38 $38 $38 $38 $38 $39 $3A $38 $39 $3A $38 $39 $3A
	.db $38 $3B $3C $3D $3E $0A $00 $00 $01 $02 $03 $04 $04 $05 $06 $07
	.db $06 $07 $06 $07 $06 $07 $06 $07 $06 $07 $08 $09 $09 $09 $09 $0A
	.db $0B $0C $0D $0E $0F $10 $11 $10 $12 $13 $0D $14 $09 $09
	.dsb 10, $15
	.db $16 $17 $18 $19 $1A $1B $1C $19 $09 $09 $1D $1E $1F $20 $21 $22
	.db $23 $24 $25 $26 $27 $28 $29 $2A $2B $2C $09 $09 $09 $09 $2D $2E
	.db $2F $30 $31 $32 $09 $09 $09 $09 $33 $34 $10 $35 $36 $37 $38 $39
	.db $38 $3A $09 $09 $09 $09 $09
	

; Data from 2ACC to 2BF1 (294 bytes)
_DATA_2ACC_:	;No idea what this is, but used with the level loading. The last stage when you exit from a menu glitches out.
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
	ld (_RAM_DEB5_FRAMESET), a
	ld hl, _RAM_D400_IN_RAM_SPRITETABLE
	ld de, _RAM_D400_IN_RAM_SPRITETABLE + 1
	ld bc, $00FF
	ld (hl), $D0	;THIS SEEMS LIKE THE INRAM SAT TABLE.
	ldir
	ld hl, $0000
	ld (_RAM_DE42_), hl
	ld hl, _RAM_D900_CHARA_COORD
	ld de, _RAM_D900_CHARA_COORD + 1
	ld bc, $014F
	ld (hl), $00
	ldir
	call _LABEL_2C1A_FRAMESET_COPY
	ret

_LABEL_2C1A_FRAMESET_COPY:	;Depending on the value of $DEB5, it copies coordinates and other things for the second frame, for the smoother but slower animation.
	ld a, (_RAM_DEB5_FRAMESET)	;It seems, this checks if we are in the first, or second set of frames.
	xor $40
	ld (_RAM_DEB5_FRAMESET), a
	ld de, $0000
	ld hl, _RAM_D400_IN_RAM_SPRITETABLE
	jr z, +
	ld de, $0800		;Okay, so if we are in the second set, then set the destination at 2k away. This is where that bad ram usage seems to come from.
+:
	ld (_RAM_DEB3_), de
	ld (_RAM_DEA9_), hl
	ld hl, (_RAM_DE42_)
	ld (_RAM_DE44_SCRNSCRL_2FRMSET), hl
	ld hl, _RAM_D900_CHARA_COORD
	ld de, _RAM_DA50_NME_COORD_ARRAY2
	ld bc, $0150		;366 bytes This copies enemy coordinates and sprite values. If there is any less of this, then they won't be shown, but they can and will hit you. Copy more, and the player details will suffer, and random thins will happen to the companions.
	ldir
	ret


_LABEL_2C46_:	;This does not seem to be used.	
		xor a
		ld (_RAM_DEB5_FRAMESET), a	;Set it to the first frameset.
		ld a, $D0			;This marks the end of sprite drawing. If the VDP gets this on the sprite list, it stops drawing them, and won't look any further.
		ld (_RAM_D400_IN_RAM_SPRITETABLE), a
		ret
_LABEL_2C50_:	;Not used.
		call _LABEL_2DE2_ ;This is still a long one... But since this is not used, i'll get there eventually.
		ret

_LABEL_2C54_CHARA_ANIM:	;FINE CHARACTER MOVEMENT IS CONTROLLED BY THIS PART OF THE CODE.
	ld hl, (_RAM_DEA9_)	;OKAY, THIS AGAIN.
	ld (hl), $D0
	ld (_RAM_DEAB_), hl
	ld de, $0080	;128 bytes.
	add hl, de
	ld (_RAM_DEAD_), hl
	ld a, (_RAM_DEB5_FRAMESET)	;Original frameset value.
	xor $40
	ld (_RAM_DEAF_), a		;"inverted", the other frameset value.
	ld ix, _RAM_DA50_NME_COORD_ARRAY2
	ld b, $0C	;12
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
;.db $16 $00 $CB $7B $C8 $15 $C9
_LABEL_2CA0_:	;Does not seem to be used either. Valid code, but that's it.
		ld d, $00
		bit 7, e
		ret z
		dec d
		ret

+++:
	ld l, (ix+16)
	ld h, (ix+17)
	ld de, (_RAM_DE34_SCRN_SCROLL)
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

; Data from 2D92 to 2D93 (2 bytes)	CHANGED
;.db $18 $13

	
_LABEL_2D92_:	
	jr   ++++

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
	ld ix, _RAM_D900_CHARA_COORD
	ld hl, _RAM_D000_IN_RAM_SPRITETABLE
	ld (_RAM_DEB7_INRAM_SPRITETABLE_TEMP), hl
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
	ld hl, (_RAM_DE34_SCRN_SCROLL)
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
	ld hl, (_RAM_DEB7_INRAM_SPRITETABLE_TEMP)
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
	ld (_RAM_DEB7_INRAM_SPRITETABLE_TEMP), hl
	ret

_LABEL_2EB1_SETVRAM_ADDR_THENLOAD:
	ld hl, _RAM_D000_IN_RAM_SPRITETABLE
	ld (_RAM_DEB7_INRAM_SPRITETABLE_TEMP), hl	;Save the sprite table's address.
	ld c, Port_VDPAddress
	ld hl, (_RAM_DEB3_)				;This address holds the source address for the data load.
	out (c), l
	ld a, h
	set 6, a
	out (Port_VDPAddress), a			;This is a normal VDP write setup.
	ld de, $0020					;32.
	jr _LABEL_2EDF_VDP_DATA_LOADLOOP

_LABEL_2EC8_RELOAD_SPR_TMP:		;This is one part where the code jumps here. The whole things looks like a copy mechanism for sprites\tiles or whatever.
;At this stage, we reload the original address.
	ld hl, _RAM_D000_IN_RAM_SPRITETABLE
	ld (_RAM_DEB7_INRAM_SPRITETABLE_TEMP), hl	;Copy here the address of this part of the inram sprite table.
_LABEL_2ECE_SET_VDP_ADDR_ANDLOAD:	;This is the part without the address reloading part.
	ld c, Port_VDPAddress	;Get the VDP's address.
	ld hl, (_RAM_DEB3_)
	di			;Disable interrupts for safe operation.
	out (c), l		;Send out whatever is in L to the VDP. This should be an address' first part.
	ld a, h			;The high address will be the second part of the command.
	set 6, a		;This will be either a normal VRAM write, or a color ram write, depending on the second byte, but I suspect this is the former.
	out (Port_VDPAddress), a;Send the byte out.
	ei
	ld de, $0020		;32
_LABEL_2EDF_VDP_DATA_LOADLOOP:	;This part, we enter into a data load loop.
	exx			;Save the contents in the shadow registers.
	ld hl, (_RAM_DEB7_INRAM_SPRITETABLE_TEMP)	;HL is still D000
	ld a, (hl)
	cp $AA
	ret z			;If this is 10101010 then return, else
	inc hl			;get the next address.
	ld c, a
	ld a, (hl)
	inc hl
	add a, $0B
	ld (_RAM_FFFF_), a
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (_RAM_DEB7_INRAM_SPRITETABLE_TEMP), hl	;Fifth byte is fed back to HL then to this value, which was used at the beginning of the routine.
	ex de, hl		;Switch register pair contents.
	ld a, c
	and a
	jr nz, +		;
	ld bc, $4000 | Port_VDPData
-:
	outi
	djnz -
	exx
	add hl, de
	djnz _LABEL_2EDF_VDP_DATA_LOADLOOP
	ld (_RAM_DEB3_), hl
	ret

+:				;If C is not zero, then jump here.
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
	out (Port_VDPData), a		;32 outs, so this is one tile's worth of OUTs.
	exx
	add hl, de
	dec b				;B holds how many tiles are needed to be loaded. I guess these are tiles, and not something else.
	jp nz, _LABEL_2EDF_VDP_DATA_LOADLOOP		;If we have anything left, jump back, and do this all over again.
	ld (_RAM_DEB3_), hl
	ret

_LABEL_2FB7_DRAWSPRITES:	;THIS IS THE SPRITE DRAW ROUTINE.
	xor a
	ld d, a
	out (Port_VDPAddress), a	;0000 0000
	ld a, $7F
	out (Port_VDPAddress), a	;0111 1111 THIS IS THE SAT'S ADDRESS.
	ld bc, $4000 | Port_VDPData
	ld e, b
	ld hl, (_RAM_DEA9_)	;THIS MIGHT BE THE IN-RAM SAT.
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
	outi	;THIS PLOTS THE X COORDS ON THE SPRITES.
	inc a
	out (Port_VDPAddress), a
	dec a
	out (Port_VDPAddress), a
	add hl, de	;ADD 64 BYTES, BASICALLY WHAT'S THERE IN THE SAT TABLE AS "UNUSED" SPACE, THEN PLOT THE Y COORDINATES, AND THE REST.
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
	ret		;THIS WILL DRAW ALL 64 SPRITES ON THE SCREEN, PRETTY NICE WITH ALL THE UNROLLED LOOPS, THEY HAD THE SPACE FOR IT.

_LABEL_314E_FINE_CHAR_MVMNT:
	ld ix, _RAM_DA50_NME_COORD_ARRAY2	;THIS LOOKS LIKE A VALUE FOR FINE CHAR MOVEMENT. IF THIS IS FROZEN, THE MOVEMENTS BECOME REALLY JAGGED. (The second sprite array is used, that's why.)
	ld b, $0C		;12, BUT NO IDEA YET WHAT IT AMOUNS TO.
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
	ld hl, (_RAM_DEB9_ANIM_POINTER)
	add hl, de
	ld l, (hl)
	ld h, d
	add hl, bc
	jr ++

+:
	ld e, a
	ld d, $00
	ld hl, (_RAM_DEB9_ANIM_POINTER)
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
	ld hl, (_RAM_DEB9_ANIM_POINTER)
	add hl, de
	ld l, (hl)
	ld h, d
	add hl, bc
	jr ++

+:
	ld e, a
	ld d, $00
	ld hl, (_RAM_DEB9_ANIM_POINTER)
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

_LABEL_31DF_FINEMOTION:
	
	ld ix, _RAM_D900_CHARA_COORD
	ld b, $0C	;Changing this value does various strange things. Lower the value and traps are moving slower and more janky.
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

_LABEL_3238_COPYCOORDS:
	ld b, $0C	;	12 characters on screen?		This seems like how many characters are to copy over and smooth out between the two frames. If the value is bigger, then the game may start to get jaggy, and character movement will get janky. Likely it runs out of time.
	ld de, $001C	;One character is 28 bytes? It seems so. This may be good to check out what these bytes are.
	ld ix, _RAM_D900_CHARA_COORD
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
	ld ix, _RAM_D100_IN_RAM_SPRITETABLE
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
	ld de, (_RAM_DE34_SCRN_SCROLL)
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
	ld a, (_RAM_DE4A_COLUMN_NR_SCROLL)
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
	call _LABEL_4BB_VDP_RAM_WRITESETUP
	pop af
	ld l, a
	ld a, $19		;SELECT BANK 25.
	ld (_RAM_FFFF_), a	;BANKSWITCH.
	ld h, $00
	add hl, hl	;0010
	add hl, hl	;0100
	add hl, hl	;0000 1000	WE ROLL SOME BYTES IN L.
	ld de, _DATA_64000_COMP_GFX
	add hl, de	;64008
	ld de, _RAM_D120_ART_DECOMP
	ld bc, $0008
	ldir		;COPY EIGHT BYTES TO RAM.
	ld ix, _RAM_D120_ART_DECOMP	;LOAD IT INTO THE INDEX REG.
	ld h, (ix+0)		;$80
	ld l, (ix+1)		;$C0	SET UP A SOURCE ADDRESS. HL IS $80C0.
	ld b, (ix+2)		;$02
	ld c, (ix+3)		;$1D	SET UP THE BYTE AMOUNT.	BC IS $021D.
	dec bc			;$1C
	ld e, $20		;021C
	ld iy, _RAM_D100_IN_RAM_SPRITETABLE
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
	ld iy, _RAM_D100_IN_RAM_SPRITETABLE
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
	ld iy, _RAM_D100_IN_RAM_SPRITETABLE
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
	ld de, _RAM_C040_SELECTED_MENUITEMINRAM_PAL
	ld bc, $0010
	ldir
	ld hl, _DATA_3D8_CHAR_PALS
	ld bc, $0010
	ldir
	ld hl, _RAM_C040_SELECTED_MENUITEMINRAM_PAL
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
	call _LABEL_35A6_RANDOM
+:
	ld de, _DATA_A73A_TEXT_CHARSTAT	
	call _LABEL_35A6_RANDOM	;PRINTS THE PRESS BUTTON TEXT.
-:
	call _LABEL_59B_MAIN
	call _LABEL_552_CHECK_AB_BUTTONS	;CHECK FOR ANY AB BUTTON PRESS.
	ld a, (_RAM_DE95_GAMEPAD)
	ld b, a
	ld a, (_RAM_DE94_GAMEPAD)
	or b
	jr z, -
	push bc
	call _LABEL_4F9_PALETTE_FADEOUT
	pop bc
	pop hl
	ld a, b
	and a
	jp z, _LABEL_3520_CHAR_SHOW
_LABEL_3581_JUSTRET:
	ret

_LABEL_3582_DRAW_NUMBERS_DEBUG:
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
_LABEL_35A6_RANDOM:	;HL 3C00 DE $FF
	ld a, r	;GET A VALUE FROM THE R REGISTER...
	jp po, +
	di
	call _LABEL_4BB_VDP_RAM_WRITESETUP
	ei
	jr ++

+:
	call _LABEL_4BB_VDP_RAM_WRITESETUP
++:
	ld c, l
	ld b, h
	ld a, (_RAM_FFFF_)
	push af
	ld a, $02	;BANKSWITCH.
	ld (_RAM_FFFF_), a
	call _LABEL_35C8_PLOT_CHARBIO
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_35C8_PLOT_CHARBIO:
	ld a, (de)
	inc de
	cp $FF
	ret z		;IT SEEMS THAT $FF MARKS THE END OF DRAW A PICTURE.
	cp $FE
	jr z, _LABEL_3615_	;MESSES UP TEXT DRAWING ON THE CHARACTER INTRO, AND THE TEXT GETS DRAWN OVER THE CHAR. PICS.
	cp $0D			;$0D IS THE END OF LINE TERMINATOR.
	jr z, _LABEL_3624_NEWLINE	;THIS SHOULD BE THE NEWLINE SUB.
	cp $0E			;EXTRA NEWLINE CHARACTER.
	jr z, _LABEL_361D_	;NEWLINE SUB.
	cp $41			;THIS LOOKS LIKE THE SPACE CHAR. IF THIS IS NOT CHECKED, THE SPACE BETWEEN WORDS ARE SLIGHTLY GLITCHED TILES.
	jr c, +
	cp $5B			;THIS IS MOST PROBABLY THE UPPERCASE LETTER MARKER.
	jr Nc, +		;IF THIS IS JUST C, THEN THE UPPERCASE LETTERS ARE NOT DRAWN.
	sub $41
	jr _LABEL_362D_DRAWTXT	;THIS PART DRAWS UPPERCASE LETTERS.

+:

	cp $61
	jr c, +	;SPACE AND OTHER EXTRA CHARACTERS ARE NOT DRAWN IF THIS IS COMMENTED OUT.
	cp $7B
	jr Nc, +	;ONLY PUCTUATION AND UPPERCASE CHARS ARE DRAWN IF THIS IS CARRY ONLY.
	sub $41

	jr _LABEL_362D_DRAWTXT	;THIS HANDLES THE LOWERCASE LETTERS.

+:
	cp $30
	jr c, +	;THIS REMOVED SPACES, AND ADD OTHER CHARS INSTEAD. THE TEXT IS LEGIBLE, BUT JUST A BIT.
	cp $3A
	jr nc, +	;DRAWS SPACE AT THE CHAR NAMES IN ALLCAPS.
	add a, $10	;MESSES A LINE UP AS TASSLEHOFF'S SCREEN, BUT THAT'S ALL.
	jr _LABEL_362D_DRAWTXT	;THIS DOES NOT SEEM TO DO ANYTHING AS OF YET.

+:
	ld hl, _DATA_3645_	;THIS HAS SOME TEXT DATA REGARDING SPACES, AND PUCTUATION, AND ONLY USED HERE.
	push bc
	ld b, a
-:
	ld a, (hl)
	inc hl
	cp $FF
	jr z, ++	;SKIPS PUNCTUATION AND SPACES, IF THIS IS SET TO NZ.
	cp b
	jr Nz, +		;SKIPS PUNCTUATION, SPACES ARE REPLACED WITH ':' IF THIS IS Z.
	ld a, (hl)
	pop bc
	jr _LABEL_362D_DRAWTXT	;THIS KILLS THE PROGRAM... THE CODE HANGS AFTER WRITING THE ALL UPPERCASE CHAR NAME.

+:
	inc hl
	jr -

++:
	pop bc
	jr _LABEL_35C8_PLOT_CHARBIO

_LABEL_3615_:
	ld a, (de)
	ld l, a
	inc de
	ld a, (de)
	ld h, a
	inc de
	jr _LABEL_35A6_RANDOM

_LABEL_361D_:
	ld l, c
	ld h, b
	ld bc, $0042
	jr +

_LABEL_3624_NEWLINE:
	ld l, c
	ld h, b
	ld bc, $0040
+:
	add hl, bc
	jp _LABEL_35A6_RANDOM

_LABEL_362D_DRAWTXT:
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
	jr _LABEL_35C8_PLOT_CHARBIO

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

_LABEL_369E_NME_N_TRAP:	;Some enemy thingy here.
	call _LABEL_7565_TRAP_INIT	;Well, this one simply won't let the traps work, so maybe it's not that simple as I thought. It handles trap types, and things like that.
	call _LABEL_3CCF_MONST_AI	;The enemies spawn, but they are not moving, so this is likely the "AI" of the enemy. AI is a very fashionable word today.
	exx
	ld hl, $0000
	ld (_RAM_DE5B_COMBAT_MARK), hl
	ld de, $001C
	exx
	ld b, $05
	ld de, (_RAM_D900_CHARA_COORD)
	ld ix, _RAM_D91C_NME_COORD_ARRAY
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
	ld (_RAM_DE5B_COMBAT_MARK), hl
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
	ld bc, (_RAM_D900_CHARA_COORD)
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
	ld de, (_RAM_DE34_SCRN_SCROLL)
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

_LABEL_374B_AB_DEBUG_BUTTON:				;Checks for button 2, and either opens the menu of the game, or does the debug warp.
	call _LABEL_552_CHECK_AB_BUTTONS	;Check if we've pressed the A or B buttons.
	ld a, (_RAM_DE54_HOLD_PLYR)
	and a
	jr z, +				;If the player is held still, then jump. (Maybe not in movement?)
	xor a				;Clear a.
	ld (_RAM_DE95_GAMEPAD), a
	ld (_RAM_DE94_GAMEPAD), a
	ld (_RAM_DE90_GAMEPAD), a	;Clear joypad values.
+:
	ld ix, _RAM_D900_CHARA_COORD
	ld a, (_RAM_DE95_GAMEPAD)
	and a
	jr z, _LABEL_3786_FLOORCHECK		;Sooo, this means, get into the options menu if we've pressed the B button on the controller.
	ld a, (ix+10)
	cp $05
	jr z, _LABEL_3786_FLOORCHECK		;If D910 is 05, then jump. This is the X coordinate on the player. So if it's 05, which is normally outside the playfied, then jump to that menu.
	ld a, (_RAM_DEBB_DEBUG)		;Check debug flag, we are not there with those coordinates.
	and a
	jr nz, +			;If we are not in debug, jump. Strangely, we are NOT in debug if the flag is 1.
	call _LABEL_7A14_DEALLOCATE_TRAPS		;This does some coordinate relocation, but the debug mode works better without this, as many rooms are otherwise not playable with it. The players spawn in strange locations, and can't be controlled. I won't name this yet, but I'm sure this is what it does.
	ld a, (_RAM_DE52_ROOM_NR)
	inc a
	ld (_RAM_DE52_ROOM_NR), a	;This small part I know. So, in debug mode, the ingame menu is disabled. Instead, we go to the next "room" of the game.
	pop hl
	jp _LABEL_726_LEVEL_WARP_LOAD	;Warp to the desired level. If this is commented out, you go to the menu, as the code is just below, then when you leave the room, the game reboots.

+:					;No debug mode here.
	call _LABEL_5C07_
_LABEL_3786_FLOORCHECK:	;Runs every frame of course. This seems to be the part that checks for floors, if you use a door, gonna fall and things like that.
	
	ld ix, _RAM_D900_CHARA_COORD
	ld c, (ix+0)	;Get the X coord.
	ld b, (ix+1)	;Get which screen are we on.
	ld a, (ix+9)	;Who the first companion is. Example: 1
	dec a		;Get the next one in line.	0
	add a, a	;2X. 0
	ld e, a
	ld d, $00	;DE is now $0004 for example.
	ld hl, _DATA_51FD_	;HL now has this address, and stays that way if Goldmoon is active.
	add hl, de		;Add the companion value.
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (ix+10)
	and a
	jp z, _LABEL_3938_	;Not noticeable what this does.


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
	call z, _LABEL_53F6_ENEMY_PLAYER_DAMAGE
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
	jp z, _LABEL_3B6E_NORTH_ROOMCHANGE
	cp $13
	jp z, _LABEL_3B77_SOUTH_ROOMCHANGE
	cp $0F
	jp nz, _LABEL_3876_
	ld a, (_RAM_DE54_HOLD_PLYR)
	and a
	jr z, _LABEL_3839_PIT_DEATH
	ld a, (ix+0)
	cp $C0
	jr nc, +
	ld (ix+11), $00
	jp _LABEL_3786_FLOORCHECK

+:
	pop hl
	xor a
	ld (_RAM_DE54_HOLD_PLYR), a
	pop hl
	pop de
	pop bc
	pop af
	ld (_RAM_D900_CHARA_COORD), hl
	ld (_RAM_D910_SECOND_HERO_COORD), hl
	ld (_RAM_DE34_SCRN_SCROLL), de
	ld (_RAM_DE52_ROOM_NR), bc
	ld (_RAM_D904_HERO_DIRECTION), a
	ld (ix+2), $74
	ld (ix+3), $00
	ld (ix+18), $74
	ld (ix+19), $00
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	call _LABEL_5B9D_ALARMBELLS_TXT_SCRN
	jp _LABEL_726_LEVEL_WARP_LOAD

_LABEL_3839_PIT_DEATH:	;This runs when the player falls into a pit.
	ld hl, _RAM_DEBD_SECOND_HERO_ARRAY
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
	ld (_RAM_DE90_GAMEPAD), a
	ld a, $06
	ld (_RAM_DE96_STOPGAME), a
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
	ld a, (_RAM_DE90_GAMEPAD)
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
	ld a, (_RAM_DE90_GAMEPAD)
	jp _LABEL_3786_FLOORCHECK

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
	ld a, (_RAM_DE54_HOLD_PLYR)
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
_LABEL_3908_:
	ld (ix+1), h
	ld a, (_RAM_DE54_HOLD_PLYR)
	and a
	ret nz
	ld de, (_RAM_DE34_SCRN_SCROLL)
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

_LABEL_3938_:	;IX is D900
	ld (ix+7), $00
	ld a, (_RAM_DE90_GAMEPAD)
	ld (_RAM_DE93_), a
	call _LABEL_3C89_
	ld a, (_RAM_DE91_)
_LABEL_3948_:
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
	jp _LABEL_3786_FLOORCHECK

+:
	ld (ix+10), a
	and a
	jp nz, _LABEL_3786_FLOORCHECK
	ret

++:
	ld hl, (_RAM_DE5B_COMBAT_MARK)
	ld a, h
	or l
	jr z, +
	ld a, $01
	ld (_RAM_DE5D_), a
_LABEL_3988_APPLYDAMAGE:	;When you attack, this runs.
	ld hl, _DATA_3B5C_
	jp _LABEL_3953_

+:
	ld a, (_RAM_DE5D_)
	and a
	jp nz, _LABEL_3B2E_
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
	call _LABEL_6573_CALC_DMG
	ld bc, _RAM_DBB1_GMSTAFF_IN4CHARS
	add hl, bc
	ld c, l
	ld b, h
	ld a, (hl)
	and a
	jp z, _LABEL_3B2E_
	bit 7, a
	jp nz, _LABEL_3B2E_
	ld a, (_RAM_DEF4_FALLING_STONES)
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
	jp nz, _LABEL_3786_FLOORCHECK
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
	jp _LABEL_3786_FLOORCHECK

+:
	ld a, (_RAM_DEE6_)
	inc a
	jp z, _LABEL_3786_FLOORCHECK
	dec a
	cp $FD
	jr nz, +
	ld a, $01
	ld (_RAM_DEF2_HOLD_PLYR), a
	ld b, $08
	ld hl, _RAM_DBB4_GOLDMOON_MAXHP
	ld de, $0027
-:
	ld (hl), $00
	inc hl
	ld (hl), $00
	add hl, de
	djnz -
	jp _LABEL_3786_FLOORCHECK

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
	call _LABEL_597A_CHECK_MAGIUS_STF_POWER
	jp _LABEL_3786_FLOORCHECK

_LABEL_3A4A_:
	ld l, c
	ld h, b
	ld (hl), $00
	ld b, $0F
	ld l, $2C
	jr _LABEL_3AA1_

_LABEL_3A54_:
	ld a, (_RAM_DEE8_PROJECTILE_TYPE)
	inc a
	jp z, _LABEL_3786_FLOORCHECK
	dec a
	ld b, a
	ld a, (_RAM_DEE9_HOLDPERSON_VAR)
	call _LABEL_5999_GMSTAFF_DECMANA
	jp _LABEL_3786_FLOORCHECK

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
	call _LABEL_3AAF_DRAWPROJECTILE
	jp _LABEL_3786_FLOORCHECK

_LABEL_3AAF_DRAWPROJECTILE:
	ld iy, _RAM_D9A8_PROJECTILE_ARRAY
	push af
	push bc
	push de
	ld de, $001C	;28
	ld b, $06
-:
	;$D9B0 is the timer for the animation on the find traps spell.
	ld a, (iy+9)	;$D9B1 _RAM_D9B0_FINDTRAPS_TIME is marked as a timer.
	cp $14
	jr nz, +
	add iy, de	;What's up with this in-between bytes?
	djnz -
	pop de
	pop bc
	ld iy, _RAM_D9A8_PROJECTILE_ARRAY
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
	jp _LABEL_3786_FLOORCHECK

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

_LABEL_3B6E_NORTH_ROOMCHANGE:
	ld b, $01
	call _LABEL_3C54_
	ld b, $00
	jr +

_LABEL_3B77_SOUTH_ROOMCHANGE:	;We come here, when the player takes a southward move to a different room.
	ld b, $02
	call _LABEL_3C54_
	ld b, $02
+:
	jp z, _LABEL_3876_		;These two are not really legible to me atm. If this is nz, then the room change won't happen.
	call _LABEL_7A14_DEALLOCATE_TRAPS	;With a room change, it makes sense to deallocate traps, since we don't need it anymore.
	ld a, (hl)
	and $04
	jr z, +		;If this is nz, then we go into that chute sequence, and fall down. We go to the "You hear alarm bells in the distance.." screen.
	ld a, $FF
	ld (_RAM_DE54_HOLD_PLYR), a
+:		;Down we go the chute.
	ld a, (hl)
	and $10
	jr z, +	;If this is nz, then it's a waterfall. After the waterfall, we go where we want.
	ld a, (_RAM_DE55_WATERFALL)
	or $01
	ld (_RAM_DE55_WATERFALL), a
+:				;Waterfall.
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
	ld (_RAM_D900_CHARA_COORD), hl
	ld (_RAM_D910_SECOND_HERO_COORD), hl
	ld de, $0080
	and a
	sbc hl, de
	jr nc, +	;The player gets put in the right point in the map if this is NC.
	ld hl, $0000
+:
	ld (_RAM_DE34_SCRN_SCROLL), hl
	pop hl
	ld a, (_RAM_DE54_HOLD_PLYR)
	and a
	jp z, _LABEL_726_LEVEL_WARP_LOAD
	ld hl, (_RAM_D900_CHARA_COORD)
	ld de, (_RAM_DE34_SCRN_SCROLL)
	ld bc, (_RAM_DE52_ROOM_NR)
	ld a, (_RAM_D904_HERO_DIRECTION)
	push af
	push bc
	push de
	push hl
	xor a
	ld (_RAM_D904_HERO_DIRECTION), a
	ld bc, $0057
	ld (_RAM_DE52_ROOM_NR), bc
	ld de, $0000
	ld (_RAM_DE34_SCRN_SCROLL), de
	ld hl, $0000
	ld (_RAM_D900_CHARA_COORD), hl
	ld (_RAM_D910_SECOND_HERO_COORD), hl
	ld a, $0F
	ld (_RAM_D90A_HERO_ACTION), a		;Set the action the hero does to falling. 
	ld hl, $0040
	ld (_RAM_D902_HERO_GROUNDLEVEL1), hl
	ld (_RAM_D912_HERO_GROUNDLEVEL2), hl
	jp _LABEL_726_LEVEL_WARP_LOAD
	;The above looks like the part where the characters are falling down to the next level after the first one.
_LABEL_3C32_:
	ld b, $01
	call _LABEL_3C54_
	ret z
	ld (ix+10), $12
	ld (ix+11), $00
	jp _LABEL_3786_FLOORCHECK

_LABEL_3C43_:
	ld b, $02
	call _LABEL_3C54_
	ret z
	ld (ix+10), $13
	ld (ix+11), $00
	jp _LABEL_3786_FLOORCHECK

_LABEL_3C54_:
	ld hl, (_RAM_D900_CHARA_COORD)	;Hm, we get the player character's coordinate.
	call _LABEL_7AE7_RSHIFTHL		;We shift aroung some things.
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
	ld a, (_RAM_DE90_GAMEPAD)
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

_LABEL_3CCF_MONST_AI:		;So, if this seems to be the enemy AI routine, If this is commented out, then the enemies won't move or attack.
	ld ix, _RAM_D91C_NME_COORD_ARRAY
	ld b, $05
-:
	ld a, (ix+9)	;D925 seems to be the first monster type in the given room\stage whatever.
			;Monster types:
				;00-nothing
				;01-Goldmoon. Yes, even players can be monsters. When killed, it remains on screen.
				;02-Sturm.
				;03-Caramon
				;04-Raistlin
				;05-Tanis
				;06-Tasslehoff
				;07-Riverwind
				;08-Flint
				;09-Baaz This grey gargoyle with a sword.
				;0A-Blue gargoyle with magic shots.
				;0B-Troll
				;0C-Blue Ghost
				;0D-This transparent soldier, that is almost impossible kill.
				;0E-Larger dwarf.
				;0F-Smaller dwarf.
				;10-Soldier.
				;11-Spider.
				;12-Smaller dragon.
				;13-Endboss dragon's head.
				;14-empty. just some magic under the floor
				;15-confined dragon.
				;16-nothing. Freezes the game
				;17-glitch
				;Anything above this will just reset the game, invalid. I wonder if somehow we could assign an AI to the player characters...
	and a
	jr z, +			;If there is no monster in the array, then just go to the next one.
	push bc
	call ++			;Call this, since we have monsters.
	pop bc
+:				;Here, get the next monster's data.
	ld de, $001C	;28 bytes, so maybe every 28 bytes, there is space for a new one.
	add ix, de
	djnz -		;So it seems that we load this, and there is a limit how many monsters are on a given stage. Five or six is more than enough, as the engine uses way too much CPU time.
	ret

++:
	cp $09		;Is this a monster that needs to be moved?
	ret c		;Return if not. So this little thing will control what is a monster and what's not.
	cp $13
	jp z, _LABEL_3DFD_ENDBOSS	;Is the endboss dragon's head? Jump if yes.
	ld a, (_RAM_DEF2_HOLD_PLYR)
	cp $1E
	jr c, ++	;Is the player held? At least this is what this seems to do. Jump if this is less than 30. The numbers have to be investigated, but this holds the player as well.
	ld a, (ix+9)	;The player is not held, so get through the next monster type.
	cp $15		;Is it a confined small dragon?(Or is the dragon confined?)
	jr nz, +	;Jump if not.
	ld a, (ix+24)	;Confined dragon, but maybe this is that gargoyle. The latter.
	ld (ix+9), a
+:
	ld a, (ix+10)
	cp $11		;Spider.
	jp z, _LABEL_3D99_
	ld (ix+10), $11
	ld (ix+5), $00
	ld (ix+22), $00
	ld (ix+23), $00
	ld a, (ix+9)
	call _LABEL_6DC9_NME_KILLED_INCKILLCOUNT
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
	ld de, (_RAM_DE34_SCRN_SCROLL)
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
.dw _LABEL_3E5E_ _LABEL_3E5E_ _LABEL_3DFD_ENDBOSS

; 11th entry of Jump Table from 3DE7 (indexed by _RAM_D941_)
_LABEL_3DFD_ENDBOSS:
	xor a
	ld (_RAM_DEF3_ENEMY_MOV_ENA), a
	ld (_RAM_D920_MNE1_DIR), a
	ld a, (_RAM_DEF4_FALLING_STONES)
	and a
	jr nz, +
	ld a, $01
	ld (_RAM_DEF4_FALLING_STONES), a
	ld hl, (_RAM_DE3E_MAX_LVL_LEN)
	ld (_RAM_DE3C_MAX_LVL_LEN2), hl
	ld hl, $0240
	ld (_RAM_DE3E_MAX_LVL_LEN), hl
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
	call _LABEL_652_LOAD_NEW_SCRN
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
	call _LABEL_3AAF_DRAWPROJECTILE
	ret

; 5th entry of Jump Table from 3DE7 (indexed by _RAM_D941_)
_LABEL_3E59_:
	ld a, $02
	call _LABEL_2FF_PREPNPLAYSFX
; 1st entry of Jump Table from 3DE7 (indexed by _RAM_D941_)
_LABEL_3E5E_:
	ld l, (ix+0)
	ld h, (ix+1)
	ld de, (_RAM_D900_CHARA_COORD)
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
	ld a, (_RAM_DEF3_ENEMY_MOV_ENA)
	and a
	jr z, +
	call _LABEL_3F5A_
	jp _LABEL_3F7E_

+:
	ld a, $0C
	call _LABEL_652_LOAD_NEW_SCRN
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
	ld a, (_RAM_DEF3_ENEMY_MOV_ENA)
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
	ld a, (_RAM_DE6C_NME_MOVE7BIT)
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
	call _LABEL_7AE7_RSHIFTHL
	ld a, (ix+9)
	ld c, $00
	cp $12
	jr nz, +
	ld c, $01
+:
	ld de, (_RAM_DE5E_FLOORFALLXCOORD)
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
	ld de, (_RAM_D900_CHARA_COORD)
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
	call z, _LABEL_53F6_ENEMY_PLAYER_DAMAGE
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

; 1st entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 4F23 to 4F4E (44 bytes)
_DATA_4F23_:
.db $20 $40 $24 $40 $34 $40 $46 $40 $56 $40 $5C $40 $72 $40 $76 $40
.db $7A $40 $84 $40 $8E $40 $98 $40 $9C $40 $A0 $40 $AA $40 $AE $40
.db $BC $40 $C0 $40 $C4 $40 $CA $40 $D0 $40 $D4 $40

; 2nd entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 4F4F to 4F7A (44 bytes)
_DATA_4F4F_:
.db $E0 $40 $E4 $40 $F6 $40 $08 $41 $1A $41 $20 $41 $3A $41 $40 $41
.db $46 $41 $54 $41 $60 $41 $6E $41 $72 $41 $76 $41 $82 $41 $86 $41
.db $94 $41 $98 $41 $9C $41 $A2 $41 $A8 $41 $AC $41

; 3rd entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 4F7B to 4FA6 (44 bytes)
_DATA_4F7B_:
.db $BA $41 $BE $41 $D0 $41 $E2 $41 $F4 $41 $FA $41 $14 $42 $1A $42
.db $20 $42 $2A $42 $32 $42 $3A $42 $3E $42 $42 $42 $4E $42 $52 $42
.db $60 $42 $64 $42 $68 $42 $6E $42 $74 $42 $78 $42

; 4th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 4FA7 to 4FD2 (44 bytes)
_DATA_4FA7_:
.db $84 $42 $88 $42 $9A $42 $AC $42 $BE $42 $C4 $42 $E8 $42 $EC $42
.db $F0 $42 $FA $42 $04 $43 $0E $43 $12 $43 $16 $43 $26 $43 $2A $43
.db $38 $43 $3C $43 $40 $43 $46 $43 $4C $43 $6C $43

; 5th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 4FD3 to 4FFE (44 bytes)
_DATA_4FD3_:
.db $70 $43 $74 $43 $86 $43 $98 $43 $AA $43 $B0 $43 $CA $43 $D0 $43
.db $D6 $43 $DE $43 $E6 $43 $EE $43 $F2 $43 $F6 $43 $02 $44 $06 $44
.db $14 $44 $18 $44 $1C $44 $22 $44 $28 $44 $42 $44

; 6th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 4FFF to 502A (44 bytes)
_DATA_4FFF_:
.db $76 $44 $7A $44 $8C $44 $9E $44 $B0 $44 $B6 $44 $CC $44 $D0 $44
.db $D4 $44 $E0 $44 $EC $44 $F8 $44 $FC $44 $04 $45 $12 $45 $16 $45
.db $24 $45 $28 $45 $2C $45 $32 $45 $38 $45 $38 $45

; 7th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 502B to 5056 (44 bytes)
_DATA_502B_:
.db $60 $45 $64 $45 $76 $45 $88 $45 $9A $45 $A0 $45 $BA $45 $C0 $45
.db $C6 $45 $D0 $45 $D8 $45 $E0 $45 $E4 $45 $E8 $45 $F4 $45 $F8 $45
.db $06 $46 $0A $46 $0E $46 $14 $46 $1A $46 $1E $46

; 8th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 5057 to 5082 (44 bytes)
_DATA_5057_:
.db $2C $46 $30 $46 $42 $46 $54 $46 $66 $46 $6C $46 $82 $46 $86 $46
.db $8A $46 $96 $46 $A4 $46 $B0 $46 $B4 $46 $B8 $46 $C8 $46 $CC $46
.db $DA $46 $DE $46 $E2 $46 $E8 $46 $EE $46 $EE $46

; 9th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 5083 to 50A6 (36 bytes)
_DATA_5083_:
.db $04 $47 $08 $47 $1A $47 $2C $47 $38 $47 $46 $47 $4E $47 $5A $47
.db $66 $47 $72 $47 $80 $47 $8E $47 $9A $47 $A8 $47 $AE $47 $B4 $47
.db $B8 $47 $C0 $47

; 10th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 50A7 to 50CA (36 bytes)
_DATA_50A7_:
.db $00 $48 $04 $48 $16 $48 $28 $48 $32 $48 $3C $48 $46 $48 $50 $48
.db $5A $48 $64 $48 $6E $48 $78 $48 $82 $48 $8C $48 $94 $48 $9C $48
.db $A4 $48 $AC $48

; 11th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 50CB to 50EE (36 bytes)
_DATA_50CB_:
.db $0C $4B $10 $4B $22 $4B $34 $4B $40 $4B $4E $4B $5E $4B $6A $4B
.db $78 $4B $88 $4B $94 $4B $A2 $4B $AA $4B $BA $4B $C4 $4B $CC $4B
.db $D0 $4B $D8 $4B

; 12th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 50EF to 5112 (36 bytes)
_DATA_50EF_:
.db $E4 $4B $EC $4B $F4 $4B $FC $4B $06 $4C $10 $4C $1A $4C $24 $4C
.db $2E $4C $38 $4C $42 $4C $4C $4C $56 $4C $60 $4C $6A $4C $74 $4C
.db $7C $4C $84 $4C

; 13th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 5113 to 5136 (36 bytes)
_DATA_5113_:
.db $8A $4C $8E $4C $A0 $4C $B2 $4C $C0 $4C $CE $4C $DC $4C $E6 $4C
.db $F4 $4C $00 $4D $0C $4D $16 $4D $24 $4D $2E $4D $34 $4D $3A $4D
.db $3E $4D $46 $4D

; 14th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 5137 to 515A (36 bytes)
_DATA_5137_:
.db $D8 $48 $DC $48 $EE $48 $00 $49 $08 $49 $10 $49 $18 $49 $20 $49
.db $28 $49 $30 $49 $38 $49 $40 $49 $48 $49 $50 $49 $5C $49 $6A $49
.db $70 $49 $78 $49

; 15th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 515B to 517E (36 bytes)
_DATA_515B_:
.db $86 $49 $8A $49 $9C $49 $AE $49 $BA $49 $C6 $49 $D2 $49 $DE $49
.db $E6 $49 $EE $49 $F6 $49 $02 $4A $0E $4A $1A $4A $20 $4A $28 $4A
.db $2E $4A $36 $4A

; 16th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 517F to 51A2 (36 bytes)
_DATA_517F_:
.db $44 $4A $48 $4A $5A $4A $6C $4A $7A $4A $88 $4A $96 $4A $A0 $4A
.db $AE $4A $BA $4A $C6 $4A $D0 $4A $DE $4A $E8 $4A $EE $4A $F4 $4A
.db $F8 $4A $00 $4B

; 17th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 51A3 to 51C6 (36 bytes)
_DATA_51A3_:
.db $54 $4D $58 $4D $62 $4D $6A $4D $76 $4D $82 $4D $8E $4D $9A $4D
.db $A6 $4D $B2 $4D $BE $4D $CA $4D $D6 $4D $E2 $4D $EA $4D $F2 $4D
.db $F6 $4D $FE $4D

; 18th entry of Pointer Table from 51FD (indexed by _RAM_D909_FIRST_COMPANION)
; Data from 51C7 to 51FC (54 bytes)
_DATA_51C7_:
.db $0C $4E $10 $4E $EB $51 $34 $4E $3E $4E $48 $4E $52 $4E $5C $4E
.db $66 $4E $70 $4E $7A $4E $84 $4E $8E $4E $98 $4E $A0 $4E $A8 $4E
.db $B0 $4E $B8 $4E $FF $07 $F4 $06 $F4 $00 $F4 $05 $F4 $04 $F4 $03
.db $F4 $02 $F4 $01 $F4 $FF

; Pointer Table from 51FD to 5222 (19 entries, indexed by _RAM_D909_FIRST_COMPANION)
_DATA_51FD_:
.dw _DATA_4F23_ _DATA_4F4F_ _DATA_4F7B_ _DATA_4FA7_ _DATA_4FD3_ _DATA_4FFF_ _DATA_502B_ _DATA_5057_
.dw _DATA_5083_ _DATA_50A7_ _DATA_50CB_ _DATA_50EF_ _DATA_5113_ _DATA_5137_ _DATA_515B_ _DATA_517F_
.dw _DATA_51A3_ _DATA_51C7_ _DATA_51C7_

_LABEL_5223_CHECKTRAP:		;Defo some trap stuff.
	ld hl, (_RAM_D900_CHARA_COORD)	;Yup, get first companion X coordinate.
	call _LABEL_7AE7_RSHIFTHL
	ld c, l
	ld ix, _RAM_DCE0_TRAPARRAY
_LABEL_522E_ACTIVATE_TRAP:
	ld l, (ix+0)
	ld h, (ix+1)
	ld a, h	;Read from the trap array.
	or l
	ret z	;Return, if there is no trap in the pipe.
	ld a, (hl)	;There is a trap this way. $D628 is HL-s current address that we've read from.. And the value is $45. This will be the trap type.
	cp $46		;$46 is the upward going magic thing with a pattern, that you have to jump through.
	jp z, _LABEL_5321_UPWARD_MGC_TRAP	;This cannot be jumped over, since it just spawns over and over again.
	cp $47		;Fire on the ground.
	jr z, _LABEL_5294_FIRE_ON_FLOOR_TRAP
	ld a, (_RAM_D90A_HERO_ACTION)
	cp $05
	jp z, _LABEL_539C_INC_TRAP_ARRAY_ADDR	;If we jump, don't activate the trap, adjust to the next one.
	inc hl
	inc hl
	ld a, (hl)
	cp c
	jp nz, _LABEL_539C_INC_TRAP_ARRAY_ADDR
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)	
	cp $05
	jr nz, +++	;Jump, if we are not playing with Tasslehoff.
	ld a, $64
	call _LABEL_652_LOAD_NEW_SCRN
	cp $46
	jr nc, +++	;He can and will disable traps for you.
	dec hl
	dec hl
	ld a, (hl)
	cp $48		;Arrows hitting the player.
	jr nz, ++
	push ix
	push bc
	push de
	ld ix, _RAM_D9A8_PROJECTILE_ARRAY
	ld b, $06
-:
	ld a, (ix+24)
	cp $13	;These are also stones.
	jr nz, +
	ld (ix+9), $00
+:
	add ix, de
	djnz -
	pop de
	pop bc
	pop ix
++:	;The falling traps will be deactivated.
	ld (hl), $00
	call _LABEL_799A_ACTIVATE_TRAP
	jp _LABEL_5BA2_TASSLEHOFF_TRAP_SCRN

+++:	;The falling traps will be activated.
	dec hl
	dec hl
	ld a, (hl)
	cp $47
	jp nz, _LABEL_52D5_FALLINGTRAP_ACTIVATE
_LABEL_5294_FIRE_ON_FLOOR_TRAP:
	push ix
	ld a, $20
	call _LABEL_652_LOAD_NEW_SCRN
	and a
	jr nz, +
	inc hl
	inc hl
	ld a, (hl)
	ld ix, _RAM_D100_IN_RAM_SPRITETABLE
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (ix+0), l
	ld (ix+1), h
	ld hl, (_RAM_D902_HERO_GROUNDLEVEL1)
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
	call _LABEL_3AAF_DRAWPROJECTILE
+:
	pop ix
	jp _LABEL_539C_INC_TRAP_ARRAY_ADDR

_LABEL_52D5_FALLINGTRAP_ACTIVATE:
	cp $48
	jp nz, _LABEL_531C_
	ld hl, _RAM_D900_CHARA_COORD
	ld de, _RAM_D100_IN_RAM_SPRITETABLE
	ld bc, $001C
	ldir
	ld ix, _RAM_D100_IN_RAM_SPRITETABLE
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
	call _LABEL_652_LOAD_NEW_SCRN
	and $18
	add a, $10
	ld l, a
	ld a, $02
	ld c, $00
	ld h, $20
	ld e, $10
	ld d, c
	jp _LABEL_3AAF_DRAWPROJECTILE

_LABEL_531C_:
	cp $46
	jp nz, _LABEL_536C_
_LABEL_5321_UPWARD_MGC_TRAP: ;Handles the upward going projectiles, that are harming the player upon contact.
	push ix
	ld a, (_RAM_DE58_)
	inc a
	ld (_RAM_DE58_), a
	and $3F
	cp $30	;48 Wait 48 frames I guess, then launch another projectile.
	jr nc, +
	and $03
	jr nz, +
	inc hl
	inc hl
	ld a, (hl)
	ld ix, _RAM_D100_IN_RAM_SPRITETABLE
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (ix+0), l
	ld (ix+1), h
	ld hl, (_RAM_D902_HERO_GROUNDLEVEL1)
	ld (ix+2), l
	ld (ix+3), h
	ld b, $14
	ld a, $01
	ld c, $00
	ld e, $08
	ld h, $00
	ld d, $EC
	ld l, $00
	call _LABEL_3AAF_DRAWPROJECTILE	;After everything is set, launch the proj.
	ld a, $03
	call _LABEL_2FF_PREPNPLAYSFX	;Play that annoying sound.
+:
	pop ix
	jp _LABEL_539C_INC_TRAP_ARRAY_ADDR

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
	ld a, (_RAM_D904_HERO_DIRECTION)
	push af
	xor a
	ld (_RAM_D904_HERO_DIRECTION), a
	ld l, $64
	ld d, $10
	ld a, $02
	ld c, $F8
	ld e, $07
	ld h, $00
	ld ix, $D900
	call _LABEL_3AAF_DRAWPROJECTILE
	pop af
	ld (_RAM_D904_HERO_DIRECTION), a
	call _LABEL_799A_ACTIVATE_TRAP
	ret

_LABEL_539C_INC_TRAP_ARRAY_ADDR:
	inc ix
	inc ix
	jp _LABEL_522E_ACTIVATE_TRAP

_LABEL_53A3_FLOORCOLLISION: ;If this is just a return, then the floor collision won't work, and you won't die.
	ld a, (_RAM_D90A_HERO_ACTION)
	cp $05	;$05 means we are in a jump.
	jr nz, +	;Jump if we are not jumping. No pun intended.
	ld a, (ix+11)	;So, this might be a jump check?
	ld b, a
	ld a, (_RAM_DE6E_)	;FF is we are standing.
	cp b
	ret nc
	jr ++

+:	;We are not jumping.
	cp $0F	;Are we falling? Return if yes.	 I guess if we are falling, then there is no need for any collision anymore, the player will die anyways.
	ret z
++:	;We are not falling.
	ld a, (_RAM_DE6C_NME_MOVE7BIT)
	bit 6, a	;Is bit 6 set?
	ret nz		;Return if not.
	ld hl, (_RAM_D900_CHARA_COORD)	;Read the player's X coordinate.
	ld de, $0008
	add hl, de	;Add eight to it.
	call _LABEL_7AE7_RSHIFTHL	;This is some shift right thing on DE.
	ld de, (_RAM_DE5E_FLOORFALLXCOORD)	;Store the result here. This is the X coordinate, where the player will fall and die.
-:
	ld a, (de)	;Read from DE, where the floor is missing, the "deadzone"
	and a
	jr z, +		;If this is zero, then jump. I guess this is the distance between the player and the pit's edge. If this is nz, the calculation is not valid anymore, and you won't fall down. 
	cp $02		;This is not zero, check if it's 2.
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
	ld ix, _RAM_D900_CHARA_COORD
	ld (ix+11), $00
	ld (ix+10), $0F	;Now this looks like something. Set the character to fall and die.
	jp _LABEL_3786_FLOORCHECK	;This does many things, and is at many places, but I can't tell exactly what.

+:	;We don't execute any fall, and lang here.
	ld hl, (_RAM_D900_CHARA_COORD)
	ld (_RAM_DE6F_), hl
	ret

_LABEL_53F6_ENEMY_PLAYER_DAMAGE:			;If you put a ret here, then the enemy won't do any damage.
	;ret
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
	jp nc, _LABEL_5573_ENEMY_ACTION
	ld a, (ix+10)
	cp $05
	jp z, _LABEL_5442_ENEMY_PLAYER_DAMAGE
	ld ix, _RAM_D91C_NME_COORD_ARRAY
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
_LABEL_5442_ENEMY_PLAYER_DAMAGE:
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret

++:
	ld hl, (_RAM_D900_CHARA_COORD)
	ld e, (iy+0)
	ld d, $00
	ld a, (_RAM_D904_HERO_DIRECTION)
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
	call _LABEL_5851_APPLYDAMAGE
	ld l, a
	ld a, (_RAM_D90A_HERO_ACTION)
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
	call _LABEL_652_LOAD_NEW_SCRN
	inc a
	ld c, a
	ld a, (_RAM_DEEE_PROT_EVIL_TIMER)
	and a
	jr z, +
	inc c
	inc c
+:			;Okay, so it seems to control the Strength potion part.
	ld a, (_RAM_DEF1_STR_POTION)	;Do we have any strength potion points left?
	and a
	jr z, +				;Nah we don't. Jump out.
	dec a				;We do have some. Decrement the value.
	ld (_RAM_DEF1_STR_POTION), a	;Put back the number.
	ld a, c				;I guess here, c would hold the initial damage value.
	add a, $07			;Add some extra oomph to it.
	ld c, a				;Put back the final value to c.
+:
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)	;Get the character we are playing with.
	call _LABEL_6573_CALC_DMG		;Calculate the new damage value.
	ld de, _RAM_DBB9_PLYRSTATS_RELATED
	add hl, de
	ld e, (hl)
	ld d, $00
	ld hl, _DATA_5800_
	add hl, de
	ld a, (hl)
	add a, c
	ld c, a
	call _LABEL_54ED_		;If this is commented out, the calculated damage is not applied, and your slashes become useless.
	ld a, $01	;This is the sound effect number, that we the Player will use when we attack. If you really want, you can get this into a variable, and control the sound effect that way, but this is my two cents.
	call _LABEL_2FF_PREPNPLAYSFX
	pop bc
	jp _LABEL_5442_ENEMY_PLAYER_DAMAGE

_LABEL_54ED_:	;This does not make sense to me without dissecting the previous long line of code, only some small parts.
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
	ld de, (_RAM_D900_CHARA_COORD)
	and a
	sbc hl, de
	jr c, +
	ld (ix+4), $01
+:
	xor a
	ld (_RAM_DEF3_ENEMY_MOV_ENA), a	;This might be that the enemy will stay still while attacking. Yes, if the xor is commented out, some enemies that might be "ambushing" you will not move.
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
	call _LABEL_6DC9_NME_KILLED_INCKILLCOUNT
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
	jp _LABEL_3AAF_DRAWPROJECTILE

+:
	ret

++:
	ld (ix+8), a
	ret

_LABEL_5573_ENEMY_ACTION:
	ld a, (_RAM_DEF2_HOLD_PLYR)
	and a
	jp nz, _LABEL_5442_ENEMY_PLAYER_DAMAGE	;If this is just a z, then the enemies do no damage. Traps still hurt though.
	ld a, (_RAM_D90A_HERO_ACTION)
	cp $0F	;Falling.
	jp z, _LABEL_5442_ENEMY_PLAYER_DAMAGE	;I guess if the player is falling, then apply damage and then kill the player. Since that's what pits do.
	ld a, (ix+9)
	cp $0A	;Low swing.
	jr nz, +
	ld a, (ix+10)
	cp $11	;Blocking.
	jp z, ++
	ld a, $03
	call _LABEL_652_LOAD_NEW_SCRN
	dec a
	add a, a
	ld d, a
	ld a, $01
	ld c, $0C
	ld e, $14
	ld l, $20
	ld h, $14
	ld b, $0A
	call _LABEL_3AAF_DRAWPROJECTILE
	ld (ix+10), $00
	ld (ix+11), $00
	ld (ix+7), $00
	ld a, $08
	call _LABEL_652_LOAD_NEW_SCRN
	inc a
	ld (ix+5), a
	jp _LABEL_5442_ENEMY_PLAYER_DAMAGE

+:
	cp $13
	jr nz, ++
	jp _LABEL_5442_ENEMY_PLAYER_DAMAGE

++:
	ld l, (ix+0)
	ld h, (ix+1)
	and a
	ld de, (_RAM_D900_CHARA_COORD)
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
	jp nc, _LABEL_5442_ENEMY_PLAYER_DAMAGE
	jr ++

+:
	ld e, (iy+1)
	and a
	sbc hl, de
	jp nc, _LABEL_5442_ENEMY_PLAYER_DAMAGE
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
	call _LABEL_3AAF_DRAWPROJECTILE
	jp _LABEL_5442_ENEMY_PLAYER_DAMAGE

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
	ld a, (_RAM_D90A_HERO_ACTION)
	cp $0B
	jr nz, +
	ld a, c
	srl a
	add a, c
	ld c, a
+:
	ld a, (_RAM_D909_FIRST_COMPANION)
	call _LABEL_5851_APPLYDAMAGE
	cp c
	jp c, _LABEL_5442_ENEMY_PLAYER_DAMAGE
	ld a, $08
	call _LABEL_652_LOAD_NEW_SCRN
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
	ld a, (_RAM_D90A_HERO_ACTION)
	cp $04
	jr z, ++
	cp $12
	jr z, ++
	cp $13
	jr z, ++
	ld a, $0E
	ld (_RAM_D90A_HERO_ACTION), a
	xor a
	ld (_RAM_D90B_ANIM_FRAME_COUNTER), a
	jr ++

+:
	srl c
++:
	call _LABEL_57CC_DAMAGE_OTHERS
	call _LABEL_5689_HITDETECT
	ld a, $01
	call _LABEL_2FF_PREPNPLAYSFX
	jp _LABEL_5442_ENEMY_PLAYER_DAMAGE

_LABEL_5689_HITDETECT:						;THIS IS THE HIT DETECTION PART, OR THE DAMAGE CALCULATION. RET'D, AND YOU WILL BE INVINCIBLE.
							;RAISTLIN WILL STILL GET HURT FOR SOME REASON.
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)		;READ FROM THE CHARA LIST. I GUESS WHICH ONE IS AT THE FRONT.
	call _LABEL_6573_CALC_DMG				;DO SOME MATH WITH IT.
	ld de, _RAM_DBB5_GOLDMOON_HP
	add hl, de
	ld a, (hl)
	sub c
	jr z, +						;when the enemy attacks at first, this gets checked.
	jp nc, _LABEL_579F_GOLDMOON_PROT_HP_CHECK
+:
	push hl
	ld de, (_RAM_D900_CHARA_COORD)
	call _LABEL_7AFE_PLYR_DEAD_PUT_TOMBSTONE
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
	ld a, (_RAM_D904_HERO_DIRECTION)
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
	ld (_RAM_D900_CHARA_COORD), hl
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
	ld bc, (_RAM_D900_CHARA_COORD)
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
	call _LABEL_79DB_ADJUST_TRAPADDRESS
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
	call _LABEL_79DB_ADJUST_TRAPADDRESS
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
	call _LABEL_79DB_ADJUST_TRAPADDRESS
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
	ld de, (_RAM_D900_CHARA_COORD)
	ld (hl), e
	inc hl
	ld (hl), d
	inc hl
	ld (hl), e
	ld a, d
	rrd
	call _LABEL_3262_
	call _LABEL_5887_
	ld hl, _RAM_DEBD_SECOND_HERO_ARRAY
	ld de, _RAM_DEBC_INRAM_HUD_PORTRAITS
	ld bc, $0007
	ld a, (de)
	ldir
	ld (_RAM_DEC3_), a
	ld hl, (_RAM_DE6F_)
	ld (_RAM_D900_CHARA_COORD), hl
	ld (_RAM_D910_SECOND_HERO_COORD), hl
	xor a
	ld (_RAM_D90A_HERO_ACTION), a
	ld (_RAM_D907_HERO_ANIM_FRAME), a
	ld (_RAM_D90B_ANIM_FRAME_COUNTER), a
	ret

_LABEL_579F_GOLDMOON_PROT_HP_CHECK:
	ld (hl), a	;$DBB5			;Get Goldmoon's health.
	ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)	;get the first companion in the list.
	and a
	ret nz	;Goldmoon is marked with zero, we return if the selected first companion is not her.
	;What I don't understand is, that the HP loading could be done AFTER we determine if we check the right character's health or not.
	ld a, (hl)	;Else if we are with her, continue here.
	cp $05		;So, the Game has a mechanic, that once Goldmoon has low health, Riverwind will take her place, and she'll be saved. This not always works though.
	ret nc		;If her health is not low enough, just return.
	ld a, (_RAM_DEF4_FALLING_STONES) ;If this $02, then stones will fall on the Companions heads constantly. If it's just $01, I can't seem to notice any difference.
	and a
	ret nz		;This will be mapped later, with more clear code.
	ld a, (_RAM_DCA5_RIVERWIND_HP)	;Get Riverwind's health.
	and a
	ret z				;If he's dead, then he can't protect Goldmoon, so we return.
	ld hl, _RAM_DEBD_SECOND_HERO_ARRAY		;He's alive, so we continue.
-:
	ld a, (hl)			;Check the HUD portraits\player list.
	cp $06				;Check for Riverwind.
	jr z, +				;Is it him? Jump ahead.
	inc hl				;It's not him? Increase the HL address, look at other party members.
	jr -				;Jump back, and continue with the search.

+:
	ld (hl), $00			;$00 Represents Goldmoon in the party list. Put her where Riverwind was.
	ld a, $06			;Get his ID.
	ld (_RAM_DEBC_INRAM_HUD_PORTRAITS), a	;And load as the first Companion in the List.
	call _LABEL_6F3B__UPD_HUD	;Update the HUD to represent the new status for the player.
	call _LABEL_5BA7_RIVERWIND_PROT_SCRN
	ret

_LABEL_57CC_DAMAGE_OTHERS: ;Well, my eyes did not deceived me. So the game has by default a mechanism that when Caramon is used, the game hurts Raistlin as well. This is also documented, so that's all good. However, I saw that the game sometimes also punishes the first four characters, by damaging them as well, but not as harshly. I thought this is a bug from the Raistlin code, but no, this is that part. If this is disabled, no other parties are damaged by the first companion's damage received.

	push bc			;So at first, C comes with an 8 into this. Maybe character count, maybe else.
	ld a, c
	srl a			;4
	srl a			;2
	srl a			;Divide by 2 three times. 1
	ld c, a			;c-->1
	srl a			;1/2=0
	add a, c		;0+1=1
	jr z, ++		;The jump is not taken.
	ld c, a			;Put this 1 to c.
	push de
	push hl
	push ix			;Save registers.
	ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS	;Get the first address of the characters.
	ld b, $03		;Three of them
-:
	ld a, (ix+1)		;This looks like the second character. Since the first is getting damaged anyway, there is no need to do it again.
	call _LABEL_6573_CALC_DMG
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

_LABEL_5819_MARKDEAD_PERMADEAD:	;When you leave the level\screen, the dead characters are marked permanently, so you can't revive them.
	ld b, $08	;Player numbers.
	ld hl, _RAM_DBB5_GOLDMOON_HP
-:
	ld a, (hl)	;READ GOLDMOON'S HEALTH INTO A.
	and a
	jr Nz, +	;IF THIS IS Z, PLAYERS ARE SHOWN AS PERMADEAD. If she's not dead, then jump ahead.
	dec hl		;Whoops, she's dead.
	ld a, (hl)
	inc hl		;It's nothing there...Hm.
	and a
	jr z, +		;Jump if it's zero.
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
	pop bc
	pop hl
+:	
	
	ld de, $0028
	add hl, de
	djnz -
	ld hl, _RAM_DCF2_DEAD_CHARS		;When a character dies, this array gets filled. The tombstone coordinate is also here that I see too.
	ld de, _RAM_DCF2_DEAD_CHARS + 1
	ld (hl), $00
	ld bc, $001F
	ldir			
	ret

_LABEL_5851_APPLYDAMAGE:	;Runs whenever damage should apply, for the player, for the enemies and the traps as well.

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
	;ret
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



_LABEL_58A1_FINALSTRIKE:	;Everybody dies.	
		ld a, ( _RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp $03					;We check if the character leading the party is Raistlin.
		jr z, +					;Jump if that's the case. This might be the 'Final Strike' spell.
		ld de, _DATA_AADB_RAISTLIN_NOT_PTY_LEADER			;Raistlin is not the party leader. This is the text for reminding the player.
		jp _LABEL_658E_PLOT_FLSCRN_MSG					;We have the text, then we draw a nice screen for it.
	
+:		;We continue with the "everyone dies" scenario.
		xor a
		ld (_RAM_DEE6_), a
		xor a
		ld (_RAM_DEE7_), a	;Don't know what these do atm.
		ld a, $01
		ld ( _RAM_DEF2_HOLD_PLYR), a	;Prevent the player from moving.
		ld b, $08			;Go through all party members.
		ld hl, _RAM_DBB4_GOLDMOON_MAXHP	;I guess Goldmoon's max HP is first. This is done to prevent players resurrect the party. Since you can't heal someone who's got zero maximum health.
		ld de, $0027	;Hm, this should be the "space" between characters. Why, I don't know.
-:	
		ld (hl), $00
		inc hl
		ld (hl), $00
		add hl, de	;Add the "space" between addresses.
		djnz -		;Load zero heatlh into every slot, basically killing everyone.
		jp _LABEL_6053_WAIT4BUTTN	;Go back to the game menu.
	
_LABEL_58CE_FINDTRAPS:	
		ld a, $02			;Mana cost.
		call _LABEL_59DE_DEPLETE_GMSTAFF	;Subtract mana cost.
		jp c, _LABEL_5ADA_BL_STF_NOPWR		;If there is not enough, tell the player.
		ld ix, _RAM_DCE0_TRAPARRAY
_LABEL_58DA_SHOWTRAP_LOOP:			;This is the loop for the spell. My guess that it goes through this array, then marks the traps with sprites.
		ld l, (ix+0)	;L has the first byte.
		ld h, (ix+1)	;H has the second byte.
		ld a, h		;We check the second byte.
		or l		;Make a comparison between the two bytes.
		jp z, _LABEL_6053_WAIT4BUTTN	;If the numbers are the same (no traps left in the array) then just return. Since what I saw is that no trap marks are the using the same numbers. Usually, when there is no trap on the level, it's just marked with $00 $00 in this array.
		;We do have traps on this line of execution.
		push ix	;Save the address of the array on the stack.
		inc hl
		inc hl	;Go to the next trap addess.
		ld a, (hl)	;Read the first byte from array.
		ld ix, _RAM_D100_IN_RAM_SPRITETABLE	;IX is now this array's address. I suspect this holds the in-ram sprite map.
		ld l, a			;Put the first byte into L.
		ld h, $00		;So, the first format is like $00xx
		add hl, hl		;2x
		add hl, hl		;4x
		add hl, hl		;8x
		add hl, hl		;16x
		ld (ix+0), l
		ld (ix+1), h		;Put this number to $D100
		ld (ix+2), $90
		ld (ix+3), $00
		ld (ix+4), $00
		ld a, $01
		ld c, $00
		ld e, $28
		ld l, $20
		ld h, $00
		ld d, $00
		ld b, $09		;I guess here, we build some sprites, so the engine can show them later. What is strange, that the trap mark uses quiete a few sprites to show the player there is something to look out for. IMO one or two would be sufficient for warning.
		call _LABEL_3AAF_DRAWPROJECTILE	;Upon commenting this out, the traps won't show on the screen.
	;.dsb 3,$ff
		pop ix		;We get back the position for the array, and increment it two times, so we are looking at the next element.
		inc ix
		inc ix
		jr _LABEL_58DA_SHOWTRAP_LOOP	;Loop back, and check the next item in the array.
	
_LABEL_5920_PRAYER_SPELL:	
		ld a, $03
		ld b, $32
		jr +
	
_LABEL_5926_PROTECTION_FROM_EVIL:	;Protection from Evil spell.
		ld a, $01		;Spell cost.
		ld b, $64		;Duration.
+:							;The rest is the same, we just used b to set the duration instead of a fix value.
		call _LABEL_59DE_DEPLETE_GMSTAFF
		jp c, _LABEL_5ADA_BL_STF_NOPWR
		ld a, b
		ld (_RAM_DEEE_PROT_EVIL_TIMER), a
		jp _LABEL_6053_WAIT4BUTTN
	
_LABEL_5937_DRAGON_BREATH_SPELL:	;This is the 'Deflect Dragon Breath' spell.
		ld a, $0A		;Spell cost.
		call _LABEL_59DE_DEPLETE_GMSTAFF	;Subtract (or try to) spell cost from the overall staff charge.
		jp c, _LABEL_5ADA_BL_STF_NOPWR		;Jump there and tell the player the staff does not have enough charge to perform the spell.
		ld a, $3F				;This is the time for the spell duration. 63 seconds.
		ld (_RAM_DEF0_DEFLECT_DRGN_BREATH), a	
		jp _LABEL_6053_WAIT4BUTTN
;These are Raistlin's spells.
_LABEL_5947_CHARMSPELL:
		ld b, $06
		ld a, $01
		jr +
	
_LABEL_594D_BURNINGHANDSSPELL:	
		ld b, $05
		ld a, $01
		jr +
	
_LABEL_5953_WEBSPELL:	
		ld b, $04
		ld a, $02
		jr +
	
_LABEL_5959_SLEEPSPELL:	
		ld b, $03
		ld a, $01
		jr +
	
_LABEL_595F_MAGICMISSILESPELL:	
		ld b, $02
		ld a, $01
+:	
		ld d, a
		ld a, ( _RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp $03
		ld a, d
		ld d, $00
		jr nz, _LABEL_597A_CHECK_MAGIUS_STF_POWER
		ld d, a
		ld a, b
		ld (_RAM_DEE6_), a
		ld a, d
		ld (_RAM_DEE7_), a
		jp _LABEL_6053_WAIT4BUTTN
	


_LABEL_597A_CHECK_MAGIUS_STF_POWER:
	call _LABEL_59CE_DEPLETE_MAGIUS_STF
	jp c, _LABEL_5AD5_MAGIUS_STF_NOPWR
	ld a, $01
_LABEL_5982_PLYR_LAUNCH_PROJECTILE:	;Used whenever the player uses a spell that generates a projectile. The enemy projectiles, or the ones that may be generated during death is not used by this code.
-:
	ld c, $0C
	ld e, $14
	ld l, $20
	ld h, $14
	ld ix, _RAM_D900_CHARA_COORD
	call _LABEL_3AAF_DRAWPROJECTILE
	ld a, (_RAM_DEE5_MENUORGAME)
	and a
	ret z
	jp _LABEL_6053_WAIT4BUTTN

_LABEL_5999_GMSTAFF_DECMANA:	;This will be used when the Blue Staff's power is needed.
	call _LABEL_59DE_DEPLETE_GMSTAFF	;Try, and subtract the amount from the staff's charge.
	jp c, _LABEL_5ADA_BL_STF_NOPWR		;If we are in the negative, then the spellcasting failed, and we will tell the user this unfortunate event.
	ld a, $03
	jr -

_LABEL_59A3_SPIRITHAMMERSPELL:	
		ld b, $08
		ld a, $02
		jr +
	
_LABEL_59A9_HOLDPERSONSPELL:	;Okay, let's check this one now.
		ld b, $07	;I don't know if this is the spell duration or not...
		ld a, $02	;Spellcost. Sometimes the code just switches what to load first.
+:	
		ld d, a		;Okay, save the spellcost into D.
		ld a, ( _RAM_DEBC_INRAM_HUD_PORTRAITS)	;Get the first character in the roster.
		and a					
		ld a, d					;Load D into A.
		ld d, $00	;Whatever.. we zero out D.
		jp nz, +	;Because of the carry, this seems to work anyways... Nice.
		ld d, a		;We come here, if the party leader is Goldmoon.
		ld a, b
		ld (_RAM_DEE8_PROJECTILE_TYPE), a	;This is also a projectile type.
		ld a, d
		ld (_RAM_DEE9_HOLDPERSON_VAR), a
		jp  _LABEL_6053_WAIT4BUTTN	;Because we are the staff's normal owner, we can control this spell. This means we can fire it at will.
	
+:						;We are not Goldmoon, so the spell has been cast, and will fire away after we leave the menu.
		call  _LABEL_59DE_DEPLETE_GMSTAFF
		jp c,  _LABEL_5ADA_BL_STF_NOPWR	;Just a check to see if we have enough points for the spell.
		ld a, $01			;This should be the projectile type.
		jr _LABEL_5982_PLYR_LAUNCH_PROJECTILE	;Aand we fire it away.

_LABEL_59CE_DEPLETE_MAGIUS_STF:	;IF THIS RET BELOW IS THERE, THE GAME WILL THINK RAISTLIN'S STAFF HAS NO CHARGE.
	ld hl, (_RAM_DEEC_RAIST_STFFCHRG)
	push de
	ld e, a
	ld d, $00
	and a
	sbc hl, de
	pop de
	ret c
	ld (_RAM_DEEC_RAIST_STFFCHRG), hl
	ret

_LABEL_59DE_DEPLETE_GMSTAFF:			;This really looks like when you use the Blue Crystal Staff, this will subtrack the needed mana from the overall charge.
	ld hl, (_RAM_DEEA_GMOON_STAFF_CHRG)	;Get the charge of the staff.
	push de					;This should be the "mana" amount, that the given spell costs.
	ld e, a
	ld d, $00
	and a
	sbc hl, de				;Subtract the amount from the staff charge.
	pop de
	ret c					;If the amount is negative (hence the carry), then we don't have enough mana, and the spell fails.
	ld (_RAM_DEEA_GMOON_STAFF_CHRG), hl	;If we have enough mana, then load back the new value, then return.
	ret
_LABEL_59EE_CURE_CRITICAL_WOUNDS:	
		ld a, $05	;Mana cost.
		ld bc, $1606	;Okay, so this is the min and max value of the healing. It is very clever indeed.
		jr +
	
_LABEL_59F5_CURE_LIGHT_WOUNDS:	
		ld a, $01	;Same.
		ld bc, $0801
+:	
		push bc
		call  _LABEL_59DE_DEPLETE_GMSTAFF
		pop bc
		jp c,  _LABEL_5ADA_BL_STF_NOPWR	;As with other spells, this checks if the Staff had enough charge for the operation. If not, tell the user.
		push bc
	;.dsb 3,$ff
		call _LABEL_5AA2_SELECT_PLAYER_CLERICAL		;This lets you select who you want to to an action on, like this healing.
		pop bc
		ld a, b
		call _LABEL_652_LOAD_NEW_SCRN			;Does nothing if commented out.
		add a, c
		ld c, a
		call _LABEL_5A83_HEALING			;Heals the selected player.
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, e
		and a
		jp z,  _LABEL_6053_WAIT4BUTTN
		ld a, d
		and a
		jp z,  _LABEL_6053_WAIT4BUTTN
		add a, c
		cp e
		jr c, +
		ld a, e
+:	
		ld (hl), a
		di
		call _LABEL_6F3B__UPD_HUD			;Updates the HUD with the new health values.
		ei
		jp  _LABEL_6053_WAIT4BUTTN
	
_LABEL_5A2B_RESURRECT:	
		ld a, $05					;Mana cost.
		call  _LABEL_59DE_DEPLETE_GMSTAFF		;Check for mana.
		jp c,  _LABEL_5ADA_BL_STF_NOPWR			;Jump if mana is not enough.
		call _LABEL_5AA2_SELECT_PLAYER_CLERICAL		;Select the player for resurrection.
		call _LABEL_5A83_HEALING			;Give some health back as well.
		ld a, (hl)
		and a
		jp z,  _LABEL_6053_WAIT4BUTTN
		ld d, a
		inc hl
		ld a, (hl)
		and a
		jp nz,  _LABEL_6053_WAIT4BUTTN			;Wait for the player to press a button.
		ld a, d
		srl a
		srl a
		ld (hl), a
		ld bc, $0005
		add hl, bc
		ld de, $0007
		ex de, hl
		add hl, de
		ld bc, $0007
		ldir
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		ld l, a
		ld h, $00
		ld de,  _RAM_DEBC_INRAM_HUD_PORTRAITS		
		add hl, de
		ld a, (hl)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _RAM_DCF2_DEAD_CHARS ;$DCF2		;Hm, there is a RAM value for this, but the disassy made it hardcoded... also CHANGED
		add hl, de
		ld (hl), $00
		inc hl
		ld (hl), $00
		inc hl
		ld (hl), $00
		inc hl
		ld (hl), $00
		call _LABEL_717C_CYCLE_DEAD2ALIVECHARS	;Cycle the now alive char to the end of the HUD player array, aka show the resurrected last on the screen's Companion list.
		di
		call _LABEL_6F3B__UPD_HUD		;Show the updated HUD.
		ei
		jp  _LABEL_6053_WAIT4BUTTN		;Wait for a button press, and we are good.
	
_LABEL_5A83_HEALING:	
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)	;Read from this address. It's usually 09 at the start of the game.
		ld l, a
		ld h, $00		;So, it's $0009 this way.
		push de
		ld de,  _RAM_DEBC_INRAM_HUD_PORTRAITS
		add hl, de
		ld a, (hl)
		add a, a
		add a, a
		add a, a
		ld e, a
		add a, a
		add a, a
		add a, e
		ld e, a
		ld a, $00
		adc a, $00
		ld d, a
		ld hl, _RAM_DBB4_GOLDMOON_MAXHP	
		add hl, de
		pop de
		ret	;This looks easy, but I can't wrap my head around this at the moment, but it works.
	
_LABEL_5AA2_SELECT_PLAYER_CLERICAL:	;This works for any spell, where you have to select a Companion for healing\resurrection.
		xor a
		ld (_RAM_C7FF_FIRST_SELECTED_COMPANION), a
		ld de, $01A2
		ld ix, _RAM_C700_SELECTED_HERO_TILES
		di
		push de
		push ix
	;.dsb 3,$00
		call _LABEL_5EF1_DRAWRECT_OVERHUDPORTRAIT
		pop ix
		pop de
		ei
-:	
		push de
		push ix
		call _LABEL_5E64_MOVE_CHARSELECT_CURSOR
		ld b, $0C
		call _LABEL_5E58_DELAYBYB
		pop ix
		pop de
		ld a, (_RAM_DE94_GAMEPAD)
		and a
		jr z, -
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		di
		call _LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC
		ei
		ret

_LABEL_5AD5_MAGIUS_STF_NOPWR:
	ld de, _DATA_5B2E_MG_STF_NOPWR_TXT	;"The Staff of Magius has no power at present" text.
	jr +

_LABEL_5ADA_BL_STF_NOPWR:
	;Load the text, prepare the screen, then wait for the button press. When that happens, load back the level.
	ld de, _DATA_5B05_BL_STF_NOPWR_TXT	;"The Blue staff has no power at present" text.
+:
	push de
	ld a, (_RAM_DEE5_MENUORGAME)
	ld b, a
	and a
	jr nz, +
	push bc
	call _LABEL_5C0C_PREPSCRN_4_MSG
	pop bc
+:
	di
	push bc
	call _LABEL_6B42_DRW_SOLID_CLR_SCRN
	pop bc
	pop de
	ld hl, $3908
	push bc
	call _LABEL_35A6_RANDOM
	ei
	call _LABEL_62B1_SCOREMENU_CONT_LOOP
	pop bc
	ld a, b
	and a
	jp nz, _LABEL_6053_WAIT4BUTTN
	jp _LABEL_6A6C_AFTERMSG_SCR_LOADLVLBCK

; Data from 5B05 to 5B2D (41 bytes)
_DATA_5B05_BL_STF_NOPWR_TXT:	;'The blue staff has no power at present.'
.db $54 $68 $65 $20 $62 $6C $75 $65 $20 $73 $74 $61 $66 $66 $20 $68
.db $61 $73 $0D $0D $6E $6F $20 $70 $6F $77 $65 $72 $20 $61 $74 $0D
.db $0D $70 $72 $65 $73 $65 $6E $74 $FF

; Data from 5B2E to 5B9C (111 bytes)
_DATA_5B2E_MG_STF_NOPWR_TXT:	;'The Staff if Magius has no power at present.'
.db $54 $68 $65 $20 $73 $74 $61 $66 $66 $20 $6F $66 $20 $4D $61 $67
.db $69 $75 $73 $0D $0D $68 $61 $73 $20 $6E $6F $20 $70 $6F $77 $65
.db $72 $20 $61 $74 $0D $0D $70 $72 $65 $73 $65 $6E $74 $FF		;The first set of bytes are there for the text, the rest is the below code.

_LABEL_5B5C_DETECTMAGICSPELL:	
		ld a, $01
		ld c, $DF
		jr +
	
_LABEL_5B62_DETECTINVISIBLESPELL:	
		ld a, $02
		ld c, $9F
+:	
		call _LABEL_59DE_DEPLETE_GMSTAFF
		jp c, _LABEL_5ADA_BL_STF_NOPWR
		ld hl, _RAM_D600_ITEMNTRAP_TYPES
		ld b, $96
		ld a, (_RAM_DE52_ROOM_NR)
		ld e, a
-:	
		ld a, (hl)
		and a
		jr z, +
		inc hl
		ld a, (hl)
		cp e
		jr nz, ++
		inc hl
		inc hl
		inc hl
		ld a, (hl)
		and c
		ld (hl), a
		jr +++
	
+:	
		inc hl
++:	
		inc hl
		inc hl
		inc hl
+++:	
		inc hl
		djnz -
		ld a, (_RAM_DE52_ROOM_NR)
		cp $0F
		jp nz, _LABEL_6053_WAIT4BUTTN
		ld a, $01
		ld (_RAM_DE71_), a
		jp _LABEL_6053_WAIT4BUTTN
	

_LABEL_5B9D_ALARMBELLS_TXT_SCRN:		;This draws the "You hear Alarm Bells in the Distance" screen.
	ld de, _DATA_AD32_ALARMBELLS_TXT
	jr +

_LABEL_5BA2_TASSLEHOFF_TRAP_SCRN:
	ld de, _DATA_ACD2_TASSLEHOFF_TRAP_TXT	;Tasslehoff's trap removal text.
	jr +

_LABEL_5BA7_RIVERWIND_PROT_SCRN:	;This should be the screen that tells you Riverwind will step forward to protect Goldmoon.
	ld de, _DATA_ACFC_RIVERWIND_PROT_TXT	;This is the text for it.
+:						;We use this code a few times, so just load the address, and then show the screen, and wait for the player to press a button, so the game can proceed.
	push de			;Save the text address.
	call _LABEL_5C0C_PREPSCRN_4_MSG	;This brings the screen to a known state most of the time.
	call _LABEL_6B42_DRW_SOLID_CLR_SCRN	;These are used in most screens that the game shows you. The above call includes this one already, not sure what other purpose it might serve. 
	pop de
	ld hl, $3908
_LABEL_5BB5_WATERFALL_NOFXCONT:
	call _LABEL_35A6_RANDOM
---:
	call _LABEL_62B1_SCOREMENU_CONT_LOOP
	jp _LABEL_6A6C_AFTERMSG_SCR_LOADLVLBCK

_LABEL_5BBE_CHECKWTRFALL:	;This seems to check the waterfall, and apply healing when necessary.
	call _LABEL_5C0C_PREPSCRN_4_MSG
	call _LABEL_6B42_DRW_SOLID_CLR_SCRN
	ld de, _DATA_AC9C_WATERFALL_NOFX		;"The waterfall has no effect on your party."
	ld a, (_RAM_DE55_WATERFALL)
	and $02
	jr nz, ++					;This here will decide if you get healed up or not.
	ld de, _DATA_AC6C_WATERFALL_FX			;"The waterfall cures all your wounds."
	ld hl, $3908					;Set screen position in the VRAM tilemap.
	call _LABEL_35A6_RANDOM
--:
	ld hl, _RAM_DBB4_GOLDMOON_MAXHP				;This is not written to, anywhere in the code at all.
	ld b, $08					;How many Companions we have.
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
	add a, e			;This is the health refill. If this is commented out, the game will softlock.
	ld l, a
	ld a, h
	adc a, $00
	ld h, a
	djnz -
	ld a, d
	and a
	jr z, ---
	call _LABEL_6F3B__UPD_HUD	;This all seems to be the health refill part.
	ld b, $04
	call _LABEL_5E58_DELAYBYB
	jr --

++:		;We go here, if the party will not get their refill. Rude.
	ld hl, $3908	;Set up the same screen address.
	jr _LABEL_5BB5_WATERFALL_NOFXCONT

_LABEL_5C07_:
	call _LABEL_5C0C_PREPSCRN_4_MSG
	jr _LABEL_5C65_ENTER_INGAME_MENU

_LABEL_5C0C_PREPSCRN_4_MSG:
	ld a, (_RAM_DE34_SCRN_SCROLL)
	and $F0	;1111 1111 0000 0000	;FF
	ld (_RAM_DE34_SCRN_SCROLL), a		;THIS SEEMS TO DO SOME RESET FOR THE SCROLLING. CHANGING THIS RAM VALUE WILL SCROLL THE SCREEN IN A GIVEN DIRECTION.
	;IT DOES NOT DO MUCH, COMMENTING THIS OUT WILL NOT CHANGE ANYTHING NOTICEABLE.
	ld a, $FF
	ld (_RAM_DEE5_MENUORGAME), a	;THIS VARIABLE IS STILL NOT CLEAR WHAT DOES IT DO.
	ld a, (_RAM_DE9F_TIMER)
	ld (_RAM_DEA0_TIMER_TEMP), a	;SAVE THE MAIN TIMER'S VALUE.


	xor a
	ld (_RAM_DE9F_TIMER), a	;RESET THIS TIMER. IF THIS IS COMMENTED OUT, THE SCREEN WILL GLITCH OUT.
	ld (_RAM_DE9E_), a	;DOES NOTHING YET.
	call _LABEL_59B_MAIN	;IT EVEN WORKS WITHOUT THIS ONE.
	call _LABEL_63B_CLEAR_SAT	;EVEN THIS ONE CAN YOU COMMENT OUT.
	call _LABEL_BB7_CLR_SCREEN	;THIS DOES SOME TILEMAP THINGS, I'LL CHECK THIS NOW.
	ld hl, $2960
	di
	call _LABEL_4BB_VDP_RAM_WRITESETUP
	ei
	ld bc, $2000 | Port_VDPData
-:;CHANGED!
	xor a
	out (c), a
	djnz -
	call _LABEL_6B42_DRW_SOLID_CLR_SCRN
	ld hl, (_RAM_DE62_)
	ld (_RAM_DE64_), hl
	xor a
	ld (_RAM_C04E_ACTIVE_MENUITEM),a;(_RAM_C04F_LAST_ENTERED_MENU), a
	ld a, $1F
	ld (_RAM_FFFF_), a
	ld b, $60
	ld hl, $2180
	ld de, _DATA_7C000_CHAR_BIO_TEXT
	ld c, $17
	call _LABEL_6AAE_MNU_DELSCRN_TXTCOLOR
	ld hl, $010C
	ld (_RAM_DE62_), hl
	ret

_LABEL_5C65_ENTER_INGAME_MENU:	;This is the entry point for the ingame menu, at least the draw part for now.
	ld hl, $3888	;This is a screen coordinate.
	ld de, _DATA_A871_MENUTXT
	call _LABEL_35A6_RANDOM
	
	ld hl, $3888	;Why is this loaded two times? You do need it though. Strange.
	ld de, $016C
	ld b, $0B
	ld c, $97
	ld ix, _RAM_C000_RAM_START	;Loads tilemap data here.
	call _LABEL_6AE6_MENU_TXTDRAW		;Draw the text.
	ld a, (_RAM_C04E_ACTIVE_MENUITEM);(_RAM_C04F_LAST_ENTERED_MENU)		;Menu position we last entered.
	ld (_RAM_C040_SELECTED_MENUITEMINRAM_PAL), a	;Copy it to the active menupoint ram value, so the game remembers where it came from.
	ld iy, _DATA_6CAD_PALETTES	;We do some palette loading as well, i'm not sure how many bytes in that array is actially used. There are some text near it, the name of the Companions, but I can't be sure yet.
_LABEL_5C89_:		;We use some fellthrough stuff.
	ld a, (_RAM_C040_SELECTED_MENUITEMINRAM_PAL)
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
	call _LABEL_6AE6_MENU_TXTDRAW	;I may be say this is getting the menu item number, and draws the white txt as well. The 'MAIN MENU' txt is also recolored to yellow. I don't know if this is intended.
	pop iy
	pop bc
_LABEL_5CB2_PROCESSMNU_SELECT:
	push bc
	push iy
	call _LABEL_59B_MAIN
	call _LABEL_552_CHECK_AB_BUTTONS	;We have drawn the menu, and now running the main loop, and will wait for the player to push a button.
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
-:		;We go back a menu item.
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
	ld a, (_RAM_DE90_GAMEPAD)
	bit 3, a	;Test if bit 3 is set. This is for the UP Button.
	jr z, +		;Jump if it is.
	ld a, (_RAM_C040_SELECTED_MENUITEMINRAM_PAL)
	and a
	jp z, +
	dec a
	ld (_RAM_C040_SELECTED_MENUITEMINRAM_PAL), a
	inc a
	jr ++

+:
	ld a, (_RAM_DE90_GAMEPAD)
	bit 2, a			;This is the DOWN button.
	jp z, _LABEL_5CB2_PROCESSMNU_SELECT		;Jump if we've pushed it, and the menu selector has to go where we wanted to.
	ld a, (_RAM_C040_SELECTED_MENUITEMINRAM_PAL)
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
	jp z, _LABEL_5CB2_PROCESSMNU_SELECT	;We've pressed up, so we process the above, get the previous menu item, and go to it.
	ld a, d
	ld (_RAM_C040_SELECTED_MENUITEMINRAM_PAL), a	;Moving up and down in the menu executes this part.
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
	call _LABEL_4BB_VDP_RAM_WRITESETUP
	ei
	ld hl, _RAM_C000_RAM_START
	ld b, $2A
-:
	ld a, (hl)
	inc hl
	out (Port_VDPData), a
	djnz -
	ld b, $04
	call _LABEL_5E58_DELAYBYB
	jp _LABEL_5C89_


_LABEL_5D43_HERO_SELECT_MENU:	
		xor a
		ld (_RAM_C04F_LAST_ENTERED_MENU), a	;Okay, clear the last entered menu item.
		call _LABEL_6046_WAIT4GAMEPAD		;Wait for a button press.
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN	;Draw a solid color screen.
		ld hl, $38C8				;This is a screen position in VRAM, we'll draw the text below there.
		ld de, _DATA_A74A_COMPANION_STATS_TEXT	;Grab the text address.
		call _LABEL_35A6_RANDOM			;Randomize things. I should look at this again probably.
		xor a
		ld (_RAM_C7FF_FIRST_SELECTED_COMPANION), a	;This seems to be the hero selection on said screen. Not the hero the number represents, but the position on the list.
		ld ix, _RAM_C700_SELECTED_HERO_TILES			;This is a 17 bytes long array of tiles, we'll get the current hero's tiles.
		ld de, $01A2
		push de
		push ix
		di
		call _LABEL_5EF1_DRAWRECT_OVERHUDPORTRAIT		;Draw a rectangle over it.
		ei
		pop ix
		pop de
		call _LABEL_6B6D_DRAW_HERODETAILS			;This draws the current hero's details.
_LABEL_5D6F_SELECT_HERO_LOOP:	
		call _LABEL_5E64_MOVE_CHARSELECT_CURSOR
		ld a, (_RAM_DE90_GAMEPAD)
		bit 5, a
		jr z, +
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		di
		call _LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC
		ei
		jp _LABEL_6053_WAIT4BUTTN
	
+:	
		call _LABEL_6B6D_DRAW_HERODETAILS			;Draws the next selected hero's details.
		ld b, $0C						;Sooo, we tell the program how many times the next will loop. It has just a main looper inside.
		call _LABEL_5E58_DELAYBYB					;Well, this little thing here actually inserts some wait states by looping with main. Without this, the hero selection would be a little too fast. If this is here, we have some delay, and time to grasp the speed of selecting a leading hero. I've not seen a delay this way, but works well.
		ld a, (_RAM_DE94_GAMEPAD)
		and a
		jr z, _LABEL_5D6F_SELECT_HERO_LOOP					;Loop back, if we have not pressed any gamepad buttons.
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)		;Get the first selection.
		ld l, a							;Move it to L.
		ld h, $00						;So, the format will be $00xx<--firstly selected companion.
		ld bc, _RAM_DEBC_INRAM_HUD_PORTRAITS			;Get the portrait array's first element.
		add hl, bc						;Get the final address.
		ld a, (hl)						;Get who's at that slot.
		call _LABEL_6573_CALC_DMG
		ld bc, _RAM_DBB5_GOLDMOON_HP				;I don't understand why Goldmoon's HP is involved...
		add hl, bc
		ld a, (hl)
		and a
		jr z, _LABEL_5D6F_SELECT_HERO_LOOP			;I suspect, we have to loop until we get to Goldmoon? She's got the number 0.
									;The rest seems to be fairly straightforward, so I won't comment it on every line.
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		ld (_RAM_C7FE_HEROSELECT_VAR), a
		and a
		jr nz, +
		ld a, (_RAM_D90A_HERO_ACTION)
		cp $0F
		jr nz, +
		ld a, (_RAM_DE54_HOLD_PLYR)
		and a
		jr z, _LABEL_5D6F_SELECT_HERO_LOOP
+:	
		xor a
		ld (_RAM_C7FF_FIRST_SELECTED_COMPANION), a
		ld ix, _RAM_C720_NEW_HERO_SELECTIONTILES
		ld de, $01AC
		push de
		push ix
		di
		call _LABEL_5EF1_DRAWRECT_OVERHUDPORTRAIT
		ei
		pop ix
		pop de
_LABEL_5DD4_OLDHERO_SELECTLOOP:	
		call _LABEL_5E64_MOVE_CHARSELECT_CURSOR
		ld a, (_RAM_DE90_GAMEPAD)
		bit 5, a
		jr z, +
		ld a, (_RAM_C7FE_HEROSELECT_VAR)
		ld b, a
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		cp b
		jp z, _LABEL_5E49_FIXOLD_SELECTED
		di
		call _LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC
		ei
		jp _LABEL_5E49_FIXOLD_SELECTED
	
+:	
		ld b, $0C
		call _LABEL_5E58_DELAYBYB
		ld a, (_RAM_DE94_GAMEPAD)
		and a
		jr z, _LABEL_5DD4_OLDHERO_SELECTLOOP
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		ld b, a
		ld a, (_RAM_C7FE_HEROSELECT_VAR)
		cp b
		jr z, _LABEL_5E49_FIXOLD_SELECTED
		ld l, b
		ld h, $00
		ld bc, _RAM_DEBC_INRAM_HUD_PORTRAITS
		add hl, bc
		ld a, (hl)
		call _LABEL_6573_CALC_DMG
		ld bc, _RAM_DBB5_GOLDMOON_HP
		add hl, bc
		ld a, (hl)
		and a
		jr z, _LABEL_5DD4_OLDHERO_SELECTLOOP
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		and a
		jr nz, +
		ld a, (_RAM_D90A_HERO_ACTION)
		cp $0F
		jr nz, +
		ld a, (_RAM_DE54_HOLD_PLYR)
		and a
		jr z, _LABEL_5DD4_OLDHERO_SELECTLOOP
+:	
		ld a, (_RAM_C7FE_HEROSELECT_VAR)
		ld hl, _RAM_DEBC_INRAM_HUD_PORTRAITS
		ld c, a
		ld b, $00
		ld e, l
		ld d, h
		add hl, bc
		ex de, hl
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		ld c, a
		add hl, bc
		ld c, (hl)
		ld a, (de)
		ld (hl), a
		ld a, c
		ld (de), a
		call _LABEL_6F3B__UPD_HUD
		jp _LABEL_6053_WAIT4BUTTN
	
_LABEL_5E49_FIXOLD_SELECTED:	;Here, we get the older not selected heroes, and fix the picture it used.
		ld a, (_RAM_C7FE_HEROSELECT_VAR)
		ld ix, _RAM_C700_SELECTED_HERO_TILES
		di
		call _LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC
		ei
		jp _LABEL_6053_WAIT4BUTTN
	

_LABEL_5E58_DELAYBYB:
	push bc
	push de
	push hl
	call _LABEL_59B_MAIN
	pop hl
	pop de
	pop bc
	djnz _LABEL_5E58_DELAYBYB
	ret
_LABEL_5E64_MOVE_CHARSELECT_CURSOR:	
		push de
		call _LABEL_59B_MAIN
		call _LABEL_552_CHECK_AB_BUTTONS
		pop de
		ld a, (_RAM_DE90_GAMEPAD)
		bit 5, a		;Check for Button 2 on the first gamepad.
		ret nz			;Return if it was pressed. Button 2 is used to cancel actions.
		and $1F	;0001 1111
		jp z, _LABEL_5E64_MOVE_CHARSELECT_CURSOR	;Loop, if no button was pressed at all.
		bit 4, a
		ret nz			;Return if button 1 is pressed. This all seems to be a bit strange to me..
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		di
		push ix
		push de
		call _LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC
		pop de
		pop ix
		ei
		ld a, (_RAM_DE90_GAMEPAD)
		ld b, a
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		bit 3, b
		jr z, +			;Check for the right button.
		sub $04
+:	
		bit 2, b
		jr z, +			;Check for the left button.
		add a, $04
+:	
		bit 1, b
		jr z, +			;Check for the down button.
		ld c, a
		and $04
		ld l, a
		ld a, c
		dec a
		and $03
		or l
+:	
		bit 0, b
		jr z, +			;Check for the up button.
		ld c, a
		and $04
		ld l, a
		ld a, c
		inc a
		and $03
		or l
+:	
		and $07
		ld (_RAM_C7FF_FIRST_SELECTED_COMPANION), a
		push de
		push ix
		di
		call _LABEL_5EF1_DRAWRECT_OVERHUDPORTRAIT	;We have the coordinated and everything, so let's move the selecting rectangle.
		ei
		pop ix
		pop de
		ret
	
_LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC:		;This makes sure, that the older, not selected portraits are drawn properly. If this is commented out, the last selected hero will be drawn to the next box, still selected. It is a bit difficult to name these properly, and still know what the function is about.
		ld hl, _DATA_706B_HUD_PORTRAITS
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
		inc hl
		inc hl
		ld de, $0040
		call +
		call +
+:	
		di
		call _LABEL_4BB_VDP_RAM_WRITESETUP
		ei
		ld b, $06
-:	
		ld a, (ix+0)
		out (Port_VDPData), a
		inc ix
		djnz -
		add hl, de
		ret
	
_LABEL_5EF1_DRAWRECT_OVERHUDPORTRAIT:	;Gets the player portraits, and combines them with that white rectangle, that is used for player selection. The original portraits are also in VRAM.
		ld hl, _DATA_706B_HUD_PORTRAITS
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
		inc hl
		inc hl
		ld b, $03
		ld iy,_DATA_5F98_RECTANGLE1BITTILE	;This is the 1-bit tile for the rectangle that would be drawn around the player portraits when you select it. Like a cursor.
-:	
		push hl
		call +
		pop hl
		ld a, l
		add a, $40
		ld l, a
		ld a, h
		adc a, $00
		ld h, a
		djnz -
		ret
	
+:	
		call +
		call +
+:	
		push bc
		push de
		push hl
		call _LABEL_4BD_VDP_OUTSETUP
		in a, (Port_VDPData)
		ld (ix+0), a
		in a, (Port_VDPData)
		ld (ix+1), a
		di
		call _LABEL_4BB_VDP_RAM_WRITESETUP
		ei
		ld a, e
		out (Port_VDPData), a
		ld a, (ix+1)
		and $FE
		or d
		out (Port_VDPData), a
		ld l, (ix+0)
		ld a, (ix+1)
		and $01
		ld h, a
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		call _LABEL_4BD_VDP_OUTSETUP
		inc ix
		inc ix
		ld b, $20
		ld hl, _RAM_C800_
-:	
		in a, (Port_VDPData)
		ld (hl), a
		inc hl
		djnz -
		ex de, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		di
		call _LABEL_4BB_VDP_RAM_WRITESETUP
		ei
		ld de, _RAM_C800_
		ld b, $08
-:	
		ld a, (de)
		or (iy+0)
		inc de
		out (Port_VDPData), a
		ld a, (de)
		or (iy+0)
		inc de
		out (Port_VDPData), a
		ld a, (de)
		ld c, a
		xor (iy+0)
		and c
		inc de
		out (Port_VDPData), a
		ld a, (de)
		ld c, a
		xor (iy+0)
		and c
		inc de
		out (Port_VDPData), a
		inc iy
		djnz -
		pop hl
		pop de
		pop bc
		inc de
		inc hl
		inc hl
		ret
	
; Data from 5F98 to 5FDF (72 bytes)	
_DATA_5F98_RECTANGLE1BITTILE:	
;The below is a piece of graphics, the white rectangle that is shown around a selected hero.
	.db $FF $C0 $C0 $C0 $C0 $C0 $C0 $C0 $FF $00 $00 $00 $00 $00 $00 $00
	.db $FF $03 $03 $03 $03 $03 $03 $03 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0
	.db $00 $00 $00 $00 $00 $00 $00 $00 $03 $03 $03 $03 $03 $03 $03 $03
	.db $C0 $C0 $C0 $C0 $C0 $C0 $C0 $FF $00 $00 $00 $00 $00 $00 $00 $FF
	.db $03 $03 $03 $03 $03 $03 $03 $FF
	
; 1st entry of Jump Table from 6CD5 (indexed by  _RAM_C040_SELECTED_MENUITEMINRAM_PAL)	
_LABEL_5FE0_SPELLIST_JUMPS:	;Based on what we've selected, we'll go to the appropriate spell's code. This is used for both the Magical and Clerical stuff too.
		call _LABEL_6046_WAIT4GAMEPAD		;Get the gamepad's values.
		ld a, (_RAM_C04E_ACTIVE_MENUITEM)
		and a
		jr z, ++
		dec a
		jr z, +
		ld a, ( _RAM_C040_SELECTED_MENUITEMINRAM_PAL)
		and a
		jp z, _LABEL_59F5_CURE_LIGHT_WOUNDS
		dec a
		jp z, _LABEL_58CE_FINDTRAPS
		dec a
		jp z, _LABEL_59EE_CURE_CRITICAL_WOUNDS
		jp _LABEL_5937_DRAGON_BREATH_SPELL
	
+:	
		ld a, ( _RAM_C040_SELECTED_MENUITEMINRAM_PAL)
		and a
		jp z, _LABEL_59F5_CURE_LIGHT_WOUNDS
		dec a
		jp z, _LABEL_5926_PROTECTION_FROM_EVIL
		dec a
		jp z, _LABEL_58CE_FINDTRAPS
		dec a
		jp z, _LABEL_59A9_HOLDPERSONSPELL
		dec a
		jp z, _LABEL_59A3_SPIRITHAMMERSPELL
		dec a
		jp z, _LABEL_5920_PRAYER_SPELL
		dec a
		jp z, _LABEL_59EE_CURE_CRITICAL_WOUNDS
		dec a
		jp z, _LABEL_5A2B_RESURRECT
		jp _LABEL_5937_DRAGON_BREATH_SPELL
	
++:	
		ld a, ( _RAM_C040_SELECTED_MENUITEMINRAM_PAL)
		and a
		jp z, _LABEL_5947_CHARMSPELL
		dec a
		jp z, _LABEL_5959_SLEEPSPELL
		dec a
		jp z, _LABEL_595F_MAGICMISSILESPELL
		dec a
		jp z, _LABEL_5953_WEBSPELL
		dec a
		jp z, _LABEL_5B5C_DETECTMAGICSPELL
		dec a
		jp z, _LABEL_5B62_DETECTINVISIBLESPELL
		dec a
		jp z, _LABEL_58A1_FINALSTRIKE
		jp _LABEL_594D_BURNINGHANDSSPELL
		;Finally, all spells are mapped now. Sadly, nothing hidden.
_LABEL_6046_WAIT4GAMEPAD:
-:
	call _LABEL_59B_MAIN	;Run a nice main for a change.
	call _LABEL_552_CHECK_AB_BUTTONS	;Stop for buttons, and draw a blank BG.
	ld a, (_RAM_DE94_GAMEPAD)
	and a
	ret z	;If a button is pressed, return.
	jr -	;Otherwise we loop around.

_LABEL_6053_WAIT4BUTTN:	;This is easy to guess. We jump right in a small routine that waits until we press 1 or 2.
	call -
	call _LABEL_6B42_DRW_SOLID_CLR_SCRN	;Draw that BG, so we can plot text on it later.
	jp _LABEL_5C65_ENTER_INGAME_MENU

_LABEL_605C_MAGICUSERSPELLMENU:	
		ld de, _DATA_AB10_MAGIC_USER_MENUTEXT
		ld b, $11
		ld iy, _DATA_6CD5_ - 2
		ld l, $04
		ld h, $00
		ld a, $01
		ld (_RAM_C04F_LAST_ENTERED_MENU), a
		dec a
		ld (_RAM_C04E_ACTIVE_MENUITEM), a
		ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS
-:	
		ld a, (ix+0)
		cp $03
		jr z, +
		inc ix
		inc h
		dec l
		jr nz, -
--:	
		ld de, _DATA_AA5F_RAISTLIN_NOT_4_TXT
-:	
		ld b, $11
		ld iy, _DATA_6CF5_ - 2
		jp _LABEL_6A41_ENTERMENU
	
+:	
		call _LABEL_6573_CALC_DMG
		push de
		ld de, _RAM_DBB5_GOLDMOON_HP
		add hl, de
		pop de
		ld a, (hl)
		and a
		jr z, --
		push de
		ld de, $FFFC
		add hl, de
		pop de
		ld a, (hl)
		cp $02
		jp nz, +
		jp _LABEL_6A41_ENTERMENU
	
+:	
		ld de, _DATA_AA09_MAGIC_USR_TXT
		jr -
	
; 5th entry of Jump Table from 6CAF (indexed by  _RAM_C040_SELECTED_MENUITEMINRAM_PAL)	
_LABEL_60B0_:	
		ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS
		ld e, $04
		ld d, $00
		ld a, $02
		ld (_RAM_C04F_LAST_ENTERED_MENU), a
-:	
		ld a, (ix+0)
		call _LABEL_6573_CALC_DMG
		ld bc, _RAM_DBB1_GMSTAFF_IN4CHARS
		add hl, bc
		ld a, (hl)
		cp $01
		jr z, +
		inc ix
		inc d
		dec e
		jr nz, -
-:	
		ld de, _DATA_AD5B_CLERIC_SPELLS_TXT
		ld b, $15
		ld iy, $6CF3
		jp _LABEL_6A41_ENTERMENU
	
+:	
		ld bc, $0004
		add hl, bc
		ld a, (hl)
		and a
		jr z, -
		ld a, (ix+0)
		ld de, _DATA_ADBD_CLERIC_SPLS_TXT
		ld b, $15
		ld iy, $6D0F
		and a
		ld a, $01
		jp z, +
		inc a
		ld de, _DATA_AE69_CLERIC_SPLS_TXT2
		ld iy, $6CF9
+:	
		ld (_RAM_C04E_ACTIVE_MENUITEM), a
		jp _LABEL_6A41_ENTERMENU
	
_LABEL_6106_:	
		ld hl, _DATA_678C_DROPMENU_TXT
		ld de, $6678
		ld a, $06
		ld (_RAM_C04F_LAST_ENTERED_MENU), a
		jp +
	
; 7th entry of Jump Table from 6CAF (indexed by  _RAM_C040_SELECTED_MENUITEMINRAM_PAL)	
_LABEL_6114_:	
		ld hl, _DATA_67A8_USEMENU_TXT
		ld de, $6467
		ld a, $03
		ld (_RAM_C04F_LAST_ENTERED_MENU), a
		jp +
	
_LABEL_6122_:	;TODO
		ld hl, _DATA_679A_GIVEMENU_TXT
		ld de, $66C2
		ld a, $05
		ld (_RAM_C04F_LAST_ENTERED_MENU), a
		jp +
	
+:	
		push de
		push hl
		call _LABEL_6046_WAIT4GAMEPAD
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		pop hl
		ld iy, _RAM_C100_LEVEL_TILEMAP1
		ld de, $0000
		ld ix, _RAM_C300_LEVEL_TILEMAP3
		ld bc, $0000
		call _LABEL_6A1D_MENU_PART_LOAD
		ld ix, _RAM_C300_LEVEL_TILEMAP3
		ld de, $3888
		push de
		call _LABEL_6B60_ITEM_MENUS_ENTRY
		exx
		ld c, $00
		ld b, $08
--:	
		exx
		ld a, (hl)
		and a
		jr z, +
		pop de
		pop bc
		push bc
		ld a, e
		add a, $40
		ld e, a
		ld a, d
		adc a, $00
		ld d, a
		push de
		push hl
		push bc
		ld c, (hl)
		push hl
		exx
		pop de
		ld h, $C3
		ld a, c
		add a, a
		or $80
		ld l, a
		ld (hl), e
		inc hl
		ld (hl), d
		exx
		ld hl, _DATA_6809_ITEM_NAMES
-:	
		ld a, (hl)
		inc hl
		inc a
		jr nz, -
		dec c
		jr nz, -
		pop bc
		call _LABEL_6A1D_MENU_PART_LOAD
		pop hl
		exx
		inc c
		exx
+:	
		inc hl
		inc hl
		exx
		djnz --
		pop de
		pop hl
		ld a, c
		and a
		jr nz, +
		ld ix,_RAM_C300_LEVEL_TILEMAP3; _RAM_C200_LEVEL_TILEMAP2
		ld hl, _DATA_67B5_NO_ITEM_AVLBL_TXT
		ld bc, $0000
		ld de, $0000
		call _LABEL_6A1D_MENU_PART_LOAD
		ld ix, _RAM_C300_LEVEL_TILEMAP3
		ld de, $3A08
+:	
		ld bc, $6053
		ld hl, $0040
		add hl, de
		ex de, hl
		ld hl, _DATA_67DB_EXITMENU_TXT
		call _LABEL_6A1D_MENU_PART_LOAD
		ld de, _RAM_C100_LEVEL_TILEMAP1
		ld b, $0C
		ld iy, $C300
		jp _LABEL_6A41_ENTERMENU
	
_LABEL_61CB_:	
		call _LABEL_6046_WAIT4GAMEPAD
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		ld hl, $3848
		ld de, _DATA_A7B5_SCORETXT
		call _LABEL_35A6_RANDOM
		ei
		ld hl, $3888
		ld de, $016C
		ld b, $0B
		ld c, $97
		ld ix, _RAM_C000_RAM_START
		call _LABEL_6AE6_MENU_TXTDRAW
		call _LABEL_61FA_DRAW_SCORESCREEN
		ld a, $07
		ld (_RAM_C04F_LAST_ENTERED_MENU), a
		call _LABEL_62B1_SCOREMENU_CONT_LOOP
		jp _LABEL_6053_WAIT4BUTTN
	

_LABEL_61FA_DRAW_SCORESCREEN:	;THIS IS THE CODE THAT DRAWS THE SCORE\GAME OVER\WIN SCREEN. I GUESS THERE IS ANOTHER PART WHERE THE TITLE PART(THE SCORE, GAME OVER OF WIN TEXT IS CHANGED, SINCE THE ENDING IS BASICALLY JUST THIS SCREEN WITH A DIFFERENT HEADER.)
	ld b, $0A	;THERE ARE TEN MONSTER TYPES. CHANGING THIS NUMBER WILL LIMIT HOW MANY NUMBERS ARE DRAWN.
	ld ix, _RAM_DE7A_KILLCOUNT_ARRAY	;GET THE ARRAY.
	ld iy, _DATA_6E7F_SCORE_PALETTE		;THIS IS THE PALETTE FOR THE SCREEN.
-:
	ld l, (ix+0)
	ld h, (ix+1)
	ld c, $00
	ld de, _RAM_D100_IN_RAM_SPRITETABLE	;THIS IS A TILEMAP IN RAM, THE FORMAT MIGHT BE A LITTLE DIFFERENT, DUNNO.
	push bc
	call _LABEL_6E09_SCORESCRN_PRINT	;THIS PRINTS THE NUMBER OF KILLS ON THE SCORE SCREEN.
	ld de,_RAM_D103_
	ld l, (iy+0)
	ld h, (iy+1)
	call _LABEL_35A6_RANDOM	;HM, SOME RANDOM NUMBER GENERATING HERE, COMMENTING THIS OUT DOES NOT DO MANY THINGS HERE OF COURSE.
	pop bc
	inc ix
	inc ix
	inc iy
	inc iy
	djnz -	;LOOP THE AMOUNT OF B. THIS WILL PRINT THE KILLCOUNT ON THE SCREEN AFTER THE MONSTER TYPES.
	ld hl, (_RAM_DE74_PT_FOR_CMBT)	;THIS IS THE POINTS FOR COMBAT VALUE.
	ld a, (_RAM_DE76_CR_DMGLINK)	;HM, WHAT DOES THIS HAVE TO DO WITH THIS? CHANGING THIS NUMBER WILL MESS THE SCREEN UP REALLY BAD.
	ld c, a
	ld de, _RAM_D100_IN_RAM_SPRITETABLE
	call _LABEL_6E09_SCORESCRN_PRINT	;THIS WILL PRINT THE 'POINTS FOR COMBAT' POINTS.
	ld de, _RAM_D101_
	ld hl, $3B72				;A POINT ON THE TILEMAP, FOUR TILES BEFORE THE 'POINTS FOR COMBAT ' SCORE NUMBER, SO THE SCORE NUMBER IS FOUR CHARS LONG.
	call _LABEL_35A6_RANDOM
	ld de, $0000
	ld (_RAM_DE77_PT_FOR_ITEMS), de		;POINTS FOR ITEMS MEMORY LOCATION.
	xor a
	ld (_RAM_DE79_KILLCNT_ARRAY), a
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
	ld hl, _DATA_6E93_SCR_SCRN_DATA
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
	jr Nc, +
	ld a, (_RAM_DE79_KILLCNT_ARRAY)	;THIS IS ALSO THE KILLCOUNT ARRAY -1 BYTE.
	INC a	
	ld (_RAM_DE79_KILLCNT_ARRAY), a
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
	ld a, (_RAM_DE56_WINPOINT_ADD)
	and a
	jr z, +
	ld hl, $2710
	add hl, de
	ex de, hl
+:
	ld (_RAM_DE77_PT_FOR_ITEMS), de
	ld hl, (_RAM_DE77_PT_FOR_ITEMS)
	ld a, (_RAM_DE79_KILLCNT_ARRAY)
	ld c, a
	ld de, _RAM_D100_IN_RAM_SPRITETABLE
	call _LABEL_6E09_SCORESCRN_PRINT	;THIS PRINT THE SCORE AT THE 'POINTS FOR ITEMS' LINE ON THE SCORE SCREEN.
	ld de, _RAM_D101_
	ld hl, $3BB2
	call _LABEL_35A6_RANDOM
	ret

_LABEL_62B1_SCOREMENU_CONT_LOOP:	;THIS LOOKS LIKE RUNNING ONE MAIN, THEN CHECKING THE AB BUTTONS, AND CHECKING FOR HOLDING THE BUTTONS. THIS IS USED AT THE GAME OVER AND SCORE SCREENS.
	call _LABEL_59B_MAIN	;THIS WORKS WITHOUT THIS.
	call _LABEL_552_CHECK_AB_BUTTONS	;CHECK IF WE HAVE PRESSED THE A OR B BUTTON.
	ld a, (_RAM_DE94_GAMEPAD)
	ld b, a
	ld a, (_RAM_DE95_GAMEPAD)
	or b
	jr z, _LABEL_62B1_SCOREMENU_CONT_LOOP			;IF WE HAVE NOT PRESSED EITHER, THEN LOOP BACK.
	ret

; Data from 62C2 to 6572 (689 bytes)	;This is not yet used even in the newer source file.
;.db $C3 $C2 $62 $CD $46 $60 $CD $42 $6B $21 $7E $67 $FD $21 $00 $C1
;.db $11 $00 $00 $DD $21 $00 $C3 $01 $00 $00 $3E $04 $32 $4F $C0 $CD
;.db $1D $6A $11 $C8 $38 $DD $21 $00 $C3 $D5 $DD $E5 $06 $96 $0E $00
;.db $2A $00 $D9 $11 $08 $00 $A7 $ED $52 $5D $54 $DD $21 $00 $D6 $30
;.db $03 $11 $01 $00 $CB $3A $CB $1B $CB $3A $CB $1B $CB $3A $CB $1B
;.db $CB $3A $CB $1B $3A $52 $DE $DD $BE $01 $20 $5C $DD $7E $04 $E6
;.db $E0 $20 $55 $DD $7E $00 $A7 $28 $4F $FE $40 $30 $4B $DD $7E $02
;.db $93 $38 $45 $FE $03 $30 $41 $3E $96 $90 $08 $79 $D9 $DD $E5 $D1
;.db $26 $C4 $6F $08 $77 $62 $6B $DD $7E $00 $DD $E1 $D1 $D5 $E5 $4F
;.db $21 $09 $68 $7E $23 $3C $20 $FB $0D $20 $F8 $01 $B6 $63 $CD $1D
;.db $6A $E1 $D1 $7B $C6 $40 $5F $3E $00 $8A $57 $D5 $DD $E5 $E5 $DD
;.db $E1 $D9 $0C $79 $FE $0B $28 $09 $D9 $11 $05 $00 $DD $19 $D9 $10
;.db $93 $DD $E1 $D1 $79 $A7 $20 $17 $DD $21 $00 $C3 $21 $B5 $67 $01
;.db $00 $00 $11 $00 $00 $CD $1D $6A $DD $21 $00 $C3 $11 $48 $3A $01
;.db $53 $60 $21 $DB $67 $CD $1D $6A $11 $00 $C1 $06 $0C $FD $21 $00
;.db $C3 $C3 $41 $6A $CD $60 $6B $06 $08 $7E $A7 $28 $10 $23 $23 $10
;.db $F8 $11 $81 $A9 $06 $11 $FD $21 $F3 $6C $C3 $41 $6A $E5 $3A $40
;.db $C0 $26 $C4 $6F $7E $11 $00 $D6 $6F $26 $00 $4F $44 $29 $29 $09
;.db $19 $D1 $7E $FE $37 $CA $46 $64 $FE $02 $20 $1C $3A $BC $DE $FE
;.db $03 $28 $68 $3A $BC $DE $CD $73 $65 $11 $B5 $DB $19 $7E $11 $83
;.db $AB $3D $CA $32 $64 $77 $18 $28 $FE $01 $20 $3F $3A $BC $DE $A7
;.db $28 $39 $FE $06 $28 $35 $FE $01 $28 $31 $FE $02 $28 $2D $3A $BC
;.db $DE $CD $73 $65 $11 $B5 $DB $19 $7E $11 $BD $AB $3D $28 $01 $77
;.db $D5 $CD $42 $6B $D1 $21 $08 $39 $CD $A6 $35 $CD $3B $6F $CD $B1
;.db $62 $C3 $53 $60 $ED $7B $27 $DE $C3 $06 $09 $7E $36 $00 $12 $13
;.db $01 $04 $00 $09 $7E $E6 $1F $12 $C3 $53 $60 $36 $00 $3E $02 $32
;.db $29 $DC $C3 $53 $60 $3A $40 $C0 $87 $F6 $80 $26 $C3 $6F $7E $23
;.db $66 $6F $4E $79 $FE $02 $CA $25 $66 $FE $03 $CA $CD $65 $FE $28
;.db $CA $CD $65 $FE $0B $CA $FD $65 $FE $09 $CA $0C $66 $FE $0E $CA
;.db $36 $66 $FE $0F $CA $36 $66 $FE $10 $CA $47 $66 $FE $06 $CA $E9
;.db $65 $FE $01 $CA $9F $65 $FE $2F $CA $3D $65 $FE $30 $28 $7A $FE
;.db $38 $28 $76 $FE $31 $CA $81 $65 $FE $32 $CA $45 $65 $FE $33 $28
;.db $41 $FE $34 $28 $44 $FE $35 $28 $44 $FE $2D $DA $FC $64 $FE $37
;.db $D2 $FC $64 $3A $BC $DE $FE $03 $20 $1A $79 $06 $02 $FE $2D $20
;.db $02 $06 $05 $78 $32 $E6 $DE $3E $FF $32 $E7 $DE $36 $00 $11 $D1
;.db $AE $C3 $8E $65 $11 $B7 $AA $C3 $8E $65 $3E $04 $CD $FF $02 $C3
;.db $53 $60 $0E $02 $11 $37 $A9 $18 $09 $0E $01 $18 $02 $0E $04 $11
;.db $53 $A9 $36 $00 $3A $BC $DE $CD $73 $65 $79 $01 $C0 $DB $09 $4E
;.db $81 $01 $07 $00 $09 $77 $C3 $8E $65 $36 $00 $3E $05 $CD $52 $06
;.db $C6 $02 $32 $F1 $DE $11 $22 $A9 $C3 $8E $65 $3E $08 $CD $52 $06
;.db $3C $18 $07 $3E $07 $CD $52 $06 $C6 $04 $4F $36 $00 $3A $BC $DE
;.db $CD $73 $65 $11 $B4 $DB $19 $11 $F9 $A8 $46 $23 $7E $81 $77 $B8
;.db $38 $01 $70 $D5 $CD $3B $6F $D1 $C3 $8E $65 $EB $CD $73 $65 $EB
;.db $C9



-:	
		jp   -
	
_LABEL_62C5_:	
		call _LABEL_6046_WAIT4GAMEPAD
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		ld   hl, _DATA_677E_TAKEMENU_TXT
		ld   iy, _RAM_C100_LEVEL_TILEMAP1
		ld   de, $0000
		ld   ix, _RAM_C300_LEVEL_TILEMAP3
		ld   bc, $0000
		ld   a, $04
		ld   (_RAM_C04F_LAST_ENTERED_MENU), a
		call _LABEL_6A1D_MENU_PART_LOAD
		ld   de, $38C8
		ld   ix, _RAM_C300_LEVEL_TILEMAP3
		push de
		push ix
		ld   b, $96
		ld   c, $00
		ld   hl, (_RAM_D900_CHARA_COORD)
		ld   de, $0008
		and  a
		sbc  hl, de
		ld   e, l
		ld   d, h
		ld   ix, _RAM_D600_ITEMNTRAP_TYPES
		jr   nc, +
		ld   de, $0001
+:	
		srl  d
		rr   e
		srl  d
		rr   e
		srl  d
		rr   e
		srl  d
		rr   e
_LABEL_6316_:	
		ld   a, (_RAM_DE52_ROOM_NR)
		cp   (ix+1)
		jr   nz, _LABEL_637A_
		ld   a, (ix+4)
		and  $E0
		jr   nz, _LABEL_637A_
		ld   a, (ix+0)
		and  a
		jr   z, _LABEL_637A_
		cp   $40
		jr   nc, _LABEL_637A_
		ld   a, (ix+2)
		sub  e
		jr   c, _LABEL_637A_
		cp   $03
		jr   nc, _LABEL_637A_
		ld   a, $96
		sub  b
		ex   af, af'
		ld   a, c
		exx
		push ix
		pop  de
		ld   h, $C4
		ld   l, a
		ex   af, af'
		ld   (hl), a
		ld   h, d
		ld   l, e
		ld   a, (ix+0)
		pop  ix
		pop  de
		push de
		push hl
		ld   c, a
		ld   hl, _DATA_6809_ITEM_NAMES
-:	
		ld   a, (hl)
		inc  hl
		inc  a
		jr   nz, -
		dec  c
		jr   nz, -
		ld   bc, $63B6
		call _LABEL_6A1D_MENU_PART_LOAD
		pop  hl
		pop  de
		ld   a, e
		add  a, $40
		ld   e, a
		ld   a, $00
		adc  a, d
		ld   d, a
		push de
		push ix
		push hl
		pop  ix
		exx
		inc  c
		ld   a, c
		cp   $0B
		jr   z, +
_LABEL_637A_:	;This is the take menu.
		exx
		ld   de, $0005
		add  ix, de
		exx
		djnz _LABEL_6316_
+:	
		pop  ix
		pop  de
		ld   a, c
		and  a
		jr   nz, +
		ld   ix, _RAM_C300_LEVEL_TILEMAP3
		ld   hl, _DATA_67B5_NO_ITEM_AVLBL_TXT
		ld   bc, $0000
		ld   de, $0000
		call _LABEL_6A1D_MENU_PART_LOAD
		ld   ix, _RAM_C300_LEVEL_TILEMAP3
		ld   de, $3A48
+:	
		ld   bc, $6053
		ld   hl, _DATA_67DB_EXITMENU_TXT
		call _LABEL_6A1D_MENU_PART_LOAD
		ld   de, _RAM_C100_LEVEL_TILEMAP1
		ld   b, $0C
		ld   iy, $C300
		jp   _LABEL_6A41_ENTERMENU
	
_LABEL_63B6_:	
		call _LABEL_6B60_ITEM_MENUS_ENTRY
		ld   b, $08
-:	
		ld   a, (hl)
		and  a
		jr   z, +
		inc  hl
		inc  hl
		djnz -
		ld   de, _DATA_A981_TAKEMENU_TXT
		ld   b, $11
		ld   iy, $6CF3
		jp   _LABEL_6A41_ENTERMENU
	
+:	
		push hl
		ld   a, (_RAM_C040_SELECTED_MENUITEMINRAM_PAL)
		ld   h, $C4
		ld   l, a
		ld   a, (hl)
		ld   de, _RAM_D600_ITEMNTRAP_TYPES
		ld   l, a
		ld   h, $00
		ld   c, a
		ld   b, h
		add  hl, hl
		add  hl, hl
		add  hl, bc
		add  hl, de
		pop  de
		ld   a, (hl)
		cp   $37
		jp   z, _LABEL_6446_
		cp   $02
		jr   nz, +
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp   $03
		jr   z, _LABEL_645D_
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		call _LABEL_6573_CALC_DMG
		ld   de, _RAM_DBB5_GOLDMOON_HP
		add  hl, de
		ld   a, (hl)
		ld   de, _DATA_AB83_MAGIUS_HANDBURN_TXT
		dec  a
		jp   z, ++
		ld   (hl), a
		jr   ++
	
+:	
		cp   $01
		jr   nz, _LABEL_644D_
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		and  a
		jr   z, _LABEL_644D_
		cp   $06
		jr   z, _LABEL_644D_
		cp   $01
		jr   z, _LABEL_644D_
		cp   $02
		jr   z, _LABEL_644D_
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		call _LABEL_6573_CALC_DMG
		ld   de, _RAM_DBB5_GOLDMOON_HP
		add  hl, de
		ld   a, (hl)
		ld   de, _DATA_ABBD_B_BLUE_FLR_TXT
		dec  a
		jr   z, ++
		ld   (hl), a
++:	
		push de
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		pop  de
		ld   hl, $3908
		call _LABEL_35A6_RANDOM
		call _LABEL_6F3B__UPD_HUD
		call _LABEL_62B1_SCOREMENU_CONT_LOOP
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_6446_:	
		ld   sp, ($DE27)
		jp   _LABEL_906_GOOD_END
	
_LABEL_644D_:	
		ld   a, (hl)
		ld   (hl), $00
		ld   (de), a
		inc  de
		ld   bc, $0004
		add  hl, bc
		ld   a, (hl)
		and  $1F
		ld   (de), a
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_645D_:	
		ld   (hl), $00
		ld   a, $02
		ld   (_RAM_DC29_), a
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_6467_:	
		ld   a, (_RAM_C040_SELECTED_MENUITEMINRAM_PAL)
		add  a, a
		or   $80
		ld   h, $C3
		ld   l, a
		ld   a, (hl)
		inc  hl
		ld   h, (hl)
		ld   l, a
		ld   c, (hl)
		ld   a, c
		cp   $02
		jp   z, _LABEL_6625_
		cp   $03
		jp   z, _LABEL_65CD_
		cp   $28
		jp   z, _LABEL_65CD_
		cp   $0B
		jp   z, _LABEL_65FD_
		cp   $09
		jp   z, _LABEL_660C_
		cp   $0E
		jp   z, _LABEL_6636_
		cp   $0F
		jp   z, _LABEL_6636_
		cp   $10
		jp   z, _LABEL_6647_
		cp   $06
		jp   z, _LABEL_65E9_
		cp   $01
		jp   z, _LABEL_659F_
		cp   $2F
		jp   z, _LABEL_653D_
		cp   $30
		jr   z, _LABEL_652B_
		cp   $38
		jr   z, _LABEL_652B_
		cp   $31
		jp   z, _LABEL_6581_
		cp   $32
		jp   z, _LABEL_6545_
		cp   $33
		jr   z, _LABEL_6504_
		cp   $34
		jr   z, _LABEL_650B_
		cp   $35
		jr   z, _LABEL_650F_
		cp   $2D
		jp   c, +++
		cp   $37
		jp   nc, +++
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp   $03
		jr   nz, ++
		ld   a, c
		ld   b, $02
		cp   $2D
		jr   nz, +
		ld   b, $05
+:	
		ld   a, b
		ld   (_RAM_DEE6_), a
		ld   a, $FF
		ld   (_RAM_DEE7_), a	;These two are not really known at the moment, maybe now I'll know what this is.
		ld   (hl), $00
		ld   de, _DATA_AED1_RAIST_PREPSPELL_TXT
		jp   _LABEL_658E_PLOT_FLSCRN_MSG
	
++:	
		ld   de, _DATA_AAB7_ONLY_RAISTLIN_TXT
		jp   _LABEL_658E_PLOT_FLSCRN_MSG
	
+++:	
		ld   a, $04
		call _LABEL_2FF_PREPNPLAYSFX
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_6504_:	
		ld   c, $02
		ld   de, _DATA_A937_MORE_CONFIDENCE_TXT	;You feel more confident.
		jr   ++
	
_LABEL_650B_:	
		ld   c, $01
		jr   +
	
_LABEL_650F_:	
		ld   c, $04
+:	
		ld   de, _DATA_A953_MORE_CONF_RING_TXT	;Your feel more confident wearing the ring.
++:	
		ld   (hl), $00
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		call _LABEL_6573_CALC_DMG
		ld   a, c
		ld   bc, _RAM_DBC0_	;This is a new RAM value.
		add  hl, bc
		ld   c, (hl)
		add  a, c
		ld   bc, $0007
		add  hl, bc
		ld   (hl), a
		jp   _LABEL_658E_PLOT_FLSCRN_MSG
	
_LABEL_652B_:	
		ld   (hl), $00
		ld   a, $05
		call _LABEL_652_LOAD_NEW_SCRN
		add  a, $02
		ld   (_RAM_DEF1_STR_POTION), a
		ld   de, _DATA_A922_U_FEEL_STRONGER_TXT	;You feel stronger.
		jp   _LABEL_658E_PLOT_FLSCRN_MSG
	
_LABEL_653D_:	
		ld   a, $08
		call _LABEL_652_LOAD_NEW_SCRN
		inc  a
		jr   +
	
_LABEL_6545_:	
		ld   a, $07
		call _LABEL_652_LOAD_NEW_SCRN
		add  a, $04
+:	
		ld   c, a
		ld   (hl), $00
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		call _LABEL_6573_CALC_DMG
		ld   de, _RAM_DBB4_GOLDMOON_MAXHP
		add  hl, de
		ld   de, _DATA_A8F9_POTION_CURE_TXT
		ld   b, (hl)
		inc  hl
		ld   a, (hl)
		add  a, c
		ld   (hl), a
		cp   b
		jr   c, +
		ld   (hl), b
+:	
		push de
		call _LABEL_6F3B__UPD_HUD
		pop  de
		jp   _LABEL_658E_PLOT_FLSCRN_MSG

	
_LABEL_656D_:	
		ex   de, hl
		call _LABEL_6573_CALC_DMG
		ex   de, hl
		ret


_LABEL_6573_CALC_DMG:	;This seems like the 
	add a, a ;2X
	add a, a	;4X
	add a, a	;8X
	ld l, a		;SAVE IT FOR LATER.
	add a, a	;16
	add a, a	;32
	add a, l	;32X+8X
	ld l, a		;LOAD IT BACK.
	ld a, $00
	adc a, $00
	ld h, a
	ret


_LABEL_6581_:	
		ld (hl), $00
		ld a, $01
		ld (_RAM_DEF3_ENEMY_MOV_ENA), a
		ld de, _DATA_A8D4_SLOW_MONST_TXT
		jp _LABEL_658E_PLOT_FLSCRN_MSG
	; Data from 6581 to 658D (13 bytes)
;	.db $36 $00 $3E $01 $32 $F3 $DE $11 $D4 $A8 $C3 $8E $65
	
_LABEL_658E_PLOT_FLSCRN_MSG:	
		push de
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		pop de
		ld hl, $3908
		call _LABEL_35A6_RANDOM
		call _LABEL_62B1_SCOREMENU_CONT_LOOP
		jp _LABEL_6053_WAIT4BUTTN
	;This has to be examined later, but this is valid code for sure. I have it saved somewhere else, so I can include it in the source, and analyze it.	
	; Data from 659F to 678B (493 bytes)
	;TODO CODE COMES HERE.
;	.db $CD $6A $66 $1A $E6 $7F $77 $79 $12 $23 $36 $00 $6B $62 $01 $11
;	.db $00 $A7 $ED $42 $06 $08 $7E $A7 $28 $07 $23 $23 $10 $F8 $C3 $53
;	.db $60 $23 $36 $00 $2B $CD $5C $66 $C3 $53 $60 $C3 $52 $66 $3A $BC
;	.db $DE $FE $04 $28 $05 $FE $06 $C2 $53 $60 $CD $6A $66 $E6 $7F $C2
;	.db $53 $60 $1A $77 $3E $83 $12 $C3 $53 $60 $3A $BC $DE $FE $05 $C2
;	.db $53 $60 $CD $6A $66 $E6 $7F $C2 $53 $60 $06 $06 $18 $1C $3A $BC
;	.db $DE $FE $07 $C2 $53 $60 $CD $6A $66 $06 $0B $18 $0D $3A $BC $DE
;	.db $FE $02 $C2 $53 $60 $CD $6A $66 $06 $09 $1A $E6 $7F $C2 $53 $60
;	.db $77 $78 $12 $C3 $53 $60 $CD $6A $66 $1A $E6 $7F $C2 $53 $60 $3E
;	.db $02 $12 $36 $00 $C3 $53 $60 $CD $6A $66 $1A $E6 $7F $FE $03 $28
;	.db $12 $FE $28 $28 $0E $C3 $53 $60 $CD $6A $66 $1A $E6 $7F $FE $06
;	.db $C2 $53 $60 $1A $E6 $7F $12 $CD $5C $66 $C3 $53 $60 $13 $1A $4E
;	.db $77 $79 $12 $23 $13 $1A $4E $77 $79 $12 $C9 $E5 $3A $BC $DE $CD
;	.db $73 $65 $11 $B1 $DB $19 $EB $E1 $C9 $3A $40 $C0 $87 $F6 $80 $26
;	.db $C3 $6F $7E $23 $66 $6F $4E $36 $00 $3A $0A $D9 $FE $0F $CA $53
;	.db $60 $21 $00 $D6 $11 $05 $00 $7E $A7 $28 $03 $19 $18 $F9 $71 $3A
;	.db $52 $DE $23 $77 $ED $5B $00 $D9 $CB $3A $CB $1B $CB $3A $CB $1B
;	.db $CB $3A $CB $1B $CB $3A $CB $1B $23 $73 $23 $36 $00 $23 $36 $00
;	.db $C3 $53 $60 $3A $40 $C0 $87 $F6 $80 $26 $C3 $6F $7E $23 $66 $6F
;	.db $E5 $AF $32 $FF $C7 $DD $21 $00 $C7 $11 $A2 $01 $D5 $DD $E5 $F3
;	.db $CD $F1 $5E $FB $DD $E1 $D1 $CD $64 $5E $06 $0C $CD $58 $5E $3A
;	.db $94 $DE $A7 $28 $F2 $3A $FF $C7 $4F $08 $79 $A7 $28 $73 $E1 $7E
;	.db $E5 $21 $BC $DE $06 $00 $09 $FE $01 $7E $20 $21 $A7 $28 $1E $FE
;	.db $06 $28 $1A $FE $01 $28 $16 $FE $02 $28 $12 $CD $42 $6B $11 $F6
;	.db $AB $21 $08 $39 $CD $A6 $35 $CD $B1 $62 $C3 $70 $67 $CD $63 $6B
;	.db $06 $08 $11 $15 $00 $19 $7E $A7 $ED $52 $A7 $20 $08 $CD $42 $6B
;	.db $11 $38 $AC $18 $DC $7E $A7 $28 $1B $23 $23 $10 $F8 $08 $E1 $DD
;	.db $21 $00 $C7 $F3 $CD $C6 $5E $FB $11 $BE $A9 $06 $11 $FD $21 $F3
;	.db $6C $C3 $41 $6A $D1 $D5 $EB $7E $12 $36 $00 $23 $13 $7E $12 $36
;	.db $00 $08 $E1 $DD $21 $00 $C7 $F3 $CD $C6 $5E $FB $C3 $53 $60 $20

;The above produced this code. TODO
_LABEL_659F_:	
		call _LABEL_666A_
		ld   a, (de)
		and  $7F
		ld   (hl), a
		ld   a, c
		ld   (de), a
		inc  hl
		ld   (hl), $00
		ld   l, e
		ld   h, d
		ld   bc, $0011
		and  a
		sbc  hl, bc
		ld   b, $08
-:	
		ld   a, (hl)
		and  a
		jr   z, +
		inc  hl
		inc  hl
		djnz -
		jp   _LABEL_6053_WAIT4BUTTN
	
+:	
		inc  hl
		ld   (hl), $00
		dec  hl
		call _LABEL_665C_
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_65CA_:	
		jp   _LABEL_6652_
	
_LABEL_65CD_:	
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp   $04
		jr   z, +
		cp   $06
		jp   nz, _LABEL_6053_WAIT4BUTTN
+:	
		call _LABEL_666A_
		and  $7F
		jp   nz, _LABEL_6053_WAIT4BUTTN
		ld   a, (de)
		ld   (hl), a
		ld   a, $83
		ld   (de), a
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_65E9_:	
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp   $05
		jp   nz, _LABEL_6053_WAIT4BUTTN
		call _LABEL_666A_
		and  $7F
		jp   nz, _LABEL_6053_WAIT4BUTTN
		ld   b, $06
		jr   +
	
_LABEL_65FD_:	
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp   $07
		jp   nz, _LABEL_6053_WAIT4BUTTN
		call _LABEL_666A_
		ld   b, $0B
		jr   +
	
_LABEL_660C_:	
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		cp   $02
		jp   nz, _LABEL_6053_WAIT4BUTTN
		call _LABEL_666A_
		ld   b, $09
+:	
		ld   a, (de)
		and  $7F
		jp   nz, _LABEL_6053_WAIT4BUTTN
		ld   (hl), a
		ld   a, b
		ld   (de), a
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_6625_:	
		call _LABEL_666A_
		ld   a, (de)
		and  $7F
		jp   nz, _LABEL_6053_WAIT4BUTTN
		ld   a, $02
		ld   (de), a
		ld   (hl), $00
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_6636_:	
		call _LABEL_666A_
		ld   a, (de)
		and  $7F
		cp   $03
		jr   z, _LABEL_6652_
		cp   $28
		jr   z, _LABEL_6652_
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_6647_:	
		call _LABEL_666A_
		ld   a, (de)
		and  $7F
		cp   $06
		jp   nz, _LABEL_6053_WAIT4BUTTN
_LABEL_6652_:	
		ld   a, (de)
		and  $7F
		ld   (de), a
		call _LABEL_665C_
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_665C_:	
		inc  de
		ld   a, (de)
		ld   c, (hl)
		ld   (hl), a
		ld   a, c
		ld   (de), a
		inc  hl
		inc  de
		ld   a, (de)
		ld   c, (hl)
		ld   (hl), a
		ld   a, c
		ld   (de), a
		ret
	
_LABEL_666A_:	
		push hl
		ld   a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)
		call _LABEL_6573_CALC_DMG
		ld   de, _RAM_DBB1_GMSTAFF_IN4CHARS
		add  hl, de
		ex   de, hl
		pop  hl
		ret
	
_LABEL_6678_:	;This does not seem to be used for now, at least that label is not.
		ld   a, (_RAM_C040_SELECTED_MENUITEMINRAM_PAL)
		add  a, a
		or   $80
		ld   h, $C3
		ld   l, a
		ld   a, (hl)
		inc  hl
		ld   h, (hl)
		ld   l, a
		ld   c, (hl)
		ld   (hl), $00
		ld   a, (_RAM_D90A_HERO_ACTION)
		cp   $0F
		jp   z, _LABEL_6053_WAIT4BUTTN
		ld   hl, _RAM_D600_ITEMNTRAP_TYPES
		ld   de, $0005
-:	
		ld   a, (hl)
		and  a
		jr   z, +
		add  hl, de
		jr   -
	
+:	
		ld   (hl), c
		ld   a, (_RAM_DE52_ROOM_NR)
		inc  hl
		ld   (hl), a
		ld   de, (_RAM_D900_CHARA_COORD)
		srl  d
		rr   e
		srl  d
		rr   e
		srl  d
		rr   e
		srl  d
		rr   e
		inc  hl
		ld   (hl), e
		inc  hl
		ld   (hl), $00
		inc  hl
		ld   (hl), $00
		jp   _LABEL_6053_WAIT4BUTTN
	
_LABEL_66C2_STAFFPICKUP:	
		ld   a, (_RAM_C040_SELECTED_MENUITEMINRAM_PAL)
		add  a, a
		or   $80
		ld   h, $C3
		ld   l, a
		ld   a, (hl)
		inc  hl
		ld   h, (hl)
		ld   l, a
		push hl
		xor  a
		ld   (_RAM_C7FF_FIRST_SELECTED_COMPANION), a
		ld   ix, _RAM_C700_SELECTED_HERO_TILES
		ld   de, $01A2
		push de
		push ix
		di
		call _LABEL_5EF1_DRAWRECT_OVERHUDPORTRAIT
		ei
		pop  ix
		pop  de
-:	
		call _LABEL_5E64_MOVE_CHARSELECT_CURSOR
		ld   b, $0C
		call _LABEL_5E58_DELAYBYB
		ld   a, (_RAM_DE94_GAMEPAD)
		and  a
		jr   z, -
		ld   a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		ld   c, a
		ex   af, af'
		ld   a, c
		and  a
		jr   z, _LABEL_6770_
		pop  hl
		ld   a, (hl)
		push hl
		ld   hl, _RAM_DEBC_INRAM_HUD_PORTRAITS
		ld   b, $00
		add  hl, bc
		cp   $01
		ld   a, (hl)
		jr   nz, +
		and  a
		jr   z, +
		cp   $06
		jr   z, +
		cp   $01
		jr   z, +
		cp   $02
		jr   z, +
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		ld   de, _DATA_ABF6_STF_FLARE_GIVE_CHR_TXT	;So this looks like the code that will be executed if you want to pick up the staff as a character who is not supposed to.
-:	
		ld   hl, $3908
		call _LABEL_35A6_RANDOM
		call _LABEL_62B1_SCOREMENU_CONT_LOOP
		jp   _LABEL_6770_
	
+:	
		call _LABEL_6B63_
		ld   b, $08
		ld   de, $0015
		add  hl, de
		ld   a, (hl)
		and  a
		sbc  hl, de
		and  a
		jr   nz, _LABEL_6744_
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		ld   de, _DATA_AC38_CANNOT_GIVE_ITM_2DEAD
		jr   -
	
_LABEL_6744_:	
		ld   a, (hl)
		and  a
		jr   z, +
		inc  hl
		inc  hl
		djnz _LABEL_6744_
		ex   af, af'
		pop  hl
		ld   ix, _RAM_C700_SELECTED_HERO_TILES
		di
		call _LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC
		ei
		ld   de, _DATA_A9BE_GIVEMENU_TXT_NMORE
		ld   b, $11
		ld   iy, $6CF3
		jp   _LABEL_6A41_ENTERMENU
	
+:	
		pop  de
		push de
		ex   de, hl
		ld   a, (hl)
		ld   (de), a
		ld   (hl), $00
		inc  hl
		inc  de
		ld   a, (hl)
		ld   (de), a
		ld   (hl), $00
_LABEL_6770_:	
		ex   af, af'
		pop  hl
		ld   ix, _RAM_C700_SELECTED_HERO_TILES
		di
		call _LABEL_5EC6_FIX_NOT_SELECTED_HUDPIC
		ei
		jp   _LABEL_6053_WAIT4BUTTN
	


_DATA_677E_TAKEMENU_TXT:	;Take menu.	
	.db $20 $20 $20  $54 $41 $4B $45 $20 $4D $45 $4E $55 $0D $FF
	
; Data from 678C to 6799 (14 bytes)	
_DATA_678C_DROPMENU_TXT:	;Drop menu
	.db $20 $20 $20 $44 $52 $4F $50 $20 $4D $45 $4E $55 $0D $FF
	
; Data from 679A to 67A7 (14 bytes)	
_DATA_679A_GIVEMENU_TXT:	;Give menu	
	.db $20 $20 $20 $47 $49 $56 $45 $20 $4D $45 $4E $55 $0D $FF
	
; Data from 67A8 to 67B4 (13 bytes)	
_DATA_67A8_USEMENU_TXT:	;Use menu.
	.db $20 $20 $20 $55 $53 $45 $20 $4D $45 $4E $55 $0D $FF
	
; Data from 67B5 to 67DA (38 bytes)	
_DATA_67B5_NO_ITEM_AVLBL_TXT:	;There are no items available.
	.db $0D $0D $54 $68 $65 $72 $65 $20 $61 $72 $65 $20 $6E $6F $20 $69
	.db $74 $65 $6D $73 $0D $0D $20 $20 $20 $20 $61 $76 $61 $69 $6C $61
	.db $62 $6C $65 $0D $0D $FF
	
; Data from 67DB to 67E5 (11 bytes)	
_DATA_67DB_EXITMENU_TXT:	;Exit menu	
	.db $45 $78 $69 $74 $20 $6D $65 $6E $75 $0D $FF
	
; Data from 67E6 to 67F5 (16 bytes)	
_DATA_67E6_NO_RANGE_WEAPON_TXT:		;No range weapon.
	.db $6E $6F $20 $72 $61 $6E $67 $65 $20 $57 $65 $61 $70 $6F $6E $FF
	
; Data from 67F6 to 6808 (19 bytes)	
_DATA_67F6_DELCHARS:	
	
	.dsb 18, $20	;18 characters are the item names maximum. I guess, these are to delete the item names before writing a new one to the screen.
	.db $FF	;End of text separator.
	
; Data from 6809 to 6A1C (532 bytes)	
_DATA_6809_ITEM_NAMES:	
	.db $FF $42 $6C $75 $65 $20 $43 $72 $79 $73 $74 $61 $6C $20 $53 $74
	.db $61 $66 $66 $0D $FF $53 $74 $61 $66 $66 $20 $6F $66 $20 $4D $61
	.db $67 $69 $75 $73 $0D $FF $42 $6F $77 $0D $FF $4C $6F $6E $67 $73
	.db $77 $6F $72 $64 $0D $FF $44 $61 $67 $67 $65 $72 $0D $FF $48 $6F
	.db $6F $70 $61 $6B $0D $FF $4A $6F $20 $73 $74 $69 $63 $6B $0D $FF
	.db $48 $75 $6E $74 $69 $6E $67 $20 $4B $6E $69 $66 $65 $0D $FF $53
	.db $70 $65 $61 $72 $0D $FF $54 $77 $6F $20 $68 $61 $6E $64 $65 $64
	.db $20 $73 $77 $6F $72 $64 $0D $FF $48 $61 $6E $64 $20 $61 $78 $65
	.db $0D $FF $53 $77 $6F $72 $64 $0D $FF $53 $77 $6F $72 $64 $0D $FF
	.db $47 $72 $65 $65 $6E $20 $51 $75 $69 $76 $65 $72 $0D $FF $52 $65
	.db $64 $20 $51 $75 $69 $76 $65 $72 $0D $FF $50 $6F $75 $63 $68 $0D
	.db $FF $42 $72 $61 $63 $65 $6C $65 $74 $0D $FF $53 $68 $69 $65 $6C
	.db $64 $0D $FF $53 $68 $69 $65 $6C $64 $0D $FF $53 $68 $69 $65 $6C
	.db $64 $0D $FF $53 $68 $69 $65 $6C $64 $0D $FF $53 $68 $69 $65 $6C
	.db $64 $0D $FF $47 $65 $6D $0D $FF $47 $65 $6D $0D $FF $47 $65 $6D
	.db $0D $FF $47 $65 $6D $0D $FF $47 $65 $6D $0D $FF $47 $6F $6C $64
	.db $20 $42 $61 $72 $0D $FF $53 $69 $6C $76 $65 $72 $20 $42 $61 $72
	.db $0D $FF $47 $6F $6C $64 $20 $43 $68 $61 $6C $69 $63 $65 $0D $FF
	.db $53 $69 $6C $76 $65 $72 $20 $43 $68 $61 $6C $69 $63 $65 $0D $FF
	.db $43 $6F $69 $6E $73 $0D $FF $54 $42 $44 $0D $FF $54 $42 $44 $0D
	.db $FF $54 $42 $44 $0D $FF $54 $42 $44 $0D $FF $54 $42 $44 $0D $FF
	.db $54 $42 $44 $0D $FF $54 $42 $44 $0D $FF $42 $6F $77 $0D $FF $4C
	.db $6F $6E $67 $73 $77 $6F $72 $64 $0D $FF $53 $77 $6F $72 $64 $0D
	.db $FF $44 $61 $67 $67 $65 $72 $0D $FF $48 $75 $6E $74 $69 $6E $67
	.db $20 $4B $6E $69 $66 $65 $0D $FF $53 $63 $72 $6F $6C $6C $0D $FF
	.db $53 $63 $72 $6F $6C $6C $0D $FF $47 $72 $65 $65 $6E $20 $50 $6F
	.db $74 $69 $6F $6E $0D $FF $4F $72 $61 $6E $67 $65 $20 $50 $6F $74
	.db $69 $6F $6E $0D $FF $52 $65 $64 $20 $50 $6F $74 $69 $6F $6E $0D
	.db $FF $42 $6C $75 $65 $20 $50 $6F $74 $69 $6F $6E $0D $FF $59 $65
	.db $6C $6C $6F $77 $20 $50 $6F $74 $69 $6F $6E $0D $FF $52 $69 $6E
	.db $67 $0D $FF $47 $65 $6D $20 $52 $69 $6E $67 $0D $FF $57 $61 $6E
	.db $64 $0D $FF $44 $69 $73 $6B $73 $20 $6F $66 $20 $4D $69 $73 $68
	.db $61 $6B $61 $6C $0D $FF $42 $72 $6F $77 $6E $20 $50 $6F $74 $69
	.db $6F $6E $0D $FF
	
_LABEL_6A1D_MENU_PART_LOAD:	;This loads some parts of the data into RAM, but that's as far as I can tell this about. Used with the use\take\give\drop menu. Maybe more will be known later.
		;ret
		ld (ix+0), e
		ld (ix+1), d
		ld (ix+2), c
		ld (ix+3), b
		ld bc, $0004
		add ix, bc
		ld (ix+0), $00
		ld (ix+1), $00
-:	
		ld a, (hl)
		ld (iy+0), a
		inc hl
		inc a
		ret z
		inc iy
		jr -
	
_LABEL_6A41_ENTERMENU:		;This is executed every time we land in a new menu from the main menu. It seems to wait for deleting the screen, and then draw the text of the new menu.

		push iy
		push bc
		push de
		call _LABEL_6046_WAIT4GAMEPAD
		call _LABEL_6B42_DRW_SOLID_CLR_SCRN
		pop de
		ei
		xor a
		ld (_RAM_C040_SELECTED_MENUITEMINRAM_PAL), a
		ld hl, $3888
		call _LABEL_35A6_RANDOM
		ld hl, $3888
		ld de, $016C
		pop bc
		ld c, $97
		ld ix, _RAM_C000_RAM_START
		call _LABEL_6AE6_MENU_TXTDRAW
		pop iy
		jp _LABEL_5C89_
	


_LABEL_6A6C_AFTERMSG_SCR_LOADLVLBCK:	;We get here from the non-healing waterfall part, the rudeness continues.
	call _LABEL_552_CHECK_AB_BUTTONS		;We wait until the player pushes an action button.
	ld a, (_RAM_DE91_)
	and $30 ;$0011 0000
	jr z, +						;Jump if we have pushed anything.
	call _LABEL_59B_MAIN				;If we did not, run the main loop, and then go back, until we get the button press.
	jr _LABEL_6A6C_AFTERMSG_SCR_LOADLVLBCK

+:
	;ret
	ld hl, (_RAM_D900_CHARA_COORD)
	ld de, $0078
	and a
	sbc hl, de
	jr nc, +
	ld hl, $0000
+:
	ld a, l
	and $F0
	ld l, a
	ld (_RAM_DE34_SCRN_SCROLL), hl			;Set screen scroll also.
	xor a
	;nop
	ld (_RAM_DE42_), a
	ld (_RAM_DE44_SCRNSCRL_2FRMSET), a				;This will restore the characters where they were, and load the level also.
	call _LABEL_C43_LEVEL_LOAD
	ld hl, (_RAM_DE64_)
	ld (_RAM_DE62_), hl
	xor a
	ld (_RAM_DEE5_MENUORGAME), a
	ld (_RAM_DE9E_), a
	ld a, (_RAM_DEA0_TIMER_TEMP)			;We restore timers and everything.
	ld (_RAM_DE9F_TIMER), a				;Then return.
	ret

_LABEL_6AAE_MNU_DELSCRN_TXTCOLOR:	;This is executed right when you press for the ingame menu. Also makes the text line white, so you know it's selected. Also runs, when you press the button, and the menu items are redrawn.
	di
	call _LABEL_4BB_VDP_RAM_WRITESETUP
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

_LABEL_6AE6_MENU_TXTDRAW:	;We jump here, this seems to load some things again. The menu's white text, and overall text drawing is done.
	push bc
	push de
	push hl			;Save the register values for later.
	di
	call _LABEL_4BD_VDP_OUTSETUP	;Setup a VDP data transfer, this time a read.
	ei
	in a, (Port_VDPData)
	ld (ix+0), a
	in a, (Port_VDPData)		;Read from VRAM. A very strange thing to do at all.. but okay. Looks like we'll get the menu point, where the cursor is I mean.
	ld (ix+1), a
	pop hl
	push hl				;This is just some stuff to waste some cycles.
	di
	call _LABEL_4BB_VDP_RAM_WRITESETUP	;We set up a write now.
	ei
	ld a, e
	out (Port_VDPData), a
	ld a, (ix+1)
	and $FE			;1111 1110
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
	or $80	;1000 0000
	ld h, a
	ld a, $1F
	ld (_RAM_FFFF_), a	;Select the last ROM bank. It contains the tiles for the menu.
	ld b, $01
	ex de, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ;These are here to get the correct tiles for the menu.
	call _LABEL_6AAE_MNU_DELSCRN_TXTCOLOR	;This will draw the selected menu item.
	pop hl
	pop de
	pop bc
	inc hl
	inc hl
	inc de
	djnz _LABEL_6AE6_MENU_TXTDRAW	;The very first character of the menus are drawn again, but not the rest.
	ret

_LABEL_6B42_DRW_SOLID_CLR_SCRN:	;This resets the tilemap, and draws a background color, so later on, we can write text on it.
	;ret
	ld hl, $3800	;Base of the tilemap with normal setup.
	di
	call _LABEL_4BB_VDP_RAM_WRITESETUP	;Set up a VDP write with the address above.
	ei
	ld de, $014B
	ld bc, $0200			;512 bytes, how much you want to clear the screen. (Where the action is at least.)
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

_LABEL_6B60_ITEM_MENUS_ENTRY:	;The game enters here, when you want to either Use\Take\Give\Drop an Item.
		ld a, (_RAM_DEBC_INRAM_HUD_PORTRAITS)	;Who is the first on the list?(Active player)
_LABEL_6B63_:
		push de
		call _LABEL_6573_CALC_DMG
		ld de, _RAM_DBA0_PLYR_STATS
		add hl, de
		pop de
		ret
	
_LABEL_6B6D_DRAW_HERODETAILS:	;Wew this is long....But it draws the Hero select screen itself with the text, but no the details themselves. The name is also colored yellow, but not the rest of the text.
		push bc
		push de
		push hl
		push ix
		call _LABEL_59B_MAIN
		ld a, (_RAM_C7FF_FIRST_SELECTED_COMPANION)
		ld hl, _RAM_DEBC_INRAM_HUD_PORTRAITS
		ld c, a
		ld b, $00
		add hl, bc
		ld a, (hl)
		ld c, a
		call _LABEL_6573_CALC_DMG
		ld de, _RAM_DBB5_GOLDMOON_HP
		add hl, de
		push hl
		ld a, (hl)
		and a
		ld a, c
		jr nz, +
		ld a, $08
+:	
		ld l, a
		ld h, $00
		add hl, hl
		ld c, l
		ld b, h
		add hl, hl
		add hl, hl
		ld e, l
		ld d, h
		add hl, bc
		ex de, hl
		add hl, hl
		ld bc, _DATA_6D39_HERO_STAT_TXT
		add hl, bc
		ex de, hl
		ld hl, $3888
		call _LABEL_35A6_RANDOM
		ld hl, $3888
		ld de, $016C
		ld b, $0E
		ld c, $97
		ld ix, _RAM_C000_RAM_START
		call _LABEL_6AE6_MENU_TXTDRAW
		pop de
		ld hl, $0005
		add hl, de
		push hl
		pop ix
		ld bc, $3920
		ld h, $06
-:	
		push hl
		ld l, (ix+0)
		ld de, $0014
		push bc
		call _LABEL_6C61_DRAWHERO_SPECS
		pop bc
		ld hl, $0040
		add hl, bc
		ld c, l
		ld b, h
		inc ix
		pop hl
		dec h
		jr nz, -
		ld de, $FFF4
		add ix, de
		ld hl, $0040
		add hl, bc
		ld c, l
		ld b, h
		ld e, (ix+0)
		ld d, $00
		ld l, (ix+1)
		push de
		push hl
		call _LABEL_6C61_DRAWHERO_SPECS
		pop hl
		ld de, _RAM_D100_IN_RAM_SPRITETABLE
		ld h, $00
		ld c, h
		call _LABEL_6E09_SCORESCRN_PRINT
		ld hl, $3B22
		ld de, _RAM_D104_
		call _LABEL_35A6_RANDOM
		pop hl
		ld h, $00
		ld c, h
		ld de, _RAM_D100_IN_RAM_SPRITETABLE
		call _LABEL_6E09_SCORESCRN_PRINT
		ld hl, $3B28
		ld de, _RAM_D101_
		ld a, $2F
		ld (de), a
		inc de
		ld a, $20
		ld (de), a
		inc de
		ld (de), a
		dec de
		dec de
		call _LABEL_35A6_RANDOM
		dec ix
		dec ix
		dec ix
		ld hl, $3B8C
		ld de, _DATA_67F6_DELCHARS
		push hl
		call _LABEL_35A6_RANDOM
		pop hl
		ld de, _DATA_67F6_DELCHARS
		ld a, (ix+4)
		and a
		jr z, +
		ld de, _DATA_67E6_NO_RANGE_WEAPON_TXT
		ld a, (ix+0)
		and a
		jr z, +
		ld de, _DATA_6809_ITEM_NAMES
		and $7F
		ld c, a
-:	
		ld a, (de)
		inc de
		inc a
		jr nz, -
		dec c
		jr nz, -
+:	
		call _LABEL_35A6_RANDOM
		pop ix
		pop hl
		pop de
		pop bc
		ret
	
_LABEL_6C61_DRAWHERO_SPECS:	;Draws the Hero Selection screen, specifically the details of the hero.
		
		push bc
		push de
		ld h, $00
		add hl, hl
		add hl, hl
		ld c, l
		ld b, h
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, hl
		add hl, de
		add hl, bc
		pop de
		ld c, $00
		ld a, d
		or e
		jr z, +
		ld c, e
		ld b, h
		dec bc
		ld a, $FF
		and a
-:	
		inc a
		sbc hl, de
		jr nc, -
		ld c, a
+:	
		ld de, _RAM_D100_IN_RAM_SPRITETABLE
		xor a
		ld (de), a
		inc de
		ld b, $0B
-:	
		ld a, c
		cp $04
		jr c, +
		ld a, $04
+:	
		inc a
		ld (de), a
		inc de
		ld a, c
		sub $04
		jr nc, +
		xor a
+:	
		ld c, a
		djnz -
		ld a, $06
		ld (de), a
		inc de
		ld a, $FF
		ld (de), a
		pop hl
		ld de, _RAM_D100_IN_RAM_SPRITETABLE
		call _LABEL_35A6_RANDOM
		ret
	
_DATA_6CAD_PALETTES:	; Data from 6CAD to 6CAE (2 bytes)
	.db $C8 $38
	
; Jump Table from 6CAF to 6CBC (7 entries, indexed by  _RAM_C040_SELECTED_MENUITEMINRAM_PAL)	
_DATA_6CAF_:	
	.dw _LABEL_5D43_HERO_SELECT_MENU _LABEL_3908_ _LABEL_605C_MAGICUSERSPELLMENU _LABEL_3948_ _LABEL_60B0_ _LABEL_3988_APPLYDAMAGE _LABEL_6114_
	
	; Data from 6CBD to 6CD4 (24 bytes)
	.db $C8 $39 $C5 $62 $08 $3A $22 $61 $48 $3A $06 $61 $88 $3A $CB $61
	.db $C8 $3A $6C $6A $00 $00 $C8 $38
	
; Jump Table from 6CD5 to 6CE2 (7 entries, indexed by  _RAM_C040_SELECTED_MENUITEMINRAM_PAL)	
_DATA_6CD5_:	
	.dw _LABEL_5FE0_SPELLIST_JUMPS _LABEL_3908_ _LABEL_5FE0_SPELLIST_JUMPS _LABEL_3948_ _LABEL_5FE0_SPELLIST_JUMPS _LABEL_3988_APPLYDAMAGE _LABEL_5FE0_SPELLIST_JUMPS
	
	; Data from 6CE3 to 6CF4 (18 bytes)
	.db $C8 $39 $E0 $5F $08 $3A $E0 $5F $48 $3A $E0 $5F $88 $3A $E0 $5F
	.db $C8 $3A
	;These will just mess up the game, so i guess these are not used. They seem like program labels, but does not seem to be valid anymore.
; Jump Table from 6CF5 to 6CF6 (1 entries, indexed by  _RAM_C040_SELECTED_MENUITEMINRAM_PAL)	
_DATA_6CF5_:	;Strange, these are not used, only the first. I wonder what else these would do, apart from the very first, which I've already took apart.
	.dw _LABEL_6053_WAIT4BUTTN
	
	; Data from 6CF7 to 6D38 (66 bytes)
	.db $00 $00 $C8 $38 $E0 $5F $08 $39 $E0 $5F $48 $39 $E0 $5F $88 $39
	.db $E0 $5F $C8 $39 $53 $60 $00 $00 $C8 $38 $E0 $5F $08 $39 $E0 $5F
	.db $48 $39 $E0 $5F $88 $39 $E0 $5F $C8 $39 $E0 $5F $08 $3A $E0 $5F
	.db $48 $3A $E0 $5F $88 $3A $E0 $5F $C8 $3A $E0 $5F $08 $3B $53 $60
	.db $00 $00
	
; Data from 6D39 to 6DC8 (144 bytes)	
_DATA_6D39_HERO_STAT_TXT:	;This is the text for the hero select screen, where the player stats are shown.
	.db $20 $47 $6F $6C $64 $6D $6F $6F $6E $20 $20 $20 $20 $20 $FF $00
	.db $20 $20 $53 $74 $75 $72 $6D $20 $20 $20 $20 $20 $20 $20 $FF $00
	.db $20 $43 $61 $72 $61 $6D $6F $6E $20 $20 $20 $20 $20 $20 $FF $00
	.db $20 $52 $61 $69 $73 $74 $6C $69 $6E $20 $20 $20 $20 $20 $FF $00
	.db $20 $20 $54 $61 $6E $69 $73 $20 $20 $20 $20 $20 $20 $20 $FF $00
	.db $54 $61 $73 $73 $6C $65 $68 $6F $66 $66 $20 $20 $20 $20 $FF $00
	.db $52 $69 $76 $65 $72 $77 $69 $6E $64 $20 $20 $20 $20 $20 $FF $00
	.db $20 $20 $46 $6C $69 $6E $74 $20 $20 $20 $20 $20 $20 $20 $FF $00
	.db $44 $65 $61 $64 $20 $63 $68 $61 $72 $61 $63 $74 $65 $72 $FF $00
	

_LABEL_6DC9_NME_KILLED_INCKILLCOUNT:	;The below will run, when the player is killing an enemy.
	sub $09	;So, a seems to be the input for this. Subtract 9 from it. I guess this is the monster type.
	add a, a
	push hl
	push de
	ld e, a
	ld d, $00	;DE will be like $00xx
	ld hl, _RAM_DE7A_KILLCOUNT_ARRAY ;$DE7A 	;This will be the array for the killcount.
	add hl, de	;Add the monster number to the array's starting point.
	inc (hl)	;Increase the number of monsters killed.
	jr nz, +	;If the number is not zero, jump ahead.
	inc hl		
	inc (hl)
+:
	ld hl, _DATA_6DF3_KILLPOINTS	;These seem like point for the kills?
	add hl, de		;Get the monster type, and add it to the pointer of the data.
	ld e, (hl)		;Get the number or maybe points from the array.
	inc hl
	ld d, (hl)		;Get the whole DE register content from ROM. Some later values are not giving D a $00, so we can't optimize it that much.
	ld hl, (_RAM_DE74_PT_FOR_CMBT)	;Get the address for the points for combat.
	add hl, de			;Add points.
	ld (_RAM_DE74_PT_FOR_CMBT), hl	;Put the value back.
	ld a, (_RAM_DE76_CR_DMGLINK)
	adc a, $00
	ld (_RAM_DE76_CR_DMGLINK), a	;Why the program does this is not yet clear.
	pop de
	pop hl
	ret

; Data from 6DF3 to 6E08 (22 bytes)
_DATA_6DF3_KILLPOINTS:
.db $52 $00 $AF $00 $0D $02 $3F $02 $78 $00 $1C $00 $0E $00 $3C $00
.db $3B $01 $58 $02 $D0 $07

_LABEL_6E09_SCORESCRN_PRINT:	;THIS PRINTS THE SCORE SCREEN'S NUMBERS.
;THIS CALCULATES AND LOADS TILEMAP ADDRESSES, AND THEN THE ENGINE TAKES CARE OF THE REST, AND DISPLAYS THIS SCORE SCREEN'S VALUES AND ALL OF THAT.
;NO NEED TO DISSECT THIS ANY FURTHER.
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
_DATA_6E7F_SCORE_PALETTE:
.db $58 $39 $76 $39 $98 $39 $B6 $39 $D8 $39 $F6 $39 $18 $3A $36 $3A
.db $58 $3A $76 $3A

; Data from 6E93 to 6F04 (114 bytes)
_DATA_6E93_SCR_SCRN_DATA:
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
	call _LABEL_4BB_VDP_RAM_WRITESETUP	;THIS WRITES TO THE APPROPRIATE PART OF THE TILEMAP, AND IT'S FOR THE HUD.
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
	jp z, _LABEL_714D_DRAW_DEBUGHUD	;IF THE DEBUG IS ON, WE WILL SEE THE VALUES, AND SOME SEMI-FUNCTIONAL HUD, AND A WORKING MENU.
	ld a, $04
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_DE5B_COMBAT_MARK)
	ld a, h
	or l
	ld de, _DATA_12306_HUD_LPART	;THIS IS THE NON-COMBAT TILES ON THE COMPASS.
	jr z, +
	ld de, _DATA_12550_COMPASS_ON_MAP	;COMMENT IT OUT, AND THE COMBAT TEXT WONT APPEAR.
+:
	ld hl, $3D46
	call _LABEL_4BB_VDP_RAM_WRITESETUP
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
	ld hl, (_RAM_D900_CHARA_COORD)	;IN RAM DETAILS FOR THE PLAYER, DIRECTION AND SUCH.
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
	call _LABEL_4BB_VDP_RAM_WRITESETUP
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
	ld b, $03	;We draw four tiles, since that's how many are in a standard lifebar. This is just to draw then on the screen.
-:
	call _LABEL_4BB_VDP_RAM_WRITESETUP
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

_LABEL_70C4_DRAW_COMPASS:	;So, we receive the destination in HL.
	push af
	call _LABEL_4BB_VDP_RAM_WRITESETUP
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
;TODO: This can be disabled\moved elsewhere, since the game will never use it, and really, aoart from debuggning, it has no use.
	ld a, $1F
	ld (_RAM_FFFF_), a	;SELECT THE LAST BANK. It has the tiles for the menu drawing, text and so on.
	ld hl, _DATA_7C000_CHAR_BIO_TEXT
	ld de, $1000	;WHERE WE WILL DRAW ON THE TILEMAP.
	ld bc, $0C00
	di
	call _LABEL_48C_LOAD_VDP_DATA
	ei
	ld hl, $0080
	ld (_RAM_DE62_), hl
	ld hl, $3C00
	ld de, _DATA_6F05_	;I wonder what would this address do..
	di
	call _LABEL_35A6_RANDOM	;NO IDEA YET, IT DOES NOT DO ANYTHING NOTICEABLE.
	ld a, (_RAM_DE52_ROOM_NR)	;GET THE ROOM NR WHERE THE PARTY IS.
	ld hl, $3CA0	;THIS IS THE TILEMAP VALUE FOR THE ROOM NR DISPLAY.
	call _LABEL_3582_DRAW_NUMBERS_DEBUG
	ld a, (_RAM_DE59_LEFT_DEBUG_NR)
	ld hl, $3CCC
	call _LABEL_3582_DRAW_NUMBERS_DEBUG
	ret

_LABEL_714D_DRAW_DEBUGHUD:	;If this is just a RET, then the debug HUD is not drawn. The normal hud under it is not updated, so players can still die, but you can use the warp and all that. Strangely, just above we also do something similar.
	;	TODO: This can be actually disabled, or moved somewhere else.
	ld hl, (_RAM_D900_CHARA_COORD)
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	srl h
	rr l
	ld a, l
	ld hl, $3C36		;These are tilemap coordinates. The first is the character's X coordinate. It calculates the column, where the player is instead the raw coordinate, but maybe it's good 
	di
	call _LABEL_3582_DRAW_NUMBERS_DEBUG
	ld a, (_RAM_DE52_ROOM_NR)
	ld hl, $3CA0
	call _LABEL_3582_DRAW_NUMBERS_DEBUG
	ld a, (_RAM_DE59_LEFT_DEBUG_NR)
	ld hl, $3CCC
	call _LABEL_3582_DRAW_NUMBERS_DEBUG
	ei
	ret

_LABEL_717C_CYCLE_DEAD2ALIVECHARS: ;This also runs every frame, and check for dead characters. As in the normal game, dead players are automatically switched to the next alive one.
	ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS	;Load the player list used in the hud.
	ld b, $07
--:
	ld a, (ix+0)		;This might be a bug, since this is gonna be just IX.
	call _LABEL_6573_CALC_DMG
	ld de, _RAM_DBB5_GOLDMOON_HP	
	add hl, de			;So, we use now damage as healing also? I might be also wrong on the function's task.
	ld a, (hl)
	and a
	jr nz, _LABEL_71B9_INC_CHKNEXT_CHAR		;If the given char is not dead, jump ahead.
	dec hl				;Char is dead.
	ld a, (hl)
	and a
	jr z, ++
	ld c, b
	push ix
	pop iy
-:
	inc iy
	ld a, (iy+0)
	call _LABEL_6573_CALC_DMG
	add hl, de
	ld a, (hl)
	and a
	jr nz, +
	dec c
	jr nz, -
	jp _LABEL_71B9_INC_CHKNEXT_CHAR

+:
	ld c, (iy+0)
	ld a, (ix+0)
	ld (iy+0), a
	ld (ix+0), c
_LABEL_71B9_INC_CHKNEXT_CHAR:		;The player is fine.
	inc ix		;Increment the player array.
	djnz --		;Loop back, and check the next in the roster, until we've checked all of them.
	ret

++:
	dec de
	ld c, b
	push ix
	pop iy
-:
	inc iy
	ld a, (iy+0)
	call _LABEL_6573_CALC_DMG
	add hl, de
	ld a, (hl)
	and a
	jr nz, +
	dec c
	jr nz, -
	inc de
	jp _LABEL_71B9_INC_CHKNEXT_CHAR

+:
	ld c, (iy+0)
	ld a, (ix+0)
	ld (iy+0), a
	ld (ix+0), c
	inc de
	jp _LABEL_71B9_INC_CHKNEXT_CHAR

; Data from 71E8 to 721B (52 bytes)
;.db $3A $C3 $DE $CD $73 $65 $11 $B4 $DB $19 $46 $23 $7E $4F $B0 $C8
;.db $06 $07 $DD $21 $BC $DE $DD $7E $00 $CD $73 $65 $19 $7E $A7 $28
;.db $05 $DD $23 $10 $F1 $C9 $DD $4E $00 $3A $C3 $DE $DD $77 $00 $79
;.db $32 $C3 $DE $C9

_LABEL_71E8_UNUSED:	;Does not seem to be referenced anywhere, and possibly not even used. No idea what this is.
	;ret
		ld a, (_RAM_DEC3_)		;Getting this value..
		call _LABEL_6573_CALC_DMG
		ld de, _RAM_DBB4_GOLDMOON_MAXHP
		add hl, de
		ld b, (hl)
		inc hl
		ld a, (hl)
		ld c, a
		or b
		ret z
		ld b, $07
		ld ix, _RAM_DEBC_INRAM_HUD_PORTRAITS
-:	
		ld a, (ix+0)
		call _LABEL_6573_CALC_DMG
		add hl, de
		ld a, (hl)
		and a
		jr z, +
		inc ix
		djnz -
		ret
	
+:	
		ld c, (ix+0)
		ld a, (_RAM_DEC3_)
		ld (ix+0), a
		ld a, c
		ld (_RAM_DEC3_), a
		ret

_LABEL_721C_INIT_NME:	;THIS SEEMS TO DO SOMETHING.
	ld b, $05	;$05
	ld ix, _RAM_D91C_NME_COORD_ARRAY
	ld de, $001C	;28 bytes.
-:
	ld (ix+9), $00	;D925		;Reset enemy type.
	ld (ix+10), $00	;D926		;Enemy health.
	ld (ix+22), $00	;D932
	ld (ix+23), $00	;D933
	ld (ix+24), $00	;D934
	ld (ix+5), $00	;D921		;Direction.
	add ix, de	;D938
	djnz -		;INITING SOME RAM VALUES TO ZERO.
	;This inits the enemy array.It seems there is place for five-six enemies,

	ld a, (_RAM_DE52_ROOM_NR)	;GET THE ROOM NUMBER. EXAMPLE ROOM 4.
	ld ix, _RAM_D91C_NME_COORD_ARRAY		
	ld hl, _DATA_72D1_NME_ARRAY		
	inc hl	
	ld b, a	
_LABEL_724D_NME:
	ld de, $0006
-:				;We enter into a loop.
	ld a, (hl)	;$$05.
	and a
	ret z		;return if the number is zero
	cp b		;COMPARE WITH ROOM NR.
	jr z, +		;if we are at the room nr we have to, then jump ahead a bit.
	ret nc		;return, if the room nr is less than what we have read.
	add hl, de	;increment the offset\look at the next thing in the array.
	jr -		;loop back
	;So one monster entry is seven bytes.
+:
	;We arrive here when we hit the right room nr.
	dec hl		;Okay, so get the previous byte before the room.
	ld a, (hl)
	add a, $08	;Add eight to what we have read.
	ld (ix+9), a	;This will be the enemy type.
	cp $13
	jr nz, +		;If the enemy type is the endboss, then jump ahead.
	ld (ix+5), $01	;If this is not the endboss, then set a direction and continue.
+:					;ENDBOSS DETECTED.
	inc hl
	inc hl			;Jump ahead two bytes.
	ld a, (hl)
	ld (ix+0), a	;This is the X coordinate of the enemy.
	ld (ix+16), a	;There is also a copy here.
	inc hl
	ld a, (hl)
	ld (ix+1), a	;Screen nr.
	ld (ix+17), a
	ld (ix+7), $00
	ld (ix+2), $74
	ld (ix+18), $74	;These are the monster's "ground" level. Since the game is not really the most classical platformer, this is actually needed to be put here.
	ld (ix+3), $00
	ld (ix+19), $00
	ld a, (ix+9)	;So get the enemy type again.
	sub $09
	ex de, hl
	add a, a
	push bc
	ld c, a
	ld b, $00
	ld hl, _DATA_72BB_NME_HP_CALC	;BC_000E DE:730A IX:D91C
	add hl, bc
	ld a, (hl)	;$04
	inc hl
	ld c, (hl)	;$00
	ex de, hl
	ld b, a
-:		;The above seems to calculate some health stuff I think, based on the enemy type.

	ld a, $06
	call _LABEL_652_LOAD_NEW_SCRN
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
	;Okay, so this loops back, and loads the rest of the enemies for the stage, until there is none left to load.
; Data from 72BB to 72D0 (22 bytes)
_DATA_72BB_NME_HP_CALC:	;This is used for some enemy health calculation. It seems that it's semi-randomized.
;.db $02 $03 $04 $01 $06 $0C $05 $03 $03 $00 $03 $FE $03 $FE $04 $00
;.db $04 $03 $06 $00 $01 $50
;These numbers are used in a calculation, that gives the enemy the final 
;health when the stage is loaded.
.db $02 $03 $04 $01 $06 $0C $05 $03 $06 $00 $03 $FE $03 $FE $04 $00
.db $04 $03 $06 $00 $01 $50


; Data from 72D1 to 7564 (660 bytes)
_DATA_72D1_NME_ARRAY:	
;See the RAM value where these are documented, whyt most of these bytes do, but only a few of them are inportant for modifications.
;Basically every monster is a six byte entry.
.db $01 $01 $90 $01 $00 $00 $02 $01 $20 $03 $00 $00 $08 $01 $E8 $03;$05 $02 $0f $01 $0f $00 $02 $01 $20 $03 $00 $00 $08 $01 $E8 $03  ;.
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
;There is some empty space for enemies, maybe this can be used later.
_LABEL_7565_TRAP_INIT:	;This seems to be related to the traps as well. Based on a quick look, maybe this is the projectile moving code. This runs on every frame.
	ld b, $06
	ld ix, _RAM_D9A8_PROJECTILE_ARRAY
_LABEL_756B_PROC_TRAPS:	;When there is a trap, this is what runs. A very long thing indeed, half of it just tells you what damages and how.
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
	call _LABEL_7A33_REM_USED_TRAPS
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
	ld a, (ix+24)	;This is the type of the trap.
	cp $09		;Green magic. Does not do damage.
	jp z, _LABEL_76D2_
	cp $0A		;Same green magic, but it disappears shortly after it spawned. This time, the trap does do some damage.
	jp z, _LABEL_7851_APPLYTRAPDMG
	cp $0E		;Dragon breath. Does not do damage, but I think it's because it goes in an arc, and does not touch the players.
	jp z, _LABEL_7851_APPLYTRAPDMG
	cp $10		;Big stone, but maybe a bit lighter, my eyes may deceive me. Does not do damage.
	jp z, _LABEL_7851_APPLYTRAPDMG
	cp $11		;The animated rock fall, this does damages.
	jp z, _LABEL_7851_APPLYTRAPDMG
	cp $12		;Fire falling down. This spawns on the ground usually, but falling also works for it.
	jp z, _LABEL_7851_APPLYTRAPDMG
	cp $13		;An arrow. It does little damage, but the arrow trap is pretty deadly, and it's difficult or impossible to dodge it.
	jp z, _LABEL_7851_APPLYTRAPDMG
	cp $14		;Small blue magic, but does not do damage so far.
	jp z, _LABEL_7851_APPLYTRAPDMG
	cp $15		;Smaller firebolt, does damage very well.
	jp z, _LABEL_7851_APPLYTRAPDMG
	and a
	sbc hl, de
	ex de, hl
	ld iy, _RAM_D91C_NME_COORD_ARRAY
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
	ld a, (_RAM_DEF4_FALLING_STONES)
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
	jp _LABEL_7771_DRAGONDEAD_STONES

+:	;This is for the falling stones at the end of the game.
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
	call _LABEL_5851_APPLYDAMAGE
	cp c
	jr c, _LABEL_76C6_
	ld a, (ix+24)
	cp $03		;Arrow.
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
	jp z, _LABEL_7771_DRAGONDEAD_STONES
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
	jp nz, _LABEL_756B_PROC_TRAPS
	ret

_LABEL_76DC_:
	ld a, $1E
	call _LABEL_652_LOAD_NEW_SCRN
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
	call _LABEL_652_LOAD_NEW_SCRN
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
	call _LABEL_7A33_REM_USED_TRAPS
	pop bc
	jp _LABEL_7830_

_LABEL_7771_DRAGONDEAD_STONES:	;This runs, when the Endboss, the Dragon is defeated. You'll get stones thrown on your head. Rude.
	ld (iy+9), $00
	ld (ix+9), $00
	ld a, $02		;Setting this to 02 will init the stone throwing.
	ld (_RAM_DEF4_FALLING_STONES), a
	ld hl, (_RAM_DE74_PT_FOR_CMBT)	;Get the points for combat.
	ld de, $2710
	add hl, de
	ld (_RAM_DE74_PT_FOR_CMBT), hl	;Add some value to it, presumably this is the Dragon's points amount.
	ld a, (_RAM_DE76_CR_DMGLINK)
	adc a, $00
	ld (_RAM_DE76_CR_DMGLINK), a	;Turn off the damage link between Caramon and Raistlin. Since we will now run from the falling stones, it would be bad to lose Raistlin because of this link between the two brothers.
	ld hl, (_RAM_DE3C_MAX_LVL_LEN2)
	ld (_RAM_DE3E_MAX_LVL_LEN), hl
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
_LABEL_77CB_REMOVE_DRAGONHEAD:	;This removes the dragon, when the Crystal Staff hits the dragon.
	;ret
	push bc
	push de
	push hl
	call _LABEL_4BB_VDP_RAM_WRITESETUP
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
	jp nz, _LABEL_77CB_REMOVE_DRAGONHEAD
	inc d
	djnz _LABEL_77CB_REMOVE_DRAGONHEAD
	push ix
	push bc
	push de
	ld de, $001C
	ld ix, _RAM_D9A8_PROJECTILE_ARRAY
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

_LABEL_7830_:	;No effect yet.
	;ret
	ld (ix+9), $00
	ld a, (iy+9)
	cp $13
	jp z, _LABEL_76D1_
	ld a, b
	call _LABEL_652_LOAD_NEW_SCRN
	inc a
	add a, c
	ld c, a
	push ix
	push iy
	pop ix
	call _LABEL_54ED_
	pop ix
	jp _LABEL_76D1_

_LABEL_7851_APPLYTRAPDMG:	;When this is ended in a RET, then no damage was applied as trap famage. I'll comment this one later, but it's not that bad from the first look.
	push bc
	ld a, (_RAM_DEF2_HOLD_PLYR)
	and a
	jp nz, _LABEL_76D1_
	ld a, (_RAM_DEF4_FALLING_STONES)
	dec a
	jr nz, +
	ld bc, $FFB4
	add hl, bc
+:
	ex de, hl
	ld a, (_RAM_D909_FIRST_COMPANION)
	and a
	jp z, _LABEL_78F3_
	ld a, (_RAM_D90A_HERO_ACTION)
	cp $11
	jp z, _LABEL_78F3_
	ld a, (_RAM_D900_CHARA_COORD)
	add a, $0E
	ld l, a
	ld a, (_RAM_D901_SCREEN_NR)
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
	ld a, (_RAM_D902_HERO_GROUNDLEVEL1)
	ld c, a
	ld a, $78
	sub c
	ld c, a
	ld a, (_RAM_D909_FIRST_COMPANION)
	call _LABEL_5851_APPLYDAMAGE
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
	ld a, (_RAM_DBB1_GMSTAFF_IN4CHARS)
	cp $01
	jr nz, ++
	ld a, (_RAM_DEEA_GMOON_STAFF_CHRG)
	cp $C8
	jr z, ++
	add a, $04
	cp $C8
	jr c, +
	ld a, $C8
+:
	ld (_RAM_DEEA_GMOON_STAFF_CHRG), a
	ld (ix+9), $00
	jp _LABEL_76D1_

++:
	ld bc, $0804
	jp _LABEL_7958_

_LABEL_793A_:
	ld (ix+9), $00
	ld a, (_RAM_DEF0_DEFLECT_DRGN_BREATH)
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
	call _LABEL_652_LOAD_NEW_SCRN
	inc a
	add a, c
	ld c, a
	push ix
	ld ix, _RAM_D900_CHARA_COORD;$D900	;CHANGED!
	call _LABEL_5689_HITDETECT
	pop ix
	jp _LABEL_76D1_	;If the above is jumped over, then the trap damage is not applied.

_LABEL_7971_INIT_TRAPS:
	ld b, $06
	ld ix, _RAM_D9A8_PROJECTILE_ARRAY
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
_LABEL_799A_ACTIVATE_TRAP:	;This engages traps. iF THIS IS just a ret, then the traps are not gonna work\activate.
;ret
	ld a, (_RAM_DE52_ROOM_NR)
	ld ix, _RAM_DCE0_TRAPARRAY
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

_LABEL_79DB_ADJUST_TRAPADDRESS:			;Okay, the coffee kicked in, so, this checks for the next trap, and leaves with HL pointing to that address.
	;ret
	ld hl, _RAM_D600_ITEMNTRAP_TYPES	;So, this is after a quick espresso in the morning. This is the trap array in RAM.
	ld de, $0005						;This looks like an amount of bytes.
-:
	ld a, (hl)
	and a
	ret z								;Exit if we hit a zero (empty stuff maybe)
	add hl, de							;Add the offset to the destination.
	jr -								;And then return.

_LABEL_79E7_SPAWN_ITEMTRAP:	;Puts traps and boxes in the game. Traps activate only once when you are in a level, but if you fix the RAM value, and return into the room, the trap is there again. Item numbers correlate with the equipment you can give to your party. I guess the level data contains the coordinates where the boxes, and traps are, but D600 has the item types.
	ld hl, _DATA_7B16_ITEMNTRAP	;Source
	ld de, _RAM_D600_ITEMNTRAP_TYPES	;Dest.
	ld b, $96	;150 bytes.
-:
	ld a, (hl)	;Read a byte from the source.
	and a		;Lose carry.
	jr z, _LABEL_7A01_	;Jump if the byte is zero. Wonder what is this...
	ld c, $04		;If not, load 4 into C.
	ldi			;Load one
	ldi			;two
	ldi			;three
	ldi			;four
	ldi			;five bytes.
	jr -			;Jump back. Since this is LDI, all addresses were incremented in the background.

_LABEL_7A01_:	;Well, even if this is ret'd, nothing noticeable happens. After weeks coming back to this, this is still not clear.
	;ret
	xor a	;Reset a.
	ld hl, _DATA_AB_	;Get this address into HL.
	ld c, $05
	ldi
	ldi
	ldi
	ldi
	ldi			;Increment both HL and DE, and copy the content to DE. Also decrease C.
	djnz _LABEL_7A01_	;Loop back, until b=0.
	ret

_LABEL_7A14_DEALLOCATE_TRAPS:	;Based on the code, this goes to deallocate traps in RAM upon level switching.
	;ret
	push af
	push bc
	push de
	push hl
	push ix
	ld b, $06
	ld ix, _RAM_D9A8_PROJECTILE_ARRAY
-:
	call _LABEL_7A33_REM_USED_TRAPS
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

_LABEL_7A33_REM_USED_TRAPS: ;If this is just a RET, then the traps that are used are not removed at the end of their fall, and remain at ground level, but at least they don't damage the player.
	;Some stuff also tells me that this also does change the dead players to permadead as well upon exiting a level.
	;Later Jimmy: Yes it does.
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
	ld hl, _RAM_D600_ITEMNTRAP_TYPES
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
	call _LABEL_7AFE_PLYR_DEAD_PUT_TOMBSTONE	;This is where the game will put the dead characters as permanently deceased.
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

_LABEL_7AE7_RSHIFTHL:
	ex de, hl	;Exchange, so DE has HL's value now.
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

_LABEL_7AFE_PLYR_DEAD_PUT_TOMBSTONE: ;This runs when a character dies. 
;If the companion does die, and this is just a RET, then there is no tombstone put on the stage.
	
	ld a, (_RAM_DE52_ROOM_NR)	;Sample: 01 as level
	add a, a	;2
	ld hl, _DATA_1343_LVL_POINTERS - 2	;Get the level pointers-2 bytes. I think there is a label there for that too.
	ld c, a		;c is 2.
	ld b, $00	;BC is $0002
	add hl, bc	;We go back to that level pointer.
	ld c, (hl)	;$13f1 
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
_DATA_7B16_ITEMNTRAP: ;It seems every item and trap is five bytes in size, i'll check later what are the attributes. There's a lot of stuff here.
;This goes to D600
;The first byte is the item type.
;Second byte is the Room Nr.
;Third byte is the distance in tiles from the beginning of the room.
;fourth byte is not yet known
;fifth byte tells the game that the chest can be set to visible with the 'Detect Invisible' spell. So far, it does not matter the value as long as it's not zero.
;It seems the very last byte is a zero, so the game stops loading more things.
;$00 means the item is not valid anymore\picked up.

;TODO: Move this to a different ROM bank, and expand it, if needed. An item randomizer would be nice to be here.
;The two smaller pieces of data could be also moved as well.

.db $18 $01 $40 $00 $00 
.db $17 $01 $17 $00 $00 
.db $1C $02 $37 $00 $00 
.db $10 $02 $09 $00 $14
.db $45 $03 $30 $00 $80 $2F $03 $36 $00 $00 $2D $04
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
_DATA_7D0B_:	;This is also some trap thing.
.db $00 $02 $01 $04 $03 $06 $05 $08 $07 $0A $09 $0C $0B $0E $0D $0F
.db $10 $11 $12 $13 $14 $16 $17 $18 $19 $1A $1B $19 $1D $1C $1F $20
.db $1E

; Data from 7D2C to 7D41 (22 bytes)
_DATA_7D2C_:	;This is connected to some trap processing on the stages, or projectiles.
.db $11 $11 $0D $03 $05 $07 $01 $09 $0B $09 $09 $0F $00 $12 $15 $14
.db $13 $1C $1E $11 $01 $07

_LABEL_7D42_LOAD_PLYRSTAT:	;Loads the player stats, inventory and all into RAM.
	;TODO: Move this to a different bank, so some stuff can be freed here.
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
;TODO: Move this to a different ROM bank to free up more space for permanent code, since this is loaded only once at the beginning of a new game.
_DATA_7D6C_PLYRSTATS:
;Goldmoon's starting details.
.dsb 16, $00	;Items.
.db $01 $01 	;Starting item. 01 seems to be the Blue Crystal Staff.
.db $00 $00 	;If this is non-zero, the inventory will taken as full.
.db $13 $13 	;Hitpoints.
.db $00 $05 
.db $00 $05 	;These might be damage points.
.db $0C $0C 	;Strength and Intelligence
.db $10 $0C 	;Wisdom and Constitution
.db $0E $11		;Dexterity and Charisma
.db $06			;No idea yet.
;00-No Ranged Weapon.
;01-Blue Crystal Staff.
;02-Staff of Magius.
;03-Bow.
;04-Longsword.
;05-Dagger.
;06-Hoopak.
;07-Jo Stick. Hm, never seen this in the game.
;08-Hunting Knife.
;09-Spear.
;0A-Two handed sword. I never seen this either!
;0B-Hand Axe.
;0C-Sword.
;0D-Also Sword.
;0E-Green Quiver.	-->This is for the bow.
;0F-Red Quiver.		-->Same.
;10-Pouch.
;11-Bracelet.
;12-Shield.
;13-Shield again.
;14-Shield.
;15-Shield. how many of these are there?
;16-=.=
;17-Gem.
;18-Gem.	;Maybe there is a list of items that are in the game, and this gets them in the pockets of the Companions.
;19-Gem.
;1A-Gem.
;1B-Gem.
;1C-Gold bar.
;1D-Silver bar.
;1E-Gold Chalice.
;1F-Silver Chalice.
;20-Coins.
;21-TBD		Oh interesting! So this is not implemented, or it is, but unused?
;22-TBD
;23-TBD
;24-TBD
;25-TBD
;26-TBD
;27-TBD		Lot of empty slots here.
;28-Bow
;29-Longsword
;2A-Sword.
;2B-Dagger.
;2C-Hunting Knife.
;2D-Scroll.
;2E-Scroll.
;2F-Green Potion
;30-Orange Potion.
;31-Red Potion
;32-Blue Potion
;33-Yellow potion.
;34-Ring.
;35-Gem Ring.	-never seen this either,
;36-Wand.
;37-Disks of Mishakal
;38-Brown Potion
;39-Glitches the game out.
;3A-No name displayed.
;3B-Glitched name.
;3C-Same.
;3D-same.
;3E-same.
;3F-glitch+ goldmoon's name at the end.
;40-Sturm	You can use others as well!
;41-Caramon
;42-Raistlin
;43-Tanis
;44-Tasslehoff
;45-Riverwind
;46-Flint
;47-Dead Character
;48-Glitch
;The rest might be just glitches, and invalid things, so that's where I stop.

.dsb 16, $00
.db $0A $00 
.db $00 $00 
.db $1D $1D 
.db $02 $06 
.db $00 $05 
.db $11 $0E 
.db $0B $10 
.db $0C $0C
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
	;ret
	call _LABEL_6573_CALC_DMG
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
_DATA_7E8F_VDPREGVALS:
.db $36 $E0 $FF $FF $FF $FF $FB $00 $06 $00 $FF

_LABEL_7E9A_REGION_CHKSETUP:	
;Checks if the console is PAL or NTSC. 
;The game is not released in NA, so this is not really needed. NTSC speed differences are getting compensated, and a different legal screen is shown in this mode. 
;The game is not any faster though.
;TODO: This code is not really needed, so removing it, or moving it to a different bank would be preferable.
	di
	ld hl, _DATA_7E8F_VDPREGVALS
	call _LABEL_61F_WRITE_VDP_REG	;WE WRITE THE INITIAL VDP REGISTERS, GET A DEFAULT VDP STATE.
	ei
	halt
	halt
	halt
	ld hl, _RAM_DE9D_TIMER
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
	jp nc, _LABEL_7E9A_REGION_CHKSETUP
	cp $08
	jp c, _LABEL_7E9A_REGION_CHKSETUP	;USELESS COMPARISON,WE'LL BRANCH BACK ANYWAYS.
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
	;TODO: This code can be also moved elsewhere, since it does not include any other bankswitching, therefore it should be good for relocation.
	xor a
	ld l, a
	ld h, a			;Reset HL.
	ld (_RAM_DE5B_COMBAT_MARK), hl	;No combat.
	ld (_RAM_DE74_PT_FOR_CMBT), hl	;Reset points for combat.
	ld (_RAM_DE76_CR_DMGLINK), a	;THIS SEEMS TO BE THE "LINK" BETWEEN CARAMON AND RAISTLIN. IF THIS IS ZERO, THE TWO WON'T GET DAMAGED TOGETHER.
	ld (_RAM_DE96_STOPGAME), a	;This stops the game compleretely. Nor the enemies or the player is able to move. Music play continues. Oh yes, if this value is non-zero.
	ld (_RAM_DE56_WINPOINT_ADD), a	;Adds 10k points to items if this is not zero. I guess when you win the game, it gives you this amount.
	ld (_RAM_DE55_WATERFALL), a
	ld (_RAM_DEE5_MENUORGAME), a		;NO EFFECT AS NOW.
	ld (_RAM_DEEE_PROT_EVIL_TIMER), a
	ld (_RAM_DEF1_STR_POTION), a		;BOTH DOES NOTHING IMMEDIATE.
	ld (_RAM_DE54_HOLD_PLYR), a	;IF THIS IS NOT ZERO, THE PLAYER CHARACTER WON'T BE ABLE TO MOVE.
	ld (_RAM_DEF4_FALLING_STONES), a		;DOES SOME DAMAGE RELATED THING.
	ld (_RAM_DEF3_ENEMY_MOV_ENA), a	;NON-ZERO VALUE WILL PREVENT ENEMIES FROM MOVING.
	ld (_RAM_DEF2_HOLD_PLYR), a	;THIS ONE ALSO STOPS THE PLAYER IN PLACE.
	ld (_RAM_DEF0_DEFLECT_DRGN_BREATH), a
	ld (_RAM_DE71_), a		;NOT APPARENT WHAT THESE DO AT THE MOMENT. After two months, I still have no idea what this does.
	inc a			;WE CLEAR A FEW THINGS HERE AND THERE.
	ld (_RAM_DEBB_DEBUG), a	;TURN DEBUG OFF.
	ld a, (_RAM_DE6D_GAME_WIN)
	ld (_RAM_DE6C_NME_MOVE7BIT), a	;BIT 7 WILL STOP ENEMIES FROM MOVING. BIT 6 DOES NOTHING YET.
	xor a
	ld (_RAM_DE6D_GAME_WIN), a	;In case we have won, the winning flag is cleared.
	ld a, $FF
	ld (_RAM_DEE6_), a
	ld (_RAM_DEE8_PROJECTILE_TYPE), a		
	ld hl, _RAM_DE7A_KILLCOUNT_ARRAY
	ld de, _RAM_DE7A_KILLCOUNT_ARRAY + 1
	ld bc, $0015
	ld (hl), $00
	ldir		;SO, THIS INITS THE MONSTER KILLCOUNT ARRAY, THAT IS SHOWN AT THE SCORE\GAME OVER SCREEN IN THE MENU.		
	ld hl, _RAM_DCF2_DEAD_CHARS
	ld de, _RAM_DCF2_DEAD_CHARS + 1
	ld bc, $001F
	ld (hl), $00	;THIS RAM PART IS WRITTEN WITH NULLS ONLY SO FAR. Marked as unused.
	ldir
	ld hl, $0064
	ld (_RAM_DEEC_RAIST_STFFCHRG), hl	;GIVE 100 CHARGES TO RAISTLIN'S STAFF.
	add hl, hl
	ld (_RAM_DEEA_GMOON_STAFF_CHRG), hl	;GIVE 200 CHARGES TO GOLDMOON'S STAFF.
	ret

; Data from 7F3A to 7FEF (182 bytes)
;This is empty space, and it could be even more, since many things can be moved around without much of a hassle.

.BANK 1 SLOT 1
.ORG $0000

; Data from 7FF0 to 7FFF (16 bytes)	THIS IS THE TMR SEGA PART.
.db $54 $4D $52 $20 $53 $45 $47 $41 $20 $20 $CA $20 $03 $90 $20 $40

.BANK 2
.ORG $0000

; Data from 8000 to A739 (10042 bytes)	;Still no idea what this does.
.incbin "HOTL_mod_DATA_8000_.inc"

;.org $A73A
; Data from A73A to A7C1 (136 bytes)
_DATA_A73A_TEXT_CHARSTAT:	;PRESS BUTTON, AND THE CHAR STATS TEXT.
.db $FE $A2 $3D $50 $72 $65 $73 $73 $20 $42 $75 $74 $74 $6F $6E $FF
_DATA_A74A_COMPANION_STATS_TEXT:
.dsb 12, $20
.db $4D $49 $4E $20 $20 $20 $20 $20 $20 $20 $4D $41 $58 $0D $53 $74
.db $72 $65 $6E $67 $74 $68 $0D $49 $6E $74 $65 $6C $6C $69 $67 $65
.db $6E $63 $65 $0D $57 $69 $73 $64 $6F $6D $0D $43 $6F $6E $73 $74
.db $69 $74 $75 $74 $69 $6F $6E $0D $44 $65 $78 $74 $65 $72 $69 $74
.db $79 $0D $43 $68 $61 $72 $69 $73 $6D $61 $0D $0D $48 $69 $74 $20
.db $70 $6F $69 $6E $74 $73 $0D $0D $55 $73 $69 $6E $67 $3A $FF 
_DATA_A7B5_SCORETXT:	;This is literally a text for 'score'.
.db $20
.db $20 $20 $20 $20 $20 $53 $43 $4F $52 $45 $0D $0D

; Data from A7C2 to A870 (175 bytes)
_DATA_A7C2_SCORE_SCR_TEXT:	;MONSTERS KILLED, AND OTHER TEXT. USED ON THE SCORE SCREEN, AND ENDING\GAME OVER.

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
_DATA_A871_MENUTXT:	;Menu text.

.db $20 $20 $4D $41 $49 $4E $20 $4D $45 $4E $55 $0D $48 $65 $72 $6F
.db $20 $73 $65 $6C $65 $63 $74 $0D $4D $61 $67 $69 $63 $20 $75 $73
.db $65 $72 $20 $73 $70 $65 $6C $6C $73 $0D $43 $6C $65 $72 $69 $63
.db $61 $6C $20 $73 $74 $61 $66 $66 $20 $73 $70 $65 $6C $6C $73 $0D
.db $55 $73 $65 $0D $54 $61 $6B $65 $0D $47 $69 $76 $65 $0D $44 $72
.db $6F $70 $0D $53 $63 $6F $72 $65 $0D $45 $78 $69 $74 $20 $6D $65
.db $6E $75 $FF 
_DATA_A8D4_SLOW_MONST_TXT:	;Potion effect texts.	"The monsters appear to slow down."
	.DB $0D $0D $0D $54 $68 $65 $20 $6D $6F $6E $73 $74 $65
	.db $72 $73 $20 $61 $70 $70 $65 $61 $72 $0D $0D $74 $6F $20 $73 $6C
	.db $6F $77 $20 $64 $6F $77 $6E $FF 
_DATA_A8F9_POTION_CURE_TXT:	;The potion cures some of your wounds.
	.db $0D $0D $0D $54 $68 $65 $20 $70
	.db $6F $74 $69 $6F $6E $20 $63 $75 $72 $65 $73 $0D $0D $73 $6F $6D
	.db $65 $20 $6F $66 $20 $79 $6F $75 $72 $20 $77 $6F $75 $6E $64 $73
	.db $FF 
_DATA_A922_U_FEEL_STRONGER_TXT:	;The first seemingly not used code points here, but that's just this.
_DATA_A925_:	;You feel stronger.
	.db $0D $0D $0D $59 $6F $75 $20 $66 $65 $65 $6C $20 $73 $74 $72
	.db $6F $6E $67 $65 $72 $FF 
_DATA_A937_MORE_CONFIDENCE_TXT:	;You feel more confident.	
	.db $0D $0D $0D $59 $6F $75 $20 $66 $65 $65
	.db $6C $20 $6D $6F $72 $65 $0D $0D $63 $6F $6E $66 $69 $64 $65 $6E
	.db $74 $FF 
_DATA_A953_MORE_CONF_RING_TXT:	;You feel more confident wearing the ring.	
	.db $0D $0D $0D $59 $6F $75 $20 $66 $65 $65 $6C $20 $6D $6F
	.db $72 $65 $0D $0D $63 $6F $6E $66 $69 $64 $65 $6E $74 $20 $77 $65
	.db $61 $72 $69 $6E $67 $0D $0D $74 $68 $65 $20 $72 $69 $6E $67 $FF
_DATA_A981_TAKEMENU_TXT:	;Take menu
	.db $20 $20 $20 $54 $41 $4B $45 $20 $4D $45 $4E $55 $0D 
_DATA_A98E_MOREITEMS:	;You cannot carry any moe items, Exit menu.
	.db $0D $0D $0D
	.db $59 $6F $75 $20 $63 $61 $6E $6E $6F $74 $20 $63 $61 $72 $72 $79
	.db $20 $61 $6E $79 $0D $0D $6D $6F $72 $65 $20 $69 $74 $65 $6D $73
	.db $0D $0D $0D $45 $78 $69 $74 $20 $6D $65 $6E $75 $FF 
_DATA_A9BE_GIVEMENU_TXT_NMORE:	;Give menu
	.db $20 $20 $20
	.db $47 $49 $56 $45 $20 $4D $45 $4E $55 
_DATA_A9CA_NOMORE_ITEMS:	; Selected character cannot carry more items. Exit menu.
	.db $0D $0D $0D $73 $65 $6C $65
	.db $63 $74 $65 $64 $20 $63 $68 $61 $72 $61 $63 $74 $65 $72 $0D $0D
	.db $63 $61 $6E $6E $6F $74 $20 $63 $61 $72 $72 $79 $20 $61 $6E $79
	.db $0D $0D $6D $6F $72 $65 $20 $69 $74 $65 $6D $73 $0D $0D $45 $78
	.db $69 $74 $20 $6D $65 $6E $75 $FF
	
; Data from AA09 to AA5E (86 bytes)	
_DATA_AA09_MAGIC_USR_TXT:	;Magic user spells.
	.db $4D $41 $47 $49 $43 $20 $55 $53 $45 $52 $20 $53 $50 $45 $4C $4C
	.db $53 $0D 
_DATA_AA1B_RAIST_STAFF_NOTREADY:	;Raistlin has not readied the staff of Magius. Exit menu.
	.db $0D $0D $20 $20 $52 $61 $69 $73 $74 $6C $69 $6E $20 $68
	.db $61 $73 $20 $6E $6F $74 $0D $0D $20 $20 $20 $20 $72 $65 $61 $64
	.db $69 $65 $64 $20 $74 $68 $65 $0D $0D $20 $20 $53 $74 $61 $66 $66
	.db $20 $6F $66 $20 $4D $61 $67 $69 $75 $73 $0D $0D $45 $78 $69 $74
	.db $20 $6D $65 $6E $75 $FF
	
; Data from AA5F to AADA (124 bytes)	
_DATA_AA5F_RAISTLIN_NOT_4_TXT:	;Magic user spells. Raistlin is not one of the first four characters. Exit menu.
	.db $4D $41 $47 $49 $43 $20 $55 $53 $45 $52 $20 $53 $50 $45 $4C $4C
	.db $53 $0D $0D $0D 
;Raistlin is not one of the first four characters.
	.db $52 $61 $69 $73 $74 $6C $69 $6E $20 $69 $73 $20
	.db $6E $6F $74 $20 $6F $6E $65 $20 $6F $66 $0D $0D $20 $20 $74 $68
	.db $65 $20 $66 $69 $72 $73 $74 $20 $66 $6F $75 $72 $0D $0D $20 $20
	.db $20 $20 $63 $68 $61 $72 $61 $63 $74 $65 $72 $73 $0D $0D $45 $78
	.db $69 $74 $20 $6D $65 $6E $75 $FF 
_DATA_AAB7_ONLY_RAISTLIN_TXT:	;Only Raistlin can use this item.	
	.db $0D $0D $0D $4F $6E $6C $79 $20
	.db $52 $61 $69 $73 $74 $6C $69 $6E $20 $63 $61 $6E $0D $0D $75 $73
	.db $65 $20 $74 $68 $69 $73 $20 $69 $74 $65 $6D $FF
	
; Data from AADB to AB0F (53 bytes)	
_DATA_AADB_RAISTLIN_NOT_PTY_LEADER:	;Raistlin must be party leader to use this spell.
	.db $0D $0D $0D $52 $61 $69 $73 $74 $6C $69 $6E $20 $6D $75 $73 $74
	.db $20 $62 $65 $0D $0D $70 $61 $72 $74 $79 $20 $6C $65 $61 $64 $65
	.db $72 $20 $74 $6F $20 $75 $73 $65 $0D $0D $74 $68 $69 $73 $20 $73
	.db $70 $65 $6C $6C $FF
	
; Data from AB10 to AC6B (348 bytes)	
_DATA_AB10_MAGIC_USER_MENUTEXT:	
	.db $4D $41 $47 $49 $43 $20 $55 $53 $45 $52 $20 $53 $50 $45 $4C $4C
	.db $53 $0D ;Magic user spells.
	
	.db $43 $68 $61 $72 $6D $0D ;Charm.
	.db $53 $6C $65 $65 $70 $0D 	;Sleep.
	.db $4D $61 $67 $69 $63 $20 $6D $69 $73 $73 $69 $6C $65 $0D ;Magic missile.
	.db $57 $65 $62 $0D	;Web.
	.db $44 $65 $74 $65 $63 $74 $20 $4D $61 $67 $69 $63 $0D ;Detect Magic.
	.db $44 $65 $74 $65 $63 $74 $20 $69 $6E $76 $69 $73 $69 $62 $6C $65 $0D ;Detect Invisible.
	.db $46 $69 $6E $61 $6C $20 $73 $74 $72 $69 $6B $65 $0D ;Final Strike.
	.db $42 $75 $72 $6E $69 $6E $67 $20 $68 $61 $6E $64 $73 $0D ;Burning hands.
	.db $45 $78 $69 $74 $20 $6D $65 $6E $75 $FF ;Exit menu.
_DATA_AB83_MAGIUS_HANDBURN_TXT:
	.db $0D $0D $0D $54 $68 $65 $20 $53 $74 $61 $66 $66 $20
	.db $6F $66 $20 $4D $61 $67 $69 $75 $73 $0D $0D $62 $75 $72 $6E $73
	.db $20 $79 $6F $75 $72 $20 $68 $61 $6E $64 $73 $20 $61 $73 $0D $0D
	.db $79 $6F $75 $20 $74 $6F $75 $63 $68 $20 $69 $74 $FF ;The Staff of Magius burns your hands as you touch it.
_DATA_ABBD_B_BLUE_FLR_TXT:
	.db $0D $0D $0D $41 $20 $62 $72 $69 $65 $66 $20 $62 $6C $75 $65 $20 $66 $6C $61
	.db $72 $65 $0D $0D $62 $75 $72 $6E $73 $20 $79 $6F $75 $72 $20 $68
	.db $61 $6E $64 $73 $20 $61 $73 $0D $0D $79 $6F $75 $20 $74 $6F $75
	.db $63 $68 $20 $69 $74 $FF ;A brief blue flare burns your hands as you touch it.
_DATA_ABF6_STF_FLARE_GIVE_CHR_TXT:
	.db $0D $0D $0D $54 $68 $65 $20 $73 $74 $61
	.db $66 $66 $20 $66 $6C $61 $72 $65 $73 $0D $0D $61 $73 $20 $79 $6F
	.db $75 $20 $61 $74 $74 $65 $6D $70 $74 $20 $74 $6F $20 $67 $69 $76
	.db $65 $0D $0D $69 $74 $20 $74 $6F $20 $74 $68 $69 $73 $20 $63 $68
	.db $61 $72 $61 $63 $74 $65 $72 $FF ;The staff flares as you attempt to give it to this character.
_DATA_AC38_CANNOT_GIVE_ITM_2DEAD:
	.db $0D $0D $0D $59 $6F $75 $20 $63
	.db $61 $6E $20 $6E $6F $74 $20 $67 $69 $76 $65 $0D $0D $61 $6E $20
	.db $6F $62 $6A $65 $63 $74 $20 $74 $6F $20 $61 $0D $0D $64 $65 $61
	.db $64 $20 $63 $68 $61 $72 $61 $63 $74 $65 $72 $FF	;You cannot give an object to a dead character.
	

; Data from AC6C to AC9B (48 bytes)
_DATA_AC6C_WATERFALL_FX:
.db $57 $41 $54 $45 $52 $46 $41 $4C $4C $0D $0D $0D $54 $68 $65 $20
.db $77 $61 $74 $65 $72 $66 $61 $6C $6C $20 $63 $75 $72 $65 $73 $20
.db $61 $6C $6C $0D $79 $6F $75 $72 $20 $77 $6F $75 $6E $64 $73 $FF

; Data from AC9C to ACD1 (54 bytes)
_DATA_AC9C_WATERFALL_NOFX:
.db $57 $41 $54 $45 $52 $46 $41 $4C $4C $0D $0D $0D $54 $68 $65 $20
.db $77 $61 $74 $65 $72 $66 $61 $6C $6C $20 $68 $61 $73 $20 $6E $6F
.db $0D $65 $66 $66 $65 $63 $74 $20 $6F $6E $20 $79 $6F $75 $72 $20
.db $70 $61 $72 $74 $79 $FF

; Data from ACD2 to ACFB (42 bytes)
_DATA_ACD2_TASSLEHOFF_TRAP_TXT:
.db $0D $0D $0D $54 $61 $73 $73 $6C $65 $68 $6F $66 $66 $20 $6C $6F
.db $63 $61 $74 $65 $73 $0D $0D $61 $6E $64 $20 $72 $65 $6D $6F $76
.db $65 $73 $20 $61 $20 $74 $72 $61 $70 $FF

; Data from ACFC to AD31 (54 bytes)
_DATA_ACFC_RIVERWIND_PROT_TXT:
.db $0D $0D $0D $52 $69 $76 $65 $72 $77 $69 $6E $64 $20 $6D $6F $76
.db $65 $73 $20 $74 $6F $0D $0D $74 $68 $65 $20 $66 $72 $6F $6E $74
.db $20 $74 $6F $0D $0D $70 $72 $6F $74 $65 $63 $74 $20 $47 $6F $6C
.db $64 $6D $6F $6F $6E $FF

; Data from AD32 to AEF1 (448 bytes)
_DATA_AD32_ALARMBELLS_TXT:

.db $0D $0D $0D $59 $6F $75 $20 $68 $65 $61 $72 $20 $61 $6C $61 $72
.db $6D $0D $0D $62 $65 $6C $6C $73 $20 $69 $6E $20 $74 $68 $65 $20
.db $64 $69 $73 $74 $61 $6E $63 $65 $FF
	
; Data from AD5B to ADBC (98 bytes)	
_DATA_AD5B_CLERIC_SPELLS_TXT:	;Clerical staff spells.	
	.db $43 $4C $45 $52 $49 $43 $41 $4C $20 $53 $54 $41 $46 $46 $20 $53
	.db $50 $45 $4C $4C $53 
_DATA_AD73_:	;Characters 1 to 4 are not holding the Blue Crystal Staff. Exit Menu.
	.db $0D $0D $0D $43 $68 $61 $72 $61 $63 $74 $65
	.db $72 $73 $20 $31 $20 $74 $6F $20 $34 $0D $0D $20 $20 $61 $72 $65
	.db $20 $6E $6F $74 $20 $68 $6F $6C $64 $69 $6E $67 $20 $74 $68 $65
	.db $0D $0D $20 $20 $42 $6C $75 $65 $20 $43 $72 $79 $73 $74 $61 $6C
	.db $20 $53 $74 $61 $66 $66 $0D $0D $45 $78 $69 $74 $20 $6D $65 $6E
	.db $75 $FF
	
; Data from ADBD to AE68 (172 bytes)	
_DATA_ADBD_CLERIC_SPLS_TXT:	;Clerical staff spell list.	
	.db $43 $4C $45 $52 $49 $43 $41 $4C $20 $53 $54 $41 $46 $46 $20 $53
	.db $50 $45 $4C $4C $53 $0D ;Clerical staff spells.
	.db $43 $75 $72 $65 $20 $6C $69 $67 $68 $74
	.db $20 $77 $6F $75 $6E $64 $73 $0D  ;Cure light wounds.

	.db $50 $72 $6F $74 $65 $63 $74 $69 ;Protection from evil.
	.db $6F $6E $20 $66 $72 $6F $6D $20 $65 $76 $69 $6C $0D 
	.db $46 $69 $6E $64 $20 $74 $72 $61 $70 $73 $0D ;Find traps.

	.db $48 $6F $6C $64 $20 $70 $65 $72 $73 $6F $6E $0D ;Hold person
	.db $53 $70 $69 $72 $69 $74 $75 $61 $6C $20 $68 $61 $6D $6D $65 $72 $0D ;Spritual hammer.
	.db $50 $72 $61 $79 $65 $72 $0D ;Prayer.
	.db $43 $75 $72 $65 $20 $63 $72 $69 $74 $69 $63 $61 $6C $20 $77 $6F $75 $6E $64 $73 $0D ;Cure critical wounds.
	.db $52 $61 $69 $73 $65 $20 $64 $65 $61 $64 $0D ;Raise Dead.
	.db $44 $65 $66 $6C $65 $63 $74 $20 $64 $72 $61 $67 $6F $6E $20 $62 $72 $65 $61 $74 $68 $0D ;Deflect dragon breath.
	.db $45 $78 $69 $74 $20 $6D $65 $6E $75 $FF	;Exit menu.
	
; Data from AE69 to AEF1 (137 bytes)	
_DATA_AE69_CLERIC_SPLS_TXT2:	;This is the second set of the same spell list above.
	.db $43 $4C $45 $52 $49 $43 $41 $4C $20 $53 $54 $41 $46 $46 $20 $53
	.db $50 $45 $4C $4C $53 $0D $43 $75 $72 $65 $20 $6C $69 $67 $68 $74
	.db $20 $77 $6F $75 $6E $64 $73 $0D $46 $69 $6E $64 $20 $74 $72 $61
	.db $70 $73 $0D $43 $75 $72 $65 $20 $63 $72 $69 $74 $69 $63 $61 $6C
	.db $20 $77 $6F $75 $6E $64 $73 $0D $44 $65 $66 $6C $65 $63 $74 $20
	.db $64 $72 $61 $67 $6F $6E $20 $62 $72 $65 $61 $74 $68 $0D $45 $78
	.db $69 $74 $20 $6D $65 $6E $75 $FF 
_DATA_AED1_RAIST_PREPSPELL_TXT:	;Raistlin prepares this spell.
	.db $0D $0D $0D $52 $61 $69 $73 $74
	.db $6C $69 $6E $20 $70 $72 $65 $70 $61 $72 $65 $73 $0D $0D $74 $68
	.db $69 $73 $20 $73 $70 $65 $6C $6C $FF



; Data from AEF2 to BFFF (4366 bytes)
_DATA_AEF2_MISSION_FAILEDTXT:	;You failed in your quest for the Disks of Mishakal.
;.incbin "HOTL_mod_DATA_AEF2_MISSION_FAILEDTXT.inc"

	.db $59 $6F $75 $20 $66 $61 $69 $6C $65 $64 $20 $69 $6E $20 $79 $6F
	.db $75 $72 $20 $71 $75 $65 $73 $74 $0D $66 $6F $72 $20 $74 $68 $65
	.db $20 $44 $69 $73 $6B $73 $20 $6F $66 $20 $4D $69 $73 $68 $61 $6B
	.db $61 $6C $FF
	
; Data from AF25 to BFFF (4315 bytes)	
_DATA_AF25_WINTEXT:	;Congratulations. You have recovered the Disks of Mishakal.
	.db $43 $6F $6E $67 $72 $61 $74 $75 $6C $61 $74 $69 $6F $6E $73 $2E
	.db $20 $59 $6F $75 $20 $68 $61 $76 $65 $0D $72 $65 $63 $6F $76 $65
	.db $72 $65 $64 $20 $74 $68 $65 $0D $44 $69 $73 $6B $73 $20 $6F $66
	.db $20 $4D $69 $73 $68 $61 $6B $61 $6C $FF 
	;CHANGED
_DATA_AF5F_:	;This is some data, but seemingly nothing is read from here. Possibly level data, but the beginning is the ending text.
;	.db $40 $00 $00 $00 $00 $00
;	.db $00 $00 $40 $00 $00 $90 $40 $0A $00 $40 $40 $00 $00 $00 $00 $08
;	.db $00 $00 $40 $00 $00 $00 $40 $0A $00 $00 $40 $FF $FF $FB
;	.dsb 9, $FF
;	.db $FE $FF $FF $FF $FF $FF $FB
;	.dsb 9, $FF
;	.db $FA $FF $FF $FF $FF $FF $FA $FD $FF $FF $FF $FF $FF $FF $FF $FF
;	.db $FE
;	.dsb 15, $FF
;	.db $FA $F0 $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF
;	.db $FE
;	.dsb 15, $FF
;	.db $FA $FF $5F $FF $FF $FF $FB
;	.dsb 9, $FF
;	.db $FE
;	.dsb 15, $FF
;	.db $FA $FF $FF $5F $FE $F5 $FC $FF $DB $FF $FF $F5 $FE $F5 $FC $FF
;	.db $DB $FF $FF $D4 $FE $F5 $FC $FF $DB $FF $FF $D4 $7E $F5 $FE $FF
;	.db $DB $FF $FF $F4 $FE $F5 $FC $FF $DB $FF $FF $D4 $FE $F5 $FE $FF
;	.db $DB $FF $FF $D4 $FE $F5 $FE $FF $DB $FF $7F $D4 $FE $F5 $FC $FF
;	.db $DB $FF $FF $D4 $7E $F5 $FE $FF $DB $FF $7F $D4 $FE $F5 $FE $FF
;	.db $DB $FF $FF $D4 $FE $F5 $FE $FF $DB $FF $7F $D4 $7E $F7 $FC $FF
;	.db $DB $FF $FF $F4 $FE $FD $FE $FF $DB $FF $DF $F4 $FE $F5 $FC $FF
;	.db $DB $FF $FE $F4 $FE $FD $FE $FF $DB $FF $FF $D4 $FE $F5 $FC $FF
;	.db $DB $FF $FE $F4 $50 $10 $0C $3F $0B $00 $00 $00 $00 $10 $00 $00
;	.db $0B $07 $40 $00 $50 $10 $0C $00 $0B $00 $00 $40 $08 $00 $00 $00
;	.db $0B $00 $50 $40 $70 $10 $0C $BF $0B $00 $00 $00 $40 $00 $00 $00
;	.db $0B $0F $50 $00 $00 $00 $00 $10 $0B $02 $40 $00 $1A $00 $00 $00
;	.db $0B $04 $50 $40 $50 $00 $0C $3F $0B $00 $00 $00 $40 $00 $00 $00
;	.db $0B $00 $50 $00 $40 $10 $00 $10 $0B $00 $00 $00 $08 $00 $00 $FF
;	.db $0B $0F $50 $00 $50 $00 $0C $FF $0B $00 $00 $00 $02 $00 $F0 $00
;	.db $0B $04 $50 $00 $00 $10 $00 $10 $0B $00 $00 $00 $40 $10 $00 $00
;	.db $0B $04 $50 $40 $FF $FF $FC $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $FF $FF $FC $FF $FB $FF $FF $FF $FE $FF $FF $FF
;	.db $FB $FF $FF $FF $FF $FF $FC $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $FF $FF $FC $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $FF $FF $FC $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $7F $FF $FC $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $50 $10 $0C $BF $09 $00 $00 $00 $00 $00 $00 $00
;	.db $0B $00 $00 $10 $70 $00 $0C $00 $0B $00 $00 $00 $0A $00 $00 $00
;	.db $0B $04 $50 $00 $50 $00 $0C $7F $4B $00 $00 $40 $00 $00 $00 $10
;	.db $0B $04 $50 $00 $00 $00 $00 $00 $1B $00 $00 $00 $4A $00 $00 $00
;	.db $0B $0F $50 $00 $50 $00 $0C $FF $0B $00 $00 $00 $40 $00 $0C $00
;	.db $0B $0D $40 $00 $40 $10 $00 $00 $0B $00 $00 $40 $4A $10 $10 $00
;	.db $0B $04 $F0 $40 $70 $40 $0C $30 $0B $00 $00 $00 $48 $00 $00 $00
;	.db $0B $00 $50 $00 $00 $00 $00 $00 $0B $0A $50 $00 $48 $00 $00 $10
;	.db $0B $05 $50 $40 $40 $10 $08 $00 $00 $00 $00 $00 $00 $10 $00 $00
;	.db $0B $00 $00 $00 $40 $10 $0C $00 $08 $00 $00 $40 $4A $10 $00 $10
;	.db $0B $00 $40 $40 $00 $10 $0C $02 $00 $00 $00 $00 $40 $10 $00 $00
;	.db $0B $20 $00 $00 $00 $10 $00 $00 $09 $00 $00 $00 $00 $00 $00 $00
;	.db $0B $00 $50 $00 $00 $00 $0C $00 $00 $00 $00 $00 $50 $00 $00 $00
;	.db $0B $00 $08 $00 $00 $10 $0C $00 $01 $00 $00 $00 $40 $00 $00 $10
;	.db $0B $00 $40 $00 $10 $00 $08 $06 $00 $00 $00 $00 $00 $00 $00 $00
;	.db $0B $00 $40 $00 $40 $00 $00 $10 $09 $00 $00 $00 $00 $10 $00 $00
;	.db $0B $00 $40 $00 $FF $FF $FC
;	.dsb 15, $FF
;	.db $FC
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FC
;	.dsb 9, $FF
;	.db $FB
;	.dsb 15, $FF
;	.db $FB $FF $FF $FF $FF $BF $FC $FF $FF $FF $FF $FF $FF $FF $FE $FF
;	.db $FB
;	.dsb 15, $FF
;	.db $FB $FF $FF $FF $FF $FF $FC
;	.dsb 25, $FF
;	.db $FB $FF $FF $FF $40 $00 $0C $00 $00 $00 $00 $00 $00 $10 $00 $00
;	.db $01 $00 $00 $10 $00 $00 $0C
;	.dsb 9, $00
;	.db $49 $40 $00 $00 $00 $00 $0C $00 $00 $00 $00 $00 $00 $10 $00 $00
;	.db $09 $00 $00 $00 $00 $10 $00 $20 $00 $00 $00 $00 $00 $00 $00 $00
;	.db $09 $00 $00 $00 $00 $00 $0C
;	.dsb 9, $00
;	.db $01 $00 $00 $00 $00 $00 $0C $10 $40 $00 $00 $00 $00 $00 $00 $00
;	.db $09 $00 $00 $00 $00 $00 $08 $00 $00 $00 $00 $00 $40 $00 $00 $00
;	.db $09
;	.dsb 15, $00
;	.db $09 $00 $00 $40 $FF $FF $FC
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FC $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $FF $FF $FC
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $F0 $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF $FC $FF
;	.db $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $4F $FF $FF $FF $FC
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $7B $FF $FF $D4 $7F $F5 $DF $FF $FA $F9 $7E $FF $7F $F5 $DF $7F
;	.db $FA $F9 $7E $FF $7F $F5 $DF $FF $FA $F9 $7E $7F $7F $FD $DF $FF
;	.db $FA $F9 $7E $FF $7F $F5 $DF $7F $FA $F9 $7E $FF $7F $75 $DF $FF
;	.db $FA $F9 $7E $FF $7F $F5 $DF $FF $FA $F9 $7E $7F $7F $F5 $DF $FF
;	.db $FA $F9 $7E $FF $7F $F5 $DF $7F $FA $F9 $7E $7F $7F $75 $DF $7F
;	.db $FA $F9 $7E $7F $7F $75 $DF $7F $FA $F9 $7E $7F $7F $FD $5E $F7
;	.db $FA $F9 $7E $FF $7F $F5 $DF $FF $FA $F9 $7E $FF $7F $F5 $DF $FF
;	.db $FA $F9 $7E $FF $FF $F7 $DF $FF $FA $F9 $FE $FF $7F $FD $DF $FF
;	.db $FA $F9 $7E $FF $50 $00 $0E $57 $0A $00 $00 $10 $00 $00 $00 $40
;	.db $0A $00 $00 $00 $70 $00 $0E $40 $0A $00 $00 $40 $08 $00 $00 $40
;	.db $0A $00 $30 $40 $70 $00 $0F $7F $0A $00 $00 $00 $08 $00 $08 $50
;	.db $0A $11 $10 $40 $00 $00 $00 $50 $0A $00 $00 $40 $0E $00 $00 $40
;	.db $0A $00 $70 $40 $70 $00 $0E $57 $0A $00 $00 $40 $00 $00 $00 $40
;	.db $0A $11 $10 $10 $00 $00 $00 $00 $0A $00 $00 $10 $0C $00 $00 $5F
;	.db $0A $10 $70 $00 $70 $00 $0F $5F $0A $00 $00 $50 $04 $00 $D0 $40
;	.db $0A $00 $30 $10 $00 $00 $00 $40 $0A $00 $00 $00 $04 $00 $00 $50
;	.db $0A $00 $30 $40
;	.dsb 12, $FF
;	.db $FA $F9 $FF $FF $7F $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FA $FD $FF $FF $FF $FF $FE $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FA $F9 $FF $FF $FF $FF $FF $FF $FA $FF $FF $FF $FF $FF $FF $FF
;	.db $FA $FD $FF $FF $7F $FF $FE $FF $FA $FF $FF $FF $DF $FF $FF $FF
;	.db $FA $F9 $FF $FF $FF $FF $FE $FF $FA $FF $FF $FF $FF $FF $FF $FF
;	.db $FA $FB $FF $FF $7F $FF $FF $7F $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FA $F9 $FF $FF $FF $FF $FF $FF $FA $FF $FF $FF $FF $FF $FF $FF
;	.db $FA $FD $FF $FF $50 $00 $0A $57 $0A $00 $00 $00 $00 $00 $00 $40
;	.db $0A $00 $00 $40 $70 $00 $0E $40 $0A $00 $00 $00 $0C $00 $00 $40
;	.db $0A $00 $30 $00 $50 $00 $0E $57 $0A $00 $00 $00 $00 $00 $00 $40
;	.db $0A $40 $00 $00 $00 $00 $00 $50 $1A $10 $20 $40 $0E $00 $00 $40
;	.db $0A $0F $30 $50 $70 $00 $0F $5F $0A $00 $00 $40 $00 $00 $0E $40
;	.db $0A $10 $10 $40 $00 $00 $00 $40 $0A $00 $00 $40 $0E $00 $00 $40
;	.db $0A $40 $F0 $40 $50 $00 $0E $50 $0A $00 $00 $40 $08 $00 $00 $40
;	.db $0A $00 $10 $00 $00 $00 $00 $40 $0A $10 $00 $40 $00 $00 $00 $00
;	.db $0A $10 $10 $40 $00 $00 $0F $50 $00 $00 $00 $40 $00 $00 $00 $40
;	.db $0A $00 $00 $00 $00 $00 $0E $50 $08 $10 $00 $50 $0F $00 $00 $40
;	.db $0A $00 $20 $40 $00 $00 $0E $C4 $08 $00 $00 $00 $00 $00 $00 $50
;	.db $0A $00 $00 $00 $00 $00 $00 $40 $0A $00 $00 $50 $00 $00 $00 $40
;	.db $0A $00 $10 $40 $00 $00 $0A $40 $00 $00 $00 $00 $70 $10 $00 $50
;	.db $0A $00 $00 $50 $00 $00 $0E $40 $0A $00 $00 $50 $10 $04 $00 $40
;	.db $0A $00 $60 $40 $00 $00 $0E $55 $08 $00 $00 $40 $00 $00 $00 $40
;	.db $0A $00 $00 $00 $00 $00 $00 $50 $0A $10 $00 $40 $00 $00 $00 $40
;	.db $0A $00 $10 $50
;	.dsb 60, $FF
;	.db $FE
;	.dsb 31, $FF
;	.db $FA $FF $FF $FF $FF $FF $FE
;	.dsb 9, $FF
;	.db $FE
;	.dsb 15, $FF
;	.db $FA $FF $FF $FF $00 $00 $0A $40 $00 $00 $00 $40 $00 $00 $00 $50
;	.db $08 $00 $00 $40 $00 $00 $0E $40 $00 $00 $00 $40 $00 $08 $40 $40
;	.db $08 $00 $00 $40 $00 $00 $0A $40 $00 $10 $00 $00 $00 $00 $00 $40
;	.db $0A $00 $00 $00 $00 $00 $00 $40 $08 $00 $00 $40 $00 $00 $00 $50
;	.db $0A $00 $00 $40 $00 $00 $0E $40 $00 $00 $00 $00 $00 $00 $00 $50
;	.db $0A $40 $00 $40 $00 $00 $0E $40 $08 $00 $00 $40 $00 $00 $00 $40
;	.db $08 $00 $00 $00 $00 $00 $0E $40 $40 $00 $00 $00 $00 $00 $D0 $50
;	.db $0A $00 $00 $40 $00 $00 $00 $40 $08 $00 $08 $40 $00 $10 $00 $40
;	.db $08 $00 $00 $10 $FF $FF $FE
;	.dsb 9, $FF
;	.db $FA
;	.dsb 15, $FF
;	.db $FE $FF $FF $FF $FF $FF $FE
;	.dsb 9, $FF
;	.db $FA
;	.dsb 15, $FF
;	.db $FA $F0
;	.dsb 14, $FF
;	.db $FA
;	.dsb 15, $FF
;	.db $FE $FF $0F $FF $FF $FF $FE
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FA $FF $FF $7F $FE $FF $FB $FF $FE $F7 $F7 $F7 $FE $FF $FB $7F
;	.db $FE $F3 $F7 $D7 $FE $7F $FB $7F $FE $F3 $F7 $D7 $DE $7F $FB $FF
;	.db $FE $F3 $F7 $D7 $FE $7F $FB $7F $FE $F3 $77 $D7 $FE $7F $FB $7F
;	.db $FE $F3 $F7 $D7 $DE $7F $FB $FF $FE $D3 $F7 $D7 $DE $7F $FB $FF
;	.db $FE $F3 $F7 $D7 $DE $7F $FB $7F $FE $F3 $F7 $D7 $DE $3F $FB $7F
;	.db $FE $F1 $F7 $D7 $FE $7F $FB $7F $FE $F1 $F7 $D7 $FE $FF $FB $FF
;	.db $FE $F5 $FF $FF $FE $FF $FB $7F $FE $F3 $F7 $D7 $FE $FF $FB $7F
;	.db $FE $F3 $FF $F7 $FE $7F $FB $FF $FE $F3 $F7 $D7 $FE $FF $FB $FF
;	.db $FE $F7 $F7 $F7 $D0 $00 $0B $1F $0E $00 $00 $40 $00 $00 $00 $10
;	.db $0E $01 $40 $00 $D0 $00 $0B $10 $0E $01 $00 $40 $08 $00 $00 $10
;	.db $0E $01 $70 $40 $D0 $00 $0B $7F $0E $00 $00 $40 $08 $00 $00 $10
;	.db $0E $01 $50 $40 $00 $00 $00 $00 $0E $01 $00 $00 $0A $00 $00 $10
;	.db $0E $01 $F0 $00 $D0 $00 $0B $1F $0E $00 $00 $40 $00 $00 $00 $10
;	.db $0E $01 $70 $40 $00 $00 $00 $00 $0E $01 $00 $40 $08 $00 $20 $7F
;	.db $0E $01 $F0 $40 $D0 $00 $0B $3F $1E $00 $00 $40 $48 $00 $D0 $00
;	.db $0E $01 $70 $40 $00 $00 $00 $10 $0E $01 $40 $40 $00 $00 $00 $10
;	.db $0E $01 $70 $40 $FF $FF $FB $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $FF $FE $FF $FF $FF $FE $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $F7 $FF $FF $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $7F $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $7F $FE $FF $FF $FF $FF $7F $FF $FF
;	.db $FE $F7 $FF $FF $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $F7 $FF $FF $D0 $00 $0B $5F $0E $00 $00 $40 $00 $00 $00 $10
;	.db $0E $01 $60 $50 $D0 $00 $0B $10 $1E $00 $00 $40 $08 $00 $00 $10
;	.db $0E $01 $70 $40 $D0 $10 $1B $1F $0E $01 $00 $00 $00 $00 $00 $10
;	.db $0E $01 $30 $00 $00 $00 $00 $00 $1E $01 $10 $40 $0A $00 $00 $10
;	.db $0E $0F $F0 $40 $D0 $00 $0B $1F $0E $01 $00 $00 $00 $00 $0B $10
;	.db $0E $01 $50 $40 $00 $00 $00 $10 $0E $01 $00 $00 $08 $00 $00 $10
;	.db $0E $01 $F0 $40 $D0 $00 $0B $70 $0E $01 $00 $00 $08 $00 $00 $10
;	.db $0E $01 $50 $40 $00 $00 $00 $10 $0E $01 $00 $40 $00 $00 $00 $10
;	.db $0E $01 $50 $40 $00 $00 $0B $10 $00 $00 $00 $40 $00 $00 $00 $10
;	.db $0A $00 $00 $40 $00 $00 $0B $00 $0A $00 $00 $40 $0E $00 $00 $10
;	.db $0E $00 $00 $40 $00 $00 $0B $11 $80 $00 $00 $40 $00 $00 $00 $10
;	.db $0E $00 $40 $40 $00 $00 $00 $10 $0A $00 $00 $40 $00 $00 $00 $10
;	.db $0E $00 $70 $40 $00 $00 $0B $10 $00 $00 $00 $40 $D0 $00 $00 $10
;	.db $0E $00 $00 $40 $00 $00 $0B $10 $0A $00 $00 $40 $00 $00 $00 $10
;	.db $0E $00 $60 $40 $00 $00 $0B $1B $08 $00 $00 $40 $00 $00 $00 $00
;	.db $0E $00 $40 $08 $00 $00 $00 $10 $0A $00 $00 $40 $00 $00 $00 $10
;	.db $0E $00 $50 $50 $FF $FF $FB
;	.dsb 9, $FF
;	.db $FA $FF $FF $FF $FF $FF $FB
;	.dsb 9, $FF
;	.db $FE $FF $FF $FF $FF $FF $FB
;	.dsb 9, $FF
;	.db $FE $FF $FF $FF $FF $FF $FF $FF $FE $FF $FE $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF
;	.db $FE $FF $FF $FF $FF $FF $FF $FF $DE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB
;	.dsb 9, $FF
;	.db $FE $FF $FF $FF $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $00 $00 $0B $10 $00 $00 $00 $40 $00 $10 $00 $10
;	.db $02 $00 $00 $40 $00 $00 $0B $10 $00 $00 $00 $40 $00 $00 $00 $10
;	.db $0A $00 $00 $40 $00 $00 $0B $50 $00 $00 $00 $40 $00 $00 $00 $10
;	.db $0A $00 $00 $40 $00 $00 $00 $00 $10 $00 $00 $40 $00 $01 $00 $10
;	.db $1A $00 $00 $40 $00 $00 $0B $10 $00 $00 $00 $00 $00 $00 $00 $10
;	.db $02 $00 $00 $40 $00 $00 $0B $50 $00 $00 $00 $40 $00 $00 $00 $10
;	.db $0E $00 $00 $40 $00 $00 $0B $10 $00 $00 $10 $40 $00 $00 $10 $10
;	.db $0A $00 $00 $40 $00 $00 $00 $10 $00 $00 $00 $40 $00 $00 $00 $10
;	.db $0E $00 $00 $40 $FF $FF $FB
;	.dsb 9, $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FB $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $F0 $FF $DF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF
;	.db $FE $FF $FF $FF $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $5F $FF $FF $FF $FB $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $FF $FF $FF $FF $FF $FE $FF $FF $FF $FF $FF $FF $FF
;	.db $FE $FF $FF $D7 $DE $FF $FB $F5 $FB $F1 $FE $7F $DE $F7 $FB $F5
;	.db $FB $F1 $FE $7F $DE $77 $FB $F5 $FB $F1 $FE $7F $DE $F7 $FB $F5
;	.db $FB $F1 $FE $7F $DE $F7 $FB $75 $FB $F1 $FE $7F $DE $77 $FB $F5
;	.db $FB $F1 $FE $7F $DE $77 $FB $F5 $FB $D1 $FE $7F $DE $FF $FB $F5
;	.db $FB $F1 $FE $7F $DE $77 $FB $F5 $FB $F1 $FE $5F $DE $77 $FB $F5
;	.db $FB $F1 $FE $7F $DE $77 $FB $F5 $FB $F1 $FE $7F $DE $FF $FB $F5
;	.db $FB $F5 $FE $7F $DE $FF $FB $F5 $FB $F1 $FE $FF $DE $F7 $FB $F5
;	.db $FB $F1 $FE $7F $DE $FF $FB $FF $FB $F1 $FE $7F $DE $FF $FB $F5
;	.db $FB $F1 $FE $FF $50 $00 $0B $21 $03 $00 $00 $50 $00 $00 $00 $00
;	.db $03 $01 $00 $00 $50 $00 $0A $00 $03 $01 $00 $00 $02 $00 $00 $00
;	.db $0B $01 $20 $50 $D0 $00 $08 $85 $03 $00 $00 $40 $00 $00 $00 $00
;	.db $03 $01 $00 $00 $40 $00 $00 $00 $03 $01 $00 $10 $06 $00 $00 $00
;	.db $0B $01 $60 $10 $50 $00 $0A $C5 $0B $00 $00 $00 $00 $00 $00 $00
;	.db $0B $01 $00 $50 $00 $00 $00 $00 $03 $01 $00 $40 $46 $00 $00 $E1
;	.db $03 $01 $40 $50 $D0 $00 $08 $A1 $03 $01 $00 $50 $06 $00 $F0 $00
;	.db $0B $01 $00 $50 $00 $00 $00 $00 $03 $01 $00 $40 $04 $00 $00 $00
;	.db $43 $01 $60 $00 $DF $FF $FB $F5 $FF $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $FF $DF $FF $FB $FF $FB $FF $FF $FF $FE $FF $FF $FF
;	.db $FB $FF $FF $FF $DF $FF $FA $F5 $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $F7 $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $F7 $FF $FF $DF $FF $FA $F5 $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $F7 $FF $FF $FF $FF $FB $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $F7 $FF $FF $DF $FF $FB $F5 $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $F7 $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $F7 $FF $FF $50 $00 $08 $01 $03 $00 $00 $10 $00 $10 $00 $00
;	.db $03 $01 $00 $50 $D0 $00 $08 $00 $03 $01 $00 $10 $02 $00 $00 $00
;	.db $03 $41 $40 $10 $50 $00 $08 $A1 $03 $01 $00 $00 $00 $00 $00 $00
;	.db $03 $41 $00 $40 $00 $00 $00 $00 $03 $01 $00 $40 $06 $00 $00 $00
;	.db $03 $0F $00 $60 $50 $00 $08 $A1 $03 $00 $00 $00 $02 $00 $08 $00
;	.db $03 $01 $00 $40 $00 $00 $00 $00 $03 $01 $00 $00 $06 $00 $00 $00
;	.db $03 $01 $F0 $40 $50 $00 $08 $A0 $03 $01 $00 $10 $00 $00 $00 $00
;	.db $03 $41 $00 $10 $40 $00 $00 $00 $0B $01 $00 $50 $00 $00 $00 $00
;	.db $03 $01 $00 $40 $00 $00 $0A $00 $00 $00 $00 $50 $00 $00 $00 $00
;	.db $03 $00 $00 $10 $00 $00 $08 $00 $03 $00 $00 $40 $06 $00 $00 $00
;	.db $03 $00 $00 $50 $10 $00 $0A $01 $00 $00 $00 $10 $00 $00 $00 $00
;	.db $03 $00 $00 $50 $00 $00 $10 $00 $03 $10 $00 $50 $00 $00 $00 $00
;	.db $0B $00 $00 $40 $00 $00 $2A $01 $00 $00 $00 $00 $50 $00 $00 $00
;	.db $03 $00 $00 $50 $00 $00 $0A $00 $03 $00 $00 $40 $00 $00 $00 $10
;	.db $03 $00 $00 $50 $10 $00 $08 $01 $01 $00 $00 $50 $10 $00 $00 $00
;	.db $03 $00 $00 $00 $00 $00 $00 $00 $03 $00 $00 $40 $10 $00 $40 $00
;	.db $0B $00 $00 $50 $FF $FF $FB
;	.dsb 15, $FF
;	.db $FB
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FB
;	.dsb 25, $FF
;	.db $FB $FF $FF $FF $FF $FF $FA $FF $FF $FF $FF $FF $FF $FF $FB $FF
;	.db $FB
;	.dsb 15, $FF
;	.db $FB $FF $FF $FF $FF $FF $FA
;	.dsb 9, $FF
;	.db $FB
;	.dsb 15, $FF
;	.db $FB $FF $FF $FF $40 $00 $08 $00 $00 $00 $00 $50 $00 $00 $00 $00
;	.db $01 $00 $00 $50 $00 $00 $08 $00 $00 $00 $00 $50 $00 $00 $00 $00
;	.db $03 $00 $08 $40 $00 $00 $08 $00 $00 $00 $00 $50 $10 $00 $00 $00
;	.db $03 $40
;	.dsb 9, $00
;	.db $40 $00 $00 $00 $00 $01 $00 $00 $40 $00 $00 $09 $00 $00 $00 $00
;	.db $50 $00 $00 $00 $00 $03 $10 $00 $00 $00 $00 $0A $00 $00 $00 $00
;	.db $40 $00 $00 $00 $00 $03 $00 $10 $50 $00 $00 $0B $01 $00 $00 $00
;	.db $50 $00 $00 $70 $00 $03 $00 $00 $40 $50 $00 $00 $00 $01 $00 $04
;	.db $10 $00 $00 $00 $00 $03 $00 $10 $40 $FF $FF $FA
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FA
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FB $F5 $FF $FF $FF $FF $FF $FF $FF $FF
;	.db $FB
;	.dsb 10, $FF
;	.db $7F $FF $FF $FF $FF $FB $F0 $FF $FF $FF $FF $FB $FF $FF $FF $FF
;	.db $FF $FF $FF $FB $FF $FB
;	.dsb 15, $FF
;	.db $FB $FF $0F $FF $FF $FF $FA
;	.dsb 9, $FF
;	.db $FB $FF $FF $FF $FF $FF $FF $FF $FB $FF $FF $FF $FF $FF $FF $FF
;	.db $FB $FF $FF $5F
	

.BANK 3		;THIS SEEMS TO BE THE LEVEL BACKGROUND. MAYBE FOR ALL LEVELS?
.ORG $0000

; Data from C000 to FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_C000_.inc"

.BANK 4
.ORG $0000

; Data from 10000 to 121BF (8640 bytes)
;.DSB 8640,$00
.incbin "HOTL_mod_DATA_10000_.inc"	;DOES NOT REALLY MAKE ANY DIFFERENCE IF THIS IS COMMENTED OUT.

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
_DATA_12306_HUD_LPART:	;THIS IS THE TILEMAP OF ONE PART OF THE HUD. THE LOWER PART OF THE COMPASS, AND THE PORTRAITS AS WELL.
;.dsb 378,$00
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
;.dsb 208,$00
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
_DATA_12550_COMPASS_ON_MAP:

.db $00 $01 $01 $01 $02 $01 $03 $01 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $04 $01 $05 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00
.db $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00 $89 $00

; Data from 125C0 to 13FFF (6720 bytes)
_DATA_125C0_HUD_DATA:	;HUD AND PORTRAITS.

.incbin "HOTL_mod_DATA_125C0_.inc"

.BANK 5
.ORG $0000

; Data from 14000 to 17FFF (16384 bytes)
.incbin "HOTL_mod_DATA_14000_.inc"

.BANK 6		;THIS IS ALSO LEVEL GRAPHICS, FOR THE FIRST LEVEL MOST LIKELY.
.ORG $0000

; Data from 18000 to 1BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_18000_.inc"

.BANK 7		;ARCHWAY GRAPHICS, AND THE ENDBOSS' TILES.
.ORG $0000

; Data from 1C000 to 1FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_1C000_.inc"

.BANK 8		;THIS SEEMS TO BE SOME SPRITE COORDINATE BANK OR SOMETHING SIMILAR.
.ORG $0000

; Data from 20000 to 20077 (120 bytes)
_DATA_20000_:	;MESSES UP SPRITES REALLY BAD, SO THIS MIGHT BE SOME SPRITE MAP, OR A COLLECTION OF POINTES, I DON'T KNOW.

.db $84 $80 $00 $00 $00 $00 $94 $80 $BE $81 $08 $00 $98 $8A $D2 $8B
.db $08 $00 $40 $96 $7A $97 $08 $00 $74 $A3 $26 $A4 $08 $00 $E8 $A9
.db $0A $AB $08 $00 $64 $B5 $86 $B6 $08 $00 $00 $80 $42 $81 $09 $00
.db $60 $8B $82 $8C $09 $00 $98 $94 $4A $95 $09 $00 $08 $9B $A2 $9B
.db $09 $00 $C0 $A1 $32 $A2 $09 $00 $A4 $A6 $E6 $A6 $09 $00 $C8 $A8
.db $42 $A9 $09 $00 $3C $AD $A6 $AD $09 $00 $B4 $AF $0E $B0 $09 $00
.db $BC $B1 $36 $B2 $09 $00 $2C $B6 $66 $B6 $09 $00 $8C $B7 $E6 $B7
.db $09 $00 $00 $80 $0A $80 $0A $00

; Data from 20078 to 2007B (4 bytes)
_DATA_20078_:	;IF THIS IS COMMENTED OUT, THEN THE COLLISION DETECTION IS GETTING MESSY.
.db $EC $80 $EE $81

; Data from 2007C to 23FFF (16260 bytes)
_DATA_2007C_:	;THIS MIGHT BE SOME SPRITE COORDINATES, AND SPRITE MAPS, AS THE PLAYER DOES NOT SHOW, AND ENEMIES ARE SHOWING AS GARBLED SPRITES.
.incbin "HOTL_mod_DATA_2007C_.inc"

.BANK 9		;USED, BUT NOT SURE FOR WHAT PART OF THE ENGINE.
.ORG $0000

; Data from 24000 to 27FFF (16384 bytes)
.incbin "HOTL_mod_DATA_24000_.inc"

.BANK 10	;NO IDEA YET, BUT MAYBE SOME TILEMAPS.
.ORG $0000

; Data from 28000 to 2BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_28000_.inc"

.BANK 11	;GOLDMOON.
.ORG $0000

; Data from 2C000 to 2FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_2C000_.inc"

.BANK 12	;STURM AND CARAMON.
.ORG $0000

; Data from 30000 to 33FFF (16384 bytes)
.incbin "HOTL_mod_DATA_30000_.inc"

.BANK 13	;CARAMON.
.ORG $0000

; Data from 34000 to 37FFF (16384 bytes)
.incbin "HOTL_mod_DATA_34000_.inc"

.BANK 14	;RAISTLIN AND TANIS.
.ORG $0000

; Data from 38000 to 3BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_38000_.inc"

.BANK 15	;TANIS AND TASSLEHOFF.
.ORG $0000

; Data from 3C000 to 3FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_3C000_.inc"

.BANK 16	;TASSLEHOFF AND RIVERWIND.
.ORG $0000

; Data from 40000 to 43FFF (16384 bytes)
.incbin "HOTL_mod_DATA_40000_.inc"

.BANK 17	;RIVERWIND AND FLINT.
.ORG $0000

; Data from 44000 to 47FFF (16384 bytes)
.incbin "HOTL_mod_DATA_44000_.inc"

.BANK 18	;FLINT, GARGOYLE WITH THE SWORD, GARGOYLE WITH MAGIC.
.ORG $0000

; Data from 48000 to 4BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_48000_.inc"

.BANK 19	;TROLL ENEMY GFX, SOME SMOKE, GARGOYLE ENEMY, AND OTHER UNCOMPRESSED GRAPHICS.
.ORG $0000

; Data from 4C000 to 4FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_4C000_.inc"

.BANK 20	;SPIDER GRAPHICS, THE GHOST HUMAN AND THE REGULAR HUMAN ENEMY.
.ORG $0000

; Data from 50000 to 53FFF (16384 bytes)
.incbin "HOTL_mod_DATA_50000_.inc"

.BANK 21	;THIS IS THE END BOSS' MOVING PARTS, THE SMALLER HATCHLING'S AND THE SPIDER'S GRAPHICS, AND OTHER TILE STUFF.
.ORG $0000

; Data from 54000 to 57FFF (16384 bytes)
.incbin "HOTL_mod_DATA_54000_.inc"

.BANK 22	;THIS BANK HAS GRAPHICS FOR THE MAGIC MISSILES, AND FALLING TRAPS, AND SOME OTHER DATA.
.ORG $0000

; Data from 58000 to 5BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_58000_.inc"

.BANK 23	;THIS HAS THE WEB HOLD GRAPHICS FOR SOME ENEMIES, AND SOME OTHER DATA, I DON'T KNOW YET.
.ORG $0000

 ;Data from 5C000 to 5FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_5C000_.inc"

.BANK 24	;THIS IS THE SOUND ENGINE'S BANK, AND THE MUSIC AND SOUND IS HERE AS WELL.
.ORG $0000

; Data from 60000 to 600E5 (230 bytes)
_DATA_60000_:	;THESE MAY BE THE INSTRUMENT DATAS.
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
.db $28 $28 $28 $28 $28 $28 $00

; 1st entry of Pointer Table from 6064E (indexed by unknown)
; Data from 60214 to 60258 (69 bytes)
_DATA_60214_:
.db $13 $20 $01 $00 $01 $06 $07 $08
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

; Pointer Table from 6062E to 6064B (15 entries, indexed by _RAM_DD13_MUSIC_NR)
.dw _DATA_60BE2_ _DATA_61276_ _DATA_60666_ _DATA_6153E_ _DATA_61910_ _DATA_60666_ _DATA_60666_ _DATA_61CC2_
.dw _DATA_61D0D_ _DATA_61D7A_ _DATA_60666_ _DATA_61E11_ _DATA_6203A_ _DATA_6224F_ _DATA_60666_

; Data from 6064C to 6064D (2 bytes)
.db $00 $00
;THIS IS WHERE THE ROM SLIDES A BIT OFF COMPARED TO THE ORIGINAL!
; Pointer Table from 6064E to 60663 (11 entries, indexed by unknown)
_DATA_6064E_:
.dw _DATA_61276_ _DATA_60162_ _DATA_601E6_ _DATA_604A7_ _DATA_6045F_ _DATA_60483_ _DATA_601FD_ _DATA_60259_
.dw _DATA_6033A_ _DATA_60127_ _DATA_600E6_

; Data from 60664 to 60665 (2 bytes)
.db $00 $00

; 3rd entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
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
_DATA_60732_SOUNDFX_TABLE:
.dw _DATA_6066D_ _DATA_606CA_ _DATA_606DD_ _DATA_6070C_ _DATA_6071F_


; Data from 6073C to 60BE1 (1190 bytes)
.incbin "HOTL_mod_DATA_6073C_.inc"

; 1st entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
; Data from 60BE2 to 61275 (1684 bytes)
_DATA_60BE2_:
.incbin "HOTL_mod_DATA_60BE2_.inc"

; 1st entry of Pointer Table from 6064E (indexed by unknown)
; Data from 61276 to 6153D (712 bytes)
_DATA_61276_:	;THE TITLE SCREEN, AND THE GAME OVER MUSIC USES THIS DATA.
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

; 4th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
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

; 5th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
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

; 8th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
; Data from 61CC2 to 61D0C (75 bytes)
_DATA_61CC2_:
.db $95 $01 $F4 $C7 $9C $87 $39 $87 $38 $9A $35 $9B $34 $74 $32 $09
.db $34 $0A $35 $0A $34 $09 $32 $0A $31 $0A $39 $3A $35 $4D $31 $4D
.db $34 $4E $32 $4D $34 $4D $35 $4D $37 $14 $3A $43 $00 $0A $3E $3A
.db $40 $3A $3E $13 $40 $14 $41 $13 $40 $13 $3E $14 $39 $3A $39 $13
.db $37 $3A $3C $13 $39 $3A $37 $27 $39 $9B $FF

; 9th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
; Data from 61D0D to 61D79 (109 bytes)
_DATA_61D0D_:
.db $95 $01 $F4 $12 $9D $88 $35 $13 $3C $13 $3B $61 $3F $AE $37 $13
.db $3E $13 $3A $61 $3D $60 $3A $27 $39 $27 $32 $09 $31 $0A $32 $0A
.db $34 $09 $35 $14 $32 $09 $31 $0A $32 $0A $34 $09 $35 $14 $37 $13
.db $34 $4D $37 $61 $32 $0A $31 $09 $32 $0A $34 $0A $35 $13 $32 $0A
.db $31 $09 $32 $0A $34 $09 $35 $14 $37 $13 $39 $4D $3A $14 $3D $4D
.db $35 $3A $37 $3A $35 $13 $37 $14 $39 $13 $37 $13 $35 $14 $32 $3A
.db $32 $13 $30 $3A $35 $13 $32 $3A $30 $27 $34 $9B $FF

; 10th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
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

; 12th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
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

; 13th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
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

; 14th entry of Pointer Table from 6062E (indexed by _RAM_DD13_MUSIC_NR)
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
	ld hl, _RAM_DD12_MUS_ENA
	ld de, _RAM_DD12_MUS_ENA + 1
	ld (hl), $00
	ld bc, $010F
	ldir
	ld ix, _RAM_DD42_SOUND
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
	ld (_RAM_DD13_MUSIC_NR), a
	ld a, (_RAM_DD13_MUSIC_NR)
	ld iy, _RAM_DD32_SOUND;$DD32
	cp $FF
	jp z, _LABEL_62549_
	dec a
	call _LABEL_624D0_
	ld a, $01
	ld (_RAM_DD12_MUS_ENA), a
	ld a, (_RAM_DD13_MUSIC_NR)
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
	ld ix, _RAM_DD42_SOUND
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

_LABEL_62489_PLAYSFX:	;This is the same, just saving more registers.
	push bc
	push de
	push hl
_LABEL_6248C_PLAYSFX:	;We come here from the pretty convincing sound effect init part.
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
	ld iy, _RAM_DD22_;$DD22
	ld ix, _RAM_DDB2_ ;$DDB2	;Fixed some RAM stuff here. If the vals are changed, this would look bad. Also: CHANGED!
	ld (_RAM_DD15_), a
	dec a
	bit 7, a
	jp nz, _LABEL_62502_
	add a, a
	ld e, a
	ld d, $00	;DE will be the sound nr.
	ld hl, _DATA_60732_SOUNDFX_TABLE	;Load the source of the sound effects.
	add hl, de	;Yup, add the 'index' to the HL source.
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
	ld ix, _RAM_DD42_SOUND
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
	ld (_RAM_DD12_MUS_ENA), a
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

_LABEL_62549_:	;This is also controls the volumes of the channels, but more things are needed to be checked. Whatever values are given, the routine does not really do anything differently.
	ld a, $10
	ld (_RAM_DD16_), a
	ld a, c
	ld (_RAM_DD19_), a
	ld a, $00
	ld (_RAM_DD17_), a
	ret

_LABEL_62558_MUSIC_VOL_ADJST:	;This will change volume levels, and fade the sound out as well. If this is not running, then for example the title screen music will also play on the character description screens as well.
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

_LABEL_6259C_PREPSOUND_VALS:
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
	call _LABEL_62489_PLAYSFX
	pop bc
	pop ix
	jr _LABEL_6259C_PREPSOUND_VALS

+:
	cp $FF
	jr nz, +
	ld (ix+6), $00
	jr _LABEL_6259C_PREPSOUND_VALS

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
	jp nz, _LABEL_6259C_PREPSOUND_VALS
	ret

_LABEL_62645_SOUND_ENGINE:
	push af
	push bc
	push de
	push hl
	push ix
	push iy				;SAVE ALL REGISTERS ON STACK.
	ld a, (_RAM_DE23_CONSOLE_REGION)	;CHECK THE CONSOLE REGION.
	and a
	jr z, _LABEL_62660_SOUND_MAIN			;JUMP THERE IF CONSOLE IS PAL REGION.
	ld hl, _RAM_DE24_NTSC_COMP			;OTHERWISE IT'S NTSC.
	inc (hl)
	ld a, (hl)
	cp $06				;SO, IT SEEMS WE COMPENSATE FOR EVERY SIXT FRAME, SINCE PAL IS 50HZ.
	jr nz, _LABEL_62660_SOUND_MAIN		;IF WE ARE NOT IN THE SIXTH FRAME, THEN WE NEED TO DO THE OTHER FIVE.
	ld (hl), $00			;WE WERE IN THE SIXTH, RESET THE EXTRA COUNTER.
	jr +				;AND EXIT THE ROUTINE THERE.

_LABEL_62660_SOUND_MAIN:		;MAIN PART OF THE SOUND ENGINE.
	call _LABEL_6286E_INIT_SOUND	;We have to init the sound engine first.
	ld iy, _RAM_DD32_SOUND
	ld ix, _RAM_DD42_SOUND		;These are used for playback.
	ld b, $04			;How many channels are we going to use.
	call _LABEL_6259C_PREPSOUND_VALS		;This silences the music, if commented out.
	ld iy, $DD22			
	ld ix, _RAM_DDEA_		
	ld b, $02			;Sound channels for the sound fx.
	call _LABEL_6259C_PREPSOUND_VALS		;This silences out the sound effect, if commented out.
	call _LABEL_62558_MUSIC_VOL_ADJST ;So, you give two index values, then shoot these, and the code will play them later.
	call ++
+:
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ret				;RESTORE THE REGISTER VALUES, AND GO ON.

++:	;This is some sound output part, but i'm not yet ready to dissect this. Yet I have a faint clue what this is.
	ld iy, _RAM_DD22_
	ld ix, $DD42
	ld a, (iy+16)
	ld (_RAM_DD18_SOUND_NOTE), a
	ld a, (iy+17)
	ld e, $80
	call _LABEL_6270C_OUTPUT_SOUND
	ld a, (iy+24)
	and $0F
	xor $9F
	out (Port_PSG), a
	ld bc, $001C
	add ix, bc
	ld a, (iy+18)
	ld (_RAM_DD18_SOUND_NOTE), a
	ld a, (iy+19)
	ld e, $A0
	call _LABEL_6270C_OUTPUT_SOUND
	ld a, (iy+25)
	and $0F
	xor $BF
	out (Port_PSG), a
	add ix, bc
	ld e, $04
	call _LABEL_6272F_3RDCHANNEL
	ld (_RAM_DD18_SOUND_NOTE), a
	ld e, $05
	call _LABEL_6272F_3RDCHANNEL
	ld e, $C0
	call _LABEL_6270C_OUTPUT_SOUND
	ld e, $0A
	call _LABEL_6272F_3RDCHANNEL
	and $0F
	xor $DF
	out (Port_PSG), a
	add ix, bc
	ld e, $06
	call _LABEL_6272F_3RDCHANNEL
	and $07
	or $E0
	ld e, a
	ld a, (_RAM_DD14_SFX_PLAY)
	cp e
	jr z, +		;Oh! This part is actually controls the sound effects, and whenever this equals, the sound effect is not playing. Otherwise we have to load and play a sound effect.
	ld a, e
	ld (_RAM_DD14_SFX_PLAY), a
	out (Port_PSG), a
+:

	ld e, $0B
	call _LABEL_6272F_3RDCHANNEL
	and $0F
	xor $0F
	or $F0
	out (Port_PSG), a
	ret

_LABEL_6270C_OUTPUT_SOUND:
	ld h, a
	ld a, (_RAM_DD18_SOUND_NOTE)
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

_LABEL_6272F_3RDCHANNEL:	;Messes with the music channels, that's what I can see.
	push iy
	ld d, $00
	add iy, de
	ld d, (iy+16)		;This looks like the third channel's frequency.
	ld a, (ix+117)		;This messes with the third channel's time for how long an instrument is playing.
	;Wtf with these indexes? 117 really this was necessary?
	and a
	jr z, +
	inc a
	jr z, +
	ld d, (iy+0)
+:
	pop iy
	ld a, d
	ret

_LABEL_62748_LOAD_NOTES:	;THIS LOOKS LIKE IT LOADS THE NOTES TO EACH CHANNEL, AND THEY RUN BEFORE A LEVER ACTAUALLY LOADS.
	push ix
	pop iy	;THESE NEEDED TO BE SAVED, THAT'S TRUE.
	ld a, (ix+21)	;THIS IS DD42+21=DD57
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
	jr Nz, +
	inc de
	inc de
	ld (iy+14), e
	ld (iy+18), d
	ret

+:	;THIS IS SOME NOTE HANDLING, I'M SURE. lATER ON, THE MUSIC FORMAT MIGHT BE ALSO DISASSEMBLED, BUT NOT FOR NOW.
	ld a, (hl)
	cp $94

	jp z, _LABEL_627CC_
	cp $95
	jp z, _LABEL_627E1_LOAD_NOTE_LEN
	cp $9D
	jp z, _LABEL_62810_LOAD_NEXT__MUS_SEGMENT
	cp $9E
	jp z, _LABEL_62837_LOAD_INSTR
	cp $FF
	jp z, _LABEL_6285B_LOOP_MUSIC
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
	jp _LABEL_62748_LOAD_NOTES

_LABEL_627CC_:	;Decreases ome RAM value, maybe this loads the song lenghts or something. I don't see to be used in normal gameplay so far, but since this is decoded, i'm sure the code reaches it sometimes.
	ld (iy+14), $00
	ld (iy+18), $00
	dec (ix+11) ;dec
	jp nz, _LABEL_62748_LOAD_NOTES
	ld (ix+21), $00
	jp _LABEL_62748_LOAD_NOTES

_LABEL_627E1_LOAD_NOTE_LEN:	;Note lenghts and things are getting this way from the song data.
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
	jp _LABEL_62748_LOAD_NOTES

_LABEL_62810_LOAD_NEXT__MUS_SEGMENT:	;This loads the next segment in the song.
	dec (iy+15)
	jr nz, +
	ld a, (iy+14)
	add a, $01
	ld (iy+14), a
	ld a, (iy+18)
	adc a, $00
	ld (iy+18), a
	jp _LABEL_62748_LOAD_NOTES

+:
	ld a, (iy+16)
	ld (iy+14), a
	ld a, (iy+19)
	ld (iy+18), a
	jp _LABEL_62748_LOAD_NOTES

_LABEL_62837_LOAD_INSTR:	;This seems like a "note prepare" for the next song.

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
	jp _LABEL_62748_LOAD_NOTES

_LABEL_6285B_LOOP_MUSIC:		;This restarts the music, once it loops.
	pop bc
	pop bc
	ld a, (_RAM_DD13_MUSIC_NR)
	call _LABEL_6242B_SET_MUS
	jp _LABEL_62660_SOUND_MAIN

_LABEL_62866_:
	pop bc
	pop bc
	call _LABEL_624D0_
	jp _LABEL_62660_SOUND_MAIN

_LABEL_6286E_INIT_SOUND:	;THIS IS THE FIRST THING WE DO AFTER THE MAIN SOUND ROUTINE IS ON.
	ld a, (_RAM_DD12_MUS_ENA)
	and a
	ret z	;IF WE HAVE NOT ENABLED MUSIC\SOUND, THEN JUST RETURN.
	ld ix, _RAM_DD42_SOUND	;THIS LOOKS LIKE THE BEGINNING OF THE SOUND VARIABLES.
	ld b, $04		;HOW MANY SOUND CHANNELS WE HAVE.
--:		;WE DECREMENT THE MUSIC TIMERS HERE.
	dec (ix+10)	;THIS IS DD4C, THE FIRST CHANNEL'S TIMER.
	jr nz, _LABEL_628B2_CALC_CH_ADDRESS	;IF THE TIMER IS NOT EXPIRED, JUMP AHEAD AND GET THE OTHER CHANNEL'S ADDRESSES, AND DECREASE THEIR TIMER AS WELL WHEN THE LOOP IS BACK.
-:
	call _LABEL_62748_LOAD_NOTES	;LOAD THE INIT. NOTES. THIS IS ALSO USED AT THE BEGINNING OF LEVELS, AS FAR AS I'VE NOTICED.
	ld a, (hl)
	and a
	jr z, +	;EITHER Z OR NZ, DOES NOT REALLY MATTER FROM THE ENGINE'S STANDPOINT.
	cp $7F
	jr z, ++
	add a, (iy+17)
+:	;DOES NOT MATTER, BUT THE BELOW IS STILL USED.
	add a, a
	ld e, a
	ld d, $00
	ld iy, _DATA_60000_	;MY GUESS FOR THIS IS THAT IT'S THE INSTRUMENTS THE MUSIC USES. AT THE MOMENT, I DON'T WANT TO 
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
_LABEL_628B2_CALC_CH_ADDRESS:	;WE JUMP HERE FROM --.
	ld de, $001C	;I LIKE HOW THE ADDRESSES ARE SCATTERED AROUND, LIKE THESE.
	add ix, de	;DD4C+1C=DD68, THIS IS THE SECOND CHANNEL'S TIMER.
			;DD84 IS THE THIRD.
			;DDA0 IS THE NOISE.
	djnz --
	ret

++:
	inc hl
	ld a, (hl)
	and a
	jr z, -
	ld (ix+10), a
	jr _LABEL_628B2_CALC_CH_ADDRESS
;.org $628c4
; Data from 628C4 to 63FFF (5948 bytes)
.incbin "HOTL_mod_DATA_628C4_.inc"	;NO IDEA WHAT THIS IS. THE FIRST LEVEL DOES NOT USE IT, AND ITS NOT MUSIC EITHER, DESPITE BEING IN THAT BANK.

;So, the below banks are used for the compressed intro tilemaps, tiles and all that jazz. The very last bank is halfway used so far, because the letter tiles are stored in it. The rest, I have no idea yet what is used for. If you want to get rid of the intro, and the legal screens, this is where you want to start. The initial game is likely not using any of this at all. Almost a 100kb can be freed this way. Also, the second to last bank is almost empty, so code, and other things can go there, the software does not check. Additionally, I'll mark the offsets where the individual screens are loaded, but it's likely that i'll just rip these off, and use the free space for something else.

.BANK 25	;COMPRESSED GRAPHICS BANK. This seems to be used with all compressed things in the intro. Without this, no intro graphics are going to load.
.ORG $0000

; Data from 64000 to 67FFF (16384 bytes)
_DATA_64000_COMP_GFX:	;THIS SEEMS TO BE THE GRAPHICS FOR THE COMPRESSED IMAGES. IF COMMENTED OUT, OBVIOUSLY THE COMPRESSED STUFF AT THE BEGINNING WON'T SHOW.
.incbin "HOTL_mod_DATA_64000_.inc"

.BANK 26	;The US Gold Logo's compressed tilemap and stuff is here. Also the Title Screen with the Dragon Logo is also stored here, and Goldmoon's, Sturm's  tilemap and tiles as well.
.ORG $0000

; Data from 68000 to 6BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_68000_.inc"

.BANK 27	;Compressed intro tilemaps and tile data.
.ORG $0000
;Half of Caramon's graphics, Raistlin as a whole, Tanis's tilemap is here.
; Data from 6C000 to 6FFFF (16384 bytes)
.incbin "HOTL_mod_DATA_6C000_.inc"

.BANK 28	;I'm not sure this has any level data yet, but the below is definetly true.
.ORG $0000
;Tanis's, Tasslehoff's, Riverwind's and Flint's  intro tilemap and things are in here. Later on, we have to map the entry addresses where the tiles and stuff are stored.
; Data from 70000 to 73FFF (16384 bytes)
.incbin "HOTL_mod_DATA_70000_.inc"

.BANK 29	;TASSLEHOFF AND FLINT HAS SOME GRAPHICS IN THIS, and some intro screens as well. Some part of the intro graphics are also reading from here.
;The intro legal screen's tilemap is here, that's for sure, then that continue to the next bank. Why not just move the whole piece of data there altogether? The NTSC legal screen is also stored here.
.ORG $0000

; Data from 74000 to 77FFF (16384 bytes)
.incbin "HOTL_mod_DATA_74000_.inc"	;Data, the bank is almost full.

.BANK 30
.ORG $0000

; Data from 78000 to 7BFFF (16384 bytes)
.incbin "HOTL_mod_DATA_78000_.inc"	;This bank is called, when the legal screen's things have to be decompressed, but the bottom part of the screen. Strange.
;The "Based on the module DL1" part and the bottom of the screen. Why the game does it like this is beyond me.

.BANK 31
.ORG $0000

; Data from 7C000 to 7FFFF (16384 bytes)
_DATA_7C000_CHAR_BIO_TEXT:	;This got tiles of letters, and other data that is not decipherable yet.
.incbin "HOTL_mod_DATA_7C000_.inc"
