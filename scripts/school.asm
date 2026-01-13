SchoolScript:
	jp EnableAutoTextBoxDrawing

SchoolTextPointers:
	dw SchoolText1
	dw SchoolText2
	dw SchoolText3 ;joenote - added more text
	dw AltMoveListsText ;joenote - added npc toggle for alt move lists

SchoolText1:
	TX_FAR _SchoolText1
	db "@"

SchoolText2:
	TX_FAR _SchoolText2
	db "@"

SchoolText3:
	TX_FAR _SchoolText3
	db "@"
	
;;;;;;;;;;;;;;;;;;;;;;;;;joenote - added npc toggle for alt move lists
AltMoveListsText:
	TX_ASM
	CheckEvent EVENT_8C9
	jr z, .AltMovesON
	ld hl, AltMoveListsOFF 
	call PrintText
	call .choose
	ld hl, AltMoveLists_Gambler_reject
	jr z, .end
	ResetEvent EVENT_8C9
	jr .print_done
.AltMovesON
	ld hl, AltMoveListsON
	call PrintText
	call .choose
	ld hl, AltMoveLists_Gambler_reject
	jr z, .end
	SetEvent EVENT_8C9
.print_done
	ld hl, AltMoveLists_Gambler_done
.end
	call PrintText
	jp TextScriptEnd
.choose
	call NoYesChoice
	ld a, [wCurrentMenuItem]
	and a
	ret

AltMoveListsON:
	text "¿Te sientes con"
	line "suerte? ¿Quiere"
	cont "probar sus habi-"
	cont "lidades con los"
	cont "Pokémon?"
	
	para "Puedo hacer que"
	line "los Pokémon de"
	cont "otros entrenado-"
	cont "res tengan sus"
	cont "listas de movi-"
	cont "mientos alterados"
	cont "ligeramente."
	done
	db "@"
AltMoveListsOFF:
	text "¿Quieres que des-"
	line "haga los cambios"
	cont "de movimientos?"
	done
	db "@"

AltMoveLists_Gambler_done:
	text "Haré que así sea."
	line "Buena suerte."
	done
	db "@"
AltMoveLists_Gambler_reject:
	text "¿No? Está bien."
	line "Otra vez será."
	done
	db "@"
