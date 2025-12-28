TypeNames:

	dw .Normal
	dw .Fighting
	dw .Flying
	dw .Poison
	dw .Ground
	dw .Rock
	dw .Bird
	dw .Bug
	dw .Ghost

	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal
	dw .Normal

	dw .Fire
	dw .Water
	dw .Grass
	dw .Electric
	dw .Psychic
	dw .Ice
	dw .Dragon

.Normal:   db "Normal@"
.Fighting: db "Pelea@"
.Flying:   db "Volador@"
.Poison:   db "Veneno@"
.Fire:     db "Fuego@"
.Water:    db "Agua@"
.Grass:    db "Planta@"
.Electric: db "Eléctri.@"
.Psychic:  db "Psíquico@"
.Ice:      db "Hielo@"
.Ground:   db "Tierra@"
.Rock:     db "Roca@"
.Bird:     db "Sin Tipo@"	;joenote - Bird type will be used as a neutral typless dummy type for Struggle
.Bug:      db "Insecto@"
.Ghost:    db "Fantasma@"
.Dragon:   db "Dragón@"
