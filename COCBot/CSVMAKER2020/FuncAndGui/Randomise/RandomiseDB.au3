
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
	$BackUpDB =GUICtrlCreateButton("B",$x + 210,$y + 2,16,16)
	GUICtrlSetFont(-1, 7, $FW_BOLD, Default, "Arial", $CLEARTYPE_QUALITY)
	GUICtrlSetColor(-1, 0xFFFFFF)
	GUICtrlSetBkColor(-1, 0xFF0000)
	GUICtrlSetCursor (-1, 0)
	GUICtrlSetOnEvent($BackUpDB, "BackUpDB")
	GUICtrlSetTip($BackUpDB,"This Button backup your original files back.")
	$y = 220
	$infopicforWidenessAB = GUICtrlCreatePic(@ScriptDir &"\COCBot\CSVMAKER2020\USE\i.bmp",$x + 210,$y + 2,16,16)
	GUICtrlSetOnEvent(-1,"infowideness")
	GUICtrlSetCursor (-1, 0)

EndFunc

Func infowideness()
	Local $infoWideness
	$infoWideness = "This feature will only work if you use 'CSV Maker 2020 CSV File'" &@CRLF &	"Because CSV Maker Put a Mark like 'W[1-8] in your DROP Command that you set and" &@CRLF & "If Wideness Otion (Dice) is CHECKED, Bot save original CSV and re-writes CSV with different INDEX number" &@CRLF & "If you want to get your original File, You can Click 'B' as Back-up to get back Original CSV File"
	MsgBox($MB_OK,"INFO FOR WIDENESS",$infoWideness)
EndFunc
Func ifcombonamechange()
EndFunc


Func DoRandomiseControlDB()
	MakeSameCSvBoth_FromDBtoAB()

	If GUICtrlRead($DoRandomiseAB) = $GUI_CHECKED Then
		GUICtrlSetState($DoRandomiseDB,$GUI_CHECKED)
		GUICtrlSetState($DoRandomiseAB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_UNCHECKED)
		$g_bDoRandomiseAB = True
		$g_bDoRandomiseDB = True
		$g_bDontRandomiseAB = False
		$g_bDontRandomiseDB = False

		$IndexOfComboAB = Int(_GUICtrlComboBox_GetCurSel($g_hCmbScriptNameAB))
		_GUICtrlComboBox_GetLBText($g_hCmbScriptNameAB, $IndexOfComboAB, $CSVFileName_inAB_Combo)
		$FileListFromOriginalFolder = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
		If UBound($FileListFromOriginalFolder) = 0 Then
			FileCopy(@ScriptDir & "\CSV\Attack\" & $CSVFileName_inAB_Combo & ".csv", @ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\Original_" & $CSVFileName_inAB_Combo & ".csv", $FC_OVERWRITE + $FC_CREATEPATH)
			UpdateComboScriptNameAB()
			cmbScriptNameAB()
			UpdateComboScriptNameDB()
			cmbScriptNameDB()
			RondamiseCSVAB()
		Else
			For $i = 0 to UBound($FileListFromOriginalFolder)
				$CheckifFiles = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
				If UBound($CheckifFiles) = 0 Then ExitLoop
				$RealName = StringReplace(String($FileListFromOriginalFolder[$i+1]),"Original_","")
				FileCopy(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1],@ScriptDir & "\CSV\Attack\"& $RealName ,$FC_OVERWRITE + $FC_CREATEPATH)
				FileDelete(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1])
				Sleep(250)
			Next
			UpdateComboScriptNameAB()
			cmbScriptNameAB()
			$IndexOfComboAB = Int(_GUICtrlComboBox_GetCurSel($g_hCmbScriptNameAB))
			_GUICtrlComboBox_GetLBText($g_hCmbScriptNameAB, $IndexOfComboAB, $CSVFileName_inAB_Combo)
			FileCopy(@ScriptDir & "\CSV\Attack\" & $CSVFileName_inAB_Combo & ".csv", @ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\Original_" & $CSVFileName_inAB_Combo & ".csv", $FC_OVERWRITE + $FC_CREATEPATH)
			UpdateComboScriptNameAB()
			cmbScriptNameAB()
			UpdateComboScriptNameDB()
			cmbScriptNameDB()
			RondamiseCSVAB()
		EndIf

	ElseIf GUICtrlRead($DoRandomiseDB) = $GUI_CHECKED Then

		GUICtrlSetState($DoRandomiseDB,$GUI_CHECKED)
		GUICtrlSetState($DoRandomiseAB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_UNCHECKED)
		$g_bDoRandomiseAB = True
		$g_bDoRandomiseDB = True
		$g_bDontRandomiseAB = False
		$g_bDontRandomiseDB = False

		$IndexOfComboDB = Int(_GUICtrlComboBox_GetCurSel($g_hCmbScriptNameDB))
		_GUICtrlComboBox_GetLBText($g_hCmbScriptNameDB, $IndexOfComboDB, $CSVFileName_inDB_Combo)
		$FileListFromOriginalFolder = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
		If UBound($FileListFromOriginalFolder) = 0 Then
			FileCopy(@ScriptDir & "\CSV\Attack\" & $CSVFileName_inDB_Combo & ".csv", @ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\Original_" & $CSVFileName_inDB_Combo & ".csv", $FC_OVERWRITE + $FC_CREATEPATH)
			UpdateComboScriptNameAB()
			cmbScriptNameAB()
			UpdateComboScriptNameDB()
			cmbScriptNameDB()
			RondamiseCSVDB()
		Else
			For $i = 0 to UBound($FileListFromOriginalFolder)
				$CheckifFiles = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
				If UBound($CheckifFiles) = 0 Then ExitLoop
				$RealName = StringReplace(String($FileListFromOriginalFolder[$i+1]),"Original_","")
				FileCopy(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1],@ScriptDir & "\CSV\Attack\"& $RealName ,$FC_OVERWRITE + $FC_CREATEPATH)
				FileDelete(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1])
				Sleep(250)
			Next
			UpdateComboScriptNameDB()
			cmbScriptNameDB()
			$IndexOfComboDB = Int(_GUICtrlComboBox_GetCurSel($g_hCmbScriptNameDB))
			_GUICtrlComboBox_GetLBText($g_hCmbScriptNameDB, $IndexOfComboDB, $CSVFileName_inDB_Combo)
			FileCopy(@ScriptDir & "\CSV\Attack\" & $CSVFileName_inDB_Combo & ".csv", @ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\Original_" & $CSVFileName_inDB_Combo & ".csv", $FC_OVERWRITE + $FC_CREATEPATH)
			UpdateComboScriptNameAB()
			cmbScriptNameAB()
			UpdateComboScriptNameDB()
			cmbScriptNameDB()
			RondamiseCSVDB()
		EndIf
	EndIf
ApplyConfig_Randomise("Save")
EndFunc

Func DontRandomiseControlDB()
	if GUICtrlRead($DontRandomiseAB) = $GUI_CHECKED  Then
		GUICtrlSetState($DoRandomiseDB,$GUI_UNCHECKED)
		GUICtrlSetState($DoRandomiseAB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_CHECKED)
		$g_bDoRandomiseAB = False
		$g_bDoRandomiseDB = False
		$g_bDontRandomiseAB = True
		$g_bDontRandomiseDB = True
		$FileListFromOriginalFolder = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
		If Not UBound($FileListFromOriginalFolder) = 0 Then
			For $i = 0 to UBound($FileListFromOriginalFolder)
				$CheckifFiles = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
				If UBound($CheckifFiles) = 0 Then ExitLoop
				$RealName = StringReplace(String($FileListFromOriginalFolder[$i+1]),"Original_","")
				FileCopy(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1],@ScriptDir & "\CSV\Attack\"& $RealName ,$FC_OVERWRITE + $FC_CREATEPATH)
				FileDelete(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1])
				Sleep(250)
			Next
		EndIf
		UpdateComboScriptNameAB()
		cmbScriptNameAB()
		UpdateComboScriptNameDB()
		cmbScriptNameDB()
	ElseIf GUICtrlRead($DontRandomiseDB) = $GUI_CHECKED  Then
		GUICtrlSetState($DoRandomiseDB,$GUI_UNCHECKED)
		GUICtrlSetState($DoRandomiseAB,$GUI_UNCHECKED)
		GUICtrlSetState($DontRandomiseDB,$GUI_CHECKED)
		GUICtrlSetState($DontRandomiseAB,$GUI_CHECKED)
		$g_bDoRandomiseAB = False
		$g_bDoRandomiseDB = False
		$g_bDontRandomiseAB = True
		$g_bDontRandomiseDB = True
		$FileListFromOriginalFolder = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
		If Not UBound($FileListFromOriginalFolder) = 0 Then
			For $i = 0 to UBound($FileListFromOriginalFolder)
				$CheckifFiles = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
				If UBound($CheckifFiles) = 0 Then ExitLoop
				$RealName = StringReplace(String($FileListFromOriginalFolder[$i+1]),"Original_","")
				FileCopy(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1],@ScriptDir & "\CSV\Attack\"& $RealName ,$FC_OVERWRITE + $FC_CREATEPATH)
				FileDelete(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1])
				Sleep(250)
			Next
		EndIf
		UpdateComboScriptNameAB()
		cmbScriptNameAB()
		UpdateComboScriptNameDB()
		cmbScriptNameDB()
	EndIf
ApplyConfig_Randomise("Save")

EndFunc

Func BackUpDB()

	GUICtrlSetState($DoRandomiseDB,$GUI_UNCHECKED)
	GUICtrlSetState($DoRandomiseAB,$GUI_UNCHECKED)
	GUICtrlSetState($DontRandomiseDB,$GUI_CHECKED)
	GUICtrlSetState($DontRandomiseAB,$GUI_CHECKED)
	$g_bDoRandomiseAB = False
	$g_bDoRandomiseDB = False
	$g_bDontRandomiseAB = True
	$g_bDontRandomiseDB = True
	$FileListFromOriginalFolder = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
	If Not UBound($FileListFromOriginalFolder) = 0 Then
		For $i = 0 to UBound($FileListFromOriginalFolder)
			$CheckifFiles = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
			If UBound($CheckifFiles) = 0 Then ExitLoop
			$RealName = StringReplace(String($FileListFromOriginalFolder[$i+1]),"Original_","")
			FileCopy(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1],@ScriptDir & "\CSV\Attack\"& $RealName ,$FC_OVERWRITE + $FC_CREATEPATH)
			FileDelete(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\" & $FileListFromOriginalFolder[$i+1])
			Sleep(250)
		Next
	EndIf
ApplyConfig_Randomise("Save")
EndFunc

Func RondamiseCSVDB()
			;First Randomise Starts...

		$IndexOfComboDB = Int(_GUICtrlComboBox_GetCurSel($g_hCmbScriptNameDB))
		_GUICtrlComboBox_GetLBText($g_hCmbScriptNameDB, $IndexOfComboDB, $CSVFileName_inDB_Combo_For_Randomise)
		$ConvertedFileInAttack = @ScriptDir & "\CSV\Attack\" & $CSVFileName_inDB_Combo_For_Randomise & ".csv"
		FileDelete($ConvertedFileInAttack)
		Sleep(250)
		FileOpen($ConvertedFileInAttack,0)

		Local $BattleCSVLogDB = $g_sProfilePath & "\" & $g_sProfileCurrentName & "\BattleCSVIndexLog_"& $CSVFileName_inDB_Combo_For_Randomise &".log"
		FileOpen($BattleCSVLogDB,0)
		FileWrite($BattleCSVLogDB,"**************************************************************************************************************" & @CRLF)
		FileWrite($BattleCSVLogDB,_NowDate() & " --- " &  _NowTime(5) & @CRLF)
		FileWrite($BattleCSVLogDB,"**************************************************************************************************************" & @CRLF)

		$GetFileListFromDBScriptedCMB = _FileListToArray(@ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\", "*")
		$ReadFile = @ScriptDir & "\CSV\OrginalCSVFileThatWillConvert\"&$GetFileListFromDBScriptedCMB[1]
		$CSVLines = FileReadToArray($ReadFile)

		For $a = 0 To UBound($CSVLines) - 1
			If 	StringInStr($CSVLines[$a],"DROP  |",1) > 0 Then
				$NewDropCommand = $CSVLines[$a]
				For $b=1 to 8
					If 	StringInStr($CSVLines[$a],"W" & String($b),1) > 0 Then
						$SplitCSVLine = StringSplit($CSVLines[$a], "|")
						If String(StringStripWS($SplitCSVLine[9],8)) = "W" & String($b) Then
							If Int(StringStripWS($SplitCSVLine[3],8))-$b <= 0 Then
								$LowIndexLimit = 1
							Else
								$LowIndexLimit = Int(StringStripWS($SplitCSVLine[3],8)) - $b
							EndIf
							If Int(StringStripWS($SplitCSVLine[3],8))+ $b > 10 Then
								$HighIndexLimit = 10
							Else
								$HighIndexLimit = Int(StringStripWS($SplitCSVLine[3],8)) + $b
							EndIf
							$IndexOfDropCommand = Random($LowIndexLimit,$HighIndexLimit,1)
							If $IndexOfDropCommand < 10 Then
								$StringNewIndex = $IndexOfDropCommand & "          "
							Else
								$StringNewIndex = $IndexOfDropCommand & "         "
							EndIf
						EndIf
						$NewDropCommand = "DROP  "
						For $c=0 To UBound($SplitCSVLine)-3
							If $c=1 Then
								$NewDropCommand = $NewDropCommand & "|" & $StringNewIndex
							Else
								$NewDropCommand = $NewDropCommand & "|" & $SplitCSVLine[$c+2]
							EndIf
						Next
					EndIf
				Next
				$AddedCommand = $NewDropCommand  & @CRLF
			Else
				$AddedCommand = $CSVLines[$a] & @CRLF
			EndIf

 	 		FileWrite($ConvertedFileInAttack,$AddedCommand)
			FileWrite($BattleCSVLogDB,$AddedCommand)
		Next

		FileWrite($BattleCSVLogDB,"<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>" & @CRLF & @CRLF)

		FileClose($ConvertedFileInAttack)
		FileClose($BattleCSVLogDB)

		UpdateComboScriptNameDB()
		cmbScriptNameDB()

EndFunc

