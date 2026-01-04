SaveTrainerName:
	ld hl, TrainerNamePointers
	ld a, [wTrainerClass]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wcd6d
.CopyCharacter
	ld a, [hli]
	ld [de], a
	inc de
	cp "@"
	jr nz, .CopyCharacter
	ret

TrainerNamePointers:
; what is the point of these?
	dw YoungsterName
	dw BugCatcherName
	dw LassName
	dw wTrainerName
	dw JrTrainerMName
	dw JrTrainerFName
	dw PokemaniacName
	dw SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw BurglarName
	dw EngineerName
	dw JugglerXName
	dw wTrainerName
	dw SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw BeautyName
	dw wTrainerName
	dw RockerName
	dw JugglerName
	dw wTrainerName
	dw wTrainerName
	dw BlackbeltName
	dw wTrainerName
	dw ProfOakName
	dw ChiefName
	dw ScientistName
	dw wTrainerName
	dw RocketName
	dw CooltrainerMName
	dw CooltrainerFName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName

YoungsterName:
	db "Joven@"
BugCatcherName:
	db "Caza Bichos@"
LassName:
	db "Muchacha@"
JrTrainerMName:
	db "Entrenador@"
JrTrainerFName:
	db "Entrenadora@"
PokemaniacName:
	db "PokéManiaco@"
SuperNerdName:
	db "Súper Nerd@"
BurglarName:
	db "Ladrón@"
EngineerName:
	db "Ingeniero@"
JugglerXName:
	db "Malabarista@"
SwimmerName:
	db "Nadador@"
BeautyName:
	db "Belleza@"
RockerName:
	db "Técnico@"
JugglerName:
	db "Malabarista@"
BlackbeltName:
	db "Karateka@"
ProfOakName:
	db "Prof.Oak@"
ChiefName:
	db "Jefe@"
ScientistName:
	db "Científico@"
RocketName:
	db "Rocket@"
CooltrainerMName:
	db "Ent.Élite♂@"
CooltrainerFName:
	db "Ent.Élite♀@"
