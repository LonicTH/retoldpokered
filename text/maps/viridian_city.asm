_ViridianCityText1::
	text "¡Esas Pokebolas"
	line "en tu cintura!"
	cont "¡Tienes Pokémon!"

	para "Es genial que"
	line "puedas llevar y"
	cont "usar Pokémon"
	cont "Donde y cuando"
	cont "sea"
	done

_ViridianCityText_19122::
	text "Este Gimnasio"
	line "Pokémon esta"
	cont "siempre cerrado"

	para "Me pregunto quién"
	line "será el líder."
	done

_ViridianCityText_19127::
	text "¡El líder del"
	line "Gimnasio Pokémon"
	cont "ha regresado!"
	done

_ViridianCityText_1914d::
	text "¿Quieres saber"
	line "sobre los dos"
	cont "tipos de Pokémon"
	cont "oruga?"
	done

_ViridianCityText_19152::
	text "Oh, ¡Esta bien!"
	done

_ViridianCityText_19157::
	text "Caterpie no tiene"
	line "veneno, pero"
	cont "Weedle si."

	para "¡Ten cuidado con"
	line "su Piquete Ven!"
	done
IF DEF(_JPTXT)
_ViridianCityText_19175::
	text "¡Oh abuelo! ¡No"
	line "te desmayes aqui!"
	cont "Dios mio..."
	cont "Lo siento, pero"
	cont "mejor esperemos"
	cont "a que este sobrio"
	done
ELSE
_ViridianCityText_19175::
	text "¡Oh abuelo! no"
	line "seas malo!"
	cont "Todavia no se"
	cont "tomo su cafe."
	done
ENDC

_ViridianCityText_1917a::
	text "Cuando voy a"
	line "comprar a"
	cont "Ciudad Estaño,"
	cont "paso por los"
	cont "Bosque Viridián."
	done

IF DEF(_JPTXT)
_ViridianCityText_19191::
	text "Urgh! Hic..."
	line "¡Espera!"
	cont "¡Ven a escucharme"
	cont "tengo mucho que"
	cont "contarte!"

	para "...Oye!"
	line "¡Que vengas aqui!"
	done
ELSE
_ViridianCityText_19191::
	text "¡No puedes pasar"
	line "por aqui!"

	para "¡Es propiedad"
	line "privada!"
	done
ENDC

_ViridianCityText_191ca::
	text "(Bozteso)"
	line "Creo que me quede"
	cont "dormido debajo"
	cont "del sol."

	para "Tuve un sueño"
	line "sobre un Drowzee"
	cont "comiendose mi"
	cont "sueño."
	cont "¿Que es esto?"
	cont "¿De donde salio"
	cont "esta MT?"

	para "¡Que miedo!"
	line "Ten, puedes"
	cont "quedartela."
	prompt

_ReceivedTM42Text::
	text "<PLAYER> recibio"
	line "MT42!@@"

_TM42Explanation::
	text "MT42 contiene"
	line "Comesueños..."
	cont "...(Ronquido)..."
	done

_TM42NoRoomText::
	text "¡Llevas muchas"
	line "cosas encima!"
	
	done
IF DEF(_JPTXT)
_ViridianCityText_1920a::
	text "Mmm......"
	line "Parece que estaba"
	cont "un poco borracho."

	para "Mi cabeza"
	line "duele..."

	para "¿Estas apurado?"
	done
ELSE
_ViridianCityText_1920a::
	text "Ahh, ¡Ya tome mi"
	line "cafe y me siento"
	cont "genial!"

	para "¡Claro que puedes"
	line "pasar!"

	para "¿Estas apurado?"
	done
ENDC

_ViridianCityText_1920f::
	text "Veo que tienes"
	line "una Pókedex."

	para "Cuando capturas"
	line "un Pokémon,"
	cont "la Pókedex se"
	cont "acutaliza."

	para "¿Que? ¿No sabes"
	line "como se capturan"
	cont "Pokémon?"

	para "Te mostrare como"
	line "se hace."
	done

_ViridianCityText_19214::
	text "El tiempo es oro."
	line "Vete entonces."
	done

_ViridianCityText_19219::
	text "Primero tienes"
	line "que dañar al"
	cont "Pokémon enemigo."
	done

_ViridianCityText8::
	text "Ciudad Viridián"
	line "El eterno paraiso"
	cont "Verde"
	done

_ViridianCityText9::
	text "TRAINER TIPS"
	para "¡Captura Pokémon"
	line "y expande tu"
	cont "colección!"

	para "¡Mientras mas"
	line "tengas, sera mas"
	cont "facil combatir!"
	done

_ViridianCityText10::
	text "TRAINER TIPS"

	para "Los movimientos"
	line "de los Pokémon"
	cont "son limitados por"
	cont "Puntos de Poder"
	cont "o PP"

	para "¡Para restaurar"
	line "PP de tus Pokémon"
	cont "llevalos a un"
	cont "Centro Pokémon!"
	done

_ViridianCityText13::
	text "Gimnasio Pokémon"
	line "Ciudad Viridián"
	done

_ViridianCityText14::
	text "La puerta del"
	line "Gimnasio Pokémon"
	cont "esta cerrada..."
	done
