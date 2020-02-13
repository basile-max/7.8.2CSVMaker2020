
Func RandomiseGUI_InDBScriptedAttackFile()
	Local $x = 25, $y = 160
	$DoRandomiseDB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\dice.bmp",$x + 230,$y - 5,23,45)
	GUICtrlSetOnEvent($DoRandomiseDB, "DoRandomiseControlDB")
	GUICtrlSetTip($DoRandomiseDB,"This CheckBox let bot to change indexes that you set in CSVMaker2020")
	$y = 180
	$DontRandomiseDB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlSetState(-1,$GUI_CHECKED)
	GUICtrlSetOnEvent($DontRandomiseDB, "DontRandomiseControlDB")
	GUICtrlSetTip($DontRandomiseDB,"This CheckBox backup your original files and doesnt changes Indexes that you set in CSVMaker2020")
	$y = 200
;~ 	$SeeRandomisedDB =GUICtrlCreateButton("S",$x + 210,$y + 2,16,16)
;~ 	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ 	GUICtrlSetColor(-1, 0xFFFFFF)
;~ 	GUICtrlSetBkColor(-1, 0xFF0000)
;~ 	GUICtrlSetCursor (-1, 0)
;~ 	GUICtrlSetOnEvent($SeeRandomisedDB, "SeeRandomisedDB")
;~ 	GUICtrlSetTip($SeeRandomisedDB,"You can see Randomised CSV File with this button")
;~ 	$y = 220
	$infopicforWidenessAB = GUICtrlCreatePic(@ScriptDir &"\COCBot\CSVMAKER2020\USE\i.bmp",$x + 210,$y + 2,16,16)
	GUICtrlSetOnEvent(-1,"infowideness")
	GUICtrlSetCursor (-1, 0)

EndFunc

Func infowideness()
	Local $infoWideness
	$infoWideness = "This feature will only work if you use 'CSV Maker 2020 CSV File'" &@CRLF &	"Because CSV Maker Put a Mark like 'W[1-8] in your DROP Command that you set and" &@CRLF & "If Wideness Otion (Dice) is CHECKED, Bot re-writes CSV with different INDEX number" &@CRLF & "This will not change your original CSV and Each battle you can see the new indexes"
	MsgBox($MB_OK,"INFO FOR WIDENESS",$infoWideness)
EndFunc
Func ifcombonamechange()
EndFunc


Func DoRandomiseControlDB()

	If GUICtrlRead($DoRandomiseDB) = $GUI_CHECKED Then
		GUICtrlSetState($DoRandomiseDB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_UNCHECKED)
		$g_bDoRandomiseDB = True
		$g_bDontRandomiseDB = False
	EndIf
ApplyConfig_Randomise("Save")
EndFunc

Func DontRandomiseControlDB()
	if GUICtrlRead($DontRandomiseDB) = $GUI_CHECKED  Then
		GUICtrlSetState($DoRandomiseDB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_CHECKED)
		$g_bDoRandomiseDB = False
		$g_bDontRandomiseDB = True
	EndIf
ApplyConfig_Randomise("Save")

EndFunc

Func SeeRandomisedDB()

ApplyConfig_Randomise("Save")
EndFunc

