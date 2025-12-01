_OakSpeechText1::
	text "¡Buenas! ¡Bien-"
	line "venido al mundo"
	cont "de Pokémon!"

	para "¡Me llamo Oak!"
	line "¡Pero la gente"
	cont "me llama el"
	cont "Prof. Pokémon!"
	prompt

_OakSpeechText2A::
	text "¡Este mundo está"
	line "inhabitado por"
	cont "criaturas llama-"
	cont "das Pokémon!@@"

_OakSpeechText2B::
	text $51,"Para algunos,"
	line "los Pokémon son"
	cont "mascotas. Otros"
	cont "los usan para"
	cont "pelear."

	para "En mi caso..."

	para "Estudio los Poké-"
	line "mon como una"
	cont "profesión."
	prompt

_IntroducePlayerText::
	text "Ahora, ¿cómo"
	line "te llamas?"
	prompt

_IntroduceRivalText::
	text "Este es mi nieto."
	line "Él ha sido tu ri-"
	cont "val desde que"
	cont "eran pequeños."

	para "...Umm, ¿cómo era"
	line "que se llamaba?"
	prompt

_OakSpeechText3::
	text "¡<PLAYER>!"

	para "¡Tu propia leyen-"
	line "da Pokémon está"
	cont "por escribirse!"

	para "¡Un mundo de sue-"
	line "ños y aventuras"
	cont "con los Pokémon"
	cont "te espera!"
	cont "¡Vamos!"
	done

;joenote - ask if female trainer
IF DEF(_FPLAYER)
_AskIfGirlText::
	text "¿Eres un chico o"
	line "una chica?"
	done
ENDC
