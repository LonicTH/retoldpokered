_Museum1FText_5c21a::
	text "¡Esperamos verlo"
	line "luego!"
	done

_Museum1FText_5c21aF::
	text "¡Esperamos verla"
	line "luego!"
	done

_Museum1FText_5c21f::
	text "Serán ¥50 por un"
	line "tiquete para"
	cont "menor de edad."

	para "¿Te gustaría"
	line "entrar?"
	done

_Museum1FText_5c224::
	text "Muy bien, ¡¥50!"
	line "¡Gracias!"
	done

_Museum1FText_5c229::
	text "No tiene el dinero"
	line "suficiente."
	prompt

_Museum1FText_5c22e::
	text "¡No puedes entrar"
	line "por detrás!"

	para "Oh, ¡Cómo sea!"
	line "¿Sabes que es el"
	cont "Ámbar Viejo?"
	done

_Museum1FText_5c233::
	text "Hay un laboratorio"
	line "que está tratando"
	cont "de revivir al"
	cont "Pokémon antiguo"
	cont "del Ámbar Viejo."
	done

_Museum1FText_5c238::
	text "El Ámbar Viejo es"
	line "savia de árbol"
	cont "fosilizado."
	done

_Museum1FText_5c23d::
	text "¡Por favor ve por"
	line "el otro lado!"
	done

_Museum1FText_5c242::
	text "¡Tómate tu tiempo"
	line "para mirar todo!"
	done

_Museum1FText_5c251::
IF DEF(_JPTXT)	;joenote - this guy thinks the aerodactyl fossil is Ryujin-sama of japanese legend
	text "¡Oh gracias!"
	line "¡Oh gracias!"
	
	para "Estoy rezando a"
	line "los huesos dracó-"
	cont "nicos del Señor"
	cont "Ryujin."
ELSE
	text "¡Este es un fosil"
	line "magnífico!"
ENDC
	done

_Museum1FText_5c28e::
	text "¡Ssh! ¡Creo que"
	line "este pedazo de"
	cont "Ámbar Viejo con-"
	cont "tiene ADN de un"
	cont "Pokémon!"

	para "¡Sería genial si"
	line "un Pokémon podría"
	cont "ser resucitado"
	cont "de él!"

	para "Pero, ¡mis colegas"
	line "solo me ignoran!"

	para "¡Te tengo un favor"
	line "que pedirte!"

	para "Toma esto a un"
	line "Laboratorio de"
	cont "Pokémon y haz que"
	cont "lo examinen!"
	prompt

_ReceivedOldAmberText::
	text "¡<PLAYER> recibió"
	line "Ambar Viejo!@@"

_Museum1FText_5c299::
	text "¡Ssh! ¡Has que"
	line "revisen el Ámbar"
	cont "Viejo!"
	done

_Museum1FText_5c29e::
	text "¡No tienes espa-"
	line "cio para esto!"
	done

_Museum1FText_5c2ad::
	text "¡Estamos orgullo-"
	line "sos de estos 2"
	cont "fósiles muy ex-"
	cont "traños, Pokémon"
	cont "Prehistóricos!"
	done

_Museum1FText_5c2bc::
	text "¡El Ámbar Viejo"
	line "es transparente"
	cont "y dorado!"
	done
