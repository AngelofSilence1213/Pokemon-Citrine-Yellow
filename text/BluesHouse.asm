_BluesHouseDaisyRivalAtLabText::
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

_BluesHouseDaisyOfferMapText::
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Here, this will"
	cont "help you!"
	prompt

_GotMapText::
	text "<PLAYER> got a"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_BluesHouseDaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_BluesHouseDaisyUseMapText::
	text "Use the Town Map"
	line "to find out where"
	cont "you are."
	done

_BluesHouseDaisyWalkingText::
	text "Spending time"
	line "with your #mon"
	cont "makes them more"
	cont "friendly to you."
	done

_BluesHouseTownMapText::
	text "It's a big map!"
	line "This is useful!"
	done
