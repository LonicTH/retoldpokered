_DaisyInitialText::
	text "¡Hola <PLAYER>!"
	line "<RIVAL> se fue"
	cont "al laboratorio"
	cont "de mi abuelo."
	done

_DaisyOfferMapText::
	text "¿Mi abuelo te"
	line "pidió un favor?"
	cont "¡Ten, esto te"
	cont "será útil!"
	prompt

_GotMapText::
	text "¡<PLAYER> obtuvo"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_DaisyBagFullText::
	text "Tienes muchos"
	line "objetos en tu"
	cont "mochila."
	done

_DaisyUseMapText::
	text "Usa el Mapa para"
	line "saber en donde te"
	cont "encuentras."
	done

_BluesHouseText2::
	text "¡Los Pokémon son"
	line "seres vivos! ¡Si"
	cont "se cansan, déja-"
	cont "los descansar!"
	done

IF DEF(_JPTXT)
_BluesHouseText3::
	text "¡Un mapa de Kanto!"
	line "...... ¿No sería"
	cont "genial que lo tu-"
	cont "vieras?"
	done
ELSE
_BluesHouseText3::
	text "¡Es un gran mapa!"
	line "¡Se ve muy útil!"
	done
ENDC
