MACRO two_option_menu
	db \1, \2, \3
	dw \4
ENDM

TwoOptionMenuStrings:
; entries correspond to *_MENU constants
	table_width 5, TwoOptionMenuStrings
	; width, height, blank line before first menu item?, text pointer
	two_option_menu 4, 3, FALSE, .YesNoMenu
	two_option_menu 5, 3, FALSE, .BoyGirlMenu
	two_option_menu 6, 3, FALSE, .SouthEastMenu
	two_option_menu 6, 3, FALSE, .YesNoMenu
	two_option_menu 6, 3, FALSE, .NorthEastMenu
	two_option_menu 7, 3, FALSE, .TradeCancelMenu
	two_option_menu 7, 4, TRUE,  .HealCancelMenu
	two_option_menu 4, 3, FALSE, .NoYesMenu
	two_option_menu 7, 3, FALSE, .DifficultyMenu
	assert_table_length NUM_TWO_OPTION_MENUS

.NoYesMenu:
	db   "No"
	next "Yes@"

.YesNoMenu:
	db   "Yes"
	next "No@"

.BoyGirlMenu:
	db   "Boy"
	next "Girl@"

.SouthEastMenu:
	db   "South"
	next "East@"

.NorthEastMenu:
	db   "North"
	next "East@"

.TradeCancelMenu:
	db   "Trade"
	next "Cancel@"

.HealCancelMenu:
	db   "Heal"
	next "Cancel@"

.DifficultyMenu:
	db   "Normal"
	next "Hard@"