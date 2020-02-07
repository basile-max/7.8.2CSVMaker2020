
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MAIN GUI
; Description ...:
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: ratakantez
; Modified ......: ratakantez (17th October 2019)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2019
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: MyBOT
; Link ..........:
; Example .......:
; ===============================================================================================================================

Func _GUICreateCSV($title, $width, $height, $left = -1, $top = -1, $style = -1, $exStyle = -1, $parent = 0)
	$GUI_CSV_in_function = GUICreate($title, $width, $height, $left, $top, $style, $exStyle, $parent)
	GUISetBkColor(0xFFFF99,$GUI_CSV_in_function)
	Local $key = String($GUI_CSV_in_function)
	Local $obj = $GUI_CSV_in_function
	$g_oGuiNotInMini.Add($key, $obj)
	GUISetIcon("csv.ico")
	Return $GUI_CSV_in_function
EndFunc   ;==>_GUICreate

Func GUI_CSVMAKER()
	$h_hGUI_MakeCsv = _GUICreateCSV($Program_Name & " 2020 " & $Program_Version, 1026, 640, @DesktopWidth/2-1026/2, @DesktopHeight/2-640/2, $WS_BORDER, $WS_EX_CONTROLPARENT)
	Local $x
	Local $y
	$AttackSide = GUICtrlCreateGroup("Attack Side", 4, 5, 300, 256) ; large group
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($AttackSide), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 10, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)
	$PicSideBarbar = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\sidebarbar.bmp", 60, 22, 147, 197)


	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$info_pic = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\info.bmp", 327, 12, 500, 500, BitOR($GUI_SS_DEFAULT_PIC, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_DISABLE)
	$Start = GUICtrlCreateButton("Start", 8 + 12, 455, 120, 27)
	GUICtrlSetFont(-1, 11, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(-1, 0x008080)
	GUICtrlSetOnEvent(-1,"StartButton")

	$Exit = GUICtrlCreateButton("", 8 + 12, 510, 120, 60, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
	GUICtrlSetImage($Exit, @ScriptDir & "\COCBot\CSVMAKER2020\USE\exit.bmp", 0)
	GUICtrlSetOnEvent(-1,"CloseCSVMakerGUI")
	$lblFile = GUICtrlCreateLabel("File : ", 6, 430, 35, -1)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0x000080)
	$FileInput = GUICtrlCreateInput("NoName_", 45, 427, 105, 23)
	GUICtrlSetTip(-1, "You can write a specific name for your CSV File")

	$AttackSide2 = GUICtrlCreateGroup("Attack Side", 4, 5, 145, 256) ;Tight Group
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($AttackSide2), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 10, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)
	GUICtrlSetState($AttackSide2, $GUI_HIDE)
;~ -----------Left attack side gui-----------------------------------
		$PicInferno = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\inferno.bmp", 10, 35 - 12, 23, 25)
		GUICtrlSetTip(-1, "Inferno Tower")
		$infernoPoint = GUICtrlCreateInput("0", 35, 36 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Inferno Tower Side Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($infernoPoint,"GetSidePoint")

		$PicAir = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\air.bmp", 10, 65 - 12, 23, 25)
		GUICtrlSetTip(-1, "Air Defense")
		$airpoint = GUICtrlCreateInput("0", 35, 66 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Air Defense Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($airpoint,"GetSidePoint")

		$PicEagle = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\eagle.bmp", 10, 95 - 12, 23, 25)
		GUICtrlSetTip(-1, "Eagle")
		$eaglepoint = GUICtrlCreateInput("0", 35, 96 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Eagle Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($eaglepoint,"GetSidePoint")

		$PicTH = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\TH.bmp", 10, 125 - 12, 23, 25)
		GUICtrlSetTip(-1, "TownHall")
		$THPoint = GUICtrlCreateInput("0", 35, 126 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "TH Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($THPoint,"GetSidePoint")

		$PicMortar = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Mortar.bmp", 10, 153 - 12, 23, 25)
		GUICtrlSetTip(-1, "Mortar")
		$MortarPoint = GUICtrlCreateInput("0", 35, 156 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Mortar Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($MortarPoint,"GetSidePoint")

		$PicXbow = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\xbow.bmp", 10, 182 - 12, 23, 25)
		GUICtrlSetTip(-1, "X-Bow")
		$XbowpointPoint = GUICtrlCreateInput("0", 35, 186 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "X-Bow Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($XbowpointPoint,"GetSidePoint")

		$PicWTower = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\wizz.bmp", 10, 212 - 12, 23, 25)
		GUICtrlSetTip(-1, "Wizzard Tower")
		$WTowerPoint = GUICtrlCreateInput("0", 35, 214 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Wizzard Tower Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($WTowerPoint,"GetSidePoint")

		$PicScatter = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\scattershot.bmp", 10, 242 - 12, 23, 25)
		GUICtrlSetTip(-1, "Scatter Shot")
		$ScatterShotPoint = GUICtrlCreateInput("0", 35, 244 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Scatter Shot Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($ScatterShotPoint,"GetSidePoint")
;~ -----------Right attack side gui-----------------------------------
		$PicGoldStorage = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\GoldStorage.bmp", 10 + 70 + 130, 35 - 12, 23, 25)
		GUICtrlSetTip(-1, "Gold Storage")
		$GoldStoragePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 36 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Gold Storage Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($GoldStoragePoint,"GetSidePoint")

		$PicElixirStorage = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\ElixirStorage.bmp", 10 + 70 + 130, 65 - 12, 23, 25)
		GUICtrlSetTip(-1, "Elixir Storage")
		$ElixirStoragePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 66 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Elixir Storage Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($ElixirStoragePoint,"GetSidePoint")

		$PicDarkElixirStorage = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\DarkElixir.bmp", 10 + 70 + 130, 95 - 12, 23, 25)
		GUICtrlSetTip(-1, "Dark Elixir Storage")
		$DarkElixirStoragePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 96 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Dark Elixir Storage Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($DarkElixirStoragePoint,"GetSidePoint")

		$PicMine = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Mine.bmp", 10 + 70 + 130, 125 - 12, 23, 25)
		GUICtrlSetTip(-1, "Mine")
		$MinePoint = GUICtrlCreateInput("0", 35 + 70 + 130, 126 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Mine Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($MinePoint,"GetSidePoint")

		$PicCollector = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\collector.bmp", 10 + 70 + 130, 153 - 12, 23, 25)
		GUICtrlSetTip(-1, "Collector")
		$CollectorPoint = GUICtrlCreateInput("0", 35 + 70 + 130, 156 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Colelctor Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($CollectorPoint,"GetSidePoint")

		$PicDrill = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Drill.bmp", 10 + 70 + 130, 182 - 12, 23, 25)
		GUICtrlSetTip(-1, "Drill")
		$DrillPoint = GUICtrlCreateInput("0", 35 + 70 + 130, 186 - 12, 25, 23, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
		GUICtrlSetTip(-1, "Drill Point")
		GUICtrlSetLimit(-1, 2)
		GUICtrlSetOnEvent($DrillPoint,"GetSidePoint")

		$ForcedSidePoint = GUICtrlCreateCombo("", 35 + 35 + 140, 214 - 9, 75, 29, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_DROPDOWNLIST))
		GUICtrlSetFont(-1, 6.5, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
		GUICtrlSetData($ForcedSidePoint, "NONE|TOP LEFT|TOP RIGHT|BOTTOM LEFT|BOTTOM RIGHT|RANDOM", "NONE")
		GUICtrlSetOnEvent($ForcedSidePoint,"GetSidePoint")

	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$OpenTrain = GUICtrlCreateButton("", 168, 272, 135, 148, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
	GUICtrlSetOnEvent(-1,"ShowTrainMenu")
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetImage($OpenTrain, @ScriptDir & "\COCBot\CSVMAKER2020\USE\think_barbarian.bmp", 0)
	$CloseTrain = GUICtrlCreateButton("", 168, 272, 135, 148, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetOnEvent(-1,"SaveandExitTrainMenu")
	GUICtrlSetImage($CloseTrain, @ScriptDir & "\COCBot\CSVMAKER2020\USE\closetraining.bmp", 0)

	$Note = GUICtrlCreateEdit("", 4, 272, 160, 150, BitOR($ES_AUTOVSCROLL, $ES_AUTOHSCROLL, $ES_WANTRETURN))
	GUICtrlSetData(-1, "Author: " & @UserName & " - ver. x.x" & @CRLF & _NowDate() & @CRLF & @CRLF & "Troops: " & @CRLF & "Spells: " & @CRLF & "CC: " & @CRLF & "Info..... ")
	GUICtrlSetColor(-1, 0x800000)
	GUICtrlSetBkColor(-1, 0xD7E4F2)
	GUICtrlSetTip(-1, "You can write a description for your CSV File" & @CRLF & "Such as Author Name,Army and CC info.. ")
	$GetHis = InetRead("https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/history.txt")
	If @error Or $GetHis = "" Then Return
	$GetHis = BinaryToString($GetHis)
	$LabelHis = GUICtrlCreateLabel($GetHis, 155+622+61, 17, 170, 650,BitOR($WS_VISIBLE, $ES_AUTOVSCROLL, $SS_LEFT))
	GUICtrlSetFont(-1, 6.5, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)



	$troops_pic2 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\SPELL_last.bmp", 152 + 3, 9 + 3, 619, 501, BitOR($GUI_SS_DEFAULT_PIC, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState($troops_pic2, $GUI_DISABLE)
	GUICtrlSetState($troops_pic2, $GUI_HIDE)
	$CMBTroops_Name = GUICtrlCreateCombo("", 790, 20, 133, 25, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_SIMPLE, $WS_HSCROLL, $WS_CLIPSIBLINGS))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetData($CMBTroops_Name, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas|Baby Dragons|Miners|E-Dragons|Yeti|Minions|Hog Riders|Valkyries|Golems|Witches|Lava Hounds|Bowlers|Ice Golems|Light Spells|Heal Spells|Rage Spells|Jump Spells|Freeze Spells|Clone Spells|Poison Spells|Earthquake Spells|Haste Spells|Skeleton Spells|Bat Spells|Wall Wrecker|Battle Blimp|Stone Slamer|Siege Barrack|King|Queen|Warden|Royal Champion|Castle", "Barbarians")
	GUICtrlSetOnEvent($CMBTroops_Name,"CMBTroops_NameCOMBOBOX")
	$LOG = _GUICtrlRichEdit_Create($h_hGUI_MakeCsv, "CSV WRITING IS STARTING" & @CRLF, 156, 513, 620, 100, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $WS_HSCROLL, $ES_UPPERCASE, $ES_AUTOHSCROLL, $ES_AUTOVSCROLL, $ES_NUMBER, 0x200), $WS_EX_STATICEDGE)
	GUICtrlSetState($LOG, $GUI_HIDE)
	$troops_pic = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\troops_LAST.bmp", 152 + 3, 9 + 3, 619, 501, BitOR($GUI_SS_DEFAULT_PIC, $WS_BORDER))
	GUICtrlSetState($troops_pic, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	$GoOnLater = GUICtrlCreateButton ("",20,510,120, 30, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetOnEvent(-1,"OnlySaveCSV_DontMoveTheFile")
	GUICtrlSetImage($GoOnLater, @ScriptDir & "\COCBot\CSVMAKER2020\USE\sae.bmp", 0)
	$SaveAndExit = GUICtrlCreateButton ("",20,550,120, 30, BitOR($BS_CENTER, $BS_BITMAP, $WS_BORDER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetOnEvent(-1,"SaveCSVMoveCSVandSaveLog")
	GUICtrlSetImage($SaveAndExit, @ScriptDir & "\COCBot\CSVMAKER2020\USE\sae2.bmp", 0)

	$x = 790
	$y = 65

	$grpfordrop = GUICtrlCreateGroup("Drop Options", $x-5, $y-58, 233, 120+65)
	GUICtrlSetState(-1, $GUI_HIDE)
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($grpfordrop), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)
    $AddRandomXandY = GUICtrlCreateCheckbox("Add Random Point X :", $x, $y-20, -1, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetOnEvent($AddRandomXandY,"AddRandomXandY")


	$txtRandomX = GUICtrlCreateInput("0", $x+125, $y+2-20, 20, 23)
	GUICtrlSetOnEvent($txtRandomX,"AddRandomXandY")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$lblRandomXY1 = GUICtrlCreateLabel("and Y :", $x+150, $y+7-20, -1, 23)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
    $txtRandomY = GUICtrlCreateInput("0", $x+188, $y+2-20, 20, 23)
	GUICtrlSetOnEvent($txtRandomY,"AddRandomXandY")
	GUICtrlSetLimit(-1, 2)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)


    $y=$y+30

	$Sleep = GUICtrlCreateCheckbox("Sleep", $x, $y, -1, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetTip(-1, "Bot sleep after dropping xxx milisecond (s) between your two input randomly (1000ms = 1 second)")
	GUICtrlSetOnEvent($Sleep,"SleepCheckControl")

	$SleepInput1 = GUICtrlCreateInput("100", $x+47, $y+2, 36, 23,BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "Bot sleep after dropping xxx milisecond (s) between your two input randomly (1000ms = 1 second)")
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetOnEvent($SleepInput1,"GetSleepSize")
	$lblSleep = GUICtrlCreateLabel("-", $x+85, $y+7, 15, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$SleepInput2 = GUICtrlCreateInput("120", $x+90, $y+2, 36, 23, BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetTip(-1, "Bot sleep after dropping xxx milisecond (s) between your two input randomly (1000ms = 1 second)")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetOnEvent($SleepInput2,"GetSleepSize")
	$lblSleep2 = GUICtrlCreateLabel("ms after dropping", $x+128, $y+7, 90, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)

	$y=$y+30

	$RandomnessSlider = GUICtrlCreateCombo("",$x+90, $y, 75, 22, $CBS_DROPDOWNLIST)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetData($RandomnessSlider, "exact Point|one point|two point|three point|four point|five point|six point|seven point|eight point|","exact Point")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetOnEvent($RandomnessSlider,"ComboRandomnessCombo")
	$RandomnessSliderLabel = GUICtrlCreateLabel("Drop Troops with", $x, $y+3, 88, 40)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$RandomnessSliderLabel2 = GUICtrlCreateLabel("wideness", $x+170, $y+3, 47, 40)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$RandomnessSliderImage1 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\1wideness.bmp", 795, 144, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage2 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\2wideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage3 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\3wideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage4 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\4wideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage5 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\5wideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage6 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\6wideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage7 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\7wideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage8 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\8wideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	$RandomnessSliderImage0 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\NOwideness.bmp", 795, 145, 214, 21)
	GUICtrlSetTip(-1, "For humanization attack, Bot will drop trop that you choose, with +/- wideness drop point." & @CRLF & "For example, if you choose drop point 'five' and 'one point' wideness "&@CRLF&"your drop point will choose 4 or 5 or 6 randomly at each attack." )
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)

	$y=$y+41

	$ShuffleGroups = GUICtrlCreateCheckbox("Shuffle Troops Groups", $x, $y, 124, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$Group1 = GUICtrlCreateButton("", $x + 125, $y+3, 15, 15, BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetImage($Group1, @ScriptDir & "\COCBot\CSVMAKER2020\USE\add1st.bmp", 0)
	$Group2 = GUICtrlCreateButton("", $x + 141, $y+3, 15, 15, BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetImage($Group2, @ScriptDir & "\COCBot\CSVMAKER2020\USE\add2nd.bmp", 0)
	$Group3 = GUICtrlCreateButton("", $x + 157, $y+3, 15, 15, BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetImage($Group3, @ScriptDir & "\COCBot\CSVMAKER2020\USE\add3rd.bmp", 0)
	$Group4 = GUICtrlCreateButton("", $x + 173, $y+3, 15, 15, BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetImage($Group4, @ScriptDir & "\COCBot\CSVMAKER2020\USE\add4th.bmp", 0)
	$Group5 = GUICtrlCreateButton("", $x + 189, $y+3, 15, 15, BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetImage($Group5, @ScriptDir & "\COCBot\CSVMAKER2020\USE\add5th.bmp", 0)
	$Group6 = GUICtrlCreateButton("", $x + 205, $y+3, 15, 15, BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetImage($Group6, @ScriptDir & "\COCBot\CSVMAKER2020\USE\add6th.bmp", 0)


	$x=790
	$y=140+65

	$grpforwait = GUICtrlCreateGroup("Add Wait to CSV", $x-5, $y-12, 233, 70)
	GUICtrlSetState(-1, $GUI_HIDE)
	DllCall("UxTheme.dll", "int", "SetWindowTheme", "hwnd", GUICtrlGetHandle($grpforwait), "wstr", 0, "wstr", 0)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x808000)
	$CheckWait = GUICtrlCreateCheckbox("Wait", $x, $y, -1, 27)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetOnEvent($CheckWait,"CheckWaitCheckBOX")
	GUICtrlSetTip(-1, "Bot wait with WAIT command xxx milisecond (s) between your two input randomly" &@CRLF& " with special break that you set after dropping in CSV(1000ms = 1 second)")
	$WaitInput1 = GUICtrlCreateInput("0", $x+47, $y+2, 36, 23, BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetTip(-1, "If your both inputs are same bot wait only the time that you set." & @CRLF & "If your imputs are different bot will get a random number between your inputs.")
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetOnEvent($WaitInput1,"GetWaitInputSize")
	$lblWait = GUICtrlCreateLabel("-", $x+85, $y+7, 15, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$WaitInput2 = GUICtrlCreateInput("0", $x+90, $y+2, 36, 23, BitOR($ES_CENTER, $ES_NUMBER))
	GUICtrlSetLimit(-1, 5)
	GUICtrlSetTip(-1, "If your both inputs are same bot wait only the time that you set." & @CRLF & "If your imputs are different bot will get a random number between your inputs.")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetOnEvent($WaitInput2,"GetWaitInputSize")
	$lblWait2 = GUICtrlCreateLabel(" ms. Additionally,", $x+128, $y+7, 85, 23)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
    $CMBWaitBreakCommand = GUICtrlCreateCombo("" , $x , $y+30 , 225, 25, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_SIMPLE, $WS_HSCROLL))
	GUICtrlSetData($CMBWaitBreakCommand, "Don't break the time, keep waiting|If TH is destroyed, Go On|If Siege is destroyed, Go On|If Both TH and Siege are Destroyed, Go on|If TH or Siege is Destroyed, Go on|If King is activated, Go on|If Queen is Activated, Go on|If Warden is activated, Go on|If Royal Champion is activated, Go on|If Both King and Queen are activated, Go on|If King or Queen is activated, Go On", "Don't break the time, keep waiting")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	GUICtrlSetOnEvent($CMBWaitBreakCommand,"CMBWaitBreakCommandCOMBOBOX")

	$InfoAfterStart = GUICtrlCreateButton("", 950, 200+65, 52, 52 , BitOR($BS_CENTER, $BS_BITMAP))
	GUICtrlSetImage($InfoAfterStart, @ScriptDir & "\COCBot\CSVMAKER2020\USE\info2.bmp", 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetOnEvent($InfoAfterStart,"InfoAfterStartButton")


	$AddCSV = GUICtrlCreateButton("ADD CSV", 790, 265, 60, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(-1, 0x009999)
	GUICtrlSetOnEvent($AddCSV,"ADDCSV")
	$Undo = GUICtrlCreateButton("Undo", 861, 265, 60, 27)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetColor(-1, 0xC0C0C0)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($Undo,"UNDO")

	$x = 790
	$y = 280+65

	$TextUsedArmyEnter = GUICtrlCreateLabel("USED        |TOTAL  |SIZE   |", $x, $y-42, 250, 300)
	 GUICtrlSetState(-1, $GUI_HIDE)
	  GUICtrlSetFont(-1, 8, $FW_BOLD, 4, "Consolas", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	$TextUsedArmy = GUICtrlCreateLabel("" , $x, $y-30, 250, 285)
	 GUICtrlSetState(-1, $GUI_HIDE)
	  GUICtrlSetFont(-1, 8, $FW_BOLD, Default, "Consolas", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0x000080)
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	$GrpFORbuildings = GUICtrlCreateGroup("", 612, 14, 153, 107)
		GUICtrlSetState(-1, $GUI_HIDE)
		$RadioWall1 = GUICtrlCreateRadio("", 630, 62, 10, 10)
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetTip(-1, "Bot will drop your spell to line of first wall after Reline")
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetOnEvent($RadioWall1,"RadioWall1")
		$RadioWall2 = GUICtrlCreateRadio("", 650, 62, 10, 10)
		GUICtrlSetTip(-1, "Bot will drop your spell to line of second wall after Reline")
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetOnEvent($RadioWall2,"RadioWall2")
		$RadioEagle = GUICtrlCreateRadio("", 690, 62, 10, 10)
		GUICtrlSetTip(-1, "Bot will drop your spell to Eagle Building from your attack side that you set at first begining")
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetOnEvent($RadioEagle,"RadioEagle")
		$RadioInferno = GUICtrlCreateRadio("", 735, 62, 10, 10)
		GUICtrlSetTip(-1, "Bot will drop your spell to nextest Inferno Building from your attack side that you set at first begining")
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetOnEvent($RadioInferno,"RadioInferno")
		$RadioXbow = GUICtrlCreateRadio("", 642, 110, 10, 10)
		GUICtrlSetTip(-1, "Bot will drop your spell to nextest X-Bow Building from your attack side that you set at first begining")
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetOnEvent($RadioXbow,"RadioXbow")
		$RadioScatterShot = GUICtrlCreateRadio("", 642-48, 62, 10, 10)
		GUICtrlSetTip(-1, "Bot will drop your spell to nextest ScatterShot Building from your attack side that you set at first begining")
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetOnEvent($RadioScatterShot,"RadioScatterShot")
		$RadioWizzTower = GUICtrlCreateRadio("", 692, 110, 10, 10)
		GUICtrlSetTip(-1, "Bot will drop your spell to nextest Wizard Tower Building from your attack side that you set at first begining")
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetOnEvent($RadioWizzTower,"RadioWizzTower")
		$RadioAirDefense = GUICtrlCreateRadio("", 735, 110, 10, 10)
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetTip(-1, "Bot will drop your spell to nextest AirDefense Building from your attack side that you set at first begining")
		GUICtrlSetBkColor(-1, 0xd49d63)
		GUICtrlSetOnEvent($RadioAirDefense,"RadioAirDefense")
		$RadioTH = GUICtrlCreateRadio("", 633, 460, 10, 10)
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetTip(-1, "Bot will drop your spell to TownHall Building from your attack side that you set at first begining")
		GUICtrlSetBkColor(-1, 0xd48153)
		GUICtrlSetOnEvent($RadioTH,"RadioTH")
		$RadioMortar = GUICtrlCreateRadio("", 694, 460, 10, 10)
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetTip(-1, "Bot will drop your spell to nextest Mortar Building from your attack side that you set at first begining")
		GUICtrlSetBkColor(-1, 0xd48153)
		GUICtrlSetOnEvent($RadioMortar,"RadioMortar")
		$CheckBuilding = GUICtrlCreateCheckbox("Drop Spell On Building", 790, 70, 170, 25)
		GUICtrlSetTip(-1, "Bot will drop your spell to Buildings that is next to your set side. Please choose one building on the map")
		GUICtrlSetState(-1, $GUI_HIDE)
		GUICtrlSetFont(-1, 9, 800, 4, "Arial")
		GUICtrlSetColor(-1, 0x800000)
		GUICtrlSetOnEvent($CheckBuilding,"CheckBuildingControl")
	GUICtrlCreateGroup("", -99, -99, 1, 1)

;~ #################### DROP POINTS ###########################

	$x = 454
	$y = 58
	$a10 = GUICtrlCreateButton("10", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a10,"a10")
	$a9 = GUICtrlCreateButton("9", $x - 14, $y + 11, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a9,"a9")
	$a8 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a8,"a8")
	$a7 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a7,"a7")
	$a6 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a6,"a6")
	$a5 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a5,"a5")
	$a4 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a4,"a4")
	$a3 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a3,"a3")
	$a2 = GUICtrlCreateButton("2", $x - 112, $y + 75, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a2,"a2")
	$a1 = GUICtrlCreateButton("1", $x - 127, $y + 86, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($a1,"a1")

	$x = 312
	$y = 160
	$b1 = GUICtrlCreateButton("1", $x, $y-1, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b1,"b1")
	$b2 = GUICtrlCreateButton("2", $x - 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b2,"b2")
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	$b3 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b3,"b3")
	$b4 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b4,"b4")
	$b5 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b5,"b5")
	$b6 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b6,"b6")
	$b7 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b7,"b7")
	$b8 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b8,"b8")
	$b9 = GUICtrlCreateButton("9", $x - 112, $y + 75, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b9,"b9")
	$b10 = GUICtrlCreateButton("10", $x - 127, $y + 86, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($b10,"b10")

	$x = 183
	$y = 262
	$c10 = GUICtrlCreateButton("10", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c10,"c10")
	$c9 = GUICtrlCreateButton("9", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c9,"c9")
	$c8 = GUICtrlCreateButton("8", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c8,"c8")
	$c7 = GUICtrlCreateButton("7", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c7,"c7")
	$c6 = GUICtrlCreateButton("6", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c6,"c6")
	$c5 = GUICtrlCreateButton("5", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c5,"c5")
	$c4 = GUICtrlCreateButton("4", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c4,"c4")
	$c3 = GUICtrlCreateButton("3", $x + 99, $y + 69, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c3,"c3")
	$c2 = GUICtrlCreateButton("2", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c2,"c2")
	$c1 = GUICtrlCreateButton("1", $x + 123, $y + 85, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($c1,"c1")


	$x = 322
	$y = 361
	$d1 = GUICtrlCreateButton("1", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d1,"d1")
	$d2 = GUICtrlCreateButton("2", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d2,"d2")
	$d3 = GUICtrlCreateButton("3", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d3,"d3")
	$d4 = GUICtrlCreateButton("4", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d4,"d4")
	$d5 = GUICtrlCreateButton("5", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d5,"d5")
	$d6 = GUICtrlCreateButton("6", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d6,"d6")
	$d7 = GUICtrlCreateButton("7", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d7,"d7")
	$d8 = GUICtrlCreateButton("8", $x + 99, $y + 69, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d8,"d8")
	$d9 = GUICtrlCreateButton("9", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d9,"d9")
	$d10 = GUICtrlCreateButton("10", $x + 123, $y + 85, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($d10,"d10")

	$x = 593
	$y = 359
	$e1 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e1,"e1")
	$e2 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e2,"e2")
	$e3 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e3,"e3")
	$e4 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e4,"e4")
	$e5 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e5,"e5")
	$e6 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e6,"e6")
	$e7 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e7,"e7")
	$e8 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e8,"e8")
	$e9 = GUICtrlCreateButton("9", $x - 112, $y + 75, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e9,"e9")
	$e10 = GUICtrlCreateButton("10", $x - 127, $y + 86, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($e10,"e10")

	$x = 741
	$y = 255
	$f10 = GUICtrlCreateButton("10", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f10,"f10")
	$f9 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f9,"f9")
	$f8 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f8,"f8")
	$f7 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f7,"f7")
	$f6 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f6,"f6")
	$f5 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f5,"f5")
	$f4 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f4,"f4")
	$f3 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f3,"f3")
	$f2 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f2,"f2")
	$f1 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($f1,"f1")

	$x = 608
	$y = 152
	$g1 = GUICtrlCreateButton("1", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g1,"g1")
	$g2 = GUICtrlCreateButton("2", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g2,"g2")
	$g3 = GUICtrlCreateButton("3", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g3,"g3")
	$g4 = GUICtrlCreateButton("4", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g4,"g4")
	$g5 = GUICtrlCreateButton("5", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g5,"g5")
	$g6 = GUICtrlCreateButton("6", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g6,"g6")
	$g7 = GUICtrlCreateButton("7", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g7,"g7")
	$g8 = GUICtrlCreateButton("8", $x + 98, $y + 68, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g8,"g8")
	$g9 = GUICtrlCreateButton("9", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g9,"g9")
	$g10 = GUICtrlCreateButton("10", $x + 123, $y + 87, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($g10,"g10")


	$x = 469
	$y = 58
	$h10 = GUICtrlCreateButton("10", $x, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h10,"h10")
	$h9 = GUICtrlCreateButton("9", $x + 14, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h9,"h9")
	$h8 = GUICtrlCreateButton("8", $x + 29, $y + 21, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h8,"h8")
	$h7 = GUICtrlCreateButton("7", $x + 43, $y + 32, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h7,"h7")
	$h6 = GUICtrlCreateButton("6", $x + 56, $y + 41, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h6,"h6")
	$h5 = GUICtrlCreateButton("5", $x + 72, $y + 50, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h5,"h5")
	$h4 = GUICtrlCreateButton("4", $x + 86, $y + 59, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h4,"h4")
	$h3 = GUICtrlCreateButton("3", $x + 99, $y + 69, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h3,"h3")
	$h2 = GUICtrlCreateButton("2", $x + 111, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h2,"h2")
	$h1 = GUICtrlCreateButton("1", $x + 123, $y + 85, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($h1,"h1")






;~ _____________SPELLLL POINT_________________
;~ ________________e side Spells____________
	$x = 575 ;717  -142
	$y = 345 ;241   +104
	$Se1L1 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L1,"Se1L1")
	$Se2L1 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L1,"Se2L1")
	$Se3L1 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L1,"Se3L1")
	$Se4L1 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L1,"Se4L1")
	$Se5L1 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L1,"Se5L1")
	$Se6L1 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L1,"Se6L1")
	$Se7L1 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L1,"Se7L1")
	$Se8L1 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L1,"Se8L1")
	$Se9L1 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L1,"Se9L1")
;~ $Se10L1 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 706 - 142
	$y = 230 + 104
	$Se1L2 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L2,"Se1L2")
	$Se2L2 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L2,"Se2L2")
	$Se3L2 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L2,"Se3L2")
	$Se4L2 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L2,"Se4L2")
	$Se5L2 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L2,"Se5L2")
	$Se6L2 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L2,"Se6L2")
	$Se7L2 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L2,"Se7L2")
	$Se8L2 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L2,"Se8L2")
	$Se9L2 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L2,"Se9L2")
;~ $Se10L2 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 692 - 142 ;-11
	$y = 220 + 104 ;-11
	$Se1L3 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L3,"Se1L3")
	$Se2L3 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L3,"Se2L3")
	$Se3L3 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L3,"Se3L3")
	$Se4L3 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L3,"Se4L3")
	$Se5L3 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L3,"Se5L3")
	$Se6L3 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L3,"Se6L3")
	$Se7L3 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L3,"Se7L3")
	$Se8L3 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L3,"Se8L3")
	$Se9L3 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L3,"Se9L3")
;~ $Se10L3 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 677 - 142 ;-10
	$y = 211 + 104 ;-11
	$Se1L4 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L4,"Se1L4")
	$Se2L4 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L4,"Se2L4")
	$Se3L4 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L4,"Se3L4")
	$Se4L4 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L4,"Se4L4")
	$Se5L4 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L4,"Se5L4")
	$Se6L4 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L4,"Se6L4")
	$Se7L4 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L4,"Se7L4")
	$Se8L4 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L4,"Se8L4")
	$Se9L4 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L4,"Se9L4")
;~ $Se10L4 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 663 - 142 ;-10
	$y = 201 + 104 ;-11
	$Se1L5 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L5,"Se1L5")
	$Se2L5 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L5,"Se2L5")
	$Se3L5 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L5,"Se3L5")
	$Se4L5 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L5,"Se4L5")
	$Se5L5 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L5,"Se5L5")
	$Se6L5 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L5,"Se6L5")
	$Se7L5 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L5,"Se7L5")
	$Se8L5 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L5,"Se8L5")
	$Se9L5 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L5,"Se9L5")
;~ $Se10L5 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 650 - 142 ;-10
	$y = 192 + 104 ;-11
	$Se1L6 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L6,"Se1L6")
	$Se2L6 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L6,"Se2L6")
	$Se3L6 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L6,"Se3L6")
	$Se4L6 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L6,"Se4L6")
	$Se5L6 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L6,"Se5L6")
	$Se6L6 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L6,"Se6L6")
	$Se7L6 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L6,"Se7L6")
	$Se8L6 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L6,"Se8L6")
	$Se9L6 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L6,"Se9L6")
;~ $Se10L6 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 639 - 142 ;-10
	$y = 182 + 104 ;-11
	$Se1L7 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L7,"Se1L7")
	$Se2L7 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L7,"Se2L7")
	$Se3L7 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L7,"Se3L7")
	$Se4L7 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L7,"Se4L7")
	$Se5L7 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L7,"Se5L7")
	$Se6L7 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L7,"Se6L7")
	$Se7L7 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L7,"Se7L7")
	$Se8L7 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L7,"Se8L7")
	$Se9L7 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L7,"Se9L7")
;~ $Se10L7 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 626 - 142 ;-10
	$y = 175 + 104 ;-11
	$Se1L8 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L8,"Se1L8")
	$Se2L8 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L8,"Se2L8")
	$Se3L8 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L8,"Se3L8")
	$Se4L8 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L8,"Se4L8")
	$Se5L8 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L8,"Se5L8")
	$Se6L8 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L8,"Se6L8")
	$Se7L8 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L8,"Se7L8")
	$Se8L8 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L8,"Se8L8")
	$Se9L8 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L8,"Se9L8")
;~ $Se10L8 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 614 - 142 ;-8
	$y = 166 + 104 ;-9
	$Se1L9 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L9,"Se1L9")
	$Se2L9 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L9,"Se2L9")
	$Se3L9 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L9,"Se3L9")
	$Se4L9 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L9,"Se4L9")
	$Se5L9 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L9,"Se5L9")
	$Se6L9 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L9,"Se6L9")
	$Se7L9 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L9,"Se7L9")
	$Se8L9 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L9,"Se8L9")
	$Se9L9 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L9,"Se9L9")
;~ $Se10L9 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 601 - 142 ;-8
	$y = 156 + 104 ;-9
	$Se1L10 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L10,"Se1L10")
	$Se2L10 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L10,"Se2L10")
	$Se3L10 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L10,"Se3L10")
	$Se4L10 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L10,"Se4L10")
	$Se5L10 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L10,"Se5L10")
	$Se6L10 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L10,"Se6L10")
	$Se7L10 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L10,"Se7L10")
	$Se8L10 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L10,"Se8L10")
	$Se9L10 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L10,"Se9L10")
;~ $Se10L10 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 586 - 142 ;-12
	$y = 146 + 104 ;-9
	$Se1L11 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L11,"Se1L11")
	$Se2L11 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L11,"Se2L11")
	$Se3L11 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L11,"Se3L11")
	$Se4L11 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L11,"Se4L11")
	$Se5L11 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L11,"Se5L11")
	$Se6L11 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L11,"Se6L11")
	$Se7L11 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L11,"Se7L11")
	$Se8L11 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L11,"Se8L11")
	$Se9L11 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L11,"Se9L11")
;~ $Se10L11 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 572 - 142 ;-12
	$y = 138 + 104 ;-9
	$Se1L12 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L12,"Se1L12")
	$Se2L12 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L12,"Se2L12")
	$Se3L12 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L12,"Se3L12")
	$Se4L12 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L12,"Se4L12")
	$Se5L12 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L12,"Se5L12")
	$Se6L12 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L12,"Se6L12")
	$Se7L12 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L12,"Se7L12")
	$Se8L12 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L12,"Se8L12")
	$Se9L12 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L12,"Se9L12")
;~ $Se10L12 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 559 - 144 ;-12
	$y = 128 + 103 ;-9
	$Se1L13 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L13,"Se1L13")
	$Se2L13 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L13,"Se2L13")
	$Se3L13 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L13,"Se3L13")
	$Se4L13 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L13,"Se4L13")
	$Se5L13 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L13,"Se5L13")
	$Se6L13 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L13,"Se6L13")
	$Se7L13 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L13,"Se7L13")
	$Se8L13 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L13,"Se8L13")
	$Se9L13 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L13,"Se9L13")
;~ $Se10L13 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 544 - 142 ;-12
	$y = 117 + 104 ;-9
	$Se1L14 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L14,"Se1L14")
	$Se2L14 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L14,"Se2L14")
	$Se3L14 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L14,"Se3L14")
	$Se4L14 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L14,"Se4L14")
	$Se5L14 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L14,"Se5L14")
	$Se6L14 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L14,"Se6L14")
	$Se7L14 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L14,"Se7L14")
	$Se8L14 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L14,"Se8L14")
	$Se9L14 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L14,"Se9L14")
;~ $Se10L14 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)


	$x = 527 - 142 ;-12
	$y = 106 + 104 ;-9
	$Se1L15 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L15,"Se1L15")
	$Se2L15 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L15,"Se2L15")
	$Se3L15 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L15,"Se3L15")
	$Se4L15 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L15,"Se4L15")
	$Se5L15 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L15,"Se5L15")
	$Se6L15 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L15,"Se6L15")
	$Se7L15 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L15,"Se7L15")
	$Se8L15 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L15,"Se8L15")
	$Se9L15 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L15,"Se9L15")
;~ $Se10L15 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 513 - 142 ;-12
	$y = 97 + 104 ;-9
	$Se1L16 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L16,"Se1L16")
	$Se2L16 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L16,"Se2L16")
	$Se3L16 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L16,"Se3L16")
	$Se4L16 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L16,"Se4L16")
	$Se5L16 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L16,"Se5L16")
	$Se6L16 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L16,"Se6L16")
	$Se7L16 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L16,"Se7L16")
	$Se8L16 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L16,"Se8L16")
	$Se9L16 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L16,"Se9L16")
;~ $Se10L16 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)

	$x = 500 - 142 ;-12
	$y = 88 + 104 ;-9
	$Se1L17 = GUICtrlCreateButton("1", $x - 1, $y, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se1L17,"Se1L17")
	$Se2L17 = GUICtrlCreateButton("2", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se2L17,"Se2L17")
	$Se3L17 = GUICtrlCreateButton("3", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se3L17,"Se3L17")
	$Se4L17 = GUICtrlCreateButton("4", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se4L17,"Se4L17")
	$Se5L17 = GUICtrlCreateButton("5", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se5L17,"Se5L17")
	$Se6L17 = GUICtrlCreateButton("6", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se6L17,"Se6L17")
	$Se7L17 = GUICtrlCreateButton("7", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se7L17,"Se7L17")
	$Se8L17 = GUICtrlCreateButton("8", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se8L17,"Se8L17")
	$Se9L17 = GUICtrlCreateButton("9", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Se9L17,"Se9L17")
;~ $Se10L17 = GUICtrlCreateButton("10", $x-127, $y+88, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)




;~ _____________f side Spells __________
	$x = 717
	$y = 241
;~ $Sf10L1 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf1L1 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L1,"Sf1L1")
	$Sf9L1 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L1,"Sf9L1")
	$Sf8L1 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L1,"Sf8L1")
	$Sf7L1 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L1,"Sf7L1")
	$Sf6L1 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L1,"Sf6L1")
	$Sf5L1 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L1,"Sf5L1")
	$Sf4L1 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L1,"Sf4L1")
	$Sf3L1 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L1,"Sf3L1")
	$Sf2L1 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L1,"Sf2L1")

	$x = 706
	$y = 230
;~ $Sf10L2 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L2 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L2,"Sf9L2")
	$Sf8L2 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L2,"Sf8L2")
	$Sf7L2 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L2,"Sf7L2")
	$Sf6L2 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L2,"Sf6L2")
	$Sf5L2 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L2,"Sf5L2")
	$Sf4L2 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L2,"Sf4L2")
	$Sf3L2 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L2,"Sf3L2")
	$Sf2L2 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L2,"Sf2L2")
	$Sf1L2 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L2,"Sf1L2")

	$x = 692 ;-11
	$y = 220 ;-11
;~ $Sf10L3 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L3 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L3,"Sf9L3")
	$Sf8L3 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L3,"Sf8L3")
	$Sf7L3 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L3,"Sf7L3")
	$Sf6L3 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L3,"Sf6L3")
	$Sf5L3 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L3,"Sf5L3")
	$Sf4L3 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L3,"Sf4L3")
	$Sf3L3 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L3,"Sf3L3")
	$Sf2L3 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L3,"Sf2L3")
	$Sf1L3 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L3,"Sf1L3")

	$x = 677 ;-10
	$y = 211 ;-11
;~ $Sf10L4 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L4 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L4,"Sf9L4")
	$Sf8L4 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L4,"Sf8L4")
	$Sf7L4 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L4,"Sf7L4")
	$Sf6L4 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L4,"Sf6L4")
	$Sf5L4 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L4,"Sf5L4")
	$Sf4L4 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L4,"Sf4L4")
	$Sf3L4 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L4,"Sf3L4")
	$Sf2L4 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L4,"Sf2L4")
	$Sf1L4 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L4,"Sf1L4")


	$x = 663 ;-10
	$y = 201 ;-11
;~ $Sf10L5 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L5 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L5,"Sf9L5")
	$Sf8L5 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L5,"Sf8L5")
	$Sf7L5 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L5,"Sf7L5")
	$Sf6L5 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L5,"Sf6L5")
	$Sf5L5 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L5,"Sf5L5")
	$Sf4L5 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L5,"Sf4L5")
	$Sf3L5 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L5,"Sf3L5")
	$Sf2L5 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L5,"Sf2L5")
	$Sf1L5 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L5,"Sf1L5")


	$x = 650 ;-10
	$y = 192 ;-11
;~ $Sf10L6 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L6 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L6,"Sf9L6")
	$Sf8L6 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L6,"Sf8L6")
	$Sf7L6 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L6,"Sf7L6")
	$Sf6L6 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L6,"Sf6L6")
	$Sf5L6 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L6,"Sf5L6")
	$Sf4L6 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L6,"Sf4L6")
	$Sf3L6 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L6,"Sf3L6")
	$Sf2L6 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L6,"Sf2L6")
	$Sf1L6 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L6,"Sf1L6")


	$x = 639 ;-10
	$y = 182 ;-11
;~ $Sf10L7 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L7 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L7,"Sf9L7")
	$Sf8L7 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L7,"Sf8L7")
	$Sf7L7 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L7,"Sf7L7")
	$Sf6L7 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L7,"Sf6L7")
	$Sf5L7 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L7,"Sf5L7")
	$Sf4L7 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L7,"Sf4L7")
	$Sf3L7 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L7,"Sf3L7")
	$Sf2L7 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L7,"Sf2L7")
	$Sf1L7 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L7,"Sf1L7")

	$x = 626 ;-10
	$y = 175 ;-11
;~ $Sf10L8 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L8 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L8,"Sf9L8")
	$Sf8L8 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L8,"Sf8L8")
	$Sf7L8 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L8,"Sf7L8")
	$Sf6L8 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L8,"Sf6L8")
	$Sf5L8 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L8,"Sf5L8")
	$Sf4L8 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L8,"Sf4L8")
	$Sf3L8 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L8,"Sf3L8")
	$Sf2L8 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L8,"Sf2L8")
	$Sf1L8 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L8,"Sf1L8")

	$x = 614 ;-8
	$y = 166 ;-9
;~ $Sf10L9 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L9 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L9,"Sf9L9")
	$Sf8L9 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L9,"Sf8L9")
	$Sf7L9 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L9,"Sf7L9")
	$Sf6L9 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L9,"Sf6L9")
	$Sf5L9 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L9,"Sf5L9")
	$Sf4L9 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L9,"Sf4L9")
	$Sf3L9 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L9,"Sf3L9")
	$Sf2L9 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L9,"Sf2L9")
	$Sf1L9 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L9,"Sf1L9")


	$x = 601 ;-8
	$y = 156 ;-9
;~ $Sf10L10 = GUICtrlCreateButton("1", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L10 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L10,"Sf9L10")
	$Sf8L10 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L10,"Sf8L10")
	$Sf7L10 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L10,"Sf7L10")
	$Sf6L10 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L10,"Sf6L10")
	$Sf5L10 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L10,"Sf5L10")
	$Sf4L10 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L10,"Sf4L10")
	$Sf3L10 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L10,"Sf3L10")
	$Sf2L10 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L10,"Sf2L10")
	$Sf1L10 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L10,"Sf1L10")

	$x = 586 ;-12
	$y = 146 ;-9
;~ $Sf10L11 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L11 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L11,"Sf9L11")
	$Sf8L11 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L11,"Sf8L11")
	$Sf7L11 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L11,"Sf7L11")
	$Sf6L11 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L11,"Sf6L11")
	$Sf5L11 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L11,"Sf5L11")
	$Sf4L11 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L11,"Sf4L11")
	$Sf3L11 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L11,"Sf3L11")
	$Sf2L11 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L11,"Sf2L11")
	$Sf1L11 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L11,"Sf1L11")

	$x = 572 ;-12
	$y = 138 ;-9
;~ $Sf10L12 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L12 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L12,"Sf9L12")
	$Sf8L12 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L12,"Sf8L12")
	$Sf7L12 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L12,"Sf7L12")
	$Sf6L12 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L12,"Sf6L12")
	$Sf5L12 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L12,"Sf5L12")
	$Sf4L12 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L12,"Sf4L12")
	$Sf3L12 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L12,"Sf3L12")
	$Sf2L12 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L12,"Sf2L12")
	$Sf1L12 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L12,"Sf1L12")


	$x = 559 ;-12
	$y = 128 ;-9
;~ $Sf10L13 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L13 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L13,"Sf9L13")
	$Sf8L13 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L13,"Sf8L13")
	$Sf7L13 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L13,"Sf7L13")
	$Sf6L13 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L13,"Sf6L13")
	$Sf5L13 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L13,"Sf5L13")
	$Sf4L13 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L13,"Sf4L13")
	$Sf3L13 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L13,"Sf3L13")
	$Sf2L13 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L13,"Sf2L13")
	$Sf1L13 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L13,"Sf1L13")


	$x = 544 ;-12
	$y = 117 ;-9
;~ $Sf10L14 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L14 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L14,"Sf9L14")
	$Sf8L14 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L14,"Sf8L14")
	$Sf7L14 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L14,"Sf7L14")
	$Sf6L14 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L14,"Sf6L14")
	$Sf5L14 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L14,"Sf5L14")
	$Sf4L14 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L14,"Sf4L14")
	$Sf3L14 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L14,"Sf3L14")
	$Sf2L14 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L14,"Sf2L14")
	$Sf1L14 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L14,"Sf1L14")


	$x = 527 ;-12
	$y = 106 ;-9
;~ $Sf10L15 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L15 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L15,"Sf9L15")
	$Sf8L15 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L15,"Sf8L15")
	$Sf7L15 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L15,"Sf7L15")
	$Sf6L15 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L15,"Sf6L15")
	$Sf5L15 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L15,"Sf5L15")
	$Sf4L15 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L15,"Sf4L15")
	$Sf3L15 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L15,"Sf3L15")
	$Sf2L15 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L15,"Sf2L15")
	$Sf1L15 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L15,"Sf1L15")

	$x = 513 ;-12
	$y = 97 ;-9
;~ $Sf10L16 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L16 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L16,"Sf9L16")
	$Sf8L16 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L16,"Sf8L16")
	$Sf7L16 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L16,"Sf7L16")
	$Sf6L16 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L16,"Sf6L16")
	$Sf5L16 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L16,"Sf5L16")
	$Sf4L16 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L16,"Sf4L16")
	$Sf3L16 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L16,"Sf3L16")
	$Sf2L16 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L16,"Sf2L16")
	$Sf1L16 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L16,"Sf1L16")

	$x = 500 ;-12
	$y = 88 ;-9
;~ $Sf10L17 = GUICtrlCreateButton("10", $x-1, $y, 9, 9)
;~ GuiCtrlSetState(-1,$GUI_DISABLE)
;~ GuiCtrlSetState(-1,$GUI_HIDE)
;~ GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ GUICtrlSetColor(-1, 0xFFFF00)
;~ GUICtrlSetBkColor(-1, 0x000080)
;~ ;GUICtrlSetCursor (-1, 0)
	$Sf9L17 = GUICtrlCreateButton("9", $x - 15, $y + 10, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf9L17,"Sf9L17")
	$Sf8L17 = GUICtrlCreateButton("8", $x - 29, $y + 19, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf8L17,"Sf8L17")
	$Sf7L17 = GUICtrlCreateButton("7", $x - 43, $y + 27, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf7L17,"Sf7L17")
	$Sf6L17 = GUICtrlCreateButton("6", $x - 56, $y + 36, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf6L17,"Sf6L17")
	$Sf5L17 = GUICtrlCreateButton("5", $x - 69, $y + 47, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf5L17,"Sf5L17")
	$Sf4L17 = GUICtrlCreateButton("4", $x - 82, $y + 57, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf4L17,"Sf4L17")
	$Sf3L17 = GUICtrlCreateButton("3", $x - 97, $y + 66, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf3L17,"Sf3L17")
	$Sf2L17 = GUICtrlCreateButton("2", $x - 112, $y + 77, 9, 9)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf2L17,"Sf2L17")
	$Sf1L17 = GUICtrlCreateButton("1", $x - 127, $y + 88, 9, 9)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFF00)
	GUICtrlSetBkColor(-1, 0x000080)
	GUICtrlSetOnEvent($Sf1L17,"Sf1L17")



	$x = 790
	$y = 170
	$aAddTile1 = GUICtrlCreateButton("+1 AddTile", $x + 70000, $y, 60, 22)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($aAddTile1,"aAddTile1")
	$aAddTile2 = GUICtrlCreateButton("+2 AddTile", $x + 14000, $y, 60, 22)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($aAddTile2,"aAddTile2")
	$aAddTile0 = GUICtrlCreateButton("+0 AddTile", $x + 100000, $y, 60, 22)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetOnEvent($aAddTile0,"aAddTile0")

;~ #################### these addtile button is just for testing#####################
;~ ####################   they will not be shown in gui anytime #####################
	$bAddTile1 = GUICtrlCreateButton("+1", 2000 + 253 - 30, 166 - 30, 25, 27);#######
	$bAddTile2 = GUICtrlCreateButton("+2", 2000 + 253 - 60, 166 - 60, 25, 27);#######
	$bAddTile0 = GUICtrlCreateButton("+0", 2000 + 253 - 60, 166 - 60, 25, 27);#######
	$cAddTile1 = GUICtrlCreateButton("+1", 2000 + 230 - 60, 166 - 60, 25, 27);#######
	$cAddTile2 = GUICtrlCreateButton("+2", 2000 + 230 - 60, 166 - 60, 25, 27);#######
	$cAddTile0 = GUICtrlCreateButton("+0", 2000 + 230 - 60, 166 - 60, 25, 27);#######
	$dAddTile1 = GUICtrlCreateButton("+1", 2000 + 350 - 30, 405 + 30, 25, 27);#######
	$dAddTile2 = GUICtrlCreateButton("+2", 2000 + 350 - 60, 405 + 60, 25, 27);#######
	$dAddTile0 = GUICtrlCreateButton("+0", 2000 + 350 - 60, 166 - 60, 25, 27);#######
	$eAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$eAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$eAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$fAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$fAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$fAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$gAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$gAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$gAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$hAddTile1 = GUICtrlCreateButton("+1", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$hAddTile2 = GUICtrlCreateButton("+2", 2000 + 380 - 60, 166 - 60, 25, 27);#######
	$hAddTile0 = GUICtrlCreateButton("+0", 2000 + 380 - 60, 166 - 60, 25, 27);#######
;~ ################################ END #############################################
;~ ##################################################################################

;~ 	----------------------------TRAIN-----------------------------------------------------------------------------------------------
	Local $x
	Local $y
	Local $txt

	$x=327
	$y=12
	$TrainBackGround = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\TrainBG.bmp", $x+72, $y-20, 600, 475,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH6 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH6.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TrainSelectTH6Click = GUICtrlCreatePic("",$x,$y ,54,49)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent($TrainSelectTH6Click,"ShowOnlyTH6")
	GUICtrlSetCursor (-1, 0)
	$y=$y+50
	$TrainSelectTH7 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH7.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH7Click = GUICtrlCreatePic("",$x,$y ,54,53)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH7")
	GUICtrlSetCursor (-1, 0)
	$y=$y+50
	$TrainSelectTH8 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH8.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH8Click = GUICtrlCreatePic("",$x,$y+8 ,54,53)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH8")
	GUICtrlSetCursor (-1, 0)
	$y=$y+50
	$TrainSelectTH9 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH9.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH9Click = GUICtrlCreatePic("",$x,$y+12 ,54,63)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH9")
	GUICtrlSetCursor (-1, 0)
	$y=$y+50
	$TrainSelectTH10 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH10.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH10Click = GUICtrlCreatePic("",$x,$y+35 ,54,55)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH10")
	GUICtrlSetCursor (-1, 0)
	$y=$y+50
	$TrainSelectTH11 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH11.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH11Click = GUICtrlCreatePic("",$x,$y+35 ,54,60)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH11")
	GUICtrlSetCursor (-1, 0)
	$y=$y+50
	$TrainSelectTH12 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH12.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH12Click = GUICtrlCreatePic("",$x,$y+50 ,54,60)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH12")
	GUICtrlSetCursor (-1, 0)
	$y=$y+50
	$TrainSelectTH13 = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\Train_Select_TH13.bmp", 327, 12, 70, 497,$GUI_SS_DEFAULT_PIC)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetState(-1, $GUI_DISABLE)
	$TrainSelectTH13Click = GUICtrlCreatePic("",$x,$y+65 ,60,60)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH13")
	GUICtrlSetCursor (-1, 0)
	;~ ######################
	;~ 	-------TH6-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH6 = GUICtrlCreateLabel("TH6", $x+52, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH6")
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y=55
	$TH6PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x+3, $y-2, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip($TH6txtNumBarbarian, "Enter the No. of Barbarian to make.")
	;$TH6Lvl1 = GUICtrlCreateUpdown($TH6txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip($TH6txtNumArcher, "Enter the No. of Archer to make.")
	;$TH6Lvl2 = GUICtrlCreateUpdown($TH6txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip($TH6PicGiant, "Enter the No. of Giants to make.")
	;$TH6Lvl3 = GUICtrlCreateUpdown($TH6txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH6Lvl4 = GUICtrlCreateUpdown($TH6txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	;$TH6Lvl5 = GUICtrlCreateUpdown($TH6txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH6Lvl6 = GUICtrlCreateUpdown($TH6txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH6Lvl7 = GUICtrlCreateUpdown($TH6txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH6Lvl8 = GUICtrlCreateUpdown($TH6txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
;~ 	SECOND COULUMN OF TH6	____________________________
	$x =327+65+70+40
	$y =55
	$TH6PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x+3, $y-2, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH6Lvl22 = GUICtrlCreateUpdown($TH6txtNumLSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH6RequestCCLabel = GUICtrlCreateLabel("TH6 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH6RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	$TH6PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH6txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH6Lvl23 = GUICtrlCreateUpdown($TH6txtNumHSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)

	;~ ######################
	;~ 	-------TH7-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH7 = GUICtrlCreateLabel("TH7", $x+52, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH7")
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y=55
	$TH7PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip($TH7txtNumBarbarian, "Enter the No. of Barbarian to make.")
	;$TH7Lvl1 = GUICtrlCreateUpdown($TH7txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH7Lvl2 = GUICtrlCreateUpdown($TH7txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH7Lvl3 = GUICtrlCreateUpdown($TH7txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH7Lvl4 = GUICtrlCreateUpdown($TH7txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	;$TH7Lvl5 = GUICtrlCreateUpdown($TH7txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH7Lvl6 = GUICtrlCreateUpdown($TH7txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH7Lvl7 = GUICtrlCreateUpdown($TH7txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH7Lvl8 = GUICtrlCreateUpdown($TH7txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
	;$TH7Lvl9 = GUICtrlCreateUpdown($TH7txtNumDrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicMini = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
	;$TH7Lvl14 = GUICtrlCreateUpdown($TH7txtNumMini)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicHogs = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
	;$TH7Lvl15 = GUICtrlCreateUpdown($TH7txtNumHogs)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)

	;~ 	SECOND COULUMN OF TH7	____________________________

	$x =327+65+70+40
	$y =55
	$TH7PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH7Lvl22 = GUICtrlCreateUpdown($TH7txtNumLSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH7Lvl23 = GUICtrlCreateUpdown($TH7txtNumHSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicRSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
	;$TH7Lvl24 = GUICtrlCreateUpdown($TH7txtNumRSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicPSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
	;$TH7Lvl28 = GUICtrlCreateUpdown($TH7txtNumPSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicESpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
	;$TH7Lvl29 = GUICtrlCreateUpdown($TH7txtNumESpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1, $GUI_HIDE)
	$y +=25
	$TH7PicKing = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1, $GUI_HIDE)
	$TH7txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH7Lvl36 = GUICtrlCreateUpdown($TH7txtNumKing)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$TH7RequestCCLabel = GUICtrlCreateLabel("TH7 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH7RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	$y +=26
	$TH7txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH7LblKing = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1, $GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	;~ ######################
	;~ 	-------TH8-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH8 = GUICtrlCreateLabel("TH8", $x+52, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH8")
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y=55
	$TH8PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
	;$TH8Lvl1 = GUICtrlCreateUpdown($TH8txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH8Lvl2 = GUICtrlCreateUpdown($TH8txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH8Lvl13 = GUICtrlCreateUpdown($TH8txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH8Lvl4 = GUICtrlCreateUpdown($TH8txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	;$TH8Lvl5 = GUICtrlCreateUpdown($TH8txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH8Lvl6 = GUICtrlCreateUpdown($TH8txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH8Lvl7 = GUICtrlCreateUpdown($TH8txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH8Lvl8 = GUICtrlCreateUpdown($TH8txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
	;$TH8Lvl9 = GUICtrlCreateUpdown($TH8txtNumDrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicPekka = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
	;$TH8Lvl10 = GUICtrlCreateUpdown($TH8txtNumPekk)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicMini = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
	;$TH8Lvl14 = GUICtrlCreateUpdown($TH8txtNumMini)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicHogs = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
	;$TH8Lvl15 = GUICtrlCreateUpdown($TH8txtNumHogs)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicValkyre = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
	;$TH8Lvl16 = GUICtrlCreateUpdown($TH8txtNumValkyre)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
	;$TH8Lvl17 = GUICtrlCreateUpdown($TH8txtNumGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	SECOND COULUMN OF TH8	____________________________

	$x =327+65+70+40
	$y =55
	$TH8PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH8Lvl22 = GUICtrlCreateUpdown($TH8txtNumLSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH8Lvl23 = GUICtrlCreateUpdown($TH8txtNumHSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicRSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
	;$TH8Lvl24 = GUICtrlCreateUpdown($TH8txtNumRSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicPSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
	;$TH8Lvl28 = GUICtrlCreateUpdown($TH8txtNumPSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicESpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
	;$TH8Lvl29 = GUICtrlCreateUpdown($TH8txtNumESpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH8PicKing = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH8txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH8Lvl36 = GUICtrlCreateUpdown($TH8txtNumKing)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$TH8RequestCCLabel = GUICtrlCreateLabel("TH8 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH8RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	$y +=26
	$TH8txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH8LblKing = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	;~ ######################
	;~ 	-------TH9-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH9 = GUICtrlCreateLabel("TH9", $x+52, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH9")
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y=55
	$TH9PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
	;$TH9Lvl1 = GUICtrlCreateUpdown($TH9txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH9Lvl2 = GUICtrlCreateUpdown($TH9txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH9Lvl3 = GUICtrlCreateUpdown($TH9txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH9Lvl4 = GUICtrlCreateUpdown($TH9txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	;$TH9Lvl5 = GUICtrlCreateUpdown($TH9txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH9Lvl6 = GUICtrlCreateUpdown($TH9txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH9Lvl7 = GUICtrlCreateUpdown($TH9txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH9Lvl8 = GUICtrlCreateUpdown($TH9txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
	;$TH9Lvl9 = GUICtrlCreateUpdown($TH9txtNumDrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicPekka = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
	;$TH9Lvl10 = GUICtrlCreateUpdown($TH9txtNumPekk)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
	;$TH9Lvl11 = GUICtrlCreateUpdown($TH9txtNumBabyDragon)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicHogs = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
	;$TH9Lvl15 = GUICtrlCreateUpdown($TH9txtNumHogs)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicValkyre = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
	;$TH9Lvl16 = GUICtrlCreateUpdown($TH9txtNumValkyre)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
	;$TH9Lvl17 = GUICtrlCreateUpdown($TH9txtNumGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicWitch = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
	;$TH9Lvl18 = GUICtrlCreateUpdown($TH9txtNumWitch)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicLava = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
	;$TH9Lvl19 = GUICtrlCreateUpdown($TH9txtNumLava)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	SECOND COULUMN OF TH9	____________________________

	$x =327+65+70+40
	$y =55
	$TH9PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH9Lvl22 = GUICtrlCreateUpdown($TH9txtNumLSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH9Lvl23 = GUICtrlCreateUpdown($TH9txtNumHSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicRSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
	;$TH9Lvl24 = GUICtrlCreateUpdown($TH9txtNumRSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicJSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
	;$TH9Lvl25 = GUICtrlCreateUpdown($TH9txtNumJSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicFSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
	;$TH9Lvl26 = GUICtrlCreateUpdown($TH9txtNumFSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicPSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
	;$TH9Lvl28 = GUICtrlCreateUpdown($TH9txtNumPSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicESpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
	;$TH9Lvl29 = GUICtrlCreateUpdown($TH9txtNumESpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
	;$TH9Lvl30 = GUICtrlCreateUpdown($TH9txtNumHaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
	;$TH9Lvl31 = GUICtrlCreateUpdown($TH9txtNumSkSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH9PicKing = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH9Lvl36 = GUICtrlCreateUpdown($TH9txtNumKing)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$y +=26
	$TH9txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH9LblKing = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH9PicQueen = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH9Lvl37 = GUICtrlCreateUpdown($TH9txtNumQueen)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$y +=26
	$TH9RequestCCLabel = GUICtrlCreateLabel("TH9 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH9RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH9txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH9LblQueen = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	;~ ######################
	;~ 	-------TH10-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH10 = GUICtrlCreateLabel("TH10", $x+82, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH10")
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y=55
	$TH10PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
	;$TH10Lvl1 = GUICtrlCreateUpdown($TH10txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH10Lvl2 = GUICtrlCreateUpdown($TH10txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH10Lvl3 = GUICtrlCreateUpdown($TH10txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH10Lvl4 = GUICtrlCreateUpdown($TH10txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	;$TH10Lvl5 = GUICtrlCreateUpdown($TH10txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH10Lvl6 = GUICtrlCreateUpdown($TH10txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH10Lvl7 = GUICtrlCreateUpdown($TH10txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH10Lvl8 = GUICtrlCreateUpdown($TH10txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
	;$TH10Lvl9 = GUICtrlCreateUpdown($TH10txtNumDrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicPekka = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
	;$TH10Lvl10 = GUICtrlCreateUpdown($TH10txtNumPekk)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
	;$TH10Lvl11 = GUICtrlCreateUpdown($TH10txtNumBabyDragon)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicMiner = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
	;$TH10Lvl12 = GUICtrlCreateUpdown($TH10txtNumMiner)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	SECOND COULUMN OF TH10	____________________________

	$y=55
	$x=327+65+70+40
	$TH10PicMini = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
	;$TH10Lvl14 = GUICtrlCreateUpdown($TH10txtNumMini)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicHogs = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
	;$TH10Lvl15 = GUICtrlCreateUpdown($TH10txtNumHogs)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicValkyre = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
	;$TH10Lvl16 = GUICtrlCreateUpdown($TH10txtNumValkyre)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
	;$TH10Lvl17 = GUICtrlCreateUpdown($TH10txtNumGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicWitch = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
	;$TH10Lvl18 = GUICtrlCreateUpdown($TH10txtNumWitch)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicLava = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
	;$TH10Lvl19 = GUICtrlCreateUpdown($TH10txtNumLava)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicBowler = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
	;$TH10Lvl20 = GUICtrlCreateUpdown($TH10txtNumBowler)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	THIRD COULUMN OF TH10	____________________________

	$x =327+65+70+70+40
	$y =55
	$TH10PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH10Lvl22 = GUICtrlCreateUpdown($TH10txtNumLSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH10Lvl23 = GUICtrlCreateUpdown($TH10txtNumHSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicRSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
	;$TH10Lvl24 = GUICtrlCreateUpdown($TH10txtNumRSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicJSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
	;$TH10Lvl25 = GUICtrlCreateUpdown($TH10txtNumJSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicFSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
	;$TH10Lvl26 = GUICtrlCreateUpdown($TH10txtNumFSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicCSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
	;$TH10Lvl27 = GUICtrlCreateUpdown($TH10txtNumCSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicPSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
	;$TH10Lvl28 = GUICtrlCreateUpdown($TH10txtNumPSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicESpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
	;$TH10Lvl29 = GUICtrlCreateUpdown($TH10txtNumESpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
	;$TH10Lvl30 = GUICtrlCreateUpdown($TH10txtNumHaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
	;$TH10Lvl31 = GUICtrlCreateUpdown($TH10txtNumSkSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
	;$TH10Lvl32 = GUICtrlCreateUpdown($TH10txtNumBaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH10PicKing = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH10Lvl36 = GUICtrlCreateUpdown($TH10txtNumKing)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$y +=26
	$TH10txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH10LblKing = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH10PicQueen = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH10txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH10Lvl37 = GUICtrlCreateUpdown($TH10txtNumQueen)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$TH10RequestCCLabel = GUICtrlCreateLabel("TH10 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH10RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH10txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH10LblQueen = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	;~ ######################
	;~ 	-------TH11-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH11 = GUICtrlCreateLabel("TH11", $x+82, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH11")
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y=55
	$TH11PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
	;$TH11Lvl1 = GUICtrlCreateUpdown($TH11txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH11Lvl2 = GUICtrlCreateUpdown($TH11txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH11Lvl3 = GUICtrlCreateUpdown($TH11txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH11Lvl4 = GUICtrlCreateUpdown($TH11txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	;$TH11Lvl5 = GUICtrlCreateUpdown($TH11txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH11Lvl6 = GUICtrlCreateUpdown($TH11txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH11Lvl7 = GUICtrlCreateUpdown($TH11txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH11Lvl8 = GUICtrlCreateUpdown($TH11txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
	;$TH11Lvl9 = GUICtrlCreateUpdown($TH11txtNumDrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicPekka = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
	;$TH11Lvl10 = GUICtrlCreateUpdown($TH11txtNumPekk)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
	;$TH11Lvl11 = GUICtrlCreateUpdown($TH11txtNumBabyDragon)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicMiner = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
	;$TH11Lvl12 = GUICtrlCreateUpdown($TH11txtNumMiner)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicElectro = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
	;$TH11Lvl13 = GUICtrlCreateUpdown($TH11txtNumEdrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	SECOND COULUMN OF TH11	____________________________

	$y=55
	$x=327+65+70+40
	$TH11PicMini = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
	;$TH11Lvl14 = GUICtrlCreateUpdown($TH11txtNumMini)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicHogs = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
	;$TH11Lvl15 = GUICtrlCreateUpdown($TH11txtNumHogs)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicValkyre = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
	;$TH11Lvl16 = GUICtrlCreateUpdown($TH11txtNumValkyre)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
	;$TH11Lvl17 = GUICtrlCreateUpdown($TH11txtNumGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicWitch = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
	;$TH11Lvl18 = GUICtrlCreateUpdown($TH11txtNumWitch)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicLava = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
	;$TH11Lvl19 = GUICtrlCreateUpdown($TH11txtNumLava)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicBowler = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
	;$TH11Lvl20 = GUICtrlCreateUpdown($TH11txtNumBowler)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
	;$TH11Lvl21 = GUICtrlCreateUpdown($TH11txtNumIceGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	THIRD COULUMN OF TH11	____________________________

	$x =327+65+70+70+40
	$y =55
	$TH11PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH11Lvl22 = GUICtrlCreateUpdown($TH11txtNumLSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	$y +=25
	$TH11PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH11Lvl23 = GUICtrlCreateUpdown($TH11txtNumHSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicRSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
	;$TH11Lvl24 = GUICtrlCreateUpdown($TH11txtNumRSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicJSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
	;$TH11Lvl25 = GUICtrlCreateUpdown($TH11txtNumJSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicFSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
	;$TH11Lvl26 = GUICtrlCreateUpdown($TH11txtNumFSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicCSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
	;$TH11Lvl27 = GUICtrlCreateUpdown($TH11txtNumCSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicPSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
	;$TH11Lvl28 = GUICtrlCreateUpdown($TH11txtNumPSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicESpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
	;$TH11Lvl29 = GUICtrlCreateUpdown($TH11txtNumESpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
	;$TH11Lvl30 = GUICtrlCreateUpdown($TH11txtNumHaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
	;$TH11Lvl31 = GUICtrlCreateUpdown($TH11txtNumSkSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
	;$TH11Lvl32 = GUICtrlCreateUpdown($TH11txtNumBaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH11PicKing = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH11Lvl36 = GUICtrlCreateUpdown($TH11txtNumKing)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$y +=26
	$TH11txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH11LblKing = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH11PicQueen = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH11Lvl37 = GUICtrlCreateUpdown($TH11txtNumQueen)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$y +=26
	$TH11txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH11LblQueen = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH11PicWarden = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH11txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH11Lvl38 = GUICtrlCreateUpdown($TH11txtNumWarden)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$TH11RequestCCLabel = GUICtrlCreateLabel("TH11 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH11RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH11txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH11LblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	;~ ######################
	;~ 	-------TH12-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH12 = GUICtrlCreateLabel("TH12", $x+112, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH12")
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y=55
	$TH12PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
	;$TH12Lvl1 = GUICtrlCreateUpdown($TH12txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH12Lvl2 = GUICtrlCreateUpdown($TH12txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH12Lvl3 = GUICtrlCreateUpdown($TH12txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH12Lvl4 = GUICtrlCreateUpdown($TH12txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	GUICtrlSetState(-1,$GUI_HIDE)
	;$TH12Lvl5 = GUICtrlCreateUpdown($TH12txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH12Lvl6 = GUICtrlCreateUpdown($TH12txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH12Lvl7 = GUICtrlCreateUpdown($TH12txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH12Lvl8 = GUICtrlCreateUpdown($TH12txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
	;$TH12Lvl9 = GUICtrlCreateUpdown($TH12txtNumDrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicPekka = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
	;$TH12Lvl10 = GUICtrlCreateUpdown($TH12txtNumPekk)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
	;$TH12Lvl11 = GUICtrlCreateUpdown($TH12txtNumBabyDragon)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicMiner = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
	;$TH12Lvl12 = GUICtrlCreateUpdown($TH12txtNumMiner)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicElectro = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
	;$TH12Lvl13 = GUICtrlCreateUpdown($TH12txtNumEdrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	SECOND COULUMN OF TH12	____________________________

	$y=55
	$x=327+65+70+40
	$TH12PicMini = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
	;$TH12Lvl15 = GUICtrlCreateUpdown($TH12txtNumMini)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicHogs = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
	;$TH12Lvl16 = GUICtrlCreateUpdown($TH12txtNumHogs)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicValkyre = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
	;$TH12Lvl17 = GUICtrlCreateUpdown($TH12txtNumValkyre)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
	;$TH12Lvl18 = GUICtrlCreateUpdown($TH12txtNumGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicWitch = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
	;$TH12Lvl19 = GUICtrlCreateUpdown($TH12txtNumWitch)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicLava = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
	;$TH12Lvl19 = GUICtrlCreateUpdown($TH12txtNumLava)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicBowler = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
	;$TH12Lvl20 = GUICtrlCreateUpdown($TH12txtNumBowler)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
	;$TH12Lvl21 = GUICtrlCreateUpdown($TH12txtNumIceGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	THIRD COULUMN OF TH12	____________________________

	$x =327+65+70+70+40
	$y =55
	$TH12PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH12Lvl22 = GUICtrlCreateUpdown($TH12txtNumLSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH12Lvl23 = GUICtrlCreateUpdown($TH12txtNumHSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicRSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
	;$TH12Lvl24 = GUICtrlCreateUpdown($TH12txtNumRSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicJSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
	;$TH12Lvl25 = GUICtrlCreateUpdown($TH12txtNumJSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicFSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
	;$TH12Lvl26 = GUICtrlCreateUpdown($TH12txtNumFSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicCSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
	;$TH12Lvl27 = GUICtrlCreateUpdown($TH12txtNumCSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicPSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
	;$TH12Lvl28 = GUICtrlCreateUpdown($TH12txtNumPSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	$y +=25
	$TH12PicESpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
	;$TH12Lvl29 = GUICtrlCreateUpdown($TH12txtNumESpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
	;$TH12Lvl30 = GUICtrlCreateUpdown($TH12txtNumHaSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	$y +=25
	$TH12PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
	;$TH12Lvl31 = GUICtrlCreateUpdown($TH12txtNumSkSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	$y +=25
	$TH12PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
	;$TH12Lvl32 = GUICtrlCreateUpdown($TH12txtNumBaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	FOURTH COULUMN OF TH12	____________________________

	$x =327+65+70+70+70+40
	$y =55

	$TH12PicBattleB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
	;$TH12Lvl33 = GUICtrlCreateUpdown($TH12txtNumBattleB)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicWallw = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
	;$TH12Lvl34 = GUICtrlCreateUpdown($TH12txtNumWallw)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicStoneS = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
	;$TH12Lvl35 = GUICtrlCreateUpdown($TH12txtNumStoneS)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH12PicKing = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH12Lvl37 = GUICtrlCreateUpdown($TH12txtNumKing)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH12txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH12LblKing = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH12PicQueen = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH12Lvl38 = GUICtrlCreateUpdown($TH12txtNumQueen)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH12txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH12LblQueen = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH12PicWarden = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH12txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH12Lvl39 = GUICtrlCreateUpdown($TH12txtNumWarden)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$TH12RequestCCLabel = GUICtrlCreateLabel("TH12 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH12RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH12txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH12LblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)

	;~ ######################
	;~ 	-------TH13-----------
	;~ ######################

	$x=327+65+40
	$y=15
	$TH13 = GUICtrlCreateLabel("TH13", $x+112, $y, 55, 29)
	GUICtrlSetOnEvent(-1,"ShowOnlyTH13")
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 13, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y=55
	$TH13PicBarbarian = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Barbarian.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumBarbarian = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Barbarian to make.")
	;$TH13Lvl1 = GUICtrlCreateUpdown($TH13txtNumBarbarian)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicArcher = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Archer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumArcher = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH13Lvl2 = GUICtrlCreateUpdown($TH13txtNumArcher)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicGiant = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Giant.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumGiant = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
	;$TH13Lvl3 = GUICtrlCreateUpdown($TH13txtNumGiant)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicGoblin = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Goblin.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumGoblin = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Goblin to make.")
	;$TH13Lvl4 = GUICtrlCreateUpdown($TH13txtNumGoblin)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicWallB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\WallB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumWall = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
	;$TH13Lvl5 = GUICtrlCreateUpdown($TH13txtNumWall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicBall = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Balloon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumBall = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
	;$TH13Lvl6 = GUICtrlCreateUpdown($TH13txtNumBall)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicWizzard = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wizzard.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumWiza = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
	;$TH13Lvl7 = GUICtrlCreateUpdown($TH13txtNumWiza)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicHealer = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Healer.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumHeal = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
	;$TH13Lvl8 = GUICtrlCreateUpdown($TH13txtNumHeal)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Dragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumDrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
	;$TH13Lvl9 = GUICtrlCreateUpdown($TH13txtNumDrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicPekka = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Pekka.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumPekk = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A.s to make.")
	;$TH13Lvl10 = GUICtrlCreateUpdown($TH13txtNumPekk)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicBabyDragon = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BabyDragon.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumBabyDragon = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Baby Dragon to make.")
	;$TH13Lvl11 = GUICtrlCreateUpdown($TH13txtNumBabyDragon)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicMiner = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Miner.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumMiner = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Miner to make.")
	;$TH13Lvl12 = GUICtrlCreateUpdown($TH13txtNumMiner)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicElectro = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Electro.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumEdrag = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Electro Dragon to make.")
	;$TH13Lvl13 = GUICtrlCreateUpdown($TH13txtNumEdrag)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicYeti = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\yeti.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumYeti = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Yeti to make.")
	;$TH13Lvl14 = GUICtrlCreateUpdown($TH13txtNumYeti)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	SECOND COULUMN OF TH13	____________________________

	$y=55
	$x=327+65+70+40

	$TH13PicMini = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Mini.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumMini = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Minion to make.")
	;$TH13Lvl15 = GUICtrlCreateUpdown($TH13txtNumMini)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicHogs = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Hogs.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumHogs = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Hog Rider to make.")
	;$TH13Lvl16 = GUICtrlCreateUpdown($TH13txtNumHogs)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicValkyre = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Valkyre.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumValkyre = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Valkyre to make.")
	;$TH13Lvl17 = GUICtrlCreateUpdown($TH13txtNumValkyre)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Golem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Golem to make.")
	;$TH13Lvl18 = GUICtrlCreateUpdown($TH13txtNumGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicWitch = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Witch.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumWitch = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Witch to make.")
	;$TH13Lvl19 = GUICtrlCreateUpdown($TH13txtNumWitch)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicLava = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Lava.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumLava = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Lava to make.")
	;$TH13Lvl20 = GUICtrlCreateUpdown($TH13txtNumLava)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicBowler = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Bowler.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumBowler = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bowler to make.")
	;$TH13Lvl21 = GUICtrlCreateUpdown($TH13txtNumBowler)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicIceGolem = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\IceGolem.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumIceGolem = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Ice Golem to make.")
	;$TH13Lvl22 = GUICtrlCreateUpdown($TH13txtNumIceGolem)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	THIRD COULUMN OF TH13	____________________________

	$x =327+65+70+70+40
	$y =55

	$TH13PicLSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\LSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumLSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Light Spell to make.")
	;$TH13Lvl23 = GUICtrlCreateUpdown($TH13txtNumLSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	$y +=25
	$TH13PicHSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumHSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Heal Spell to make.")
	;$TH13Lvl24 = GUICtrlCreateUpdown($TH13txtNumHSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	$y +=25
	$TH13PicRSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumRSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Rage Spell to make.")
	;$TH13Lvl25 = GUICtrlCreateUpdown($TH13txtNumRSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicJSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\JSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumJSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Jump Spell to make.")
	;$TH13Lvl26 = GUICtrlCreateUpdown($TH13txtNumJSpell)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	$y +=25
	$TH13PicFSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\FSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumFSpell = GUICtrlCreateInput("0", $x + 30, $y - 3, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Freeze Spell to make.")
	;$TH13Lvl27 = GUICtrlCreateUpdown($TH13txtNumFSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicCSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\CSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumCSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Clone Spell to make.")
	;$TH13Lvl28 = GUICtrlCreateUpdown($TH13txtNumCSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicPSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\PSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumPSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetTip(-1, "Enter the No. of Poison Spell to make.")
	;$TH13Lvl29 = GUICtrlCreateUpdown($TH13txtNumPSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicESpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\ESpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumESpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of EeathQueake Spell to make.")
	;$TH13Lvl30 = GUICtrlCreateUpdown($TH13txtNumESpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicHaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\HaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumHaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Haste Spell to make.")
	;$TH13Lvl31 = GUICtrlCreateUpdown($TH13txtNumHaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicSkSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\SkSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumSkSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Skeleton Spell to make.")
	;$TH13Lvl32 = GUICtrlCreateUpdown($TH13txtNumSkSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicBaSpell = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BaSpell.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumBaSpell = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Bat Spell to make.")
	;$TH13Lvl33 = GUICtrlCreateUpdown($TH13txtNumBaSpell)
	GUICtrlSetLimit(-1, 280, 0)
	GUICtrlSetState(-1,$GUI_HIDE)

	;~ 	FOURTH COULUMN OF TH13	____________________________

	$x =327+65+70+70+70+40
	$y =55
	$TH13PicBattleB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\BattleB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumBattleB = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Battle Blimp to make.")
	;$TH13Lvl34 = GUICtrlCreateUpdown($TH13txtNumBattleB)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicWallw = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Wallw.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumWallw = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Wall Wrecker to make.")
	;$TH13Lvl35 = GUICtrlCreateUpdown($TH13txtNumWallw)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicStoneS = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\StoneS.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumStoneS  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Stone Slamer to make.")
	;$TH13Lvl36 = GUICtrlCreateUpdown($TH13txtNumStoneS)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicSiegeB = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\SiegeB.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumSiegeB  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetTip(-1, "Enter the No. of Siege Barrack to make.")
	;$TH13Lvl37 = GUICtrlCreateUpdown($TH13txtNumSiegeB)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=25
	$TH13PicKing = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\King.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumKing  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH13Lvl38 = GUICtrlCreateUpdown($TH13txtNumKing)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$y +=26
	$TH13txtNumKingSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate King if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH13LblKing = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH13PicQueen = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Queen.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumQueen  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH13Lvl39 = GUICtrlCreateUpdown($TH13txtNumQueen)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH13txtNumQueenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Queen if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH13LblQueen = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH13PicWarden = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\Warden.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumWarden  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH13Lvl40 = GUICtrlCreateUpdown($TH13txtNumWarden)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH13txtNumWardenSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Warden if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH13LblWarden = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$y +=25
	$TH13PicRoyaleC = GUICtrlCreatePic (@ScriptDir & "\COCBot\CSVMAKER2020\Icon\RoyaleC.bmp", $x + 3, $y - 4, 24, 24)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13txtNumRoyaleC  = GUICtrlCreateInput("0", $x + 30, $y - 5, 40, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 3, 0)
	$txt = "1 = Activate Royale Champion if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	;$TH13Lvl41 = GUICtrlCreateUpdown($TH13txtNumRoyaleC)
	GUICtrlSetLimit(-1, 3, 0)
	GUICtrlSetState(-1,$GUI_HIDE)
	$TH13RequestCCLabel = GUICtrlCreateLabel("TH13 Request Note", 432, 455)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 8, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)
	$TH13RequestCCInbox = GUICtrlCreateInput("", 432, 480, 150, 21)
	GUICtrlSetTip(-1, "Enter Your Request for your Clan Castle. Like 'Balloon'"&@CRLF&" It has 11 character capacity")
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0x3399FF)
	GUICtrlSetState(-1,$GUI_HIDE)
	$y +=26
	$TH13txtNumRoyaleCSecond  = GUICtrlCreateInput("0", $x + 5, $y - 5, 25, -1, BitOR($GUI_SS_DEFAULT_INPUT,   $ES_NUMBER , $ES_CENTER))
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetLimit(-1, 180, 1)
	$txt = "1 = Activate Royale Champion if Health is Red" & @CRLF & "2 = Activate after X second(s) " & @CRLF & "3 = Activate after both X second(s) or Red Health." & @CRLF & "DO NOT USE 4 OR MORE!!"
	GUICtrlSetTip(-1, $txt)
	$TH13LblRoyaleC = GUICtrlCreateLabel("sec.", $x + 32, $y-3)
	GUICtrlSetState(-1,$GUI_HIDE)
	GUICtrlSetFont(-1, 9, 800, 0, "Georgia")
	GUICtrlSetBkColor(Default, $GUI_BKCOLOR_TRANSPARENT)


EndFunc



Func CountUsedTroops()
	If $LOGName = "Barbarian" Then
		$CountBarbarian = $CountBarbarian + 1
		$CountBarbarianSize = $CountBarbarian * $CounterTroop_TroopSize
   ElseIf $LOGName = "Archer" Then
		$CountArcher = $CountArcher + 1
		$CountArcherSize = $CountArcher * $CounterTroop_TroopSize
	ElseIf $LOGName = "Giant" Then
		$CountGiant = $CountGiant + 1
		$CountGiantSize = $CountGiant * $CounterTroop_TroopSize
	ElseIf $LOGName = "Goblin" Then
		$CountGoblin = $CountGoblin + 1
		$CountGoblinSize = $CountGoblin * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wall Breaker" Then
		$CountWallBreaker = $CountWallBreaker + 1
		$CountWallBreakerSize = $CountWallBreaker * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baloon" Then
		$CountBaloon = $CountBaloon + 1
		$CountBaloonSize = $CountBaloon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wizard" Then
		$CountWizard = $CountWizard + 1
		$CountWizardSize = $CountWizard * $CounterTroop_TroopSize
	ElseIf $LOGName = "Healer" Then
		$CountHealer = $CountHealer + 1
		$CountHealerSize = $CountHealer * $CounterTroop_TroopSize
	ElseIf $LOGName = "Dragon" Then
		$CountDragon = $CountDragon + 1
		$CountDragonSize = $CountDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "P.E.K.K.A" Then
		$CountPekka = $CountPekka + 1
		$CountPekkaSize = $CountPekka * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baby Dragon" Then
		$CountBabyDragon = $CountBabyDragon + 1
		$CountBabyDragonSize = $CountBabyDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Miner" Then
		$CountMiner = $CountMiner + 1
		$CountMinerSize = $CountMiner * $CounterTroop_TroopSize
	ElseIf $LOGName = "Electro Dragon" Then
		$CountElectroDragon = $CountElectroDragon + 1
		$CountElectroDragonSize = $CountElectroDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Yeti" Then
		$CountYeti = $CountYeti + 1
		$CountYetiSize = $CountYeti * $CounterTroop_TroopSize
	ElseIf $LOGName = "Minion" Then
		$CountMinion = $CountMinion + 1
		$CountMinionSize = $CountMinion * $CounterTroop_TroopSize
	ElseIf $LOGName = "Hog Rider" Then
		$CountHogRider = $CountHogRider + 1
		$CountHogRiderSize = $CountHogRider * $CounterTroop_TroopSize
	ElseIf $LOGName = "Valkyre" Then
		$CountValkyre = $CountValkyre + 1
		$CountValkyreSize = $CountValkyre * $CounterTroop_TroopSize
	ElseIf $LOGName = "Golem" Then
		$CountGolem = $CountGolem + 1
		$CountGolemSize = $CountGolem * $CounterTroop_TroopSize
	ElseIf $LOGName = "Witch" Then
		$CountWitch = $CountWitch + 1
		$CountWitchSize = $CountWitch * $CounterTroop_TroopSize
	ElseIf $LOGName = "Lava Hound" Then
		$CountLavaHound = $CountLavaHound + 1
		$CountLavaHoundSize = $CountLavaHound * $CounterTroop_TroopSize
	ElseIf $LOGName = "Bowler" Then
		$CountBowler = $CountBowler + 1
		$CountBowlerSize = $CountBowler * $CounterTroop_TroopSize
	ElseIf $LOGName = "Ice Golem" Then
		$CountIceGolem = $CountIceGolem + 1
		$CountIceGolemSize = $CountIceGolem * $CounterTroop_TroopSize
	ElseIf $TName = "LSpell     " Then
		$CountLSpell = $CountLSpell + 1
		$CountLSpellSize = $CountLSpell * $CounterTroop_SpellSize
	ElseIf $TName = "HSpell     " Then
		$CountHSpell = $CountHSpell + 1
		$CountHSpellSize = $CountHSpell * $CounterTroop_SpellSize
	ElseIf $TName = "RSpell     " Then
		$CountRSpell = $CountRSpell + 1
		$CountRSpellSize = $CountRSpell * $CounterTroop_SpellSize
	ElseIf $TName = "JSpell     " Then
		$CountJSpell = $CountJSpell + 1
		$CountJSpellSize = $CountJSpell * $CounterTroop_SpellSize
	ElseIf $TName = "FSpell     " Then
		$CountFSpell = $CountFSpell + 1
		$CountFSpellSize = $CountFSpell * $CounterTroop_SpellSize
	ElseIf $TName = "CSpell     " Then
		$CountCSpell = $CountCSpell + 1
		$CountCSpellSize = $CountCSpell * $CounterTroop_SpellSize
	ElseIf $TName = "PSpell     " Then
		$CountPSpell = $CountPSpell + 1
		$CountPSpellSize = $CountPSpell * $CounterTroop_SpellSize
	ElseIf $TName = "ESpell     " Then
		$CountESpell = $CountESpell + 1
		$CountESpellSize = $CountESpell * $CounterTroop_SpellSize
	ElseIf $TName = "HaSpell    " Then
		$CountHaSpell = $CountHaSpell + 1
		$CountHaSpellSize = $CountHaSpell * $CounterTroop_SpellSize
	ElseIf $TName = "SkSpell    " Then
		$CountSkSpell = $CountSkSpell + 1
		$CountSkSpellSize = $CountSkSpell * $CounterTroop_SpellSize
	ElseIf $TName = "BtSpell    " Then
		$CountBtSpell = $CountBtSpell + 1
		$CountBtSpellSize = $CountBtSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "King" Then
		$CountKing = $CountKing + 1
	ElseIf $LOGName = "Queen" Then
		$CountQueen = $CountQueen + 1
	ElseIf $LOGName = "Warden" Then
		$CountWarden = $CountWarden + 1
	ElseIf $LOGName = "Royal Champion" Then
		$CountRoyaleChampion = $CountRoyaleChampion + 1
	ElseIf $LOGName = "Wall Wrecker" Then
		$CountWW = $CountWW + 1
	ElseIf $LOGName = "Battle Blimp" Then
		$CountBB = $CountBB + 1
	ElseIf $LOGName = "Stone Slamer" Then
		$CountSS = $CountSS + 1
	ElseIf $LOGName = "Siege Barrack" Then
		$CountSB = $CountSB + 1
	ElseIf $TName = "Castle     " Then
		$CountCC = $CountCC + 1
	EndIf

	If $CountKing > 0 Then
		$CountUsedKingShow = "King             " & ChrW("8730") &@CRLF
	EndIf
	If $CountQueen > 0 Then
		$CountUsedQueenShow = "Queen            " & ChrW("8730") &@CRLF
	EndIf
	If $CountRoyaleChampion > 0 Then
		$CountUsedRoyaleChampionShow = "Royal Champion   " & ChrW("8730") &@CRLF
	EndIf
	If $CountWarden > 0 Then
		$CountUsedWardenShow = "Warden           " & ChrW("8730") &@CRLF
	EndIf
	If $CountWW > 0 Then
		$CountUsedWWShow = "Wall Wrecker     " & ChrW("8730") &@CRLF
	EndIf
	If $CountBB > 0 Then
		$CountUsedBBShow = "Battle Blimp     " & ChrW("8730") &@CRLF
	EndIf
	If $CountSS > 0 Then
		$CountUsedSSShow = "Stone Slamer     " & ChrW("8730") &@CRLF
	EndIf
	If $CountSB > 0 Then
		$CountUsedSBShow = "Siege Barrack    " & ChrW("8730") &@CRLF
	EndIf
	If $CountCC > 0 Then
		$CountUsedSSShow = "Clan Castle      " & ChrW("8730") &@CRLF
	EndIf

   $SumOfArmySizeCount =$CountBarbarianSize + $CountArcherSize + _
						$CountGiantSize + $CountGoblinSize + _
						$CountWallBreakerSize + $CountBaloonSize + _
						$CountWizardSize + $CountHealerSize + _
						$CountDragonSize + _
						$CountPekkaSize + $CountBabyDragonSize + _
						$CountMinerSize + $CountElectroDragonSize + $CountYetiSize + _
						$CountMinionSize + $CountHogRiderSize + _
						$CountValkyreSize + $CountGolemSize + _
						$CountWitchSize + $CountLavaHoundSize + _
						$CountBowlerSize + $CountIceGolemSize

   $SumOfArmySizeCountShow = "Your Used Army Size is " & String($SumOfArmySizeCount) & @CRLF

   $SumOfSpellSizeCount = $CountLSpellSize + $CountHSpellSize + _
						   $CountRSpellSize + $CountJSpellSize + _
						   $CountFSpellSize + $CountCSpellSize + _
						   $CountPSpellSize + $CountESpellSize + _
						   $CountHaSpellSize + $CountSkSpellSize + _
						   $CountBtSpellSize

   $SumOfSpellSizeCountShow = "Your Used Spell Size is " & String($SumOfSpellSizeCount)





	If $CountBarbarian > 0 Then
		$CountUsedBarbarianShow = "Barbarian   |      " & $CountBarbarian & "|"
		If $CountBarbarian >= 10 Then
			$CountUsedBarbarianShow = "Barbarian   |     " & $CountBarbarian & "|"
			If $CountBarbarian >= 100 Then
				$CountUsedBarbarianShow = "Barbarian   |    " & $CountBarbarian& "|"
			EndIf
		EndIf
	EndIf
	If $CountBarbarianSize > 0 Then
		$CountUsedBarbarianSizeShow = "      " & $CountBarbarianSize & "|" & @CRLF
		If $CountBarbarianSize >= 10 Then
			$CountUsedBarbarianSizeShow = "     " & $CountBarbarianSize & "|" & @CRLF
			If $CountBarbarianSize > 100 Then
				$CountUsedBarbarianSizeShow = "    " & $CountBarbarianSize & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountArcher > 0 Then
		$CountUsedArcherShow = "Archer      |      " & String($CountArcher)& "|"
		If $CountArcher >= 10 Then
			$CountUsedArcherShow = "Archer      |     " & String($CountArcher)& "|"
			If $CountArcher >= 100 Then
				$CountUsedArcherShow = "Archer      |    " & String($CountArcher)& "|"
			EndIf
		EndIf
	EndIf
	If $CountArcherSize > 0 Then
		$CountUsedArcherSizeShow = "      " & String($CountArcherSize) & "|" & @CRLF
		If $CountArcherSize >= 10 Then
			$CountUsedArcherSizeShow = "     " & String($CountArcherSize) & "|" & @CRLF
			If $CountArcherSize > 100 Then
				$CountUsedArcherSizeShow = "    " & String($CountArcherSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountGiant > 0 Then
		$CountUsedGiantShow = "Giant       |      " & String($CountGiant)& "|"
		If $CountGiant >= 10 Then
			$CountUsedGiantShow = "Giant       |     " & String($CountGiant)& "|"
			If $CountGiant >= 100 Then
				$CountUsedGiantShow = "Giant       |    " & String($CountGiant)& "|"
			EndIf
		EndIf
	EndIf
	If $CountGiantSize > 0 Then
		$CountUsedGiantSizeShow = "      " & String($CountGiantSize) & "|" & @CRLF
		If $CountGiantSize >= 10 Then
			$CountUsedGiantSizeShow = "     " & String($CountGiantSize) & "|" & @CRLF
			If $CountGiantSize > 100 Then
				$CountUsedGiantSizeShow = "    " & String($CountGiantSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountGoblin > 0 Then
		$CountUsedGoblinShow = "Goblin      |      " & String($CountGoblin)& "|"
		If $CountGoblin >= 10 Then
			$CountUsedGoblinShow = "Goblin      |     " & String($CountGoblin)& "|"
			If $CountGoblin >= 100 Then
				$CountUsedGoblinShow = "Goblin      |    " & String($CountGoblin)& "|"
			EndIf
		EndIf
	EndIf
	If $CountGoblinSize > 0 Then
		$CountUsedGoblinSizeShow = "      " & String($CountGoblinSize) & "|" & @CRLF
		If $CountGoblinSize >= 10 Then
			$CountUsedGoblinSizeShow = "     " & String($CountGoblinSize) & "|" & @CRLF
			If $CountGoblinSize > 100 Then
				$CountUsedGoblinSizeShow = "    " & String($CountGoblinSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountWallBreaker > 0 Then
		$CountUsedWallBreakerShow = "Wall Breaker|      " & String($CountWallBreaker)& "|"
		If $CountWallBreaker >= 10 Then
			$CountUsedWallBreakerShow = "Wall Breaker|     " & String($CountWallBreaker)& "|"
			If $CountWallBreaker >= 100 Then
				$CountUsedWallBreakerShow = "Wall Breaker|    " & String($CountWallBreaker)& "|"
			EndIf
		EndIf
	EndIf
	If $CountWallBreakerSize > 0 Then
		$CountUsedWallBreakerSizeShow = "      " & String($CountWallBreakerSize) & "|" & @CRLF
		If $CountWallBreakerSize >= 10 Then
			$CountUsedWallBreakerSizeShow = "     " & String($CountWallBreakerSize) & "|" & @CRLF
			If $CountWallBreakerSize > 100 Then
				$CountUsedWallBreakerSizeShow = "    " & String($CountWallBreakerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBaloon > 0 Then
		$CountUsedBaloonShow = "Balloon     |      " & String($CountBaloon)& "|"
		If $CountBaloon >= 10 Then
			$CountUsedBaloonShow = "Balloon     |     " & String($CountBaloon)& "|"
			If $CountBaloon >= 100 Then
				$CountUsedBaloonShow = "Balloon     |    " & String($CountBaloon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBaloonSize > 0 Then
		$CountUsedBaloonSizeShow = "      " & String($CountBaloonSize) & "|" & @CRLF
		If $CountBaloonSize >= 10 Then
			$CountUsedBaloonSizeShow = "     " & String($CountBaloonSize) & "|" & @CRLF
			If $CountBaloonSize > 100 Then
				$CountUsedBaloonSizeShow = "    " & String($CountBaloonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountWizard > 0 Then
		$CountUsedWizardShow = "Wizard      |      " & String($CountWizard)& "|"
		If $CountWizard >= 10 Then
			$CountUsedWizardShow = "Wizard      |     " & String($CountWizard)& "|"
			If $CountWizard >= 100 Then
				$CountUsedWizardShow = "Wizard      |    " & String($CountWizard)& "|"
			EndIf
		EndIf
	EndIf
	If $CountWizardSize > 0 Then
		$CountUsedWizardSizeShow = "      " & String($CountWizardSize) & "|" & @CRLF
		If $CountWizardSize >= 10 Then
			$CountUsedWizardSizeShow = "     " & String($CountWizardSize) & "|" & @CRLF
			If $CountWizardSize > 100 Then
				$CountUsedWizardSizeShow = "    " & String($CountWizardSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHealer > 0 Then
		$CountUsedHealerShow = "Healer      |      " & String($CountHealer)& "|"
		If $CountHealer >= 10 Then
			$CountUsedHealerShow = "Healer      |     " & String($CountHealer)& "|"
			If $CountHealer >= 100 Then
				$CountUsedHealerShow = "Healer      |    " & String($CountHealer)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHealerSize > 0 Then
		$CountUsedHealerSizeShow = "      " & String($CountHealerSize) & "|" & @CRLF
		If $CountHealerSize >= 10 Then
			$CountUsedHealerSizeShow = "     " & String($CountHealerSize) & "|" & @CRLF
			If $CountHealerSize > 100 Then
				$CountUsedHealerSizeShow = "    " & String($CountHealerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountDragon > 0 Then
		$CountUsedDragonShow = "Dragon      |      " & String($CountDragon)& "|"
		If $CountDragon >= 10 Then
			$CountUsedDragonShow = "Dragon      |     " & String($CountDragon)& "|"
			If $CountDragon >= 100 Then
				$CountUsedDragonShow = "Dragon      |    " & String($CountDragon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountDragonSize > 0 Then
		$CountUsedDragonSizeShow = "      " & String($CountDragonSize) & "|" & @CRLF
		If $CountDragonSize >= 10 Then
			$CountUsedDragonSizeShow = "     " & String($CountDragonSize) & "|" & @CRLF
			If $CountDragonSize > 100 Then
				$CountUsedDragonSizeShow = "    " & String($CountDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountPekka > 0 Then
		$CountUsedPekkaShow = "Pekka       |      " & String($CountPekka)& "|"
		If $CountPekka >= 10 Then
			$CountUsedPekkaShow = "Pekka       |     " & String($CountPekka)& "|"
			If $CountPekka >= 100 Then
				$CountUsedPekkaShow = "Pekka       |    " & String($CountPekka)& "|"
			EndIf
		EndIf
	EndIf
	If $CountPekkaSize > 0 Then
		$CountUsedPekkaSizeShow = "      " & String($CountPekkaSize) & "|" & @CRLF
		If $CountPekkaSize >= 10 Then
			$CountUsedPekkaSizeShow = "     " & String($CountPekkaSize) & "|" & @CRLF
			If $CountPekkaSize > 100 Then
				$CountUsedPekkaSizeShow = "    " & String($CountPekkaSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBabyDragon > 0 Then
		$CountUsedBabyDragonShow = "Baby Dragon |      " & String($CountBabyDragon)& "|"
		If $CountBabyDragon >= 10 Then
			$CountUsedBabyDragonShow = "Baby Dragon |     " & String($CountBabyDragon)& "|"
			If $CountBabyDragon >= 100 Then
				$CountUsedBabyDragonShow = "Baby Dragon |    " & String($CountBabyDragon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBabyDragonSize > 0 Then
		$CountUsedBabyDragonSizeShow = "      " & String($CountBabyDragonSize) & "|" & @CRLF
		If $CountBabyDragonSize >= 10 Then
			$CountUsedBabyDragonSizeShow = "     " & String($CountBabyDragonSize) & "|" & @CRLF
			If $CountBabyDragonSize > 100 Then
				$CountUsedBabyDragonSizeShow = "    " & String($CountBabyDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountMiner > 0 Then
		$CountUsedMinerShow = "Miner       |      " & String($CountMiner)& "|"
		If $CountMiner >= 10 Then
			$CountUsedMinerShow = "Miner       |     " & String($CountMiner)& "|"
			If $CountMiner >= 100 Then
				$CountUsedMinerShow = "Miner       |    " & String($CountMiner)& "|"
			EndIf
		EndIf
	EndIf
	If $CountMinerSize > 0 Then
		$CountUsedMinerSizeShow = "      " & String($CountMinerSize) & "|" & @CRLF
		If $CountMinerSize >= 10 Then
			$CountUsedMinerSizeShow = "     " & String($CountMinerSize) & "|" & @CRLF
			If $CountMinerSize > 100 Then
				$CountUsedMinerSizeShow = "    " & String($CountMinerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountElectroDragon > 0 Then
		$CountUsedElectroDragonShow = "Electro Drg.|      " & String($CountElectroDragon)& "|"
		If $CountElectroDragon >= 10 Then
			$CountUsedElectroDragonShow = "Electro Drg.|     " & String($CountElectroDragon)& "|"
			If $CountElectroDragon >= 100 Then
				$CountUsedElectroDragonShow = "Electro Drg.|    " & String($CountElectroDragon)& "|"
			EndIf
		EndIf
	EndIf
	If $CountElectroDragonSize > 0 Then
		$CountUsedElectroDragonSizeShow = "      " & String($CountElectroDragonSize) & "|" & @CRLF
		If $CountElectroDragonSize >= 10 Then
			$CountUsedElectroDragonSizeShow = "     " & String($CountElectroDragonSize) & "|" & @CRLF
			If $CountElectroDragonSize > 100 Then
				$CountUsedElectroDragonSizeShow = "    " & String($CountElectroDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountYeti > 0 Then
		$CountUsedYetiShow = "Yeti        |      " & String($CountYeti)& "|"
		If $CountYeti >= 10 Then
			$CountUsedYetiShow = "Yeti        |     " & String($CountYeti)& "|"
			If $CountYeti >= 100 Then
				$CountUsedYetiShow = "Yeti        |    " & String($CountYeti)& "|"
			EndIf
		EndIf
	EndIf
	If $CountYetiSize > 0 Then
		$CountUsedYetiSizeShow = "      " & String($CountYetiSize) & "|" & @CRLF
		If $CountYetiSize >= 10 Then
			$CountUsedYetiSizeShow = "     " & String($CountYetiSize) & "|" & @CRLF
			If $CountYetiSize > 100 Then
				$CountUsedYetiSizeShow = "    " & String($CountYetiSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountMinion > 0 Then
		$CountUsedMinionShow = "Minion      |      " & String($CountMinion)& "|"
		If $CountMinion >= 10 Then
			$CountUsedMinionShow = "Minion      |     " & String($CountMinion)& "|"
			If $CountMinion >= 100 Then
				$CountUsedMinionShow = "Minion      |    " & String($CountMinion)& "|"
			EndIf
		EndIf
	EndIf
	If $CountMinionSize > 0 Then
		$CountUsedMinionSizeShow = "      " & String($CountMinionSize) & "|" & @CRLF
		If $CountMinionSize >= 10 Then
			$CountUsedMinionSizeShow = "     " & String($CountMinionSize) & "|" & @CRLF
			If $CountMinionSize > 100 Then
				$CountUsedMinionSizeShow = "    " & String($CountMinionSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHogRider > 0 Then
		$CountUsedHogRiderShow = "Hog Rider   |      " & String($CountHogRider)& "|"
		If $CountHogRider >= 10 Then
			$CountUsedHogRiderShow = "Hog Rider   |     " & String($CountHogRider)& "|"
			If $CountHogRider >= 100 Then
				$CountUsedHogRiderShow = "Hog Rider   |    " & String($CountHogRider)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHogRiderSize > 0 Then
		$CountUsedHogRiderSizeShow = "      " & String($CountHogRiderSize) & "|" & @CRLF
		If $CountHogRiderSize >= 10 Then
			$CountUsedHogRiderSizeShow = "     " & String($CountHogRiderSize) & "|" & @CRLF
			If $CountHogRiderSize > 100 Then
				$CountUsedHogRiderSizeShow = "    " & String($CountHogRiderSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountValkyre > 0 Then
		$CountUsedValkyreShow = "Valkyre     |      " & String($CountValkyre)& "|"
		If $CountValkyre >= 10 Then
			$CountUsedValkyreShow = "Valkyre     |     " & String($CountValkyre)& "|"
			If $CountValkyre >= 100 Then
				$CountUsedValkyreShow = "Valkyre     |    " & String($CountValkyre)& "|"
			EndIf
		EndIf
	EndIf
	If $CountValkyreSize > 0 Then
		$CountUsedValkyreSizeShow = "      " & String($CountValkyreSize) & "|" & @CRLF
		If $CountValkyreSize >= 10 Then
			$CountUsedValkyreSizeShow = "     " & String($CountValkyreSize) & "|" & @CRLF
			If $CountValkyreSize > 100 Then
				$CountUsedValkyreSizeShow = "    " & String($CountValkyreSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountGolem > 0 Then
		$CountUsedGolemShow = "Golem       |      " & String($CountGolem)& "|"
		If $CountGolem >= 10 Then
			$CountUsedGolemShow = "Golem       |     " & String($CountGolem)& "|"
			If $CountGolem >= 100 Then
				$CountUsedGolemShow = "Golem       |    " & String($CountGolem)& "|"
			EndIf
		EndIf
	EndIf
	If $CountGolemSize > 0 Then
		$CountUsedGolemSizeShow = "      " & String($CountGolemSize) & "|" & @CRLF
		If $CountGolemSize >= 10 Then
			$CountUsedGolemSizeShow = "     " & String($CountGolemSize) & "|" & @CRLF
			If $CountGolemSize > 100 Then
				$CountUsedGolemSizeShow = "    " & String($CountGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountWitch > 0 Then
		$CountUsedWitchShow = "Witch       |      " & String($CountWitch)& "|"
		If $CountWitch >= 10 Then
			$CountUsedWitchShow = "Witch       |     " & String($CountWitch)& "|"
			If $CountWitch >= 100 Then
				$CountUsedWitchShow = "Witch       |    " & String($CountWitch)& "|"
			EndIf
		EndIf
	EndIf
	If $CountWitchSize > 0 Then
		$CountUsedWitchSizeShow = "      " & String($CountWitchSize) & "|" & @CRLF
		If $CountWitchSize >= 10 Then
			$CountUsedWitchSizeShow = "     " & String($CountWitchSize) & "|" & @CRLF
			If $CountWitchSize > 100 Then
				$CountUsedWitchSizeShow = "    " & String($CountWitchSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountLavaHound > 0 Then
		$CountUsedLavaHoundShow = "Lava Hound  |      " & String($CountLavaHound)& "|"
		If $CountLavaHound >= 10 Then
			$CountUsedLavaHoundShow = "Lava Hound  |     " & String($CountLavaHound)& "|"
			If $CountLavaHound >= 100 Then
				$CountUsedLavaHoundShow = "Lava Hound  |    " & String($CountLavaHound)& "|"
			EndIf
		EndIf
	EndIf
	If $CountLavaHoundSize > 0 Then
		$CountUsedLavaHoundSizeShow = "      " & String($CountLavaHoundSize) & "|" & @CRLF
		If $CountLavaHoundSize >= 10 Then
			$CountUsedLavaHoundSizeShow = "     " & String($CountLavaHoundSize) & "|" & @CRLF
			If $CountLavaHoundSize > 100 Then
				$CountUsedLavaHoundSizeShow = "    " & String($CountLavaHoundSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBowler > 0 Then
		$CountUsedBowlerShow = "Bowler      |      " & String($CountBowler)& "|"
		If $CountBowler >= 10 Then
			$CountUsedBowlerShow = "Bowler      |     " & String($CountBowler)& "|"
			If $CountBowler >= 100 Then
				$CountUsedBowlerShow = "Bowler      |    " & String($CountBowler)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBowlerSize > 0 Then
		$CountUsedBowlerSizeShow = "      " & String($CountBowlerSize) & "|" & @CRLF
		If $CountBowlerSize >= 10 Then
			$CountUsedBowlerSizeShow = "     " & String($CountBowlerSize) & "|" & @CRLF
			If $CountBowlerSize > 100 Then
				$CountUsedBowlerSizeShow = "    " & String($CountBowlerSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountIceGolem > 0 Then
		$CountUsedIceGolemShow = "Ice Golem   |      " & String($CountIceGolem)& "|"
		If $CountIceGolem >= 10 Then
			$CountUsedIceGolemShow = "Ice Golem   |     " & String($CountIceGolem)& "|"
			If $CountIceGolem >= 100 Then
				$CountUsedIceGolemShow = "Ice Golem   |    " & String($CountIceGolem)& "|"
			EndIf
		EndIf
	EndIf
	If $CountIceGolemSize > 0 Then
		$CountUsedIceGolemSizeShow = "      " & String($CountIceGolemSize) & "|" & @CRLF
		If $CountIceGolemSize >= 10 Then
			$CountUsedIceGolemSizeShow = "     " & String($CountIceGolemSize) & "|" & @CRLF
			If $CountIceGolemSize > 100 Then
				$CountUsedIceGolemSizeShow = "    " & String($CountIceGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf

	;Spell
	If $CountLSpell > 0 Then
		$CountUsedLSpellShow = "Light S.    |      " & String($CountLSpell)& "|"
		If $CountLSpell >= 10 Then
			$CountUsedLSpellShow = "Light S.    |     " & String($CountLSpell)& "|"
			If $CountLSpell >= 100 Then
				$CountUsedLSpellShow = "Light S.    |    " & String($CountLSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountLSpellSize > 0 Then
		$CountUsedLSpellSizeShow = "      " & String($CountLSpellSize) & "|" & @CRLF
		If $CountLSpellSize >= 10 Then
			$CountUsedLSpellSizeShow = "     " & String($CountLSpellSize) & "|" & @CRLF
			If $CountLSpellSize > 100 Then
				$CountUsedLSpellSizeShow = "    " & String($CountLSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHSpell > 0 Then
		$CountUsedHSpellShow = "Heal S.     |      " & String($CountHSpell)& "|"
		If $CountHSpell >= 10 Then
			$CountUsedHSpellShow = "Heal S.     |     " & String($CountHSpell)& "|"
			If $CountHSpell >= 100 Then
				$CountUsedHSpellShow = "Heal S.     |    " & String($CountHSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHSpellSize > 0 Then
		$CountUsedHSpellSizeShow = "      " & String($CountHSpellSize) & "|" & @CRLF
		If $CountHSpellSize >= 10 Then
			$CountUsedHSpellSizeShow = "     " & String($CountHSpellSize) & "|" & @CRLF
			If $CountHSpellSize > 100 Then
				$CountUsedHSpellSizeShow = "    " & String($CountHSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountRSpell > 0 Then
		$CountUsedRSpellShow = "Rage S.     |      " & String($CountRSpell)& "|"
		If $CountRSpell >= 10 Then
			$CountUsedRSpellShow = "Rage S.     |     " & String($CountRSpell)& "|"
			If $CountRSpell >= 100 Then
				$CountUsedRSpellShow = "Rage S.     |    " & String($CountRSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountRSpellSize > 0 Then
		$CountUsedRSpellSizeShow = "      " & String($CountRSpellSize) & "|" & @CRLF
		If $CountRSpellSize >= 10 Then
			$CountUsedRSpellSizeShow = "     " & String($CountRSpellSize) & "|" & @CRLF
			If $CountRSpellSize > 100 Then
				$CountUsedRSpellSizeShow = "    " & String($CountRSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountJSpell > 0 Then
		$CountUsedJSpellShow = "Jump S.     |      " & String($CountJSpell)& "|"
		If $CountJSpell >= 10 Then
			$CountUsedJSpellShow = "Jump S.     |     " & String($CountJSpell)& "|"
			If $CountJSpell >= 100 Then
				$CountUsedJSpellShow = "Jump S.     |    " & String($CountJSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountJSpellSize > 0 Then
		$CountUsedJSpellSizeShow = "      " & String($CountJSpellSize) & "|" & @CRLF
		If $CountJSpellSize >= 10 Then
			$CountUsedJSpellSizeShow = "     " & String($CountJSpellSize) & "|" & @CRLF
			If $CountJSpellSize > 100 Then
				$CountUsedJSpellSizeShow = "    " & String($CountJSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountFSpell > 0 Then
		$CountUsedFSpellShow = "Freeze S.   |      " & String($CountFSpell)& "|"
		If $CountFSpell >= 10 Then
			$CountUsedFSpellShow = "Freeze S.   |     " & String($CountFSpell)& "|"
			If $CountFSpell >= 100 Then
				$CountUsedFSpellShow = "Freeze S.   |    " & String($CountFSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountFSpellSize > 0 Then
		$CountUsedFSpellSizeShow = "      " & String($CountFSpellSize) & "|" & @CRLF
		If $CountFSpellSize >= 10 Then
			$CountUsedFSpellSizeShow = "     " & String($CountFSpellSize) & "|" & @CRLF
			If $CountFSpellSize > 100 Then
				$CountUsedFSpellSizeShow = "    " & String($CountFSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountCSpell > 0 Then
		$CountUsedCSpellShow = "Clone S.    |      " & String($CountCSpell)& "|"
		If $CountCSpell >= 10 Then
			$CountUsedCSpellShow = "Clone S.    |     " & String($CountCSpell)& "|"
			If $CountCSpell >= 100 Then
				$CountUsedCSpellShow = "Clone S.    |    " & String($CountCSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountCSpellSize > 0 Then
		$CountUsedCSpellSizeShow = "      " & String($CountCSpellSize) & "|" & @CRLF
		If $CountCSpellSize >= 10 Then
			$CountUsedCSpellSizeShow = "     " & String($CountCSpellSize) & "|" & @CRLF
			If $CountCSpellSize > 100 Then
				$CountUsedCSpellSizeShow = "    " & String($CountCSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountPSpell > 0 Then
		$CountUsedPSpellShow = "Poison S.   |      " & String($CountPSpell)& "|"
		If $CountPSpell >= 10 Then
			$CountUsedPSpellShow = "Poison S.   |     " & String($CountPSpell)& "|"
			If $CountPSpell >= 100 Then
				$CountUsedPSpellShow = "Poison S.   |    " & String($CountPSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountPSpellSize > 0 Then
		$CountUsedPSpellSizeShow = "      " & String($CountPSpellSize) & "|" & @CRLF
		If $CountPSpellSize >= 10 Then
			$CountUsedPSpellSizeShow = "     " & String($CountPSpellSize) & "|" & @CRLF
			If $CountPSpellSize > 100 Then
				$CountUsedPSpellSizeShow = "    " & String($CountPSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountESpell > 0 Then
		$CountUsedESpellShow = "Earthquake S|      " & String($CountESpell)& "|"
		If $CountESpell >= 10 Then
			$CountUsedESpellShow = "Earthquake S|     " & String($CountESpell)& "|"
			If $CountESpell >= 100 Then
				$CountUsedESpellShow = "Earthquake S|    " & String($CountESpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountESpellSize > 0 Then
		$CountUsedESpellSizeShow = "      " & String($CountESpellSize) & "|" & @CRLF
		If $CountESpellSize >= 10 Then
			$CountUsedESpellSizeShow = "     " & String($CountESpellSize) & "|" & @CRLF
			If $CountESpellSize > 100 Then
				$CountUsedESpellSizeShow = "    " & String($CountESpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountHaSpell > 0 Then
		$CountUsedHaSpellShow = "Haste S.    |      " & String($CountHaSpell)& "|"
		If $CountHaSpell >= 10 Then
			$CountUsedHaSpellShow = "Haste S.    |     " & String($CountHaSpell)& "|"
			If $CountHaSpell >= 100 Then
				$CountUsedHaSpellShow = "Haste S.    |    " & String($CountHaSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountHaSpellSize > 0 Then
		$CountUsedHaSpellSizeShow = "      " & String($CountHaSpellSize) & "|" & @CRLF
		If $CountHaSpellSize >= 10 Then
			$CountUsedHaSpellSizeShow = "     " & String($CountHaSpellSize) & "|" & @CRLF
			If $CountHaSpellSize > 100 Then
				$CountUsedHaSpellSizeShow = "    " & String($CountHaSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountSkSpell > 0 Then
		$CountUsedSkSpellShow = "Skeleton S. |      " & String($CountSkSpell)& "|"
		If $CountSkSpell >= 10 Then
			$CountUsedSkSpellShow = "Skeleton S. |     " & String($CountSkSpell)& "|"
			If $CountSkSpell >= 100 Then
				$CountUsedSkSpellShow = "Skeleton S. |    " & String($CountSkSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountSkSpellSize > 0 Then
		$CountUsedSkSpellSizeShow = "      " & String($CountSkSpellSize) & "|" & @CRLF
		If $CountSkSpellSize >= 10 Then
			$CountUsedSkSpellSizeShow = "     " & String($CountSkSpellSize) & "|" & @CRLF
			If $CountSkSpellSize > 100 Then
				$CountUsedSkSpellSizeShow = "    " & String($CountSkSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf
	If $CountBtSpell > 0 Then
		$CountUsedBtSpellShow = "Bat S.      |      " & String($CountBtSpell)& "|"
		If $CountBtSpell >= 10 Then
			$CountUsedBtSpellShow = "Bat S.      |     " & String($CountBtSpell)& "|"
			If $CountBtSpell >= 100 Then
				$CountUsedBtSpellShow = "Bat S.      |    " & String($CountBtSpell)& "|"
			EndIf
		EndIf
	EndIf
	If $CountBtSpellSize > 0 Then
		$CountUsedBtSpellSizeShow = "      " & String($CountBtSpellSize) & "|" & @CRLF
		If $CountBtSpellSize >= 10 Then
			$CountUsedBtSpellSizeShow = "     " & String($CountBtSpellSize) & "|" & @CRLF
			If $CountBtSpellSize > 100 Then
				$CountUsedBtSpellSizeShow = "    " & String($CountBtSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	EndIf

$ArmyCountTXT = $CountUsedBarbarianShow & $CountUsedBarbarianSizeShow & _
				$CountUsedArcherShow & $CountUsedArcherSizeShow & _
				$CountUsedGiantShow & $CountUsedGiantSizeShow & _
				$CountUsedGoblinShow & $CountUsedGoblinSizeShow & _
				$CountUsedWallBreakerShow & $CountUsedWallBreakerSizeShow & _
				$CountUsedBaloonShow & $CountUsedBaloonSizeShow & _
				$CountUsedWizardShow & $CountUsedWizardSizeShow & _
				$CountUsedHealerShow & $CountUsedHealerSizeShow & _
				$CountUsedDragonShow & $CountUsedDragonSizeShow & _
				$CountUsedPekkaShow & $CountUsedPekkaSizeShow & _
				$CountUsedBabyDragonShow & $CountUsedBabyDragonSizeShow & _
				$CountUsedMinerShow & $CountUsedMinerSizeShow & _
				$CountUsedElectroDragonShow & $CountUsedElectroDragonSizeShow & _
				$CountUsedYetiShow & $CountUsedYetiSizeShow & _
				$CountUsedMinionShow & $CountUsedMinionSizeShow & _
				$CountUsedHogRiderShow & $CountUsedHogRiderSizeShow & _
				$CountUsedValkyreShow & $CountUsedValkyreSizeShow & _
				$CountUsedGolemShow & $CountUsedGolemSizeShow & _
				$CountUsedWitchShow & $CountUsedWitchSizeShow & _
				$CountUsedLavaHoundShow & $CountUsedLavaHoundSizeShow & _
				$CountUsedBowlerShow & $CountUsedBowlerSizeShow & _
				$CountUsedIceGolemShow & $CountUsedIceGolemSizeShow & _
				$CountUsedLSpellShow & $CountUsedLSpellSizeShow & _
				$CountUsedHSpellShow & $CountUsedHSpellSizeShow & _
				$CountUsedRSpellShow & $CountUsedRSpellSizeShow & _
				$CountUsedJSpellShow & $CountUsedJSpellSizeShow & _
				$CountUsedFSpellShow & $CountUsedFSpellSizeShow & _
				$CountUsedCSpellShow & $CountUsedCSpellSizeShow & _
				$CountUsedPSpellShow & $CountUsedPSpellSizeShow & _
				$CountUsedESpellShow & $CountUsedESpellSizeShow & _
				$CountUsedHaSpellShow & $CountUsedHaSpellSizeShow & _
				$CountUsedSkSpellShow & $CountUsedSkSpellSizeShow & _
				$CountUsedBtSpellShow & $CountUsedBtSpellSizeShow & _
				$CountUsedKingShow & _
				$CountUsedQueenShow & _
				$CountUsedWardenShow & _
				$CountUsedRoyaleChampionShow & _
				$CountUsedWWShow & _
				$CountUsedBBShow & _
				$CountUsedSSShow & _
				$CountUsedSBShow & _
				$CountUsedCCShow & _
				"----------------------------" & @CRLF & _
				$SumOfArmySizeCountShow & _
				$SumOfSpellSizeCountShow












EndFunc   ;==>CountUsedTroops

Func CountUsedTroopsAfterUndo()
	If $LOGName = "Barbarian" Then
		$CountBarbarian = $CountBarbarian - 1
		$CountBarbarianSize = $CountBarbarian * $CounterTroop_TroopSize
	ElseIf $LOGName = "Archer" Then
		$CountArcher = $CountArcher - 1
		$CountArcherSize = $CountArcher * $CounterTroop_TroopSize
	ElseIf $LOGName = "Giant" Then
		$CountGiant = $CountGiant - 1
		$CountGiantSize = $CountGiant * $CounterTroop_TroopSize
	ElseIf $LOGName = "Goblin" Then
		$CountGoblin = $CountGoblin - 1
		$CountGoblinSize = $CountGoblin * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wall Breaker" Then
		$CountWallBreaker = $CountWallBreaker - 1
		$CountWallBreakerSize = $CountWallBreaker * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baloon" Then
		$CountBaloon = $CountBaloon - 1
		$CountBaloonSize = $CountBaloon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Wizard" Then
		$CountWizard = $CountWizard - 1
		$CountWizardSize = $CountWizard * $CounterTroop_TroopSize
	ElseIf $LOGName = "Healer" Then
		$CountHealer = $CountHealer - 1
		$CountHealerSize = $CountHealer * $CounterTroop_TroopSize
	ElseIf $LOGName = "Dragon" Then
		$CountDragon = $CountDragon - 1
		$CountDragonSize = $CountDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "P.E.K.K.A" Then
		$CountPekka = $CountPekka - 1
		$CountPekkaSize = $CountPekka * $CounterTroop_TroopSize
	ElseIf $LOGName = "Baby Dragon" Then
		$CountBabyDragon = $CountBabyDragon - 1
		$CountBabyDragonSize = $CountBabyDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Miner" Then
		$CountMiner = $CountMiner - 1
		$CountMinerSize = $CountMiner * $CounterTroop_TroopSize
	ElseIf $LOGName = "Electro Dragon" Then
		$CountElectroDragon = $CountElectroDragon - 1
		$CountElectroDragonSize = $CountElectroDragon * $CounterTroop_TroopSize
	ElseIf $LOGName = "Yeti" Then
		$CountYeti = $CountYeti - 1
		$CountYetiSize = $CountYeti * $CounterTroop_TroopSize
	ElseIf $LOGName = "Minion" Then
		$CountMinion = $CountMinion - 1
		$CountMinionSize = $CountMinion * $CounterTroop_TroopSize
	ElseIf $LOGName = "Hog Rider" Then
		$CountHogRider = $CountHogRider - 1
		$CountHogRiderSize = $CountHogRider * $CounterTroop_TroopSize
	ElseIf $LOGName = "Valkyre" Then
		$CountValkyre = $CountValkyre - 1
		$CountValkyreSize = $CountValkyre * $CounterTroop_TroopSize
	ElseIf $LOGName = "Golem" Then
		$CountGolem = $CountGolem - 1
		$CountGolemSize = $CountGolem * $CounterTroop_TroopSize
	ElseIf $LOGName = "Witch" Then
		$CountWitch = $CountWitch - 1
		$CountWitchSize = $CountWitch * $CounterTroop_TroopSize
	ElseIf $LOGName = "Lava Hound" Then
		$CountLavaHound = $CountLavaHound - 1
		$CountLavaHoundSize = $CountLavaHound * $CounterTroop_TroopSize
	ElseIf $LOGName = "Bowler" Then
		$CountBowler = $CountBowler - 1
		$CountBowlerSize = $CountBowler * $CounterTroop_TroopSize
	ElseIf $LOGName = "Ice Golem" Then
		$CountIceGolem = $CountIceGolem - 1
		$CountIceGolemSize = $CountIceGolem * $CounterTroop_TroopSize
	ElseIf $TName = "LSpell     " Then
		$CountLSpell = $CountLSpell - 1
		$CountLSpellSize = $CountLSpell * $CounterTroop_SpellSize
	ElseIf $TName = "HSpell     " Then
		$CountHSpell = $CountHSpell - 1
		$CountHSpellSize = $CountHSpell * $CounterTroop_SpellSize
	ElseIf $TName = "RSpell     " Then
		$CountRSpell = $CountRSpell - 1
		$CountRSpellSize = $CountRSpell * $CounterTroop_SpellSize
	ElseIf $TName = "JSpell     " Then
		$CountJSpell = $CountJSpell - 1
		$CountJSpellSize = $CountJSpell * $CounterTroop_SpellSize
	ElseIf $TName = "FSpell     " Then
		$CountFSpell = $CountFSpell - 1
		$CountFSpellSize = $CountFSpell * $CounterTroop_SpellSize
	ElseIf $TName = "CSpell     " Then
		$CountCSpell = $CountCSpell - 1
		$CountCSpellSize = $CountCSpell * $CounterTroop_SpellSize
	ElseIf $TName = "PSpell     " Then
		$CountPSpell = $CountPSpell - 1
		$CountPSpellSize = $CountPSpell * $CounterTroop_SpellSize
	ElseIf $TName = "ESpell     " Then
		$CountESpell = $CountESpell - 1
		$CountESpellSize = $CountESpell * $CounterTroop_SpellSize
	ElseIf $TName = "HaSpell    " Then
		$CountHaSpell = $CountHaSpell - 1
		$CountHaSpellSize = $CountHaSpell * $CounterTroop_SpellSize
	ElseIf $TName = "SkSpell    " Then
		$CountSkSpell = $CountSkSpell - 1
		$CountSkSpellSize = $CountSkSpell * $CounterTroop_SpellSize
	ElseIf $TName = "BtSpell    " Then
		$CountBtSpell = $CountBtSpell - 1
		$CountBtSpellSize = $CountBtSpell * $CounterTroop_SpellSize
	ElseIf $LOGName = "King" Then
		$CountKing = $CountKing - 1
	ElseIf $LOGName = "Queen" Then
		$CountQueen = $CountQueen - 1
	ElseIf $LOGName = "Warden" Then
		$CountWarden = $CountWarden - 1
	ElseIf $LOGName = "Royal Champion" Then
		$CountRoyaleChampion = $CountRoyaleChampion - 1
	ElseIf $LOGName = "Wall Wrecker" Then
		$CountWW = $CountWW - 1
	ElseIf $LOGName = "Battle Blimp" Then
		$CountBB = $CountBB - 1
	ElseIf $LOGName = "Stone Slamer" Then
		$CountSS = $CountSS - 1
	ElseIf $LOGName = "Siege Barrack" Then
		$CountSB = $CountSB - 1
	ElseIf $TName = "Castle     " Then
		$CountCC = $CountCC - 1
	EndIf


   $SumOfArmySizeCount =$CountBarbarianSize + $CountArcherSize + _
						$CountGiantSize + $CountGoblinSize + _
						$CountWallBreakerSize + $CountBaloonSize + _
						$CountWizardSize + $CountHealerSize + _
						$CountDragonSize + _
						$CountPekkaSize + $CountBabyDragonSize + _
						$CountMinerSize +  $CountElectroDragonSize + $CountYetiSize + _
						$CountMinionSize + $CountHogRiderSize + _
						$CountValkyreSize + $CountGolemSize + _
						$CountWitchSize + $CountLavaHoundSize + _
						$CountBowlerSize + $CountIceGolemSize

   $SumOfArmySizeCountShow = "Your Used Army Size is " & String($SumOfArmySizeCount) & @CRLF

   $SumOfSpellSizeCount = $CountLSpellSize + $CountHSpellSize + _
						   $CountRSpellSize + $CountJSpellSize + _
						   $CountFSpellSize + $CountCSpellSize + _
						   $CountPSpellSize + $CountESpellSize + _
						   $CountHaSpellSize + $CountSkSpellSize + _
						   $CountBtSpellSize

   $SumOfSpellSizeCountShow = "Your Used Spell Size is " & String($SumOfSpellSizeCount)



	If $CountKing > 0 Then
		$CountUsedKingShow = "King             " & ChrW("8730") &@CRLF
	Else
		$CountUsedKingShow = ""
	EndIf
	If $CountQueen > 0 Then
		$CountUsedQueenShow = "Queen            " & ChrW("8730") &@CRLF
	Else
		$CountUsedQueenShow = ""
	EndIf
	If $CountWarden > 0 Then
		$CountUsedWardenShow = "Warden           " & ChrW("8730") &@CRLF
	Else
		$CountUsedWardenShow = ""
	EndIf
	If $CountRoyaleChampion > 0 Then
		$CountUsedRoyaleChampionShow = "Royal Champion   " & ChrW("8730") &@CRLF
	Else
		$CountUsedRoyaleChampionShow = ""
	EndIf
	If $CountWW > 0 Then
		$CountUsedWWShow = "Wall Wrecker     " & ChrW("8730") &@CRLF
	Else
		$CountUsedWWShow = ""
	EndIf
	If $CountBB > 0 Then
		$CountUsedBBShow = "Battle Blimp     " & ChrW("8730") &@CRLF
	Else
		$CountUsedBBShow = ""
	EndIf
	If $CountSS > 0 Then
		$CountUsedSSShow = "Stone Slamer     " & ChrW("8730") &@CRLF
	Else
		$CountUsedSSShow = ""
	EndIf
	If $CountSB > 0 Then
		$CountUsedSBShow = "Siege Barrack    " & ChrW("8730") &@CRLF
	Else
		$CountUsedSBShow = ""
	EndIf

	If $CountCC > 0 Then
		$CountUsedCCShow = "Clan Castle      " & ChrW("8730") &@CRLF
	Else
		$CountUsedCCShow = ""
	EndIf




	If $CountBarbarian > 0 Then
		$CountUsedBarbarianShow = "Barbarian   |      " & $CountBarbarian & "|"
		If $CountBarbarian >= 10 Then
			$CountUsedBarbarianShow = "Barbarian   |     " & $CountBarbarian & "|"
			If $CountBarbarian >= 100 Then
				$CountUsedBarbarianShow = "Barbarian   |    " & $CountBarbarian& "|"
			EndIf
		EndIf
	Else
		$CountUsedBarbarianShow = ""
	EndIf
	If $CountBarbarianSize > 0 Then
		$CountUsedBarbarianSizeShow = "      " & $CountBarbarianSize & "|" & @CRLF
		If $CountBarbarianSize >= 10 Then
			$CountUsedBarbarianSizeShow = "     " & $CountBarbarianSize & "|" & @CRLF
			If $CountBarbarianSize > 100 Then
				$CountUsedBarbarianSizeShow = "    " & $CountBarbarianSize & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBarbarianSizeShow = ""
	EndIf
	If $CountArcher > 0 Then
		$CountUsedArcherShow = "Archer      |      " & String($CountArcher)& "|"
		If $CountArcher >= 10 Then
			$CountUsedArcherShow = "Archer      |     " & String($CountArcher)& "|"
			If $CountArcher >= 100 Then
				$CountUsedArcherShow = "Archer      |    " & String($CountArcher)& "|"
			EndIf
		EndIf
	Else
		$CountUsedArcherShow = ""
	EndIf
	If $CountArcherSize > 0 Then
		$CountUsedArcherSizeShow = "      " & String($CountArcherSize) & "|" & @CRLF
		If $CountArcherSize >= 10 Then
			$CountUsedArcherSizeShow = "     " & String($CountArcherSize) & "|" & @CRLF
			If $CountArcherSize > 100 Then
				$CountUsedArcherSizeShow = "    " & String($CountArcherSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedArcherSizeShow = ""
	EndIf
	If $CountGiant > 0 Then
		$CountUsedGiantShow = "Giant       |      " & String($CountGiant)& "|"
		If $CountGiant >= 10 Then
			$CountUsedGiantShow = "Giant       |     " & String($CountGiant)& "|"
			If $CountGiant >= 100 Then
				$CountUsedGiantShow = "Giant       |    " & String($CountGiant)& "|"
			EndIf
		EndIf
	Else
		$CountUsedGiantShow = ""
	EndIf
	If $CountGiantSize > 0 Then
		$CountUsedGiantSizeShow = "      " & String($CountGiantSize) & "|" & @CRLF
		If $CountGiantSize >= 10 Then
			$CountUsedGiantSizeShow = "     " & String($CountGiantSize) & "|" & @CRLF
			If $CountGiantSize > 100 Then
				$CountUsedGiantSizeShow = "    " & String($CountGiantSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedGiantSizeShow = ""
	EndIf
	If $CountGoblin > 0 Then
		$CountUsedGoblinShow = "Goblin      |      " & String($CountGoblin)& "|"
		If $CountGoblin >= 10 Then
			$CountUsedGoblinShow = "Goblin      |     " & String($CountGoblin)& "|"
			If $CountGoblin >= 100 Then
				$CountUsedGoblinShow = "Goblin      |    " & String($CountGoblin)& "|"
			EndIf
		EndIf
	Else
		$CountUsedGoblinShow = ""
	EndIf
	If $CountGoblinSize > 0 Then
		$CountUsedGoblinSizeShow = "      " & String($CountGoblinSize) & "|" & @CRLF
		If $CountGoblinSize >= 10 Then
			$CountUsedGoblinSizeShow = "     " & String($CountGoblinSize) & "|" & @CRLF
			If $CountGoblinSize > 100 Then
				$CountUsedGoblinSizeShow = "    " & String($CountGoblinSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedGoblinSizeShow = ""
	EndIf
	If $CountWallBreaker > 0 Then
		$CountUsedWallBreakerShow = "Wall Breaker|      " & String($CountWallBreaker)& "|"
		If $CountWallBreaker >= 10 Then
			$CountUsedWallBreakerShow = "Wall Breaker|     " & String($CountWallBreaker)& "|"
			If $CountWallBreaker >= 100 Then
				$CountUsedWallBreakerShow = "Wall Breaker|    " & String($CountWallBreaker)& "|"
			EndIf
		EndIf
	Else
		$CountUsedWallBreakerShow = ""
	EndIf
	If $CountWallBreakerSize > 0 Then
		$CountUsedWallBreakerSizeShow = "      " & String($CountWallBreakerSize) & "|" & @CRLF
		If $CountWallBreakerSize >= 10 Then
			$CountUsedWallBreakerSizeShow = "     " & String($CountWallBreakerSize) & "|" & @CRLF
			If $CountWallBreakerSize > 100 Then
				$CountUsedWallBreakerSizeShow = "    " & String($CountWallBreakerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedWallBreakerSizeShow = ""
	EndIf
	If $CountBaloon > 0 Then
		$CountUsedBaloonShow = "Balloon     |      " & String($CountBaloon)& "|"
		If $CountBaloon >= 10 Then
			$CountUsedBaloonShow = "Balloon     |     " & String($CountBaloon)& "|"
			If $CountBaloon >= 100 Then
				$CountUsedBaloonShow = "Balloon     |    " & String($CountBaloon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBaloonShow = ""
	EndIf
	If $CountBaloonSize > 0 Then
		$CountUsedBaloonSizeShow = "      " & String($CountBaloonSize) & "|" & @CRLF
		If $CountBaloonSize >= 10 Then
			$CountUsedBaloonSizeShow = "     " & String($CountBaloonSize) & "|" & @CRLF
			If $CountBaloonSize > 100 Then
				$CountUsedBaloonSizeShow = "    " & String($CountBaloonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBaloonSizeShow = ""
	EndIf
	If $CountWizard > 0 Then
		$CountUsedWizardShow = "Wizard      |      " & String($CountWizard)& "|"
		If $CountWizard >= 10 Then
			$CountUsedWizardShow = "Wizard      |     " & String($CountWizard)& "|"
			If $CountWizard >= 100 Then
				$CountUsedWizardShow = "Wizard      |    " & String($CountWizard)& "|"
			EndIf
		EndIf
	Else
		$CountUsedWizardShow = ""
	EndIf
	If $CountWizardSize > 0 Then
		$CountUsedWizardSizeShow = "      " & String($CountWizardSize) & "|" & @CRLF
		If $CountWizardSize >= 10 Then
			$CountUsedWizardSizeShow = "     " & String($CountWizardSize) & "|" & @CRLF
			If $CountWizardSize > 100 Then
				$CountUsedWizardSizeShow = "    " & String($CountWizardSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedWizardSizeShow = ""
	EndIf
	If $CountHealer > 0 Then
		$CountUsedHealerShow = "Healer      |      " & String($CountHealer)& "|"
		If $CountHealer >= 10 Then
			$CountUsedHealerShow = "Healer      |     " & String($CountHealer)& "|"
			If $CountHealer >= 100 Then
				$CountUsedHealerShow = "Healer      |    " & String($CountHealer)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHealerShow = ""
	EndIf
	If $CountHealerSize > 0 Then
		$CountUsedHealerSizeShow = "      " & String($CountHealerSize) & "|" & @CRLF
		If $CountHealerSize >= 10 Then
			$CountUsedHealerSizeShow = "     " & String($CountHealerSize) & "|" & @CRLF
			If $CountHealerSize > 100 Then
				$CountUsedHealerSizeShow = "    " & String($CountHealerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHealerSizeShow = ""
	EndIf
	If $CountDragon > 0 Then
		$CountUsedDragonShow = "Dragon      |      " & String($CountDragon)& "|"
		If $CountDragon >= 10 Then
			$CountUsedDragonShow = "Dragon      |     " & String($CountDragon)& "|"
			If $CountDragon >= 100 Then
				$CountUsedDragonShow = "Dragon      |    " & String($CountDragon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedDragonShow = ""
	EndIf
	If $CountDragonSize > 0 Then
		$CountUsedDragonSizeShow = "      " & String($CountDragonSize) & "|" & @CRLF
		If $CountDragonSize >= 10 Then
			$CountUsedDragonSizeShow = "     " & String($CountDragonSize) & "|" & @CRLF
			If $CountDragonSize > 100 Then
				$CountUsedDragonSizeShow = "    " & String($CountDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedDragonSizeShow = ""
	EndIf
	If $CountPekka > 0 Then
		$CountUsedPekkaShow = "Pekka       |      " & String($CountPekka)& "|"
		If $CountPekka >= 10 Then
			$CountUsedPekkaShow = "Pekka       |     " & String($CountPekka)& "|"
			If $CountPekka >= 100 Then
				$CountUsedPekkaShow = "Pekka       |    " & String($CountPekka)& "|"
			EndIf
		EndIf
	Else
		$CountUsedPekkaShow = ""
	EndIf
	If $CountPekkaSize > 0 Then
		$CountUsedPekkaSizeShow = "      " & String($CountPekkaSize) & "|" & @CRLF
		If $CountPekkaSize >= 10 Then
			$CountUsedPekkaSizeShow = "     " & String($CountPekkaSize) & "|" & @CRLF
			If $CountPekkaSize > 100 Then
				$CountUsedPekkaSizeShow = "    " & String($CountPekkaSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedPekkaSizeShow = ""
	EndIf
	If $CountBabyDragon > 0 Then
		$CountUsedBabyDragonShow = "Baby Dragon |      " & String($CountBabyDragon)& "|"
		If $CountBabyDragon >= 10 Then
			$CountUsedBabyDragonShow = "Baby Dragon |     " & String($CountBabyDragon)& "|"
			If $CountBabyDragon >= 100 Then
				$CountUsedBabyDragonShow = "Baby Dragon |    " & String($CountBabyDragon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBabyDragonShow = ""
	EndIf
	If $CountBabyDragonSize > 0 Then
		$CountUsedBabyDragonSizeShow = "      " & String($CountBabyDragonSize) & "|" & @CRLF
		If $CountBabyDragonSize >= 10 Then
			$CountUsedBabyDragonSizeShow = "     " & String($CountBabyDragonSize) & "|" & @CRLF
			If $CountBabyDragonSize > 100 Then
				$CountUsedBabyDragonSizeShow = "    " & String($CountBabyDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBabyDragonSizeShow = ""
	EndIf
	If $CountMiner > 0 Then
		$CountUsedMinerShow = "Miner       |      " & String($CountMiner)& "|"
		If $CountMiner >= 10 Then
			$CountUsedMinerShow = "Miner       |     " & String($CountMiner)& "|"
			If $CountMiner >= 100 Then
				$CountUsedMinerShow = "Miner       |    " & String($CountMiner)& "|"
			EndIf
		EndIf
	Else
		$CountUsedMinerShow = ""
	EndIf
	If $CountMinerSize > 0 Then
		$CountUsedMinerSizeShow = "      " & String($CountMinerSize) & "|" & @CRLF
		If $CountMinerSize >= 10 Then
			$CountUsedMinerSizeShow = "     " & String($CountMinerSize) & "|" & @CRLF
			If $CountMinerSize > 100 Then
				$CountUsedMinerSizeShow = "    " & String($CountMinerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedMinerSizeShow = ""
	EndIf
	If $CountElectroDragon > 0 Then
		$CountUsedElectroDragonShow = "Electro Drg.|      " & String($CountElectroDragon)& "|"
		If $CountElectroDragon >= 10 Then
			$CountUsedElectroDragonShow = "Electro Drg.|     " & String($CountElectroDragon)& "|"
			If $CountElectroDragon >= 100 Then
				$CountUsedElectroDragonShow = "Electro Drg.|    " & String($CountElectroDragon)& "|"
			EndIf
		EndIf
	Else
		$CountUsedElectroDragonShow = ""
	EndIf
	If $CountElectroDragonSize > 0 Then
		$CountUsedElectroDragonSizeShow = "      " & String($CountElectroDragonSize) & "|" & @CRLF
		If $CountElectroDragonSize >= 10 Then
			$CountUsedElectroDragonSizeShow = "     " & String($CountElectroDragonSize) & "|" & @CRLF
			If $CountElectroDragonSize > 100 Then
				$CountUsedElectroDragonSizeShow = "    " & String($CountElectroDragonSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedElectroDragonSizeShow = ""
	EndIf
	If $CountYeti > 0 Then
		$CountUsedYetiShow = "Yeti        |      " & String($CountYeti)& "|"
		If $CountYeti >= 10 Then
			$CountUsedYetiShow = "Yeti        |     " & String($CountYeti)& "|"
			If $CountYeti >= 100 Then
				$CountUsedYetiShow = "Yeti        |    " & String($CountYeti)& "|"
			EndIf
		EndIf
	Else
		$CountUsedYetiShow = ""
	EndIf
	If $CountYetiSize > 0 Then
		$CountUsedYetiSizeShow = "      " & String($CountYetiSize) & "|" & @CRLF
		If $CountYetiSize >= 10 Then
			$CountUsedYetiSizeShow = "     " & String($CountYetiSize) & "|" & @CRLF
			If $CountYetiSize > 100 Then
				$CountUsedYetiSizeShow = "    " & String($CountYetiSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedYetiSizeShow = ""
	EndIf
	If $CountMinion > 0 Then
		$CountUsedMinionShow = "Minion      |      " & String($CountMinion)& "|"
		If $CountMinion >= 10 Then
			$CountUsedMinionShow = "Minion      |     " & String($CountMinion)& "|"
			If $CountMinion >= 100 Then
				$CountUsedMinionShow = "Minion      |    " & String($CountMinion)& "|"
			EndIf
		EndIf
	Else
		$CountUsedMinionShow = ""
	EndIf
	If $CountMinionSize > 0 Then
		$CountUsedMinionSizeShow = "      " & String($CountMinionSize) & "|" & @CRLF
		If $CountMinionSize >= 10 Then
			$CountUsedMinionSizeShow = "     " & String($CountMinionSize) & "|" & @CRLF
			If $CountMinionSize > 100 Then
				$CountUsedMinionSizeShow = "    " & String($CountMinionSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedMinionSizeShow = ""
	EndIf
	If $CountHogRider > 0 Then
		$CountUsedHogRiderShow = "Hog Rider   |      " & String($CountHogRider)& "|"
		If $CountHogRider >= 10 Then
			$CountUsedHogRiderShow = "Hog Rider   |     " & String($CountHogRider)& "|"
			If $CountHogRider >= 100 Then
				$CountUsedHogRiderShow = "Hog Rider   |    " & String($CountHogRider)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHogRiderShow = ""
	EndIf
	If $CountHogRiderSize > 0 Then
		$CountUsedHogRiderSizeShow = "      " & String($CountHogRiderSize) & "|" & @CRLF
		If $CountHogRiderSize >= 10 Then
			$CountUsedHogRiderSizeShow = "     " & String($CountHogRiderSize) & "|" & @CRLF
			If $CountHogRiderSize > 100 Then
				$CountUsedHogRiderSizeShow = "    " & String($CountHogRiderSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHogRiderSizeShow = ""
	EndIf
	If $CountValkyre > 0 Then
		$CountUsedValkyreShow = "Valkyre     |      " & String($CountValkyre)& "|"
		If $CountValkyre >= 10 Then
			$CountUsedValkyreShow = "Valkyre     |     " & String($CountValkyre)& "|"
			If $CountValkyre >= 100 Then
				$CountUsedValkyreShow = "Valkyre     |    " & String($CountValkyre)& "|"
			EndIf
		EndIf
	Else
		$CountUsedValkyreShow = ""
	EndIf
	If $CountValkyreSize > 0 Then
		$CountUsedValkyreSizeShow = "      " & String($CountValkyreSize) & "|" & @CRLF
		If $CountValkyreSize >= 10 Then
			$CountUsedValkyreSizeShow = "     " & String($CountValkyreSize) & "|" & @CRLF
			If $CountValkyreSize > 100 Then
				$CountUsedValkyreSizeShow = "    " & String($CountValkyreSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedValkyreSizeShow = ""
	EndIf
	If $CountGolem > 0 Then
		$CountUsedGolemShow = "Golem       |      " & String($CountGolem)& "|"
		If $CountGolem >= 10 Then
			$CountUsedGolemShow = "Golem       |     " & String($CountGolem)& "|"
			If $CountGolem >= 100 Then
				$CountUsedGolemShow = "Golem       |    " & String($CountGolem)& "|"
			EndIf
		EndIf
	Else
		$CountUsedGolemShow = ""
	EndIf
	If $CountGolemSize > 0 Then
		$CountUsedGolemSizeShow = "      " & String($CountGolemSize) & "|" & @CRLF
		If $CountGolemSize >= 10 Then
			$CountUsedGolemSizeShow = "     " & String($CountGolemSize) & "|" & @CRLF
			If $CountGolemSize > 100 Then
				$CountUsedGolemSizeShow = "    " & String($CountGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedGolemSizeShow = ""
	EndIf
	If $CountWitch > 0 Then
		$CountUsedWitchShow = "Witch       |      " & String($CountWitch)& "|"
		If $CountWitch >= 10 Then
			$CountUsedWitchShow = "Witch       |     " & String($CountWitch)& "|"
			If $CountWitch >= 100 Then
				$CountUsedWitchShow = "Witch       |    " & String($CountWitch)& "|"
			EndIf
		EndIf
	Else
		$CountUsedWitchShow = ""
	EndIf
	If $CountWitchSize > 0 Then
		$CountUsedWitchSizeShow = "      " & String($CountWitchSize) & "|" & @CRLF
		If $CountWitchSize >= 10 Then
			$CountUsedWitchSizeShow = "     " & String($CountWitchSize) & "|" & @CRLF
			If $CountWitchSize > 100 Then
				$CountUsedWitchSizeShow = "    " & String($CountWitchSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedWitchSizeShow = ""
	EndIf
	If $CountLavaHound > 0 Then
		$CountUsedLavaHoundShow = "Lava Hound  |      " & String($CountLavaHound)& "|"
		If $CountLavaHound >= 10 Then
			$CountUsedLavaHoundShow = "Lava Hound  |     " & String($CountLavaHound)& "|"
			If $CountLavaHound >= 100 Then
				$CountUsedLavaHoundShow = "Lava Hound  |    " & String($CountLavaHound)& "|"
			EndIf
		EndIf
	Else
		$CountUsedLavaHoundShow = ""
	EndIf
	If $CountLavaHoundSize > 0 Then
		$CountUsedLavaHoundSizeShow = "      " & String($CountLavaHoundSize) & "|" & @CRLF
		If $CountLavaHoundSize >= 10 Then
			$CountUsedLavaHoundSizeShow = "     " & String($CountLavaHoundSize) & "|" & @CRLF
			If $CountLavaHoundSize > 100 Then
				$CountUsedLavaHoundSizeShow = "    " & String($CountLavaHoundSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedLavaHoundSizeShow = ""
	EndIf
	If $CountBowler > 0 Then
		$CountUsedBowlerShow = "Bowler      |      " & String($CountBowler)& "|"
		If $CountBowler >= 10 Then
			$CountUsedBowlerShow = "Bowler      |     " & String($CountBowler)& "|"
			If $CountBowler >= 100 Then
				$CountUsedBowlerShow = "Bowler      |    " & String($CountBowler)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBowlerShow = ""
	EndIf
	If $CountBowlerSize > 0 Then
		$CountUsedBowlerSizeShow = "      " & String($CountBowlerSize) & "|" & @CRLF
		If $CountBowlerSize >= 10 Then
			$CountUsedBowlerSizeShow = "     " & String($CountBowlerSize) & "|" & @CRLF
			If $CountBowlerSize > 100 Then
				$CountUsedBowlerSizeShow = "    " & String($CountBowlerSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBowlerSizeShow = ""
	EndIf
	If $CountIceGolem > 0 Then
		$CountUsedIceGolemShow = "Ice Golem   |      " & String($CountIceGolem)& "|"
		If $CountIceGolem >= 10 Then
			$CountUsedIceGolemShow = "Ice Golem   |     " & String($CountIceGolem)& "|"
			If $CountIceGolem >= 100 Then
				$CountUsedIceGolemShow = "Ice Golem   |    " & String($CountIceGolem)& "|"
			EndIf
		EndIf
	Else
		$CountUsedIceGolemShow = ""
	EndIf
	If $CountIceGolemSize > 0 Then
		$CountUsedIceGolemSizeShow = "      " & String($CountIceGolemSize) & "|" & @CRLF
		If $CountIceGolemSize >= 10 Then
			$CountUsedIceGolemSizeShow = "     " & String($CountIceGolemSize) & "|" & @CRLF
			If $CountIceGolemSize > 100 Then
				$CountUsedIceGolemSizeShow = "    " & String($CountIceGolemSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedIceGolemSizeShow = ""
	EndIf

	;Spell
	If $CountLSpell > 0 Then
		$CountUsedLSpellShow = "Light S.    |      " & String($CountLSpell)& "|"
		If $CountLSpell >= 10 Then
			$CountUsedLSpellShow = "Light S.    |     " & String($CountLSpell)& "|"
			If $CountLSpell >= 100 Then
				$CountUsedLSpellShow = "Light S.    |    " & String($CountLSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedLSpellShow = ""
	EndIf
	If $CountLSpellSize > 0 Then
		$CountUsedLSpellSizeShow = "      " & String($CountLSpellSize) & "|" & @CRLF
		If $CountLSpellSize >= 10 Then
			$CountUsedLSpellSizeShow = "     " & String($CountLSpellSize) & "|" & @CRLF
			If $CountLSpellSize > 100 Then
				$CountUsedLSpellSizeShow = "    " & String($CountLSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedLSpellSizeShow = ""
	EndIf
	If $CountHSpell > 0 Then
		$CountUsedHSpellShow = "Heal S.     |      " & String($CountHSpell)& "|"
		If $CountHSpell >= 10 Then
			$CountUsedHSpellShow = "Heal S.     |     " & String($CountHSpell)& "|"
			If $CountHSpell >= 100 Then
				$CountUsedHSpellShow = "Heal S.     |    " & String($CountHSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHSpellShow = ""
	EndIf
	If $CountHSpellSize > 0 Then
		$CountUsedHSpellSizeShow = "      " & String($CountHSpellSize) & "|" & @CRLF
		If $CountHSpellSize >= 10 Then
			$CountUsedHSpellSizeShow = "     " & String($CountHSpellSize) & "|" & @CRLF
			If $CountHSpellSize > 100 Then
				$CountUsedHSpellSizeShow = "    " & String($CountHSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHSpellSizeShow = ""
	EndIf
	If $CountRSpell > 0 Then
		$CountUsedRSpellShow = "Rage S.     |      " & String($CountRSpell)& "|"
		If $CountRSpell >= 10 Then
			$CountUsedRSpellShow = "Rage S.     |     " & String($CountRSpell)& "|"
			If $CountRSpell >= 100 Then
				$CountUsedRSpellShow = "Rage S.     |    " & String($CountRSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedRSpellShow = ""
	EndIf
	If $CountRSpellSize > 0 Then
		$CountUsedRSpellSizeShow = "      " & String($CountRSpellSize) & "|" & @CRLF
		If $CountRSpellSize >= 10 Then
			$CountUsedRSpellSizeShow = "     " & String($CountRSpellSize) & "|" & @CRLF
			If $CountRSpellSize > 100 Then
				$CountUsedRSpellSizeShow = "    " & String($CountRSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedRSpellSizeShow = ""
	EndIf
	If $CountJSpell > 0 Then
		$CountUsedJSpellShow = "Jump S.     |      " & String($CountJSpell)& "|"
		If $CountJSpell >= 10 Then
			$CountUsedJSpellShow = "Jump S.     |     " & String($CountJSpell)& "|"
			If $CountJSpell >= 100 Then
				$CountUsedJSpellShow = "Jump S.     |    " & String($CountJSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedJSpellShow = ""
	EndIf
	If $CountJSpellSize > 0 Then
		$CountUsedJSpellSizeShow = "      " & String($CountJSpellSize) & "|" & @CRLF
		If $CountJSpellSize >= 10 Then
			$CountUsedJSpellSizeShow = "     " & String($CountJSpellSize) & "|" & @CRLF
			If $CountJSpellSize > 100 Then
				$CountUsedJSpellSizeShow = "    " & String($CountJSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedJSpellSizeShow = ""
	EndIf
	If $CountFSpell > 0 Then
		$CountUsedFSpellShow = "Freeze S.   |      " & String($CountFSpell)& "|"
		If $CountFSpell >= 10 Then
			$CountUsedFSpellShow = "Freeze S.   |     " & String($CountFSpell)& "|"
			If $CountFSpell >= 100 Then
				$CountUsedFSpellShow = "Freeze S.   |    " & String($CountFSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedFSpellShow = ""
	EndIf
	If $CountFSpellSize > 0 Then
		$CountUsedFSpellSizeShow = "      " & String($CountFSpellSize) & "|" & @CRLF
		If $CountFSpellSize >= 10 Then
			$CountUsedFSpellSizeShow = "     " & String($CountFSpellSize) & "|" & @CRLF
			If $CountFSpellSize > 100 Then
				$CountUsedFSpellSizeShow = "    " & String($CountFSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedFSpellSizeShow = ""
	EndIf
	If $CountCSpell > 0 Then
		$CountUsedCSpellShow = "Clone S.    |      " & String($CountCSpell)& "|"
		If $CountCSpell >= 10 Then
			$CountUsedCSpellShow = "Clone S.    |     " & String($CountCSpell)& "|"
			If $CountCSpell >= 100 Then
				$CountUsedCSpellShow = "Clone S.    |    " & String($CountCSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedCSpellShow = ""
	EndIf
	If $CountCSpellSize > 0 Then
		$CountUsedCSpellSizeShow = "      " & String($CountCSpellSize) & "|" & @CRLF
		If $CountCSpellSize >= 10 Then
			$CountUsedCSpellSizeShow = "     " & String($CountCSpellSize) & "|" & @CRLF
			If $CountCSpellSize > 100 Then
				$CountUsedCSpellSizeShow = "    " & String($CountCSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedCSpellSizeShow = ""
	EndIf
	If $CountPSpell > 0 Then
		$CountUsedPSpellShow = "Poison S.   |      " & String($CountPSpell)& "|"
		If $CountPSpell >= 10 Then
			$CountUsedPSpellShow = "Poison S.   |     " & String($CountPSpell)& "|"
			If $CountPSpell >= 100 Then
				$CountUsedPSpellShow = "Poison S.   |    " & String($CountPSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedPSpellShow = ""
	EndIf
	If $CountPSpellSize > 0 Then
		$CountUsedPSpellSizeShow = "      " & String($CountPSpellSize) & "|" & @CRLF
		If $CountPSpellSize >= 10 Then
			$CountUsedPSpellSizeShow = "     " & String($CountPSpellSize) & "|" & @CRLF
			If $CountPSpellSize > 100 Then
				$CountUsedPSpellSizeShow = "    " & String($CountPSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedPSpellSizeShow = ""
	EndIf
	If $CountESpell > 0 Then
		$CountUsedESpellShow = "Earthquake S|      " & String($CountESpell)& "|"
		If $CountESpell >= 10 Then
			$CountUsedESpellShow = "Earthquake S|     " & String($CountESpell)& "|"
			If $CountESpell >= 100 Then
				$CountUsedESpellShow = "Earthquake S|    " & String($CountESpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedESpellShow = ""
	EndIf
	If $CountESpellSize > 0 Then
		$CountUsedESpellSizeShow = "      " & String($CountESpellSize) & "|" & @CRLF
		If $CountESpellSize >= 10 Then
			$CountUsedESpellSizeShow = "     " & String($CountESpellSize) & "|" & @CRLF
			If $CountESpellSize > 100 Then
				$CountUsedESpellSizeShow = "    " & String($CountESpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedESpellSizeShow = ""
	EndIf
	If $CountHaSpell > 0 Then
		$CountUsedHaSpellShow = "Haste S.    |      " & String($CountHaSpell)& "|"
		If $CountHaSpell >= 10 Then
			$CountUsedHaSpellShow = "Haste S.    |     " & String($CountHaSpell)& "|"
			If $CountHaSpell >= 100 Then
				$CountUsedHaSpellShow = "Haste S.    |    " & String($CountHaSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedHaSpellShow = ""
	EndIf
	If $CountHaSpellSize > 0 Then
		$CountUsedHaSpellSizeShow = "      " & String($CountHaSpellSize) & "|" & @CRLF
		If $CountHaSpellSize >= 10 Then
			$CountUsedHaSpellSizeShow = "     " & String($CountHaSpellSize) & "|" & @CRLF
			If $CountHaSpellSize > 100 Then
				$CountUsedHaSpellSizeShow = "    " & String($CountHaSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedHaSpellSizeShow = ""
	EndIf
	If $CountSkSpell > 0 Then
		$CountUsedSkSpellShow = "Skeleton S. |      " & String($CountSkSpell)& "|"
		If $CountSkSpell >= 10 Then
			$CountUsedSkSpellShow = "Skeleton S. |     " & String($CountSkSpell)& "|"
			If $CountSkSpell >= 100 Then
				$CountUsedSkSpellShow = "Skeleton S. |    " & String($CountSkSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedSkSpellShow = ""
	EndIf
	If $CountSkSpellSize > 0 Then
		$CountUsedSkSpellSizeShow = "      " & String($CountSkSpellSize) & "|" & @CRLF
		If $CountSkSpellSize >= 10 Then
			$CountUsedSkSpellSizeShow = "     " & String($CountSkSpellSize) & "|" & @CRLF
			If $CountSkSpellSize > 100 Then
				$CountUsedSkSpellSizeShow = "    " & String($CountSkSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedSkSpellSizeShow = ""
	EndIf
	If $CountBtSpell > 0 Then
		$CountUsedBtSpellShow = "Bat S.      |      " & String($CountBtSpell)& "|"
		If $CountBtSpell >= 10 Then
			$CountUsedBtSpellShow = "Bat S.      |     " & String($CountBtSpell)& "|"
			If $CountBtSpell >= 100 Then
				$CountUsedBtSpellShow = "Bat S.      |    " & String($CountBtSpell)& "|"
			EndIf
		EndIf
	Else
		$CountUsedBtSpellShow = ""
	EndIf
	If $CountBtSpellSize > 0 Then
		$CountUsedBtSpellSizeShow = "      " & String($CountBtSpellSize) & "|" & @CRLF
		If $CountBtSpellSize >= 10 Then
			$CountUsedBtSpellSizeShow = "     " & String($CountBtSpellSize) & "|" & @CRLF
			If $CountBtSpellSize > 100 Then
				$CountUsedBtSpellSizeShow = "    " & String($CountBtSpellSize) & "|" & @CRLF
			EndIf
		EndIf
	Else
		$CountUsedBtSpellSizeShow = ""
	EndIf


$ArmyCountTXT = $CountUsedBarbarianShow & $CountUsedBarbarianSizeShow & _
				$CountUsedArcherShow & $CountUsedArcherSizeShow & _
				$CountUsedGiantShow & $CountUsedGiantSizeShow & _
				$CountUsedGoblinShow & $CountUsedGoblinSizeShow & _
				$CountUsedWallBreakerShow & $CountUsedWallBreakerSizeShow & _
				$CountUsedBaloonShow & $CountUsedBaloonSizeShow & _
				$CountUsedWizardShow & $CountUsedWizardSizeShow & _
				$CountUsedHealerShow & $CountUsedHealerSizeShow & _
				$CountUsedDragonShow & $CountUsedDragonSizeShow & _
				$CountUsedPekkaShow & $CountUsedPekkaSizeShow & _
				$CountUsedBabyDragonShow & $CountUsedBabyDragonSizeShow & _
				$CountUsedMinerShow & $CountUsedMinerSizeShow & _
				$CountUsedElectroDragonShow & $CountUsedElectroDragonSizeShow & _
				$CountUsedYetiShow & $CountUsedYetiSizeShow & _
				$CountUsedMinionShow & $CountUsedMinionSizeShow & _
				$CountUsedHogRiderShow & $CountUsedHogRiderSizeShow & _
				$CountUsedValkyreShow & $CountUsedValkyreSizeShow & _
				$CountUsedGolemShow & $CountUsedGolemSizeShow & _
				$CountUsedWitchShow & $CountUsedWitchSizeShow & _
				$CountUsedLavaHoundShow & $CountUsedLavaHoundSizeShow & _
				$CountUsedBowlerShow & $CountUsedBowlerSizeShow & _
				$CountUsedIceGolemShow & $CountUsedIceGolemSizeShow & _
				$CountUsedLSpellShow & $CountUsedLSpellSizeShow & _
				$CountUsedHSpellShow & $CountUsedHSpellSizeShow & _
				$CountUsedRSpellShow & $CountUsedRSpellSizeShow & _
				$CountUsedJSpellShow & $CountUsedJSpellSizeShow & _
				$CountUsedFSpellShow & $CountUsedFSpellSizeShow & _
				$CountUsedCSpellShow & $CountUsedCSpellSizeShow & _
				$CountUsedPSpellShow & $CountUsedPSpellSizeShow & _
				$CountUsedESpellShow & $CountUsedESpellSizeShow & _
				$CountUsedHaSpellShow & $CountUsedHaSpellSizeShow & _
				$CountUsedSkSpellShow & $CountUsedSkSpellSizeShow & _
				$CountUsedBtSpellShow & $CountUsedBtSpellSizeShow & _
				$CountUsedKingShow & _
				$CountUsedQueenShow & _
				$CountUsedWardenShow & _
				$CountUsedRoyaleChampionShow & _
				$CountUsedWWShow & _
				$CountUsedBBShow & _
				$CountUsedSSShow & _
				$CountUsedSBShow & _
				$CountUsedCCShow & _
				"----------------------------" & @CRLF & _
				$SumOfArmySizeCountShow & _
				$SumOfSpellSizeCountShow










EndFunc   ;==>CountUsedTroopsAfterUndo
