
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker MAIN GUI CONTROLS
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

Func OpenCSVMakerGUI()
	GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_CHECKED)
	chkHideWhenMinimized()
	GUICtrlSetState($g_hCSVMakerMainButton, $GUI_DISABLE)
	GUISetState(@SW_SHOW, $GUI_CSV_in_function)
	WinSetState($g_hFrmBot, "", @SW_HIDE)
EndFunc

Func CloseCSVMakerGUI()
	GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_UNCHECKED)
	chkHideWhenMinimized()
	GUICtrlSetState($g_hCSVMakerMainButton, $GUI_ENABLE)
	GUISetState(@SW_HIDE, $GUI_CSV_in_function)
	WinSetState($g_hFrmBot, "", @SW_SHOW)

EndFunc


Func AfterStart()


	;Left Coulumn Control in First Page HIDE/SHOW/DISABLE-----------------------------------
	HideTrainTH13()
	HideTrainTH12()
	HideTrainTH11()
	HideTrainTH10()
	HideTrainTH9()
	HideTrainTH8()
	HideTrainTH7()
	HideTrainTH6()
	GUICtrlSetState($AttackSide,$GUI_HIDE)
	GUICtrlSetState($AttackSide2, $GUI_SHOW)
	GUICtrlSetState($PicSideBarbar,$GUI_HIDE)
;~ -------attack side menu left-----------------------------------------------
	GUICtrlSetState($infernoPoint,$GUI_DISABLE)
	GUICtrlSetState($airpoint,$GUI_DISABLE)
	GUICtrlSetState($eaglepoint,$GUI_DISABLE)
	GUICtrlSetState($THPoint,$GUI_DISABLE)
	GUICtrlSetState($MortarPoint,$GUI_DISABLE)
	GUICtrlSetState($XbowpointPoint,$GUI_DISABLE)
	GUICtrlSetState($WTowerPoint,$GUI_DISABLE)
	GUICtrlSetState($ScatterShotPoint,$GUI_DISABLE)
;~ ------attack side menu right------------------------------------------
	GUICtrlSetPos($PicGoldStorage, 10 + 70, 35 - 12, 23, 25)
	GUICtrlSetPos($GoldStoragePoint, 35 + 70, 36 - 12, 25, 23)
	GUICtrlSetPos($PicElixirStorage, 10 + 70, 65 - 12, 23, 25)
	GUICtrlSetPos($ElixirStoragePoint, 35 + 70, 66 - 12, 25, 23)
	GUICtrlSetPos($PicDarkElixirStorage, 10 + 70, 95 - 12, 23, 25)
	GUICtrlSetPos($DarkElixirStoragePoint, 35 + 70, 96 - 12, 25, 23)
	GUICtrlSetPos($PicMine, 10 + 70, 125 - 12, 23, 25)
	GUICtrlSetPos($MinePoint, 35 + 70, 126 - 12, 25, 23)
	GUICtrlSetPos($PicCollector, 10 + 70, 153 - 12, 23, 25)
	GUICtrlSetPos($CollectorPoint, 35 + 70, 156 - 12, 25, 23)
	GUICtrlSetPos($PicDrill, 10 + 70, 182 - 12, 23, 25)
	GUICtrlSetPos($DrillPoint, 35 + 70, 186 - 12, 25, 23)
	GUICtrlSetPos($ForcedSidePoint,35 + 35, 214 - 9, 75, 29)
	GUICtrlSetState($GoldStoragePoint, $GUI_DISABLE)
	GUICtrlSetState($ElixirStoragePoint, $GUI_DISABLE)
	GUICtrlSetState($DarkElixirStoragePoint, $GUI_DISABLE)
	GUICtrlSetState($MinePoint, $GUI_DISABLE)
	GUICtrlSetState($CollectorPoint, $GUI_DISABLE)
	GUICtrlSetState($DrillPoint,$GUI_DISABLE)
	GUICtrlSetState($ForcedSidePoint,$GUI_DISABLE)
;~ --------end of attack side menu-----------------------------------------
	GUICtrlSetPos($Note, 4, 272, 150, 130)
	GUICtrlSetState($Note,$GUI_DISABLE)
	GUICtrlSetState($Exit,$GUI_HIDE)
	GUICtrlSetState($OpenTrain,$GUI_HIDE)
	GUICtrlSetState($CloseTrain,$GUI_HIDE)
	GUICtrlSetState($GoOnLater, $GUI_SHOW)
	GUICtrlSetState($SaveAndExit, $GUI_SHOW)
	GUICtrlSetState($lblFile, $GUI_DISABLE)
	GUICtrlSetState($FileInput, $GUI_DISABLE)
	GUICtrlSetState($Start, $GUI_DISABLE)


    ;Right Coulumn in second Page
	GUICtrlSetState($LabelHis, $GUI_HIDE)
	GUICtrlSetState($grpfordrop, $GUI_SHOW)
	GUICtrlSetState($CMBTroops_Name, $GUI_SHOW)
	GUICtrlSetState($AddRandomXandY, $GUI_SHOW)
	GUICtrlSetState($txtRandomX, $GUI_SHOW)
	GUICtrlSetState($lblRandomXY1, $GUI_SHOW)
	GUICtrlSetState($txtRandomY, $GUI_SHOW)
	GUICtrlSetState($AddRandomXandY, $GUI_DISABLE)
	GUICtrlSetState($txtRandomX, $GUI_DISABLE)
	GUICtrlSetState($lblRandomXY1, $GUI_DISABLE)
	GUICtrlSetState($txtRandomY, $GUI_DISABLE)
	GUICtrlSetState($CheckBuilding, $GUI_SHOW)
	GUICtrlSetState($CheckBuilding, $GUI_DISABLE)
	GUICtrlSetState($Sleep, $GUI_SHOW)
	GUICtrlSetState($SleepInput1, $GUI_SHOW)
	GUICtrlSetState($lblSleep, $GUI_SHOW)
	GUICtrlSetState($SleepInput1, $GUI_SHOW)
	GUICtrlSetState($SleepInput2, $GUI_SHOW)
	GUICtrlSetState($lblSleep, $GUI_SHOW)
	GUICtrlSetState($lblSleep2, $GUI_SHOW)
	GUICtrlSetState($SleepInput1, $GUI_SHOW)
	GUICtrlSetState($lblSleep, $GUI_SHOW)
	GUICtrlSetState($SleepInput1, $GUI_DISABLE)
	GUICtrlSetState($SleepInput2, $GUI_DISABLE)
	GUICtrlSetState($lblSleep, $GUI_DISABLE)
	GUICtrlSetState($lblSleep2, $GUI_DISABLE)
	GUICtrlSetState($RandomnessSlider, $GUI_SHOW)
	GUICtrlSetState($RandomnessSliderLabel, $GUI_SHOW)
	GUICtrlSetState($RandomnessSliderLabel2, $GUI_SHOW)
	GUICtrlSetState($RandomnessSliderImage0, $GUI_SHOW)
	GUICtrlSetState($ShuffleGroups, $GUI_SHOW)
	GUICtrlSetState($Group1, $GUI_SHOW)
	GUICtrlSetState($Group2, $GUI_SHOW)
	GUICtrlSetState($Group3, $GUI_SHOW)
	GUICtrlSetState($Group4, $GUI_SHOW)
	GUICtrlSetState($Group5, $GUI_SHOW)
	GUICtrlSetState($Group6, $GUI_SHOW)
	GUICtrlSetState($ShuffleGroups, $GUI_DISABLE)
	GUICtrlSetState($Group1, $GUI_DISABLE)
	GUICtrlSetState($Group2, $GUI_DISABLE)
	GUICtrlSetState($Group3, $GUI_DISABLE)
	GUICtrlSetState($Group4, $GUI_DISABLE)
	GUICtrlSetState($Group5, $GUI_DISABLE)
	GUICtrlSetState($Group6, $GUI_DISABLE)
	GUICtrlSetState($grpforwait, $GUI_SHOW)
	GUICtrlSetState($CheckWait, $GUI_SHOW)
	GUICtrlSetState($WaitInput1, $GUI_SHOW)
	GUICtrlSetState($lblWait, $GUI_SHOW)
	GUICtrlSetState($lblWait2, $GUI_SHOW)
	GUICtrlSetState($WaitInput1, $GUI_SHOW)
	GUICtrlSetState($WaitInput2, $GUI_SHOW)
	GUICtrlSetState($CMBWaitBreakCommand, $GUI_SHOW)
	GUICtrlSetState($WaitInput1, $GUI_DISABLE)
	GUICtrlSetState($lblWait, $GUI_DISABLE)
	GUICtrlSetState($lblWait2, $GUI_DISABLE)
	GUICtrlSetState($WaitInput1, $GUI_DISABLE)
	GUICtrlSetState($WaitInput2, $GUI_DISABLE)
	GUICtrlSetState($CMBWaitBreakCommand, $GUI_DISABLE)
	GUICtrlSetState($InfoAfterStart, $GUI_SHOW)
	GUICtrlSetState($AddCSV, $GUI_SHOW)
	GUICtrlSetState($Undo, $GUI_SHOW)
	GUICtrlSetState($TextUsedArmyEnter, $GUI_SHOW)
	GUICtrlSetState($TextUsedArmy, $GUI_SHOW)
	GUICtrlSetState($troops_pic, $GUI_SHOW)

	;Middle Coulumn in First Page
	GUICtrlSetState($info_pic,$GUI_HIDE)
	GUICtrlSetState($TrainBackGround, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH6, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH6Click, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7Click, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8Click, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9Click, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10Click, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11Click, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12Click, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13, $GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13Click, $GUI_HIDE)
	ShowArmyPoint()
	ShowSpellPoint()
	$g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\COCBot\CSVMAKER2020\Cursor\Barbarian.cur')
	GUIRegisterMsg($WM_SETCURSOR, 'WM_SETCURSOR')
	OnAutoItExitRegister('OnAutoItExit')
EndFunc   ;==>AfterStart


Func HideBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc   ;==>HideBuildings

Func ShowBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc   ;==>ShowBuildings

Func EnableBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_ENABLE)
	Next
EndFunc   ;==>EnableBuildings
Func DisableBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_DISABLE)
	Next
EndFunc   ;==>DisableBuildings
Func UncheckBuildings()
	For $i = $RadioWall1 To $RadioMortar
		GUICtrlSetState($i, $GUI_UNCHECKED)
	Next
EndFunc   ;==>UncheckBuildings

Func HideAddTile()
	For $i = $aAddTile1 To $hAddTile0
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc   ;==>HideAddTile

Func ShowAddTile()
	For $i = $aAddTile1 To $hAddTile0
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc   ;==>ShowAddTile

Func HideSpellPoint()
	For $i = $Se1L1 To $Sf1L17
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc   ;==>HideSpellPoint
Func DisableSpellPoint()
	For $i = $Se1L1 To $Sf1L17
		GUICtrlSetState($i, $GUI_DISABLE)
	Next
EndFunc   ;==>DisableSpellPoint

Func ShowSpellPoint()
	For $i = $Se1L1 To $Sf1L17
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc   ;==>ShowSpellPoint

Func HideArmyPoint()
   	For $i = $a10 To $h1
		GUICtrlSetState($i, $GUI_HIDE)
	Next
EndFunc

Func ShowArmyPoint()
   	For $i = $a10 To $h1
		GUICtrlSetState($i, $GUI_SHOW)
	Next
EndFunc

Func Reset()
	Local $x
	Local $y

	UncheckBuildings()
	DisableBuildings()
	HideBuildings()
	HideSpellPoint()
	DisableSpellPoint()
	HideArmyPoint()
	GUICtrlSetState($troops_pic, $GUI_HIDE)
	GUICtrlSetState($troops_pic2, $GUI_HIDE)
	GUICtrlSetState($AttackSide2, $GUI_HIDE)
	GUICtrlSetState($AttackSide, $GUI_SHOW)
	GUICtrlSetState($infernoPoint,$GUI_ENABLE)
	GUICtrlSetState($airpoint,$GUI_ENABLE)
	GUICtrlSetState($eaglepoint,$GUI_ENABLE)
	GUICtrlSetState($THPoint,$GUI_ENABLE)
	GUICtrlSetState($MortarPoint,$GUI_ENABLE)
	GUICtrlSetState($XbowpointPoint,$GUI_ENABLE)
	GUICtrlSetState($WTowerPoint,$GUI_ENABLE)
	GUICtrlSetState($ScatterShotPoint,$GUI_ENABLE)
	GUICtrlSetState($GoldStoragePoint, $GUI_ENABLE)
	GUICtrlSetState($ElixirStoragePoint, $GUI_ENABLE)
	GUICtrlSetState($DarkElixirStoragePoint, $GUI_ENABLE)
	GUICtrlSetState($MinePoint, $GUI_ENABLE)
	GUICtrlSetState($CollectorPoint, $GUI_ENABLE)
	GUICtrlSetState($DrillPoint,$GUI_ENABLE)
	GUICtrlSetState($ForcedSidePoint,$GUI_ENABLE)

	GUICtrlSetPos($PicGoldStorage, 10 + 70 + 130, 35 - 12, 23, 25)
	GUICtrlSetPos($GoldStoragePoint, 35 + 70 + 130, 36 - 12, 25, 23)
	GUICtrlSetPos($PicElixirStorage, 10 + 70 + 130, 65 - 12, 23, 25)
	GUICtrlSetPos($ElixirStoragePoint, 35 + 70 + 130, 66 - 12, 25, 23)
	GUICtrlSetPos($PicDarkElixirStorage, 10 + 70 + 130, 95 - 12, 23, 25)
	GUICtrlSetPos($DarkElixirStoragePoint, 35 + 70 + 130, 96 - 12, 25, 23)
	GUICtrlSetPos($PicMine, 10 + 70 + 130, 125 - 12, 23, 25)
	GUICtrlSetPos($MinePoint,35 + 70 + 130, 126 - 12, 25, 23)
	GUICtrlSetPos($PicCollector, 10 + 70 + 130, 153 - 12, 23, 25)
	GUICtrlSetPos($CollectorPoint, 35 + 70 + 130, 156 - 12, 25, 23)
	GUICtrlSetPos($PicDrill, 10 + 70 + 130, 182 - 12, 23, 25)
	GUICtrlSetPos($DrillPoint, 35 + 70 + 130, 186 - 12, 25, 23)
	GUICtrlSetPos($ForcedSidePoint,35 + 35 + 140, 214 - 9, 75, 29)
	GuiCtrlSetData($infernoPoint,0)
	GuiCtrlSetData($airpoint,0)
	GuiCtrlSetData($eaglepoint,0)
	GuiCtrlSetData($THPoint,0)
	GuiCtrlSetData($MortarPoint,0)
	GuiCtrlSetData($XbowpointPoint,0)
	GuiCtrlSetData($WTowerPoint,0)
	GuiCtrlSetData($ScatterShotPoint,0)
	GuiCtrlSetData($GoldStoragePoint, 0)
	GuiCtrlSetData($ElixirStoragePoint, 0)
	GuiCtrlSetData($DarkElixirStoragePoint, 0)
	GuiCtrlSetData($MinePoint, 0)
	GuiCtrlSetData($CollectorPoint, 0)
	GuiCtrlSetData($DrillPoint,0)
	_GUICtrlComboBox_BeginUpdate($ForcedSidePoint)
	_GUICtrlComboBox_SelectString($ForcedSidePoint, "NONE")
	_GUICtrlComboBox_EndUpdate($ForcedSidePoint)
	GetSidePoint()
	GUICtrlSetState($PicSideBarbar,$GUI_SHOW)
	GUICtrlSetState($Note,$GUI_ENABLE)
	GUICtrlSetData($Note, "")
	GUICtrlSetData($Note, "Author: " & @UserName & " - ver. x.x" & @CRLF & _NowDate() & @CRLF & @CRLF & "Troops: " & @CRLF & "Spells: " & @CRLF & "CC: " & @CRLF & "Info..... ")
	GUICtrlSetState($OpenTrain,$GUI_SHOW)
	GUICtrlSetState($lblFile, $GUI_ENABLE)
	GUICtrlSetState($FileInput, $GUI_ENABLE)
	GUICtrlSetState($Start, $GUI_ENABLE)
	GUICtrlSetData($FileInput, "NoName_")
	GUICtrlSetState($SaveAndExit,$GUI_HIDE)
	GUICtrlSetState($GoOnLater,$GUI_HIDE)

	GUICtrlSetState($Exit,$GUI_SHOW)
	GUICtrlSetState($CMBTroops_Name, $GUI_HIDE)
	_GUICtrlComboBox_BeginUpdate($CMBTroops_Name)
	_GUICtrlComboBox_SelectString($CMBTroops_Name, "Barbarians")
	_GUICtrlComboBox_EndUpdate($CMBTroops_Name)
	CMBTroops_NameCOMBOBOX()
	_GUICtrlComboBox_BeginUpdate($CMBTroops_Name)
	_GUICtrlComboBox_SelectString($CMBTroops_Name, "Barbarians")
	_GUICtrlComboBox_EndUpdate($CMBTroops_Name)
	CMBTroops_NameCOMBOBOX()

	GUICtrlSetState($LabelHis, $GUI_SHOW)
	GUICtrlSetState($grpfordrop, $GUI_HIDE)
	GUICtrlSetData($txtRandomX, 0)
	GUICtrlSetData($txtRandomY, 0)
	GUICtrlSetState($AddRandomXandY, $GUI_UNCHECKED)
	GUICtrlSetState($AddRandomXandY, $GUI_HIDE)
	GUICtrlSetState($txtRandomX, $GUI_HIDE)
	GUICtrlSetState($lblRandomXY1, $GUI_HIDE)
	GUICtrlSetState($txtRandomY, $GUI_HIDE)
	GUICtrlSetState($AddRandomXandY, $GUI_DISABLE)
	GUICtrlSetState($txtRandomX, $GUI_DISABLE)
	GUICtrlSetState($lblRandomXY1, $GUI_DISABLE)
	GUICtrlSetState($txtRandomY, $GUI_DISABLE)
	GUICtrlSetState($CheckBuilding, $GUI_UNCHECKED)
	GUICtrlSetState($CheckBuilding, $GUI_HIDE)
	GUICtrlSetState($CheckBuilding, $GUI_DISABLE)
	GUICtrlSetState($Sleep, $GUI_UNCHECKED)
	GUICtrlSetState($Sleep, $GUI_HIDE)
	GUICtrlSetState($SleepInput1, $GUI_HIDE)
	GUICtrlSetState($lblSleep, $GUI_HIDE)
	GUICtrlSetData($SleepInput1, 0)
	GUICtrlSetData($SleepInput2, 0)
	GUICtrlSetState($SleepInput1, $GUI_HIDE)
	GUICtrlSetState($SleepInput2, $GUI_HIDE)
	GUICtrlSetState($lblSleep, $GUI_HIDE)
	GUICtrlSetState($lblSleep2, $GUI_HIDE)
	GUICtrlSetState($SleepInput1, $GUI_DISABLE)
	GUICtrlSetState($SleepInput2, $GUI_DISABLE)
	GUICtrlSetState($lblSleep, $GUI_DISABLE)
	GUICtrlSetState($lblSleep2, $GUI_DISABLE)
	GUICtrlSetState($RandomnessSlider, $GUI_HIDE)
	GUICtrlSetState($RandomnessSlider, $GUI_ENABLE)
	_GUICtrlComboBox_BeginUpdate($RandomnessSlider)
	_GUICtrlComboBox_SelectString($RandomnessSlider, "exact Point")
	_GUICtrlComboBox_EndUpdate($RandomnessSlider)
	_GUICtrlComboBox_BeginUpdate($RandomnessSlider)
	_GUICtrlComboBox_SelectString($RandomnessSlider, "exact Point")
	_GUICtrlComboBox_EndUpdate($RandomnessSlider)
	ComboRandomnessCombo()
	GUICtrlSetState($RandomnessSliderLabel, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderLabel2, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderLabel, $GUI_ENABLE)
	GUICtrlSetState($RandomnessSliderLabel2, $GUI_ENABLE)
	GUICtrlSetState($RandomnessSliderImage0, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage1, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage2, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage3, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage4, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage5, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage6, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage7, $GUI_HIDE)
	GUICtrlSetState($RandomnessSliderImage8, $GUI_HIDE)
	GUICtrlSetState($ShuffleGroups, $GUI_HIDE)
	GUICtrlSetState($Group1, $GUI_HIDE)
	GUICtrlSetState($Group2, $GUI_HIDE)
	GUICtrlSetState($Group3, $GUI_HIDE)
	GUICtrlSetState($Group4, $GUI_HIDE)
	GUICtrlSetState($Group5, $GUI_HIDE)
	GUICtrlSetState($Group6, $GUI_HIDE)
	GUICtrlSetState($ShuffleGroups, $GUI_DISABLE)
	GUICtrlSetState($Group1, $GUI_DISABLE)
	GUICtrlSetState($Group2, $GUI_DISABLE)
	GUICtrlSetState($Group3, $GUI_DISABLE)
	GUICtrlSetState($Group4, $GUI_DISABLE)
	GUICtrlSetState($Group5, $GUI_DISABLE)
	GUICtrlSetState($Group6, $GUI_DISABLE)
	GUICtrlSetState($grpforwait, $GUI_HIDE)
	GUICtrlSetState($CheckWait, $GUI_UNCHECKED)
	GUICtrlSetState($CheckWait, $GUI_HIDE)
	GUICtrlSetData($WaitInput1, 0)
	GUICtrlSetState($WaitInput1, $GUI_HIDE)
	GUICtrlSetState($lblWait, $GUI_HIDE)
	GUICtrlSetState($lblWait2, $GUI_HIDE)
	GUICtrlSetData($WaitInput2, 0)
	GUICtrlSetState($WaitInput2, $GUI_HIDE)
	GUICtrlSetState($CMBWaitBreakCommand, $GUI_SHOW)
	GUICtrlSetState($WaitInput1, $GUI_DISABLE)
	GUICtrlSetState($lblWait, $GUI_DISABLE)
	GUICtrlSetState($lblWait2, $GUI_DISABLE)
	GUICtrlSetState($WaitInput2, $GUI_DISABLE)


	GUICtrlSetState($InfoAfterStart, $GUI_HIDE)
	GUICtrlSetState($AddCSV, $GUI_HIDE)
	GUICtrlSetState($TextUsedArmyEnter, $GUI_HIDE)
	GUICtrlSetState($TextUsedArmy, $GUI_HIDE)
	GUICtrlSetState($info_pic, $GUI_SHOW)
	$x=790
	$y=140+65
	_GUICtrlComboBox_BeginUpdate($CMBWaitBreakCommand)
	_GUICtrlComboBox_SelectString($CMBWaitBreakCommand, "Don't break the time, keep waiting")
	_GUICtrlComboBox_EndUpdate($CMBWaitBreakCommand)
	_GUICtrlComboBox_BeginUpdate($CMBWaitBreakCommand)
	_GUICtrlComboBox_SelectString($CMBWaitBreakCommand, "Don't break the time, keep waiting")
	_GUICtrlComboBox_EndUpdate($CMBWaitBreakCommand)
	CMBWaitBreakCommandCOMBOBOX()
	GUICtrlSetState($CMBWaitBreakCommand, $GUI_HIDE)
	GUICtrlSetState($CMBWaitBreakCommand, $GUI_DISABLE)
	GUICtrlSetState($AddCSV, $GUI_HIDE)
	GUICtrlSetState($Undo, $GUI_HIDE)
	GUICtrlSetState($InfoAfterStart, $GUI_HIDE)
	GUICtrlSetState($TextUsedArmyEnter, $GUI_HIDE)
	GUICtrlSetState($TextUsedArmy, $GUI_HIDE)
	GUICtrlSetData($TextUsedArmy, "")
	$CountBarbarian = 0
	$CountBarbarianSize = 0
	$CountArcher = 0
	$CountArcherSize = 0
	$CountGiant = 0
	$CountGiantSize = 0
	$CountGoblin = 0
	$CountGoblinSize = 0
	$CountWallBreaker = 0
	$CountWallBreakerSize = 0
	$CountBaloon = 0
	$CountBaloonSize = 0
	$CountWizard = 0
	$CountWizardSize = 0
	$CountHealer = 0
	$CountHealerSize = 0
	$CountDragon = 0
	$CountDragonSize  = 0
	$CountPekka = 0
	$CountPekkaSize = 0
	$CountBabyDragon = 0
	$CountBabyDragonSize = 0
	$CountMiner = 0
	$CountMinerSize = 0
	$CountElectroDragon = 0
	$CountElectroDragonSize = 0
	$CountYeti = 0
	$CountYetiSize = 0
	$CountMinion = 0
	$CountMinionSize = 0
	$CountHogRider = 0
	$CountHogRiderSize = 0
	$CountValkyre = 0
	$CountValkyreSize = 0
	$CountGolem = 0
	$CountGolemSize = 0
	$CountWitch = 0
	$CountWitchSize = 0
	$CountLavaHound = 0
	$CountLavaHoundSize = 0
	$CountBowler = 0
	$CountBowlerSize = 0
	$CountIceGolem = 0
	$CountIceGolemSize = 0
	$CountLSpell = 0
	$CountLSpellSize = 0
	$CountHSpell = 0
	$CountHSpellSize = 0
	$CountRSpell = 0
	$CountRSpellSize = 0
	$CountJSpell = 0
	$CountJSpellSize = 0
	$CountFSpell = 0
	$CountFSpellSize = 0
	$CountCSpell = 0
	$CountCSpellSize = 0
	$CountPSpell = 0
	$CountPSpellSize = 0
	$CountESpell = 0
	$CountESpellSize = 0
	$CountHaSpell = 0
	$CountHaSpellSize = 0
	$CountSkSpell = 0
	$CountSkSpellSize = 0
	$CountBtSpell = 0
	$CountBtSpellSize = 0
	$CountKing = 0
	$CountQueen = 0
	$CountWarden = 0
	$CountRoyaleChampion = 0
	$CountCC = 0
	$CountWW = 0
	$CountSS = 0
	$CountBB = 0
	$CountSB = 0
	$CountUsedBarbarianShow = ""
	$CountUsedBarbarianSizeShow = ""
	$CountUsedArcherShow = ""
	$CountUsedArcherSizeShow = ""
	$CountUsedGiantShow = ""
	$CountUsedGiantSizeShow = ""
	$CountUsedGoblinShow = ""
	$CountUsedGoblinSizeShow = ""
	$CountUsedWallBreakerShow = ""
	$CountUsedWallBreakerSizeShow = ""
	$CountUsedBaloonShow = ""
	$CountUsedBaloonSizeShow = ""
	$CountUsedWizardShow = ""
	$CountUsedWizardSizeShow = ""
	$CountUsedHealerShow = ""
	$CountUsedHealerSizeShow = ""
	$CountUsedDragonShow = ""
	$CountUsedDragonSizeShow = ""
	$CountUsedPekkaShow = ""
	$CountUsedPekkaSizeShow = ""
	$CountUsedBabyDragonShow = ""
	$CountUsedBabyDragonSizeShow = ""
	$CountUsedMinerShow = ""
	$CountUsedMinerSizeShow = ""
	$CountUsedElectroDragonShow = ""
	$CountUsedElectroDragonSizeShow = ""
	$CountUsedYetiShow = ""
	$CountUsedYetiSizeShow = ""
	$CountUsedMinionShow = ""
	$CountUsedMinionSizeShow = ""
	$CountUsedHogRiderShow = ""
	$CountUsedHogRiderSizeShow = ""
	$CountUsedValkyreShow = ""
	$CountUsedValkyreSizeShow = ""
	$CountUsedGolemShow = ""
	$CountUsedGolemSizeShow = ""
	$CountUsedWitchShow = ""
	$CountUsedWitchSizeShow = ""
	$CountUsedLavaHoundShow = ""
	$CountUsedLavaHoundSizeShow = ""
	$CountUsedBowlerShow = ""
	$CountUsedBowlerSizeShow = ""
	$CountUsedIceGolemShow = ""
	$CountUsedIceGolemSizeShow = ""
	$CountUsedLSpellShow = ""
	$CountUsedLSpellSizeShow = ""
	$CountUsedHSpellShow = ""
	$CountUsedHSpellSizeShow = ""
	$CountUsedRSpellShow = ""
	$CountUsedRSpellSizeShow = ""
	$CountUsedJSpellShow = ""
	$CountUsedJSpellSizeShow = ""
	$CountUsedFSpellShow = ""
	$CountUsedFSpellSizeShow = ""
	$CountUsedCSpellShow = ""
	$CountUsedCSpellSizeShow = ""
	$CountUsedPSpellShow = ""
	$CountUsedPSpellSizeShow = ""
	$CountUsedESpellShow = ""
	$CountUsedESpellSizeShow = ""
	$CountUsedHaSpellShow = ""
	$CountUsedHaSpellSizeShow = ""
	$CountUsedSkSpellShow = ""
	$CountUsedSkSpellSizeShow = ""
	$CountUsedBtSpellShow = ""
	$CountUsedBtSpellSizeShow = ""
	$CountUsedKingShow = ""
	$CountUsedQueenShow = ""
	$CountUsedWardenShow = ""
	$CountUsedRoyaleChampionShow = ""
	$CountUsedSSShow = ""
	$CountUsedSBShow = ""
	$CountUsedCCShow = ""
	$CountUsedBBShow = ""
	$CountUsedWWShow = ""
	$CounterTroop_SpellSize = 0
	$CounterTroop_TroopSize = 1
	$ArmyCountTXT = ""
	$SumOfArmySizeCount = 0
	$SumOfArmySizeCountShow = ""
	$SumOfSpellSizeCount = 0
	$SumOfSpellSizeCountShow = ""
	HideSpellPoint()
	DisableSpellPoint()
	FileClose($g_sSaveLocation)
	GUICtrlSetState($troops_pic, $GUI_HIDE)
	GUICtrlSetState($troops_pic2, $GUI_HIDE)
	$LOG = _GUICtrlRichEdit_Create($h_hGUI_MakeCsv, "CSV WRITING IS STARTING" & @CRLF, 156, 513, 620, 100, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $WS_HSCROLL, $ES_UPPERCASE, $ES_AUTOHSCROLL, $ES_AUTOVSCROLL, $ES_NUMBER, 0x200), $WS_EX_STATICEDGE)


	$chooseMake = 1
	$SideType = ""
	$SpellSideType = ""
	$ShouldICreateMakeFORArmy = ""
	$AddTile = ""
	$SideNumber = 0
	$SpellSideNumber = 0
	$DropPoint = ""
	$Wideness = ""
	$Comment = ""
	$Comment2 = ""
	$InputRandomX=0
	$InputRandomY=0
	$SpellOnBuildingName = ""
	$LogBuilding = ""
	$FirstAdding = True
	$TName = "Barb       "
	$TType = "Army"
	$LOGName = "Barbarian"
	$UndoOK = False
	$AddTileChoose = False
	$ErrorADDcsv = 0
	$FirstStartErrors = 1
	$SetWait = "           "
	$WaitCommand = "           "
	$WaitCommandCSV
	$CCRequestCSVWrite = ""
	$TrainCSVWrite = ""
	$ReadNote = ""
EndFunc



Func OnlySaveCSV_DontMoveTheFile()
	FileWrite($g_sSaveLocation,$ReCalc)
	FileWrite($g_sSaveLocation,$DropRemain)
	FileWrite($g_sSaveLocation,$endofCSV1)
	FileWrite($g_sSaveLocation,$endofCSV2)
	FileWrite($g_sSaveLocation,$endofCSV3)
	FileWrite($g_sSaveLocation,$endofCSV4)
	_GUICtrlRichEdit_AppendText($LOG,@CRLF & String(GUICtrlRead($TextUsedArmyEnter)) & @CRLF)
	_GUICtrlRichEdit_AppendText($LOG,$ArmyCountTXT)


    If Not FileExists(@ScriptDir & "\CSVMakerLog") Then DirCreate(@ScriptDir & "\CSVMakerLog")
	$g_lSaveLocation =  @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & ".log"
	For $Filenumber = 1 To $infinity
		if FileExists($g_lSaveLocation) Then
			$g_lSaveLocation = @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & "_" & $Filenumber & ".log"
		EndIf
		if not FileExists($g_lSaveLocation) Then
			ExitLoop
		EndIf
	Next
	FileOpen($g_lSaveLocation,0)
	For $i = 1 to Number(_GUICtrlRichEdit_GetLineCount($LOG))
		FileWrite($g_lSaveLocation, _GUICtrlRichEdit_GetTextInLine($LOG,$i) & @CRLF)
	Next
	FileClose($g_lSaveLocation)
	_GUICtrlRichEdit_Destroy($LOG)


	GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_UNCHECKED)
	chkHideWhenMinimized()
	GUICtrlSetState($g_hCSVMakerMainButton, $GUI_ENABLE)
	GUISetState(@SW_HIDE, $GUI_CSV_in_function)
	WinSetState($g_hFrmBot, "", @SW_SHOW)
	ShellExecute (@ScriptDir & "\CSV\CSVMakerFiles\")
	ShellExecute("Notepad.exe",$g_sSaveLocation)
	Reset()
EndFunc

Func SaveCSVMoveCSVandSaveLog()
	FileWrite($g_sSaveLocation,$ReCalc)
	FileWrite($g_sSaveLocation,$DropRemain)
	FileWrite($g_sSaveLocation,$endofCSV1)
	FileWrite($g_sSaveLocation,$endofCSV2)
	FileWrite($g_sSaveLocation,$endofCSV3)
	FileWrite($g_sSaveLocation,$endofCSV4)
	_GUICtrlRichEdit_AppendText($LOG,@CRLF & String(GUICtrlRead($TextUsedArmyEnter)) & @CRLF)
	_GUICtrlRichEdit_AppendText($LOG,$ArmyCountTXT)


    If Not FileExists(@ScriptDir & "\CSVMakerLog") Then DirCreate(@ScriptDir & "\CSVMakerLog")
	$g_lSaveLocation =  @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & ".log"
	For $Filenumber = 1 To $infinity
		if FileExists($g_lSaveLocation) Then
			$g_lSaveLocation = @ScriptDir & "\CSVMakerLog\" & GUICtrlRead($FileInput) & "_" & $Filenumber & ".log"
		EndIf
		if not FileExists($g_lSaveLocation) Then
			ExitLoop
		EndIf
	Next
	FileOpen($g_lSaveLocation,0)
	For $i = 1 to Number(_GUICtrlRichEdit_GetLineCount($LOG))
		FileWrite($g_lSaveLocation, _GUICtrlRichEdit_GetTextInLine($LOG,$i) & @CRLF)
	Next
	FileClose($g_lSaveLocation)
	_GUICtrlRichEdit_Destroy($LOG)

	FileCopy($g_sSaveLocation, @ScriptDir & "\CSV\Attack\", $FC_OVERWRITE + $FC_CREATEPATH)
	GUICtrlSetState($g_hCSVMakerMainButton, $GUI_ENABLE)
	GUICtrlSetState($g_hChkHideWhenMinimized,$GUI_UNCHECKED)
	chkHideWhenMinimized()
	GUISetState(@SW_HIDE, $GUI_CSV_in_function)
	WinSetState($g_hFrmBot, "", @SW_SHOW)
	cmbScriptNameDB()
	cmbScriptNameAB()



	If StringInStr(String($g_sSaveLocation),"_" & String($Filenumber)) = 0 Then
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	Else
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	EndIf
	cmbScriptNameDB()
	cmbScriptNameAB()
	UpdateComboScriptNameDB()
	UpdateComboScriptNameAB()
	cmbScriptNameDB()
	cmbScriptNameAB()
	If StringInStr(String($g_sSaveLocation),"_" & String($Filenumber)) = 0 Then
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput))
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	Else
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameDB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameDB)
		_GUICtrlComboBox_BeginUpdate($g_hCmbScriptNameAB)
		_GUICtrlComboBox_SelectString($g_hCmbScriptNameAB, GUICtrlRead($FileInput)& "_" & $Filenumber)
		_GUICtrlComboBox_EndUpdate($g_hCmbScriptNameAB)
	EndIf
	cmbScriptNameDB()
	cmbScriptNameAB()
	UpdateComboScriptNameDB()
	UpdateComboScriptNameAB()
	Reset()

EndFunc



