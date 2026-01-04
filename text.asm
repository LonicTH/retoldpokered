INCLUDE "charmap.asm"
INCLUDE "constants/text_constants.asm"
TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"
INCLUDE "hram.asm"


SECTION "Text 1", ROMX, BANK[TEXT_1]

_CardKeySuccessText1::
	text "¡Bingo!@@"

_CardKeySuccessText2::
	text ""
	line "The CARD KEY"
	cont "opened the door!"
	done

_CardKeyFailText::
	text "Darn! It needs a"
	line "CARD KEY!"
	done

_TrainerNameText::
	TX_RAM wcd6d
	text ": @@"

_NoNibbleText::
	text "Not even a nibble!"
	prompt

_NothingHereText::
	text "Parece que no hay"
	line "nada aquí."
	prompt

_ItsABiteText::
	text "¡Oh!"
	line "¡Picaron!"
	prompt

_ExclamationText::
	text "¡!"
	done

_GroundRoseText::
	text "¡El suelo subió"
	line "en alguna parte!"
	done

_BoulderText::
	text "¡Esto necesita"
	line "Fuerza para mo-"
	cont "verse!"
	done

_MartSignText::
	text "¡Todas tus nece-"
	line "sidades de Obje-"
	cont "tos satisfechas!"
	cont "Tienda Pokémon"
	done

_PokeCenterSignText::
	text "¡Curamos tus"
	line "Pokémon!"
	cont "Centro Pokémon"
	done

_FoundItemText::
	text "¡<PLAYER> encontró"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_NoMoreRoomForItemText::
	text "¡No tienes espa-"
	line "cio para más ob-"
	cont "jetos!"
	done

_OaksAideHiText::
	text "¡Hola! ¿Me re-"
	line "cuerdas?"
	cont "¡Soy un asistente"
	cont "del Prof.Oak!"

	para "¡Si atrapaste @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "tipos de Pokémon,"
	cont "te debería darte"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "!"

	para "¡Bien, <PLAYER>!"
	line "¿Has atrapado al"
	cont "menos @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " tipos de"
	cont "Pokémon?"
	done

_OaksAideUhOhText::
	text "Veamos..."
	line "¡Oh-oh! Solo has"
	cont "atrapado @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text ""
	cont "tipos de Poké-"
	cont "mon!"

	para "Necesitas @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " tipos"
	line "si quieres"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "Oh. Ya veo."

	para "Cuando tengas @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "tipos de Pokémon,"
	cont "vuelve por @"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "¡Genial! ¡Has"
	line "atrapado @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text " tipos de"
	cont "Pokémon!"
	cont "¡Felicidades!"

	para "¡Aquí tienes!"
	prompt

_OaksAideGotItemText::
	text "¡<PLAYER> obtuvo"
	line "@"
	TX_RAM wOaksAideRewardItemName
	text "!@@"

_OaksAideNoRoomText::
	text "¡Oh! Veo que no"
	line "tienes espacio"
	cont "para guardar"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

INCLUDE "text/maps/viridian_forest.asm"
INCLUDE "text/maps/mt_moon_1f.asm"
INCLUDE "text/maps/mt_moon_b1f.asm"
INCLUDE "text/maps/mt_moon_b2f.asm"
INCLUDE "text/maps/ss_anne_1.asm"
INCLUDE "text/maps/ss_anne_2.asm"
INCLUDE "text/maps/ss_anne_3.asm"
INCLUDE "text/maps/ss_anne_5.asm"
INCLUDE "text/maps/ss_anne_6.asm"
INCLUDE "text/maps/ss_anne_7.asm"
INCLUDE "text/maps/ss_anne_8.asm"
INCLUDE "text/maps/ss_anne_9.asm"
INCLUDE "text/maps/ss_anne_10.asm"
INCLUDE "text/maps/victory_road_3f.asm"
INCLUDE "text/maps/rocket_hideout_b1f.asm"
INCLUDE "text/maps/rocket_hideout_b2f.asm"
INCLUDE "text/maps/rocket_hideout_b3f.asm"
INCLUDE "text/maps/rocket_hideout_b4f.asm"
INCLUDE "text/maps/rocket_hideout_elevator.asm"
INCLUDE "text/maps/silph_co_2f.asm"
INCLUDE "text/maps/silph_co_3f.asm"
INCLUDE "text/maps/silph_co_4f.asm"
INCLUDE "text/maps/silph_co_5f_1.asm"


SECTION "Text 2", ROMX, BANK[TEXT_2]

INCLUDE "text/maps/silph_co_5f_2.asm"
INCLUDE "text/maps/silph_co_6f.asm"
INCLUDE "text/maps/silph_co_7f.asm"
INCLUDE "text/maps/silph_co_8f.asm"
INCLUDE "text/maps/silph_co_9f.asm"
INCLUDE "text/maps/silph_co_10f.asm"
INCLUDE "text/maps/silph_co_11f.asm"
INCLUDE "text/maps/mansion_2f.asm"
INCLUDE "text/maps/mansion_3f.asm"
INCLUDE "text/maps/mansion_b1f.asm"
INCLUDE "text/maps/safari_zone_east.asm"
INCLUDE "text/maps/safari_zone_north.asm"
INCLUDE "text/maps/safari_zone_west.asm"
INCLUDE "text/maps/safari_zone_center.asm"
INCLUDE "text/maps/safari_zone_rest_house_1.asm"
INCLUDE "text/maps/safari_zone_secret_house.asm"
INCLUDE "text/maps/safari_zone_rest_house_2.asm"
INCLUDE "text/maps/safari_zone_rest_house_3.asm"
INCLUDE "text/maps/safari_zone_rest_house_4.asm"
INCLUDE "text/maps/unknown_dungeon_b1f.asm"
INCLUDE "text/maps/victory_road_1f.asm"
INCLUDE "text/maps/lance.asm"
INCLUDE "text/maps/hall_of_fame.asm"
INCLUDE "text/maps/champion.asm"
INCLUDE "text/maps/lorelei.asm"
INCLUDE "text/maps/bruno.asm"
INCLUDE "text/maps/agatha.asm"
INCLUDE "text/maps/rock_tunnel_b2f_1.asm"


SECTION "Text 3", ROMX, BANK[TEXT_3]

INCLUDE "text/maps/rock_tunnel_b2f_2.asm"
INCLUDE "text/maps/seafoam_islands_b4f.asm"

IF DEF(_MOVENPCS)
;joenote - adding Mateo's move relearner/deleter files
INCLUDE "text/move_deleter.asm"
INCLUDE "text/move_relearner.asm"
ENDC

_AIBattleWithdrawText::
	text "¡@"
	TX_RAM wTrainerName
	text " sacó"
	line "a @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	text "¡@"
	TX_RAM wTrainerName
	text ""
	line "usó @"
	TX_RAM wcd6d
	text ""
	cont "en @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	TX_RAM wcf4b
	text " se fue"
	line "a @"
	TX_RAM wGrassRate
	text "."
	done

_TradeForText::
	text "Por @"
	line "de <PLAYER>"
	TX_RAM wcf4b
	text ","
	done

_TradeSendsText::
	TX_RAM wGrassRate
	text " envió"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWavesFarewellText::
	TX_RAM wGrassRate
	text " se"
	line "despide de"
	done

_TradeTransferredText::
	TX_RAM wcd6d
	text " es"
	line "transferido."
	done

_TradeTakeCareText::
	text "Cuida bien de"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWillTradeText::
	TX_RAM wGrassRate
	text " será"
	line "intercambiado"
	cont "@"
	TX_RAM wcd6d
	text ""
	done

_TradeforText::
	text "por @"
	line "de <PLAYER>"
	TX_RAM wcf4b
	text "."
	done

_PlaySlotMachineText::
	text "A slot machine!"
	line "Want to play?"
	done

_OutOfCoinsSlotMachineText::
	text "Darn!"
	line "Ran out of coins!"
	done

_BetHowManySlotMachineText::
	text "Bet how many"
	line "coins?"
	done

_StartSlotMachineText::
	text "Start!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Not enough"
	line "coins!"
	prompt

_OneMoreGoSlotMachineText::
	text "One more "
	line "go?"
	done

_LinedUpText::
	text " lined up!"
	line "Scored @"
	TX_RAM wcf4b
	text " coins!"
	done

_NotThisTimeText::
	text "Not this time!"
	prompt

_YeahText::
	text "Yeah!@@"

_DexSeenOwnedText::
	text "Pokédex Vistos:@"
	TX_NUM wDexRatingNumMonsSeen, 1, 3
	text ""
	line "       Propios:@"
	TX_NUM wDexRatingNumMonsOwned, 1, 3
	db "@"

_DexRatingText::
	text "Clasificación de"
	line "la Pokédex", $6d
	done

_GymStatueText1::
	text "GIMNASIO POKÉMON"
	line "@"
	TX_RAM wGymCityName
	text ""
	line ""
	cont "LÍDER: @"
	TX_RAM wGymLeaderName
	text ""

	para "ENTRENADORES"
	line "GANADORES:"
	cont "<RIVAL>"
	done

_GymStatueText2::
	text "GIMNASIO POKÉMON"
	line "@"
	TX_RAM wGymCityName
	text ""
	line ""
	cont "LÍDER: @"
	TX_RAM wGymLeaderName
	text ""

	para "ENTRENADORES"
	line "GANADORES:"
	cont "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "¡Los Centro"
	line "Pokémon pueden"
	cont "curar tus Pokémon"
	cont "cansados, lasti-"
	cont "mados o debilita-"
	cont "dos!"
	done

_PewterCityPokecenterGuyText::
	text "Yawn!"

	para "When JIGGLYPUFF"
	line "sings, #MON"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

_CeruleanPokecenterGuyText::
	text "BILL has lots of"
	line "#MON!"

	para "He collects rare"
	line "ones too!"
	done

_LavenderPokecenterGuyText::
	text "CUBONEs wear"
	line "skulls, right?"

	para "People will pay a"
	line "lot for one!"
	done

_MtMoonPokecenterBenchGuyText::
	text "If you have too"
	line "many #MON, you"
	cont "should store them"
	cont "via PC!"
	done

_RockTunnelPokecenterGuyText::
	text "I heard that"
	line "GHOSTs haunt"
	cont "LAVENDER TOWN!"
	done

_UnusedBenchGuyText1::
	text "I wish I could"
	line "catch #MON."
	done

_UnusedBenchGuyText2::
	text "I'm tired from"
	line "all the fun..."
	done

_UnusedBenchGuyText3::
	text "SILPH's manager"
	line "is hiding in the"
	cont "SAFARI ZONE."
	done

_VermilionPokecenterGuyText::
	text "It is true that a"
	line "higher level"
	cont "#MON will be"
	cont "more powerful..."

	para "But, all #MON"
	line "will have weak"
	cont "points against"
	cont "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #MON."
	done

_CeladonCityPokecenterGuyText::
	text "If I had a BIKE,"
	line "I would go to"
	cont "CYCLING ROAD!"
	done

_FuchsiaCityPokecenterGuyText::
	text "If you're studying "
	line "#MON, visit"
	cont "the SAFARI ZONE."

	para "It has all sorts"
	line "of rare #MON."
	done

_CinnabarPokecenterGuyText::
	text "#MON can still"
	line "learn techniques"
	cont "after canceling"
	cont "evolution."

	para "Evolution can wait"
	line "until new moves"
	cont "have been learned."
	done

_SaffronCityPokecenterGuyText1::
	text "It would be great"
	line "if the ELITE FOUR"
	cont "came and stomped"
	cont "TEAM ROCKET!"
	done

_SaffronCityPokecenterGuyText2::
	text "TEAM ROCKET took"
	line "off! We can go"
	cont "out safely again!"
	cont "That's great!"
	done

_CeladonCityHotelText::
	text "My sis brought me"
	line "on this vacation!"
	done

_BookcaseText::
	text "¡Está lleno de"
	line "libros sobre"
	cont "Pokémon!"
	done

_NewBicycleText::
	text "A shiny new"
	line "BICYCLE!"
	done

_PushStartText::
	text "¡Presiona START"
	line "para abrir el"
	cont "Menú!"
	done

_SaveOptionText::
	text "Para Guardar tie-"
	line "nes que escogerlo"
	cont "en la pantalla de"
	cont "Menú"
	done

_StrengthsAndWeaknessesText::
	text "All #MON types"
	line "have strong and"
	cont "weak points"
	cont "against others."
	done

_TimesUpText::
	text "PA: Ding-dong!"

	para "Time's up!"
	prompt

_GameOverText::
	text "PA: Your SAFARI"
	line "GAME is over!"
	done

_CinnabarGymQuizIntroText::
	text "#MON Quiz!"

	para "Get it right and"
	line "the door opens to"
	cont "the next room!"

	para "Get it wrong and"
	line "face a trainer!"

	para "If you want to"
	line "conserve your"
	cont "#MON for the"
	cont "GYM LEADER..."

	para "Then get it right!"
	line "Here we go!"
	prompt

_CinnabarQuizQuestionsText1::
;	text "CATERPIE evolves"	;joenote - this is supposed to be METAPOD
	text "METAPOD evolves"	
	line "into BUTTERFREE?"
	done

_CinnabarQuizQuestionsText2::
	text "There are 9"
	line "certified #MON"
	cont "LEAGUE BADGEs?"
	done

_CinnabarQuizQuestionsText3::
	text "POLIWAG evolves 3"
	line "times?"
	done

_CinnabarQuizQuestionsText4::	;joenote - re-worded to be less contrived
;	text "Are thunder moves"
;	line "effective against"
;	cont "ground element-"
;	cont "type #MON?"
	text "Are electric-type"
	line "moves effective"
	cont "against ground-"
	cont "type #MON?"
	done

_CinnabarQuizQuestionsText5::
	text "#MON of the"
	line "same kind and"
;	cont "level are not"	;joenote - re-worded 
	cont "level are rarely"
	cont "identical?"
	done

_CinnabarQuizQuestionsText6::
	text "TM28 contains"
	line "TOMBSTONER?"
	done

_CinnabarGymQuizCorrectText::
	text "You're absolutely"
	line "correct!"

	para "Go on through!@@"

_CinnabarGymQuizIncorrectText::
	text "Sorry! Bad call!"
	prompt

_MagazinesText::
	text "#MON magazines!"

	para "#MON notebooks!"

	para "#MON graphs!"
	done

_BillsHouseMonitorText::
	text "TELEPORTER is"
	line "displayed on the"
	cont "PC monitor."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> initiated"
	line "TELEPORTER's Cell"
	cont "Separator!@@"

_BillsHousePokemonListText1::
	text "BILL's favorite"
	line "#MON list!"
	prompt

_BillsHousePokemonListText2::
	text "Which #MON do"
	line "you want to see?"
	done

_OakLabEmailText::
	text "¡Hay un nuevo"
	line "Correo!"

	para "..."

	para "¡Llamándo a to-"
	line "dos los entre-"
	cont "nadores Pokémon!"

	para "¡Los entrenadores"
	line "de Élite de la"
	cont "Liga Pokémon se"
	cont "encuentran listos"
	cont "para los que es-"
	cont "tén intereados!"

	para "¡Traigan sus me-"
	line "jores Pokémon"
	cont "para ver su nivel"
	cont "como entrenador!"

	para "Sede de la Meseta"
	line "Índigo de la Liga"
	cont "Pokémon"

	para "PS: ¡Prof.Oak,"
	line "Por favor visíte-"
	cont "nos!"
	cont "..."
	done

_GameCornerCoinCaseText::
	text "A COIN CASE is"
	line "required!"
	done

_GameCornerNoCoinsText::
	text "You don't have"
	line "any coins!"
	done

_GameCornerOutOfOrderText::
	text "OUT OF ORDER"
	line "This is broken."
	done

_GameCornerOutToLunchText::
	text "OUT TO LUNCH"
	line "This is reserved."
	done

_GameCornerSomeonesKeysText::
	text "Someone's keys!"
	line "They'll be back."
	done

_JustAMomentText::
	text "Just a moment."
	done

TMNotebookText::
	text "It's a pamphlet"
	line "on TMs."

	para "..."

	para "There are 50 TMs"
	line "in all."

	para "There are also 5"
	line "HMs that can be"
	cont "used repeatedly."

	para "SILPH CO.@@"

_TurnPageText::
	text "Turn the page?"
	done

_ViridianSchoolNotebookText5::
	text "GIRL: Hey! Don't"
	line "look at my notes!@@"

_ViridianSchoolNotebookText1::
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# BALLs are"
	line "used to catch"
	cont "#MON."

	para "Up to 6 #MON"
	line "can be carried."

	para "People who raise"
	line "and make #MON"
	cont "fight are called"
	cont "#MON trainers."
	prompt

_ViridianSchoolNotebookText2::
	text "Second page..."

	para "A healthy #MON"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Sleep, paralysis"
	line "and damage is"
	cont "effective!"
	prompt

_ViridianSchoolNotebookText3::
	text "Third page..."

	para "#MON trainers"
	line "seek others to"
	cont "engage in #MON"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #MON GYMs."
	prompt

_ViridianSchoolNotebookText4::
	text "Fourth page..."

	para "The goal for"
	line "#MON trainers"
	cont "is to beat the "
	cont "top 8 #MON"
	cont "GYM LEADERs."

	para "Do so to earn the"
	line "right to face..."

	para "The ELITE FOUR of"
	line "#MON LEAGUE!"
	prompt

_EnemiesOnEverySideText::
	text "Enemies on every"
	line "side!"
	done

_WhatGoesAroundComesAroundText::
	text "What goes around"
	line "comes around!"
	done

_FightingDojoText::
	text "FIGHTING DOJO"
	done

_IndigoPlateauHQText::
	text "INDIGO PLATEAU"
	line "#MON LEAGUE HQ"
	done

_RedBedroomSNESText::
	text "¡<PLAYER> está"
IF DEF(_REDGREENJP)
	line "jugando con la" 
	cont "NES!"	;joenote - the player still had an old famicom in japanese red & green
ELSE
	line "jugando con la"
	cont "SNES!"
ENDC
	cont "¡...Bien!"
	cont "¡Hora de irse!"
	done

_Route15UpstairsBinocularsText::
	text "Looked into the"
	line "binoculars..."

	para "A large, shining"
	line "bird is flying"
	cont "toward the sea."
	done

_AerodactylFossilText::
	text "AERODACTYL Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

_KabutopsFossilText::
	text "KABUTOPS Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

_LinkCableHelpText1::
	text "TRAINER TIPS"

	para "Using a Game Link"
	line "Cable"
	prompt

_LinkCableHelpText2::
	text "Which heading do"
	line "you want to read?"
	done

_LinkCableInfoText1::
	text "When you have"
	line "linked your GAME"
	cont "BOY with another"
	cont "GAME BOY, talk to"
	cont "the attendant on"
	cont "the right in any"
	cont "#MON CENTER."
	prompt

_LinkCableInfoText2::
	text "COLOSSEUM lets"
	line "you play against"
	cont "a friend."
	prompt

_LinkCableInfoText3::
	text "TRADE CENTER is"
	line "used for trading"
	cont "#MON."
	prompt

_ViridianSchoolBlackboardText1::
	text "The blackboard"
	line "describes #MON"
	cont "STATUS changes"
	cont "during battles."
	prompt

_ViridianSchoolBlackboardText2::
	text "Which heading do"
	line "you want to read?"
	done

_ViridianBlackboardSleepText::
	text "A #MON can't"
	line "attack if it's"
	cont "asleep!"

	para "#MON will stay"
	line "asleep even after"
	cont "battles."

	para "Use AWAKENING to"
	line "wake them up!"
	prompt

_ViridianBlackboardPoisonText::
	text "When poisoned, a"
	line "#MON's health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles."

	para "Use an ANTIDOTE"
	line "to cure poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "Paralysis can"
	line "make #MON"
	cont "moves misfire!"
	
	para "It cuts SPEED"
	line "by 75 percent."

	para "Paralysis remains"
	line "after battles."

	para "Use PARLYZ HEAL"
	line "for treatment!"
	prompt

_ViridianBlackboardBurnText::
	text "A burn reduces"
	line "ATTACK by half."
	cont "It also causes"
	cont "ongoing damage."

	para "Burns remain"
	line "after battles."

	para "Use BURN HEAL to"
	line "cure a burn!"
	prompt

_ViridianBlackboardFrozenText::
	text "If frozen, a"
	line "#MON becomes"
	cont "totally immobile!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use ICE HEAL to"
	line "thaw out #MON!"
	prompt

_VermilionGymTrashText::
	text "Nope, there's"
	line "only trash here."
	done

_VermilionGymTrashSuccessText1::
	text "Hey! There's a"
	line "switch under the"
	cont "trash!"
	cont "Turn it on!"

	para "The 1st electric"
	line "lock opened!@@"

_VermilionGymTrashSuccessText2::
	text "Hey! There's"
	line "another switch"
	cont "under the trash!"
	cont "Turn it on!"
	prompt

_VermilionGymTrashSuccessText3::
	text "The 2nd electric"
	line "lock opened!"

	para "The motorized door"
	line "opened!@@"

_VermilionGymTrashFailText::
	text "Nope! There's"
	line "only trash here."
	cont "Hey! The electric"
	cont "locks were reset!@@"

_FoundHiddenItemText::
	text "<PLAYER> found"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_HiddenItemBagFullText::
	text "But, <PLAYER> has"
	line "no more room for"
	cont "other items!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> found"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@@"

_FoundHiddenCoins2Text::
	text "<PLAYER> found"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " coins!@@"

_DroppedHiddenCoinsText::
	text ""
	para "Oops! Dropped"
	line "some coins!"
	done

_IndigoPlateauStatuesText1::
	text "INDIGO PLATEAU"
	prompt

_IndigoPlateauStatuesText2::
	text "The ultimate goal"
	line "of trainers!"
	cont "#MON LEAGUE HQ"
	done

_IndigoPlateauStatuesText3::
	text "The highest"
	line "#MON authority"
	cont "#MON LEAGUE HQ"
	done

_PokemonBooksText::
	text "¡Está lleno de"
	line "libros sobre"
	cont "Pokémon!"
	done

IF DEF(_JPTXT)
_DiglettSculptureText::
	text "It's a statue of"
	line "a fat Buddha."
	done
ELSE
_DiglettSculptureText::
	text "It's a sculpture"
	line "of DIGLETT."
	done
ENDC

_ElevatorText::
	text "This is an"
	line "elevator."
	done

_TownMapText::
	text "A TOWN MAP.@@"

_PokemonStuffText::
	text "Wow! Tons of"
	line "#MON stuff!"
	done

_OutOfSafariBallsText::
	text "PA: Ding-dong!"

	para "You are out of"
	line "SAFARI BALLs!"
	prompt

_WildRanText::
	text "Wild @"
	TX_RAM wEnemyMonNick
	text ""
	line "ran!"
	prompt

_EnemyRanText::
	text "Enemy @"
	TX_RAM wEnemyMonNick
	text ""
	line "ran!"
	prompt

_HurtByPoisonText::
	text "<USER>'s"
	line "hurt by poison!"
	prompt

_HurtByBurnText::
	text "<USER>'s"
	line "hurt by the burn!"
	prompt

_HurtByLeechSeedText::
	text "LEECH SEED saps"
	line "<USER>!"
	prompt

_EnemyMonFaintedText::
	text "¡El @"
	TX_RAM wEnemyMonNick
	text ""
	line "enemigo se"
	cont "debilitó!"
	prompt

_MoneyForWinningText::
	text "¡<PLAYER> obtuvo ¥@"
	TX_BCD wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ""
	line "por ganar!"
	prompt

_TrainerDefeatedText::
	text "¡<PLAYER> derrotó"
	line "a @"
	TX_RAM wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	text "¡@"
	TX_RAM wBattleMonNick
	text ""
	line "se debilitó!"
	prompt

_UseNextMonText::
	text "Use next #MON?"
	done

;_Sony1WinText::	;joenote - made redundant
;	text "<RIVAL>: Yeah! Am"
;	line "I great or what?"
;	prompt

_PlayerBlackedOutText2::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> lost to"
	line "@"
	TX_RAM wTrainerName
	text "!"
	prompt

_TrainerAboutToUseText::
	text "¡@"
	TX_RAM wTrainerName
	text " va a"
	line "a usar @"
	TX_RAM wEnemyMonNick
	text "!"

	para "¿Cambiarás tu"
	line "Pokémon?"
	done

_TrainerSentOutText::
	text "¡@"
	TX_RAM wTrainerName
	text " sacará"
	line "@"
	TX_RAM wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "There's no will"
	line "to fight!"
	prompt

_CantEscapeText::
	text "Can't escape!"
	prompt

_NoRunningText::
	text "No! There's no"
	line "running from a"
	cont "trainer battle!"
	prompt

_GotAwayText::
	text "¡Escapaste sin"
	line "problemas!"
	prompt

_ItemsCantBeUsedHereText::
	text "Items can't be"
	line "used here."
	prompt

_AlreadyOutText::
	TX_RAM wBattleMonNick
	text " is"
	line "already out!"
	prompt

_MoveNoPPText::
	text "No PP left for"
	line "this move!"
	prompt

_MoveDisabledText::
	text "The move is"
	line "disabled!"
	prompt

_NoMovesLeftText::
	TX_RAM wBattleMonNick
	text " has no"
	line "moves left!"
	done

_MultiHitText::
	text "Hit the enemy"
	line "@"
	TX_NUM wPlayerNumHits,1,1
	text " times!"
	prompt

_ScaredText::
	TX_RAM wBattleMonNick
	text " is too"
	line "scared to move!"
	prompt

_GetOutText::
	text "GHOST: Get out..."
	line "Get out..."
	prompt

_FastAsleepText::
	text "<USER>"
	line "is fast asleep!"
	prompt

_WokeUpText::
	text "<USER>"
	line "woke up!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "is frozen solid!"
	prompt

_FullyParalyzedText::
	text "<USER>'s"
	line "fully paralyzed!"
	prompt

_FlinchedText::
	text "<USER>"
	line "flinched!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "must recharge!"
	prompt

_DisabledNoMoreText::
	text "<USER>'s"
	line "disabled no more!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "is confused!"
	prompt

_HurtItselfText::
	text "It hurt itself in"
	line "its confusion!"
	prompt

_ConfusedNoMoreText::
	text "<USER>'s"
	line "confused no more!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "is saving energy!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "unleashed energy!"
	prompt

_ThrashingAboutText::
	text "<USER>'s"
	line "thrashing about!"
	done

_AttackContinuesText::
	text "¡El ataque de"
	line "<USER> sigue!"
	done

_CantMoveText::
	text "¡<USER> no"
	line "se puede mover!"
	prompt

_MoveIsDisabledText::
	text "<USER>'s"
	line "@"
	TX_RAM wcd6d
	text " is"
	cont "disabled!"
	prompt

_MonName1Text::
	text "¡<USER>@@"

_Used1Text::
	text ""
	line "usó @@"

_Used2Text::
	text ""
	line "usó @@"

_InsteadText::
	text "en cambio,"
	cont "@@"

_CF4BText::
	TX_RAM wcf4b
	text "@"

_ExclamationPoint1Text::
	text "!"
	done

_ExclamationPoint2Text::
	text "!"
	done

_ExclamationPoint3Text::
	text "!"
	done

_ExclamationPoint4Text::
	text "!"
	done

_ExclamationPoint5Text::
	text "!"
	done

_AttackMissedText::
	text "¡El ataque de"
	line "<USER> falló!"
	prompt

_KeptGoingAndCrashedText::
	text "¡<USER>"
	line "pasó de largo"
	cont "y chocó!"
	prompt

;joenote - the same in english as _IsUnaffectedText, so it's redundant 
;_UnaffectedText::
;	text "<TARGET>'s"
;	line "unaffected!"
;	prompt

_DoesntAffectMonText::
	text "¡No le afecta a"
	line "<TARGET>!"
	prompt

_CriticalHitText::
	text "¡Ataque crítico!"
	prompt

_OHKOText::
	text "¡One-hit KO!"
	prompt

_LoafingAroundText::
	TX_RAM wBattleMonNick
	text " is"
	line "loafing around."
	prompt

_BeganToNapText::
	TX_RAM wBattleMonNick
	text " began"
	line "to nap!"
	prompt

_WontObeyText::
	TX_RAM wBattleMonNick
	text " won't"
	line "obey!"
	prompt

_TurnedAwayText::
	TX_RAM wBattleMonNick
	text " turned"
	line "away!"
	prompt

_IgnoredOrdersText::
	TX_RAM wBattleMonNick
	text ""
	line "ignored orders!"
	prompt

_SubstituteTookDamageText::
	text "The SUBSTITUTE"
	line "took damage for"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "<TARGET>'s"
	line "SUBSTITUTE broke!"
	prompt

_BuildingRageText::
	text "<USER>'s"
	line "RAGE is building!"
	prompt

_MirrorMoveFailedText::
	text "The MIRROR MOVE"
	next "failed!"
	prompt

_HitXTimesText::
	text "Hit @"
	TX_NUM wEnemyNumHits, 1, 1
	text " times!"
	prompt

_GainedText::
	text "¡@"
	TX_RAM wcd6d
	text " obtuvo"
	line "@@"

;_WithExpAllText::
;	text "with EXP.ALL,"
;	cont "@@"
;joenote - making this less annoying
_WithExpAllText::
	text "EXP.ALL gives the"
	line "team relatively"
	cont "@@"

_BoostedText::
	text "a boosted"
	cont "@@"

_ExpPointsText::
	TX_NUM wExpAmountGained, 2, 5	;joenote - increased to 5 digits
	text " PTS.de EXP!"
	prompt

_GrewLevelText::
	text "¡@"
	TX_RAM wcd6d
	text " subió"
	line "al nivel @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_WildMonAppearedText::
	text "¡Un @"
	TX_RAM wEnemyMonNick
	text ""
	line "salvaje apareció!"
	prompt

_HookedMonAttackedText::
	text "¡El"
	line "@"
	TX_RAM wEnemyMonNick
	text ""
	cont "enganchado atacó!"
	prompt

_EnemyAppearedText::
	text "¡@"
	TX_RAM wEnemyMonNick
	text ""
	line "apareció!"
	prompt

_TrainerWantsToFightText::
	text "¡@"
	TX_RAM wTrainerName
	text ""
	line "quiere pelear!"
	prompt

_UnveiledGhostText::
	text "¡El Visor Silph"
	line "reveló la iden-"
	cont "tidad del Fantas-"
	cont "ma!"
	prompt

_GhostCantBeIDdText::
	text "¡Ay no! ¡No se"
	line "puede Identificar"
	cont "al Fantasma!"
	prompt

_GoText::
	text "¡Ve @@"

_DoItText::
	text "¡Hazlo @@"

_GetmText::
	text "¡Vamos @@"

_EnemysWeakText::
	text "¡El enemigo está"
	line "débil!"
	cont "¡Vamos @@"

_PlayerMon1Text::
	TX_RAM wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	text "¡@"
	TX_RAM wBattleMonNick
	text " @@"

_EnoughText::
	text "basta @@"

_OKExclamationText::
	text "ok @@"

_GoodText::
	text "bien @@"

_ComeBackText::
	text " "
	line "regresa!"
	done

_SuperEffectiveText::
	text "¡Es súper"
	line "efectivo!"
	prompt

_NotVeryEffectiveText::
	text "No es muy"
	line "efectivo..."
	prompt

_SafariZoneEatingText::
	text "¡El @"
	TX_RAM wEnemyMonNick
	db $0
	line "salvaje está"
	cont "comiendo!"
	prompt

_SafariZoneAngryText::
	text "¡El @"
	TX_RAM wEnemyMonNick
	db $0
	line "salvaje está"
	cont "enojado!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "¡<PLAYER> tomó"
	line "¥@"
	TX_BCD wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "!"
	prompt

_ClearSaveDataText::
	text "Clear all saved"
	line "data?"
	done

_WhichFloorText::
	text "Which floor do"
	line "you want? "
	done

_PartyMenuNormalText::
	text "Choose a #MON."
	done

_PartyMenuItemUseText::
	text "Use item on which"
	line "#MON?"
	done

_PartyMenuBattleText::
	text "Bring out which"
	line "#MON?"
	done

_PartyMenuUseTMText::
	text "Use machine on"	;joenote - HMs use this, so made it generic
	line "which #MON?"
	done

_PartyMenuSwapMonText::
	text "Move #MON"
	line "where?"
	done

_PotionText::
	TX_RAM wcd6d
	text ""
	line "recovered by @"
	TX_NUM wHPBarHPDifference, 2, 3
	text "!"
	done

_AntidoteText::
	TX_RAM wcd6d
	text " was"
	line "cured of poison!"
	done

_ParlyzHealText::
	TX_RAM wcd6d
	text "'s"
	line "rid of paralysis!"
	done

_BurnHealText::
	TX_RAM wcd6d
	text "'s"
	line "burn was healed!"
	done

_IceHealText::
	TX_RAM wcd6d
	text " was"
	line "defrosted!"
	done

_AwakeningText::
	TX_RAM wcd6d
	text ""
	line "woke up!"
	done

_FullHealText::
	TX_RAM wcd6d
	text "'s"
	line "health returned!"
	done

_ReviveText::
	TX_RAM wcd6d
	text ""
	line "is revitalized!"
	done

_RareCandyText::
	TX_RAM wcd6d
	text " grew"
	line "to level @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_TurnedOnPC1Text::
	text "<PLAYER> encendió"
	line "la computadora."
	prompt

_AccessedBillsPCText::
	text "Se accedió a la"
	line "Computadora de"
	cont "Bill."

	para "Se accedió al"
	line "Sistema de al-"
	cont "macenamiento de"
	cont "Pokémon."
	prompt

_AccessedSomeonesPCText::
	text "Se accedió a la"
	line "Computadora de"
	cont "alguien."

	para "Se accedió al"
	line "Sistema de al-"
	cont "macenamiento de"
	cont "Pokémon."
	prompt

_AccessedMyPCText::
	text "Accedí a mi"
	line "computadora."

	para "Se accedió al"
	line "Sistema de al-"
	cont "macenamiendo de"
	cont "objetos."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> encendió"
	line "la computadora."
	prompt

_WhatDoYouWantText::
	text "¿Qué quieres"
	line "hacer?"
	done

_WhatToDepositText::
	text "Qué quieres"
	line "depositar?"
	done

_DepositHowManyText::
	text "¿Cuántos?"
	done

_ItemWasStoredText::
	TX_RAM wcd6d
	text " fue"
	line "guardado en la"
	cont "computadora."
	prompt

_NothingToDepositText::
	text "No tienes nada"
	line "que depositar."
	prompt

_NoRoomToStoreText::
	text "Ya no hay lugar"
	line "para guardar"
	cont "más cosas."
	prompt

_WhatToWithdrawText::
	text "¿Qué quieres"
	line "sacar?"
	done

_WithdrawHowManyText::
	text "¿Cuántos?"
	done

_WithdrewItemText::
	text "Se sacó"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_NothingStoredText::
	text "No hay nada"
	line "guardado."
	prompt

_CantCarryMoreText::
	text "No puedes llevar"
	line "más objetos."
	prompt

_WhatToTossText::
	text "¿Qué quieres"
	line "botar?"
	done

_TossHowManyText::
	text "¿Cuántos?"
	done

_AccessedHoFPCText::
	text "Accessed #MON"
	line "LEAGUE's site."

	para "Accessed the HALL"
	line "OF FAME List."
	prompt

_SwitchOnText::
	text "Switch on!"
	prompt

_WhatText::
	text "¿Qué?"
	done

_DepositWhichMonText::
	text "Deposit which"
	line "#MON?"
	done

_MonWasStoredText::
	TX_RAM wcf4b
	text " was"
	line "stored in Box @"
	TX_RAM wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "You can't deposit"
	line "the last #MON!"
	prompt

_BoxFullText::
	text "Oops! This Box is"
	line "full of #MON."
	prompt

_MonIsTakenOutText::
	TX_RAM wcf4b
	text " fue"
	line "sacado."
	cont "Se obtuvo a"
	cont "@"
	TX_RAM wcf4b
	text "."
	prompt

_NoMonText::
	text "¿Qué? ¡No hay"
	line "Pokémon aquí!"
	prompt

_CantTakeMonText::
	text "No puedes tomar"
	line "más Pokémon."

	para "Deposita un"
	line "Pokémon primero."
	prompt

_ReleaseWhichMonText::
	text "¿Liberar qué"
	line "Pokémon?"
	done

_OnceReleasedText::
	text "Una vez, libre"
	line "@"
	TX_RAM wcf4b
	text " se irá"
	cont "para siempre."
	cont "¿Está bien?"
	done

_MonWasReleasedText::
	TX_RAM wcf4b
	text " fue"
	line "liberado."
	cont "¡Chao! @"

_CF4BExclamationText::
	TX_RAM wcf4b
	text "!"
	prompt

_RequireCoinCaseText::
	text "A COIN CASE is"
	line "required!@@"

_ExchangeCoinsForPrizesText::
	text "We exchange your"
	line "coins for prizes."
	prompt

_WhichPrizeText::
	text "Which prize do"
	line "you want?"
	done

_HereYouGoText::
	text "Here you go!@@"

_SoYouWantPrizeText::
	text "So, you want"
	line "@"
	TX_RAM wcd6d
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "Sorry, you need"
	line "more coins.@@"

_OopsYouDontHaveEnoughRoomText::
	text "Oops! You don't"
	line "have enough room.@@"

_OhFineThenText::
	text "Oh, fine then.@@"

_GetDexRatedText::
	text "Want to get your"
	line "#DEX rated?"
	done

_ClosedOaksPCText::
	text "Closed link to"
	line "PROF.OAK's PC.@@"

_AccessedOaksPCText::
	text "Accessed PROF."
	line "OAK's PC."

	para "Accessed #DEX"
	line "Rating System."
	prompt

_WhereWouldYouLikeText::
	text "Where would you"
	line "like to go?"
	done

_PleaseWaitText::
	text "OK, please wait"
	line "just a moment."
	done

_LinkCanceledText::
	text "The link was"
	line "canceled."
	done

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text "Do you want to"
	line "give a nickname"
	cont "to @"
	TX_RAM wcd6d
	text "?"
	done

_YourNameIsText::
	text "¡Cierto! Tu nom-"
	line "bre es <PLAYER>!"
	prompt

_HisNameIsText::
	text "¡Así es! ¡Ya lo"
	line "recordé! ¡Su nom-"
	cont "bre es <RIVAL>!"
	prompt

_WillBeTradedText::
	TX_RAM wNameOfPlayerMonToBeTraded
	text " y"
	line "@"
	TX_RAM wcd6d
	text " serán"
	cont "intercambiados."
	done

_Char00Text::
	TX_NUM hSpriteIndexOrTextID,1,2
	text " ERROR."
	done

_Char55Text::
	text $4B,"@@"

INCLUDE "text/maps/digletts_cave_route_2_entrance.asm"
INCLUDE "text/maps/viridian_forest_exit.asm"
INCLUDE "text/maps/route_2_house.asm"
INCLUDE "text/maps/route_2_gate.asm"
INCLUDE "text/maps/viridian_forest_entrance.asm"
INCLUDE "text/maps/mt_moon_pokecenter.asm"
INCLUDE "text/maps/saffron_gates.asm"
INCLUDE "text/maps/daycare_1.asm"


SECTION "Text 4", ROMX, BANK[TEXT_4]

INCLUDE "text/maps/daycare_2.asm"
INCLUDE "text/maps/underground_path_route_6_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance_unused.asm"
INCLUDE "text/maps/underground_path_we.asm"	;joenote - added this file for custom npc
INCLUDE "text/maps/underground_path_route_8_entrance.asm"
INCLUDE "text/maps/rock_tunnel_pokecenter.asm"
INCLUDE "text/maps/rock_tunnel_b1f.asm"
INCLUDE "text/maps/power_plant.asm"
INCLUDE "text/maps/route_11_gate.asm"
INCLUDE "text/maps/route_11_gate_upstairs.asm"
INCLUDE "text/maps/digletts_cave_route_11_entrance.asm"
INCLUDE "text/maps/route_12_gate.asm"
INCLUDE "text/maps/route_12_gate_upstairs.asm"
INCLUDE "text/maps/route_12_house.asm"
INCLUDE "text/maps/route_15_gate.asm"
INCLUDE "text/maps/route_15_gate_upstairs.asm"
INCLUDE "text/maps/route_16_gate.asm"
INCLUDE "text/maps/route_16_gate_upstairs.asm"
INCLUDE "text/maps/route_16_house.asm"
INCLUDE "text/maps/route_18_gate.asm"
INCLUDE "text/maps/route_18_gate_upstairs.asm"
INCLUDE "text/maps/pokemon_league_gate.asm"
INCLUDE "text/maps/victory_road_2f.asm"
INCLUDE "text/maps/bills_house.asm"
INCLUDE "text/maps/route_1.asm"
INCLUDE "text/maps/route_2.asm"
INCLUDE "text/maps/route_3.asm"
INCLUDE "text/maps/route_4.asm"
INCLUDE "text/maps/route_5.asm"
INCLUDE "text/maps/route_6.asm"
INCLUDE "text/maps/route_7.asm"
INCLUDE "text/maps/route_8.asm"
INCLUDE "text/maps/route_9.asm"
INCLUDE "text/maps/route_10.asm"
INCLUDE "text/maps/route_11_1.asm"


SECTION "Text 5", ROMX, BANK[TEXT_5]

INCLUDE "text/maps/route_11_2.asm"
INCLUDE "text/maps/route_12.asm"
INCLUDE "text/maps/route_13.asm"
INCLUDE "text/maps/route_14.asm"
INCLUDE "text/maps/route_15.asm"
INCLUDE "text/maps/route_16.asm"
INCLUDE "text/maps/route_17.asm"
INCLUDE "text/maps/route_18.asm"
INCLUDE "text/maps/route_19.asm"
INCLUDE "text/maps/route_20.asm"
INCLUDE "text/maps/route_21.asm"
INCLUDE "text/maps/route_22.asm"
INCLUDE "text/maps/route_23.asm"
INCLUDE "text/maps/route_24_1.asm"


SECTION "Text 6", ROMX, BANK[TEXT_6]

INCLUDE "text/maps/route_24_2.asm"
INCLUDE "text/maps/route_25.asm"

_FileDataDestroyedText::
	text "The file data is"
	line "destroyed!"
	prompt

_WouldYouLikeToSaveText::
	text "¿Quieres GUARDAR"
	line "la partida?"
	done

_GameSavedText::
	text "¡<PLAYER> guardó"
	line "la partida!"
	done

_OlderFileWillBeErasedText::
	text "El otro archivo"
	line "será eliminado."
	cont "¿Está bien?"
	done

_WhenYouChangeBoxText::
	text "Cuando cambias la"
	line "CAJA Pokémon, se"
	cont "guardará la par-"
	cont "tida."

	para "¿Está bien?"
	done

_ChooseABoxText::
	text "Choose a"
	line "<pkmn> BOX.@@"

_EvolvedText::
	TX_RAM wcf4b
	text " evolved"
	done

_IntoText::
	text ""
	line "into @"
	TX_RAM wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "Huh? @"
	TX_RAM wcf4b
	text ""
	line "stopped evolving!"
	prompt

_IsEvolvingText::
	text "¿Qué? ¡@"
	TX_RAM wcf4b
	text ""
	line "está evolu-"
	cont "cionando!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "fell asleep!"
	prompt

_AlreadyAsleepText::
	text "<TARGET>'s"
	line "already asleep!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "was poisoned!"
	prompt

_BadlyPoisonedText::
	text "<TARGET>'s"
	line "badly poisoned!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "was burned!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "was frozen solid!"
	prompt

_FireDefrostedText::
	text "Fire defrosted"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "¡@"
	TX_RAM wcf4b
	text " de"
	line "<USER> subió@@"

_GreatlyRoseText::
	text $4c, "mucho@@"

_RoseText::
	text "!"
	prompt

_MonsStatsFellText::
	text "¡@"
	TX_RAM wcf4b
	text " de"
	line "<TARGET> bajó@@"

_GreatlyFellText::
	text $4c, "mucho@@"

_FellText::
	text "!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "ran from battle!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "ran away scared!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "was blown away!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@@"

_MadeWhirlwindText::
	text ""
	line "made a whirlwind!"
	prompt

_TookInSunlightText::
	text ""
	line "took in sunlight!"
	prompt

_LoweredItsHeadText::
	text ""
	line "lowered its head!"
	prompt

_SkyAttackGlowingText::
	text ""
	line "is glowing!"
	prompt

_FlewUpHighText::
	text ""
	line "flew up high!"
	prompt

_DugAHoleText::
	text ""
	line "dug a hole!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "became confused!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "learned"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	text "<TARGET>'s"
	line "@"
	TX_RAM wcd6d
	text " was"
	cont "disabled!"
	prompt

_NothingHappenedText::
	text "Nothing happened!"
	prompt

_NoEffectText::
	text "No effect!"
	prompt

_ButItFailedText::
	text "¡Pero, falló! "
	prompt

_DidntAffectText::
	text "It didn't affect"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "is unaffected!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET>'s"
	line "paralyzed! It may"
	cont "not attack!"
	prompt

_SubstituteText::
	text "It created a"
	line "SUBSTITUTE!"
	prompt

_HasSubstituteText::
	text "<USER>"
	line "has a SUBSTITUTE!"
	prompt

_TooWeakSubstituteText::
	text "Too weak to make"
	line "a SUBSTITUTE!"
	prompt

_CoinsScatteredText::
	text "Coins scattered"
	line "everywhere!"
	prompt

_GettingPumpedText::
	text "<USER>'s"
	line "getting pumped!"
	prompt

_WasSeededText::
	text "<TARGET>"
	line "was seeded!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "evaded attack!"
	prompt

_HitWithRecoilText::
	text "<USER>'s"
	line "hit with recoil!"
	prompt

_ConvertedTypeText::
	text "Converted type to"
	line "<TARGET>'s!"
	prompt

_StatusChangesEliminatedText::
	text "All STATUS changes"
	line "are eliminated!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "started sleeping!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

_RegainedHealthText::
	text "<USER>"
	line "regained health!"
	prompt

_TransformedText::
	text "<USER>"
	line "transformed into"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER>'s"
	line "protected against"
	cont "special attacks!"
	prompt

_ReflectGainedArmorText::
	text "<USER>"
	line "gained armor!"
	prompt

_ShroudedInMistText::
	text "<USER>'s"
	line "shrouded in mist!"
	prompt

_SuckedHealthText::
	text "Sucked health from"
	line "<TARGET>!"
	prompt

_DreamWasEatenText::
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done

INCLUDE "text/maps/reds_house_1f.asm"
INCLUDE "text/maps/blues_house.asm"
INCLUDE "text/maps/oaks_lab.asm"
INCLUDE "text/maps/viridian_pokecenter.asm"
INCLUDE "text/maps/viridian_mart.asm"
INCLUDE "text/maps/school.asm"
INCLUDE "text/maps/viridian_house.asm"
INCLUDE "text/maps/viridian_gym.asm"
INCLUDE "text/maps/museum_1f.asm"
INCLUDE "text/maps/museum_2f.asm"
INCLUDE "text/maps/pewter_gym_1.asm"


SECTION "Text 7", ROMX, BANK[TEXT_7]

INCLUDE "text/maps/pewter_gym_2.asm"
INCLUDE "text/maps/pewter_house_1.asm"
INCLUDE "text/maps/pewter_mart.asm"
INCLUDE "text/maps/pewter_house_2.asm"
INCLUDE "text/maps/pewter_pokecenter.asm"
INCLUDE "text/maps/cerulean_trashed_house.asm"
INCLUDE "text/maps/cerulean_trade_house.asm"
INCLUDE "text/maps/cerulean_pokecenter.asm"
INCLUDE "text/maps/cerulean_gym.asm"
INCLUDE "text/maps/bike_shop.asm"
INCLUDE "text/maps/cerulean_mart.asm"
INCLUDE "text/maps/cerulean_badge_house.asm"
INCLUDE "text/maps/lavender_pokecenter.asm"
INCLUDE "text/maps/pokemon_tower_1f.asm"
INCLUDE "text/maps/pokemon_tower_2f.asm"
INCLUDE "text/maps/pokemon_tower_3f.asm"
INCLUDE "text/maps/pokemon_tower_4f.asm"
INCLUDE "text/maps/pokemon_tower_5f.asm"
INCLUDE "text/maps/pokemon_tower_6f.asm"
INCLUDE "text/maps/pokemon_tower_7f.asm"
INCLUDE "text/maps/fujis_house.asm"
INCLUDE "text/maps/lavender_mart.asm"
INCLUDE "text/maps/lavender_house.asm"
INCLUDE "text/maps/name_rater.asm"
INCLUDE "text/maps/vermilion_pokecenter.asm"
INCLUDE "text/maps/fan_club.asm"
INCLUDE "text/maps/vermilion_mart.asm"
INCLUDE "text/maps/vermilion_gym_1.asm"


SECTION "Text 8", ROMX, BANK[TEXT_8]

INCLUDE "text/maps/vermilion_gym_2.asm"
INCLUDE "text/maps/vermilion_house.asm"
INCLUDE "text/maps/vermilion_dock.asm"
INCLUDE "text/maps/vermilion_fishing_house.asm"
INCLUDE "text/maps/celadon_dept_store_1f.asm"
INCLUDE "text/maps/celadon_dept_store_2f.asm"
INCLUDE "text/maps/celadon_dept_store_3f.asm"
INCLUDE "text/maps/celadon_dept_store_4f.asm"
INCLUDE "text/maps/celadon_dept_store_roof.asm"
INCLUDE "text/maps/celadon_mansion_1f.asm"
INCLUDE "text/maps/celadon_mansion_2f.asm"
INCLUDE "text/maps/celadon_mansion_3f.asm"
INCLUDE "text/maps/celadon_mansion_4f_outside.asm"
INCLUDE "text/maps/celadon_mansion_4f_inside.asm"
INCLUDE "text/maps/celadon_pokecenter.asm"
INCLUDE "text/maps/celadon_gym.asm"
INCLUDE "text/maps/celadon_game_corner.asm"
INCLUDE "text/maps/celadon_dept_store_5f.asm"
INCLUDE "text/maps/celadon_prize_room.asm"
INCLUDE "text/maps/celadon_diner.asm"
INCLUDE "text/maps/celadon_house.asm"
INCLUDE "text/maps/celadon_hotel.asm"
INCLUDE "text/maps/fuchsia_mart.asm"
INCLUDE "text/maps/fuchsia_house.asm"
INCLUDE "text/maps/fuchsia_pokecenter.asm"
INCLUDE "text/maps/wardens_house.asm"
INCLUDE "text/maps/safari_zone_entrance.asm"
INCLUDE "text/maps/fuchsia_gym_1.asm"


SECTION "Text 9", ROMX, BANK[TEXT_9]

INCLUDE "text/maps/fuchsia_gym_2.asm"
INCLUDE "text/maps/fuchsia_meeting_room.asm"
INCLUDE "text/maps/fuchsia_fishing_house.asm"
INCLUDE "text/maps/mansion_1f.asm"
INCLUDE "text/maps/cinnabar_gym.asm"
INCLUDE "text/maps/cinnabar_lab.asm"
INCLUDE "text/maps/cinnabar_lab_trade_room.asm"
INCLUDE "text/maps/cinnabar_lab_metronome_room.asm"
INCLUDE "text/maps/cinnabar_lab_fossil_room.asm"
INCLUDE "text/maps/cinnabar_pokecenter.asm"
INCLUDE "text/maps/cinnabar_mart.asm"
INCLUDE "text/maps/indigo_plateau_lobby.asm"
INCLUDE "text/maps/copycats_house_1f.asm"
INCLUDE "text/maps/copycats_house_2f.asm"
INCLUDE "text/maps/fighting_dojo.asm"
INCLUDE "text/maps/saffron_gym.asm"
INCLUDE "text/maps/saffron_house.asm"
INCLUDE "text/maps/saffron_mart.asm"
INCLUDE "text/maps/silph_co_1f.asm"
INCLUDE "text/maps/saffron_pokecenter.asm"
INCLUDE "text/maps/mr_psychics_house.asm"

_PokemartGreetingText::
	text "Hi there!"
	next "May I help you?"
	done

_PokemonFaintedText::
	text "¡@"
	TX_RAM wcd6d
	text ""
	line "se debilitó!"
	done

_PlayerBlackedOutText::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> blacked"
	line "out!"
	prompt

_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

_PokemartBuyingGreetingText::
	text "Take your time."
	done

_PokemartTellBuyPriceText::
	TX_RAM wcf4b
	text "?"
	line "That will be"
	cont "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text ". OK?"
	done

_PokemartBoughtItemText::
	text "Here you are!"
	line "Thank you!"
	prompt

_PokemartNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_PokemartItemBagFullText::
	text "You can't carry"
	line "any more items."
	prompt

_PokemonSellingGreetingText::
	text "What would you"
	line "like to sell?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text " for that."
	done

_PokemartItemBagEmptyText::
	text "You don't have"
	line "anything to sell."
	prompt

_PokemartUnsellableItemText::
	text "I can't put a"
	line "price on that."
	prompt

_PokemartThankYouText::
	text "Thank you!"
	done

_PokemartAnythingElseText::
	text "Is there anything"
	line "else I can do?"
	done

_LearnedMove1Text::
	TX_RAM wLearnMoveMonName
	text " learned"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_WhichMoveToForgetText::
	text "Which move should"
	next "be forgotten?"
	done

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	TX_RAM wcf4b
	text "?"
	done

_DidNotLearnText::
	TX_RAM wLearnMoveMonName
	text ""
	line "did not learn"
	cont "@"
	TX_RAM wcf4b
	text "!"
	prompt

_TryingToLearnText::
	TX_RAM wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	TX_RAM wcf4b
	text "!"

	para "But, @"
	TX_RAM wLearnMoveMonName
	text ""
	line "can't learn more"
	cont "than 4 moves!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	TX_RAM wcf4b
	text "?"
	done

_OneTwoAndText::
	text "1, 2 and...@@"

_PoofText::
	text " Poof!@@"

_ForgotAndText::
	text ""
	para "@"
	TX_RAM wLearnMoveMonName
	text " forgot"
	line "@"
	TX_RAM wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "HM techniques"
	line "can't be deleted!"
	prompt

_PokemonCenterWelcomeText::
	text "¡Bienvenido al"
	line "Centro Pokémon!"

	para "¡Curaremos tus"
	line "Pokémon a perfec-"
	cont "to estado!"
	prompt

_PokemonCenterWelcomeTextF::
	text "¡Bienvenida al"
	line "Centro Pokémon!"

	para "¡Curaremos tus"
	line "Pokémon a perfec-"
	cont "to estado!"
	prompt

_ShallWeHealYourPokemonText::
	text "¿Quieres que cu-"
	line "remos tus Poké-"
	cont "mon?"
	done

_NeedYourPokemonText::
	text "Muy bien, dame"
	line "unos segundos."
	done

_PokemonFightingFitText::
	text "¡Gracias!"
	line "¡Tu equipo reco-"
	cont "bró toda su ener-"
	cont "gía!"
	prompt

_PokemonCenterFarewellText::
	text "¡Esperamos volver"
	line "a verte!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "Esta área está"
	line "reservada para 2"
	cont "amigos que estén"
	cont "conectados por"
	cont "cable."
	done

_CableClubNPCWelcomeText::
	text "¡Bienvenido al"
	line "Club Cable!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "Please apply here."

	para "Before opening"
	line "the link, we have"
	cont "to save the game."
	done

_CableClubNPCPleaseWaitText::
	text "Please wait.@@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again!"
	done


SECTION "Text 10", ROMX, BANK[TEXT_10]

_CableClubNPCPleaseComeAgainText::
	text "Please come again!"
	done

_CableClubNPCMakingPreparationsText::
	text "We're making"
	line "preparations."
	cont "Please wait."
	done

_UsedStrengthText::
	TX_RAM wcd6d
	text " used"
	line "STRENGTH.@@"

_CanMoveBouldersText::
	TX_RAM wcd6d
	text " can"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "The current is"
	line "much too fast!"
	prompt

_CyclingIsFunText::
	text "Cycling is fun!"
	line "Forget SURFing!"
	prompt

_FlashLightsAreaText::
	text "A blinding FLASH"
	line "lights the area!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#MON CENTER."
	done

_CannotUseTeleportNowText::
	TX_RAM wcd6d
	text " can't"
	line "use TELEPORT now."
	prompt

_CannotFlyHereText::
	TX_RAM wcd6d
	text " can't"
	line "FLY here."
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new BADGE"
	line "is required."
	prompt

_CannotUseItemsHereText::
	text "You can't use items"
	line "here."
	prompt

_CannotGetOffHereText::
	text "You can't get off"
	line "here."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_SetToBoxText::
	text "There's no more"
	line "room for #MON!"
	cont "@"
	TX_RAM wBoxMonNicks
	text " was"
	cont "sent to #MON"
	cont "BOX @"
	TX_RAM wcf4b
	text " on PC!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #MON!"

	para "The #MON BOX"
	line "is full and can't"
	cont "accept any more!"

	para "Change the BOX at"
	line "a #MON CENTER!"
	done

_BoxIsFullReminderText::
	text "The #MON BOX"
	line "is now full."
	cont "It won't hold"
	cont "more #MON."
	
	para "Change the BOX at"
	line "a #MON CENTER!"
	prompt

INCLUDE "text/maps/pallet_town.asm"
INCLUDE "text/maps/viridian_city.asm"
INCLUDE "text/maps/pewter_city.asm"
INCLUDE "text/maps/cerulean_city.asm"
INCLUDE "text/maps/lavender_town.asm"
INCLUDE "text/maps/vermilion_city.asm"
INCLUDE "text/maps/celadon_city.asm"
INCLUDE "text/maps/fuchsia_city.asm"
INCLUDE "text/maps/cinnabar_island.asm"
INCLUDE "text/maps/saffron_city.asm"

_ItemUseBallText00::
	text "It dodged the"
	line "thrown BALL!"

	para "This #MON"
	line "can't be caught!"
	prompt

_ItemUseBallText01::
	text "You missed the"
	line "#MON!"
	prompt

_ItemUseBallText02::
	text "Darn! The #MON"
	line "broke free!"
	prompt

_ItemUseBallText03::
	text "Aww! It appeared"
	line "to be caught! "
	prompt

_ItemUseBallText04::
	text "Shoot! It was so"
	line "close too!"
	prompt

_ItemUseBallText05::
	text "All right!"
	line "@"
	TX_RAM wEnemyMonNick
	text " was"
	cont "caught!@@"

_ItemUseBallText07::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "BILL's PC!"
	prompt

_ItemUseBallText08::
	TX_RAM wBoxMonNicks
	text " was"
	line "transferred to"
	cont "someone's PC!"
	prompt

_ItemUseBallText06::
	text "New #DEX data"
	line "will be added for"
	cont "@"
	TX_RAM wEnemyMonNick
	text "!@@"

_SurfingGotOnText::
	text "<PLAYER> got on"
	line "@"
	TX_RAM wcd6d
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "There's no place"
	line "to get off!"
	prompt

_VitaminStatRoseText::
	TX_RAM wcd6d
	text "'s"
	line "@"
	TX_RAM wcf4b
	text " rose."
	prompt

_VitaminNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrewBaitText::
	text "<PLAYER> threw"
	line "some BAIT."
	done

_ThrewRockText::
	text "<PLAYER> threw a"
	line "ROCK."
	done

_PlayedFluteNoEffectText::
	text "Played the #"
	line "FLUTE."

	para "Now, that's a"
	line "catchy tune!"
	prompt

_FluteWokeUpText::
	text "All sleeping"
	line "#MON woke up."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> played the"
	line "# FLUTE.@@"

_CoinCaseNumCoinsText::
	text "Coins"
	line "@"
	TX_BCD wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Yes! ITEMFINDER"
	line "indicates there's"
	cont "an item nearby."
	prompt

_ItemfinderFoundNothingText::
	text "Nope! ITEMFINDER"
	line "isn't responding."
	prompt

_RaisePPWhichTechniqueText::
	text "Raise PP of which"
	line "technique?"
	done

_RestorePPWhichTechniqueText::
	text "Restore PP of"
	line "which technique?"
	done

_PPMaxedOutText::
	TX_RAM wcf4b
	text "'s PP"
	line "is maxed out."
	prompt

_PPIncreasedText::
	TX_RAM wcf4b
	text "'s PP"
	line "increased."
	prompt

_PPRestoredText::
	text "Los PP fueron"
	line "restaurados."
	prompt

_BootedUpTMText::
	text "¡Activaste la"
	line "Máquina Técnica!"
	prompt

_BootedUpHMText::
	text "¡Activaste la"
	line "Máquina Oculta!"
	prompt

_TeachMachineMoveText::
	text "¡Contiene"
	line "@"
	TX_RAM wcf4b
	text "!"

	para "¿Quieres enseñar"
	line "@"
	TX_RAM wcf4b
	text " a"
	cont "un Pokémon?"
	done

_MonCannotLearnMachineMoveText::
	TX_RAM wcd6d
	text " is not"
	line "compatible with"
	cont "@"
	TX_RAM wcf4b
	text "."

	para "It can't learn"
	line "@"
	TX_RAM wcf4b
	text "."
	prompt

_ItemUseNotTimeText::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that! "
	prompt

_ItemUseNotYoursToUseText::
	text "This isn't yours"
	line "to use!"
	prompt

_ItemUseNoEffectText::
	text "It won't have any"
	line "effect."
	prompt

_ThrowBallAtTrainerMonText1::
	text "The trainer"
	line "blocked the BALL!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Don't be a thief!"
	prompt

_NoCyclingAllowedHereText::
	text "No cycling"
	next "allowed here."
	prompt

_NoSurfingHereText::
	text "No SURFing on"
	line "@"
	TX_RAM wcd6d
	text " here!"
	prompt

_BoxFullCannotThrowBallText::
	text "The #MON BOX"
	line "is full! Can't"
	cont "use that item!"
	prompt


SECTION "Text 11", ROMX, BANK[TEXT_11]

_ItemUseText001::
	text "<PLAYER> used@@"

_ItemUseText002::
	TX_RAM wcf4b
	text "!"
	done

_GotOnBicycleText1::
	text "<PLAYER> got on the@@"

_GotOnBicycleText2::
	TX_RAM wcf4b
	text "!"
	prompt

_GotOffBicycleText1::
	text "<PLAYER> got off@@"

_GotOffBicycleText2::
	text "the @"
	TX_RAM wcf4b
	text "."
	prompt

_ThrewAwayItemText::
	text "Threw away"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_IsItOKToTossItemText::
	text "Is it OK to toss"
	line "@"
	TX_RAM wcf4b
	text "?"
	prompt

_TooImportantToTossText::
	text "That's too impor-"
	line "tant to toss!"
	prompt

_AlreadyKnowsText::
	TX_RAM wcd6d
	text " knows"
	line "@"
	TX_RAM wcf4b
	text "!"
	prompt

_ConnectCableText::
	text "Okay, connect the"
	line "cable like so!"
	prompt

_TradedForText::
	text "<PLAYER> traded"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text " for"
	cont "@"
	TX_RAM wInGameTradeReceiveMonName
	text "!@@"

_WannaTrade1Text::
	text "I'm looking for"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "! Wanna"

	para "trade one for"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "? "
	done

_NoTrade1Text::
	text "Awww!"
	line "Oh well..."
	done

_WrongMon1Text::
	text "¿Qué? ¡Ese no es"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "!"

	para "¡Si tienes uno,"
	line "por favor tráelo!"
	done

_Thanks1Text::
	text "¡Ey gracias!"
	done

_AfterTrade1Text::
	text "Isn't my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text " great?"
	done

_WannaTrade2Text::
	text "Hello there! Do"
	line "you want to trade"

	para "your @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade2Text::
	text "Well, if you"
	line "don't want to..."
	done

_WrongMon2Text::
	text "Hmmm? This isn't"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "Think of me when"
	line "you get one."
	done

_Thanks2Text::
	text "Thanks!"
	done

_AfterTrade2Text::
	text "The @"
	TX_RAM wInGameTradeGiveMonName
	text " you"
	line "traded to me"

IF DEF(_ENCBLUEJP)
	para "went and evolved!"	;Blue-JP trade uses Kadabra so this makes sense
ELSE
	para "is learning fast!"	;joenote - fixed nonsense about evolving
ENDC
	done

_WannaTrade3Text::
	text "Hi! Do you have"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "?"

	para "Want to trade it"
	line "for @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade3Text::
	text "That's too bad."
	done

_WrongMon3Text::
	text "...This is no"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "If you get one,"
	line "trade it with me!"
	done

_Thanks3Text::
	text "Thanks pal!"
	done

_AfterTrade3Text::
	text "How is my old"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "?"

	para "My @"
	TX_RAM wInGameTradeGiveMonName
	text " is"
	line "doing great!"
	done

_NothingToCutText::
	text "There isn't"
	line "anything to CUT!"
	prompt

_UsedCutText::
	TX_RAM wcd6d
	text " hacked"
	line "away with CUT!"
	prompt

;joenote - for field move slot
_LearnTempFieldMoveText::
	text "¿Aprender este"
	line "Movimiento de"
	cont "Campo temporal-"
	cont "mente?"
	done
_LearnTempFieldMoveTextDenied::
	text "¡Ya se sabe el"
	line "Movimiento de"
	cont "Campo temporal!"
	
	para "Pon el Pokémon"
	line "en una Caja del"
	cont "PC para borrarlo."
	prompt

_RomHackVersionText::
	text "Este GUARDADO es"
	line "de una revisión"
	cont "diferente del"
	cont "juego."
	
	para "¿Quieres tele-"
	line "transportarte a"
	cont "Pueblo Paleta por"
	cont "seguridad?"
	done

_RematchTrainerText::
	text "¿Ofreces una re-"
	line "vancha?"
	done

SECTION "Pokedex Text", ROMX, BANK[POKEDEX_TEXT]

IF DEF(_REDGREENJP)
INCLUDE "text/pokedexgreen.asm"
ELSE
INCLUDE "text/pokedex.asm"
ENDC


SECTION "Move Names", ROMX, BANK[MOVE_NAMES]

INCLUDE "text/move_names.asm"
