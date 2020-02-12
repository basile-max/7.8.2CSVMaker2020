Func RandomiseGUI_InABScriptedAttackFile()
	Local $x = 25, $y = 160
	$DoRandomiseAB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\dice.bmp",$x + 230,$y - 5,23,45)
	GUICtrlSetOnEvent($DoRandomiseAB, "DoRandomiseControlAB")
	GUICtrlSetTip($DoRandomiseAB,"This CheckBox let bot to change indexes that you set in CSVMaker2020")
	$y = 180
	$DontRandomiseAB = GUICtrlCreateRadio("",$x + 210,$y + 2,12,12)
	GUICtrlSetState(-1,$GUI_CHECKED)
	GUICtrlSetOnEvent($DontRandomiseAB, "DontRandomiseControlAB")
	GUICtrlSetTip($DontRandomiseAB,"This CheckBox backup your original files and doesnt changes Indexes that you set in CSVMaker2020")
	$y = 200
;~ 	$SeeRandomisedAB =GUICtrlCreateButton("S",$x + 210,$y + 2,16,16)
;~ 	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
;~ 	GUICtrlSetColor(-1, 0xFFFFFF)
;~ 	GUICtrlSetBkColor(-1, 0xFF0000)
;~ 	GUICtrlSetCursor (-1, 0)
;~ 	GUICtrlSetOnEvent($SeeRandomisedAB, "SeeRandomisedAB")
;~ 	GUICtrlSetTip($SeeRandomisedAB,"You can see Randomised CSV File with this button")
;~ 	$y = 220
	$infopicforWidenessAB = GUICtrlCreatePic(@ScriptDir & "\COCBot\CSVMAKER2020\USE\i.bmp",$x + 210,$y + 2,16,16)
	GUICtrlSetOnEvent(-1,"infowideness")
	GUICtrlSetCursor (-1, 0)


EndFunc

Func DoRandomiseControlAB()
	If GUICtrlRead($DoRandomiseAB) = $GUI_CHECKED Then
		GUICtrlSetState($DoRandomiseAB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_UNCHECKED)
		$g_bDoRandomiseAB = True
		$g_bDontRandomiseAB = False
	EndIf

ApplyConfig_Randomise("Save")
EndFunc

Func DontRandomiseControlAB()
	if GUICtrlRead($DontRandomiseAB) = $GUI_CHECKED  Then
		GUICtrlSetState($DoRandomiseAB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_CHECKED)
		$g_bDoRandomiseAB = False
		$g_bDontRandomiseAB = True
	EndIf
ApplyConfig_Randomise("Save")

EndFunc

Func SeeRandomisedAB()

EndFunc
