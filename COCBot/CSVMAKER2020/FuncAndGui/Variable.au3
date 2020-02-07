
; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Variable
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

Global $Program_Name = "CSV Maker " ;PROGRAM NAME!!!!
Global $Program_Version = "v1.7"    ;PROGRAM VERSION!!! (Do not change it.. Because update is controlling with this variable)
Global $g_sSaveLocation  ;Save Location of CSV file
Global $g_lSaveLocation  ;Log Location of CSV file
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~< MAIN GUI VARIABLES <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~

Global $GUI_CSV_in_function ;Main GuiCreate Variable in _GUICreateCSV Function
Global $GUI_TRAIN_in_function ;Train GuiCreate Variable in _GUICreateTRAIN Function
Global $GUI_Update_in_function ;Update GuiCreate Variable in _GUICreateTRAIN Function
Global $TrainGui ;Train Gui in CSV Maker First Page.
Global $h_hGUI_MakeCsv ; MainCSV Gui
Global $g_hCSVMakerMainButton ; MainCSV Gui
Global $g_hCSVMakerMainButton3 ; MainCSV Gui
Global $AttackSide ;Left Top Group variable
Global $PicSideBarbar ;Barbarian Pic in Attack Side Option
Global $info_pic ; Info pic in main page
Global $Start ; Start button in main page
Global $Exit ; Exit Button in main page
Global $lblFile ; Label "File" before File input inbox
Global $FileInput ; Filename input Box
Global $AttackSide2 ;After Start $AttackSide disseppear and AttackSide 2 shown
Global $PicWait ;----------------???????????? not avaliable for now..

;In Attack Side Left Coulmn
Global $PicInferno ;Inferno Pic in side Option at First Main Page
Global $infernoPoint = 0  ; Inferno Side Point  in side Option at First Main Page
Global $PicAir ; Air Defence Pic in side Option at First Main Page
Global $airPoint = 0  ; Air Defence Side Point   in side Option at First Main Page
Global $PicEagle ; Eagle Pic in side Option at First Main Page
Global $eaglePoint = 0  ; Eagle Point   in Side Option  at First Main Page
Global $PicTH ; TownHall Pic in side Option at First Main Page
Global $THPoint = 0  ; Townhall Point   in side option at First Main Page
Global $PicMortar ; Mortar Pic in side Option at First Main Page
Global $MortarPoint = 0  ; Mortar Point  in side option at First Main Page
Global $PicXbow ;Xbow Pic in side option at First Main Page
Global $XbowpointPoint = 0;Xbow Point  in side option at First Main Page
Global $PicWTower ;Wizzard Tower Pic in side option at First Main Page
Global $WTowerPoint = 0 ;Wizzard Tower Point in side option at First Main Page
Global $PicScatter;ScatterShot Pic in side option at First Main Page
Global $ScatterShotPoint = 0 ;ScatterShot Point  in side option at First Main Page

;In Attack Side Right Coulmn
Global $PicGoldStorage ;GoldStorage Pic in side option at First Main Page
Global $GoldStoragePoint = 0 ;GoldStorage Point in side option at First Main Page
Global $PicElixirStorage ;ElixirStorage Pic in side option at First Main Page
Global $ElixirStoragePoint = 0 ;ElixirStorage Point in side option at First Main Page
Global $PicDarkElixirStorage ;DarkElixirStorage Pic in side option at First Main Page
Global $DarkElixirStoragePoint = 0 ;DarkElixirStorage Point in side option at First Main Page
Global $PicMine ;MinePoint Pic in side option at First Main Page
Global $MinePoint = 0 ;MinePoint in side option at First Main Page
Global $PicCollector ;CollectorPoint Pic in side option at First Main Page
Global $CollectorPoint = 0 ;CollectorPoint in side option at First Main Page
Global $PicDrill ;DrillPoint Pic in side option at First Main Page
Global $DrillPoint = 0 ;DrillPoint in side option at First Main Page
Global $ForcedSidePoint = 0 ;ForcedSide Combo in side option at First Main Page

Global $Note ; Program use here to make  "NOTE" functions. It is a Edit Variable in First Page
Global $OpenTrain ; This is button for setting train in "TRAIN" function. It will open new GUI for training menu.
Global $CloseTrain ; This is button for setting train in "TRAIN" function. It will close new GUI for training menu.
Global $LabelHis ="" ; This will show the history of Program versions.. It is just a label.
Global $GetHis = "" ; >>>>> This is Inetread function in "history()". It will change the value of $LabelHis in GUI (First Page)

Global $troops_pic  ; This is map pic in second page (TROOPS)
Global $troops_pic2 ; This is map pic in second page (SPELLS)
Global $CMBTroops_Name ; ComboBox for Troops and Spells List in second page in Drop Option Menu
Global $LOG ; This is RichEdit function for Log
Global $SaveAndExit ; This is Exit button for Gui in Second Page.. Move CSV file to Attack Folder
Global $GoOnLater ; This is Exit button for Gui in Second Page.. Just Open The Folder do not move
Global $grpfordrop ; Group for Drop Option
Global $AddRandomXandY ; CheckBox to add RandomX and RandomY for spells at drop Function
Global $txtRandomX ;InputBox for RandomX
Global $txtRandomY ;InputBox for RandomY
Global $lblRandomXY1 ; Label between RandomX and RandomY Inbox

Global $Sleep ;CheckBox to Input Sleep Command In CSV
Global $SleepInput1 ; InputBox for first variable (Sleep ms)
Global $SleepInput2 ; InputBox for second variable (Sleep ms)
Global $lblSleep ; Label at Sleep Menu in GUI (Second Page)
Global $lblSleep2 ; Label at Sleep Menu in GUI (Second Page)

Global $RandomnessSlider ; This is ComboBox in GUI for changable INDEX in Drop Func.
Global $RandomnessSliderLabel ; Label at Randomness IN GUI (Second Page)
Global $RandomnessSliderLabel2; Label at Randomness IN GUI (Second Page)
Global $RandomnessSliderImage0 ;Pic to understand what is randomness
Global $RandomnessSliderImage1 ;Pic to understand what is randomness
Global $RandomnessSliderImage2 ;Pic to understand what is randomness
Global $RandomnessSliderImage3 ;Pic to understand what is randomness
Global $RandomnessSliderImage4 ;Pic to understand what is randomness
Global $RandomnessSliderImage5 ;Pic to understand what is randomness
Global $RandomnessSliderImage6 ;Pic to understand what is randomness
Global $RandomnessSliderImage7 ;Pic to understand what is randomness
Global $RandomnessSliderImage8 ;Pic to understand what is randomness

;~ ####BETA#### ;will not be avaliable in this version
Global $ShuffleGroups ; This is Chexbox to change Drop Command randomly with order
Global $Group1 ;Shuffle Group 1
Global $Group2 ;Shuffle Group 2
Global $Group3 ;Shuffle Group 3
Global $Group4 ;Shuffle Group 4
Global $Group5 ;Shuffle Group 5
Global $Group6 ;Shuffle Group 6
;~ ############

Global $grpforwait ; This is Group for Drop Option in GUI at second page
Global $CheckWait ; CheckBox to add wait command after pressing ADD CSV
Global $WaitInput1 = 0 ; InputBox 1 for Wait Command (ms)
Global $WaitInput2 = 0 ; InputBox 2 for Wait Command (ms)
Global $CMBWaitBreakCommand ;Combobox for special Breaking wait time command
Global $lblWait ; Labal at wait Option in GUI at second page
Global $lblWait2 ;Labal at wait Option in GUI at second page
Global $AddCSV ; *********THIS IS FOR ADDING DROP AND WAIT COMMAND TO CSV**********
Global $Undo ; This is for deleting Last Command that you add mistakenly.
Global $InfoAfterStart ; Info Button for Youtube "How to..." Video
Global $TextUsedArmy ; Info Label for used army in GUI at second Page
Global $TextUsedArmyEnter ;Heading of Info Label for used army in GUI at second Page

Global $GrpFORbuildings ;Group on map ar righttop and rightbottom corner (HIDED, Just to choose one Radio point)
Global $RadioWall1 ;Option in Gui (second page on Map) for droping spells to building
Global $RadioWall2 ;Option in Gui (second page on Map) for droping spells to building
Global $RadioEagle ;Option in Gui (second page on Map) for droping spells to building
Global $RadioInferno ;Option in Gui (second page on Map) for droping spells to building
Global $RadioXbow ;Option in Gui (second page on Map) for droping spells to building
Global $RadioWizzTower ;Option in Gui (second page on Map) for droping spells to building
Global $RadioAirDefense ;Option in Gui (second page on Map) for droping spells to building
Global $RadioTH ;Option in Gui (second page on Map) for droping spells to building
Global $RadioMortar ;Option in Gui (second page on Map) for droping spells to building
Global $RadioScatterShot ;Option in Gui (second page on Map) for droping spells to building
Global $CheckBuilding ; This is an option CheckBox to drop spells on building

;~ ##################### DROP POINTS AND ADDTILES ON ARMY MAP ########################
Global $a1, $a2 , $a3, $a4, $a5, $a6, $a7, $a8, $a9, $a10, $aAddTile0, $aAddTile1, $aAddTile2
Global $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $b10, $bAddTile0, $bAddTile1, $bAddTile2
Global $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $c10, $cAddTile0, $cAddTile1, $cAddTile2
Global $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $d10, $dAddTile0, $dAddTile1, $dAddTile2
Global $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $e10, $eAddTile0, $eAddTile1, $eAddTile2
Global $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $f10, $fAddTile0, $fAddTile1, $fAddTile2
Global $g1, $g2, $g3, $g4, $g5, $g6, $g7, $g8, $g9, $g10, $gAddTile0, $gAddTile1, $gAddTile2
Global $h1, $h2, $h3, $h4, $h5, $h6, $h7, $h8, $h9, $h10, $hAddTile0, $hAddTile1, $hAddTile2

;~ ##################### DROP POINTS ON SPELL MAP ################################
Global $Se1L1 , $Se2L1, $Se3L1, $Se4L1, $Se5L1, $Se6L1, $Se7L1, $Se8L1, $Se9L1, $Se10L1
Global $Se1L2 , $Se2L2, $Se3L2, $Se4L2, $Se5L2, $Se6L2, $Se7L2, $Se8L2, $Se9L2, $Se10L2
Global $Se1L3 , $Se2L3, $Se3L3, $Se4L3, $Se5L3, $Se6L3, $Se7L3, $Se8L3, $Se9L3, $Se10L3
Global $Se1L4 , $Se2L4, $Se3L4, $Se4L4, $Se5L4, $Se6L4, $Se7L4, $Se8L4, $Se9L4, $Se10L4
Global $Se1L5 , $Se2L5, $Se3L5, $Se4L5, $Se5L5, $Se6L5, $Se7L5, $Se8L5, $Se9L5, $Se10L5
Global $Se1L6 , $Se2L6, $Se3L6, $Se4L6, $Se5L6, $Se6L6, $Se7L6, $Se8L6, $Se9L6, $Se10L6
Global $Se1L7 , $Se2L7, $Se3L7, $Se4L7, $Se5L7, $Se6L7, $Se7L7, $Se8L7, $Se9L7, $Se10L7
Global $Se1L8 , $Se2L8, $Se3L8, $Se4L8, $Se5L8, $Se6L8, $Se7L8, $Se8L8, $Se9L8, $Se10L8
Global $Se1L9 , $Se2L9, $Se3L9, $Se4L9, $Se5L9, $Se6L9, $Se7L9, $Se8L9, $Se9L9, $Se10L9
Global $Se1L10 , $Se2L10, $Se3L10, $Se4L10, $Se5L10, $Se6L10, $Se7L10, $Se8L10, $Se9L10, $Se10L10
Global $Se1L11 , $Se2L11, $Se3L11, $Se4L11, $Se5L11, $Se6L11, $Se7L11, $Se8L11, $Se9L11, $Se11L11
Global $Se1L12 , $Se2L12, $Se3L12, $Se4L12, $Se5L12, $Se6L12, $Se7L12, $Se8L12, $Se9L12, $Se12L12
Global $Se1L13 , $Se2L13, $Se3L13, $Se4L13, $Se5L13, $Se6L13, $Se7L13, $Se8L13, $Se9L13, $Se13L13
Global $Se1L14 , $Se2L14, $Se3L14, $Se4L14, $Se5L14, $Se6L14, $Se7L14, $Se8L14, $Se9L14, $Se14L14
Global $Se1L15 , $Se2L15, $Se3L15, $Se4L15, $Se5L15, $Se6L15, $Se7L15, $Se8L15, $Se9L15, $Se15L15
Global $Se1L16 , $Se2L16, $Se3L16, $Se4L16, $Se5L16, $Se6L16, $Se7L16, $Se8L16, $Se9L16, $Se16L16
Global $Se1L17 , $Se2L17, $Se3L17, $Se4L17, $Se5L17, $Se6L17, $Se7L17, $Se8L17, $Se9L17, $Se17L17
;~ ##################### DROP POINTS ON SPELL MAP ##############################
Global $Sf1L1 , $Sf2L1, $Sf3L1, $Sf4L1, $Sf5L1, $Sf6L1, $Sf7L1, $Sf8L1, $Sf9L1, $Sf10L1
Global $Sf1L2 , $Sf2L2, $Sf3L2, $Sf4L2, $Sf5L2, $Sf6L2, $Sf7L2, $Sf8L2, $Sf9L2, $Sf10L2
Global $Sf1L3 , $Sf2L3, $Sf3L3, $Sf4L3, $Sf5L3, $Sf6L3, $Sf7L3, $Sf8L3, $Sf9L3, $Sf10L3
Global $Sf1L4 , $Sf2L4, $Sf3L4, $Sf4L4, $Sf5L4, $Sf6L4, $Sf7L4, $Sf8L4, $Sf9L4, $Sf10L4
Global $Sf1L5 , $Sf2L5, $Sf3L5, $Sf4L5, $Sf5L5, $Sf6L5, $Sf7L5, $Sf8L5, $Sf9L5, $Sf10L5
Global $Sf1L6 , $Sf2L6, $Sf3L6, $Sf4L6, $Sf5L6, $Sf6L6, $Sf7L6, $Sf8L6, $Sf9L6, $Sf10L6
Global $Sf1L7 , $Sf2L7, $Sf3L7, $Sf4L7, $Sf5L7, $Sf6L7, $Sf7L7, $Sf8L7, $Sf9L7, $Sf10L7
Global $Sf1L8 , $Sf2L8, $Sf3L8, $Sf4L8, $Sf5L8, $Sf6L8, $Sf7L8, $Sf8L8, $Sf9L8, $Sf10L8
Global $Sf1L9 , $Sf2L9, $Sf3L9, $Sf4L9, $Sf5L9, $Sf6L9, $Sf7L9, $Sf8L9, $Sf9L9, $Sf10L9
Global $Sf1L10 , $Sf2L10, $Sf3L10, $Sf4L10, $Sf5L10, $Sf6L10, $Sf7L10, $Sf8L10, $Sf9L10, $Sf10L10
Global $Sf1L11 , $Sf2L11, $Sf3L11, $Sf4L11, $Sf5L11, $Sf6L11, $Sf7L11, $Sf8L11, $Sf9L11, $Sf11L11
Global $Sf1L12 , $Sf2L12, $Sf3L12, $Sf4L12, $Sf5L12, $Sf6L12, $Sf7L12, $Sf8L12, $Sf9L12, $Sf12L12
Global $Sf1L13 , $Sf2L13, $Sf3L13, $Sf4L13, $Sf5L13, $Sf6L13, $Sf7L13, $Sf8L13, $Sf9L13, $Sf13L13
Global $Sf1L14 , $Sf2L14, $Sf3L14, $Sf4L14, $Sf5L14, $Sf6L14, $Sf7L14, $Sf8L14, $Sf9L14, $Sf14L14
Global $Sf1L15 , $Sf2L15, $Sf3L15, $Sf4L15, $Sf5L15, $Sf6L15, $Sf7L15, $Sf8L15, $Sf9L15, $Sf15L15
Global $Sf1L16 , $Sf2L16, $Sf3L16, $Sf4L16, $Sf5L16, $Sf6L16, $Sf7L16, $Sf8L16, $Sf9L16, $Sf16L16
Global $Sf1L17 , $Sf2L17, $Sf3L17, $Sf4L17, $Sf5L17, $Sf6L17, $Sf7L17, $Sf8L17, $Sf9L17, $Sf17L17
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<> COUNTING TROOPS THAT YOU USED <>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ These are for Counting army and showing in gui section under "ADDCSV" Button..
;~ $Count[TROOPNAME] = This counts how many [TROOPNAME] that is/are used
;~ $Count[TROOPNAME]Size = This calculate the size of your [TROOPNAME] in Army
;~ $CountUsed[TROOPNAME]Show = This is showed at GUI with "TROOPNAME    |COUNTED TROOPS |counted troops size"
;~ 	--------------------------if it is greater than zero
;~ $CountUsed[TROOPNAME]SizeShow = This is showed at GUI with "troopname    |counted troops | COUNTED TROOPS SIZE"
;~  ------------------------------if it is greater than zero
Global $CountBarbarian = 0 ;-----------------------------------------------------------------------------------------------
Global $CountBarbarianSize = 0;--------------------------------------------------------------------------------------------
Global $CountArcher = 0;---------------------------------------------------------------------------------------------------
Global $CountArcherSize = 0;-----------------------------------------------------------------------------------------------
Global $CountGiant = 0;----------------------------------------------------------------------------------------------------
Global $CountGiantSize = 0;------------------------------------------------------------------------------------------------
Global $CountGoblin = 0;---------------------------------------------------------------------------------------------------
Global $CountGoblinSize = 0;-----------------------------------------------------------------------------------------------
Global $CountWallBreaker = 0;----------------------------------------------------------------------------------------------
Global $CountWallBreakerSize = 0;------------------------------------------------------------------------------------------
Global $CountBaloon = 0;---------------------------------------------------------------------------------------------------
Global $CountBaloonSize = 0;-----------------------------------------------------------------------------------------------
Global $CountWizard = 0;---------------------------------------------------------------------------------------------------
Global $CountWizardSize = 0;-----------------------------------------------------------------------------------------------
Global $CountHealer = 0;---------------------------------------------------------------------------------------------------
Global $CountHealerSize = 0;-----------------------------------------------------------------------------------------------
Global $CountDragon = 0;---------------------------------------------------------------------------------------------------
Global $CountDragonSize  = 0;----------------------------------------------------------------------------------------------
Global $CountPekka = 0;----------------------------------------------------------------------------------------------------
Global $CountPekkaSize = 0;------------------------------------------------------------------------------------------------
Global $CountBabyDragon = 0;-----------------------------------------------------------------------------------------------
Global $CountBabyDragonSize = 0;-------------------------------------------------------------------------------------------
Global $CountMiner = 0;----------------------------------------------------------------------------------------------------
Global $CountMinerSize = 0;------------------------------------------------------------------------------------------------
Global $CountElectroDragon = 0;--------------------------------------------------------------------------------------------
Global $CountElectroDragonSize = 0;----------------------------------------------------------------------------------------
Global $CountYeti = 0;-----------------------------------------------------------------------------------------------------
Global $CountYetiSize = 0;-------------------------------------------------------------------------------------------------
Global $CountMinion = 0;---------------------------------------------------------------------------------------------------
Global $CountMinionSize = 0;-----------------------------------------------------------------------------------------------
Global $CountHogRider = 0;-------------------------------------------------------------------------------------------------
Global $CountHogRiderSize = 0;---------------------------------------------------------------------------------------------
Global $CountValkyre = 0;--------------------------------------------------------------------------------------------------
Global $CountValkyreSize = 0;----------------------------------------------------------------------------------------------
Global $CountGolem = 0;----------------------------------------------------------------------------------------------------
Global $CountGolemSize = 0;------------------------------------------------------------------------------------------------
Global $CountWitch = 0;----------------------------------------------------------------------------------------------------
Global $CountWitchSize = 0;------------------------------------------------------------------------------------------------
Global $CountLavaHound = 0;------------------------------------------------------------------------------------------------
Global $CountLavaHoundSize = 0;--------------------------------------------------------------------------------------------
Global $CountBowler = 0;---------------------------------------------------------------------------------------------------
Global $CountBowlerSize = 0;-----------------------------------------------------------------------------------------------
Global $CountIceGolem = 0;-------------------------------------------------------------------------------------------------
Global $CountIceGolemSize = 0;---------------------------------------------------------------------------------------------
Global $CountLSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountLSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountHSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountHSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountRSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountRSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountJSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountJSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountFSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountFSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountCSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountCSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountPSpell = 0;---------------------------------------------------------------------------------------------------
Global $CountPSpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountESpell = 0;---------------------------------------------------------------------------------------------------
Global $CountESpellSize = 0;-----------------------------------------------------------------------------------------------
Global $CountHaSpell = 0;--------------------------------------------------------------------------------------------------
Global $CountHaSpellSize = 0;----------------------------------------------------------------------------------------------
Global $CountSkSpell = 0;--------------------------------------------------------------------------------------------------
Global $CountSkSpellSize = 0;----------------------------------------------------------------------------------------------
Global $CountBtSpell = 0;--------------------------------------------------------------------------------------------------
Global $CountBtSpellSize = 0;----------------------------------------------------------------------------------------------
Global $CountUsedBarbarianShow;--------------------------------------------------------------------------------------------
Global $CountUsedBarbarianSizeShow;----------------------------------------------------------------------------------------
Global $CountUsedArcherShow;-----------------------------------------------------------------------------------------------
Global $CountUsedArcherSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedGiantShow;------------------------------------------------------------------------------------------------
Global $CountUsedGiantSizeShow;--------------------------------------------------------------------------------------------
Global $CountUsedGoblinShow;-----------------------------------------------------------------------------------------------
Global $CountUsedGoblinSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedWallBreakerShow;------------------------------------------------------------------------------------------
Global $CountUsedWallBreakerSizeShow;--------------------------------------------------------------------------------------
Global $CountUsedBaloonShow;-----------------------------------------------------------------------------------------------
Global $CountUsedBaloonSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedWizardShow;-----------------------------------------------------------------------------------------------
Global $CountUsedWizardSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedHealerShow;-----------------------------------------------------------------------------------------------
Global $CountUsedHealerSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedDragonShow;-----------------------------------------------------------------------------------------------
Global $CountUsedDragonSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedPekkaShow;------------------------------------------------------------------------------------------------
Global $CountUsedPekkaSizeShow;--------------------------------------------------------------------------------------------
Global $CountUsedBabyDragonShow;-------------------------------------------------------------------------------------------
Global $CountUsedBabyDragonSizeShow;---------------------------------------------------------------------------------------
Global $CountUsedMinerShow;------------------------------------------------------------------------------------------------
Global $CountUsedMinerSizeShow;--------------------------------------------------------------------------------------------
Global $CountUsedElectroDragonShow;----------------------------------------------------------------------------------------
Global $CountUsedElectroDragonSizeShow;------------------------------------------------------------------------------------
Global $CountUsedYetiShow;-------------------------------------------------------------------------------------------------
Global $CountUsedYetiSizeShow;---------------------------------------------------------------------------------------------
Global $CountUsedMinionShow;-----------------------------------------------------------------------------------------------
Global $CountUsedMinionSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedHogRiderShow;---------------------------------------------------------------------------------------------
Global $CountUsedHogRiderSizeShow;-----------------------------------------------------------------------------------------
Global $CountUsedValkyreShow;----------------------------------------------------------------------------------------------
Global $CountUsedValkyreSizeShow;------------------------------------------------------------------------------------------
Global $CountUsedGolemShow;------------------------------------------------------------------------------------------------
Global $CountUsedGolemSizeShow;--------------------------------------------------------------------------------------------
Global $CountUsedWitchShow;------------------------------------------------------------------------------------------------
Global $CountUsedWitchSizeShow;--------------------------------------------------------------------------------------------
Global $CountUsedLavaHoundShow;--------------------------------------------------------------------------------------------
Global $CountUsedLavaHoundSizeShow;----------------------------------------------------------------------------------------
Global $CountUsedBowlerShow;-----------------------------------------------------------------------------------------------
Global $CountUsedBowlerSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedIceGolemShow;---------------------------------------------------------------------------------------------
Global $CountUsedIceGolemSizeShow;-----------------------------------------------------------------------------------------
Global $CountUsedLSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedLSpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedHSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedHSpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedRSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedRSpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedJSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedJSpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedFSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedFSpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedCSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedCSpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedPSpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedPSpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedESpellShow;-----------------------------------------------------------------------------------------------
Global $CountUsedESpellSizeShow;-------------------------------------------------------------------------------------------
Global $CountUsedHaSpellShow;----------------------------------------------------------------------------------------------
Global $CountUsedHaSpellSizeShow;------------------------------------------------------------------------------------------
Global $CountUsedSkSpellShow;----------------------------------------------------------------------------------------------
Global $CountUsedSkSpellSizeShow;------------------------------------------------------------------------------------------
Global $CountUsedBtSpellShow;----------------------------------------------------------------------------------------------
Global $CountUsedBtSpellSizeShow;------------------------------------------------------------------------------------------
Global $CountUsedKingShow;-------------------------------------------------------------------------------------------------
Global $CountUsedQueenShow;------------------------------------------------------------------------------------------------
Global $CountUsedWardenShow;-----------------------------------------------------------------------------------------------
Global $CountUsedRoyaleChampionShow;----------------------------------------------------------------------------------------
Global $CountUsedSSShow;---------------------------------------------------------------------------------------------------
Global $CountUsedSBShow;---------------------------------------------------------------------------------------------------
Global $CountUsedCCShow;---------------------------------------------------------------------------------------------------
Global $CountUsedBBShow;---------------------------------------------------------------------------------------------------
Global $CountUsedWWShow;---------------------------------------------------------------------------------------------------
Global $CountKing = 0;-----------------------------------------------------------------------------------------------------
Global $CountQueen = 0;----------------------------------------------------------------------------------------------------
Global $CountWarden = 0;---------------------------------------------------------------------------------------------------
Global $CountRoyaleChampion = 0;--------------------------------------------------------------------------------------------
Global $CountCC = 0;-------------------------------------------------------------------------------------------------------
Global $CountWW = 0;-------------------------------------------------------------------------------------------------------
Global $CountSS = 0;-------------------------------------------------------------------------------------------------------
Global $CountBB = 0;-------------------------------------------------------------------------------------------------------
Global $CountSB = 0;-------------------------------------------------------------------------------------------------------
;~ ########################################################################################################################
Global $CounterTroop_SpellSize = 0 ;This variable will keep the data of the size of spell wihch you choose
Global $CounterTroop_TroopSize = 1 ;This variable will keep the data of the size of troop wihch you choose. It is 1 because first choosen army is Barbarian
Global $ArmyCountTXT ;This is last face of counted troops that will be showed at GUI
Global $SumOfArmySizeCount = 0 ; Sum of counted army size after pressing ADD CSV button
Global $SumOfArmySizeCountShow ;String of $SumOfArmySizeCount with some words.
Global $SumOfSpellSizeCount = 0 ;Sum of counted spell size after pressing ADD CSV button
Global $SumOfSpellSizeCountShow ; ;String of $SumOfSpellSizeCount with some words.
Global $LOGEnter = "" ; This variable will show what exactly will be send in LOG screen
Global $LOGEnter2 = "" ; This variable will show what exactly will be send in LOG screen about Wait Condition.
Global $Filenumber = 1 ; This will add to your file if it has more than one..  It is increment variable if you have same file again and again...
Global $infinity = 100000000000000000000 ; Just to say infinity for some loop.. Idk why did i use it in loop :)



;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<> Choosing Side Menu Variable<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ They are read with GUICtrlRead() function from gui and kept with new variable.. Mostly used in SideFile.au3
Global $GetInferno = 0 ;---------------------------------------------------------------------------------------------------
Global $GetAirDefance = 0;-------------------------------------------------------------------------------------------------
Global $GetScatterShot = 0;------------------------------------------------------------------------------------------------
Global $GetEagle = 0;------------------------------------------------------------------------------------------------------
Global $GetTH = 0;---------------------------------------------------------------------------------------------------------
Global $GetMortar = 0;-----------------------------------------------------------------------------------------------------
Global $GetXbow = 0;-------------------------------------------------------------------------------------------------------
Global $GetWizzTower = 0;--------------------------------------------------------------------------------------------------
Global $GetGoldStorage=0;--------------------------------------------------------------------------------------------------
Global $GetElixirStorage = 0;----------------------------------------------------------------------------------------------
Global $GetDarkElixirStorage = 0;------------------------------------------------------------------------------------------
Global $GetMine = 0;-------------------------------------------------------------------------------------------------------
Global $GetCollector = 0;--------------------------------------------------------------------------------------------------
Global $GetDrill = 0;------------------------------------------------------------------------------------------------------
Global $GetForcedSide ; if $SideSUM is zero and this is choosen "NONE", program doesnt let you to go on second page;-------
;--------------------------------------------------------------------------------------------------------------------------
Global $SideSUM = 0 ; if sum of all $Get[BUILDING] are zero program doesnt let you to go on second page ;------------------
;--------------------------------------------------------------------------------------------------------------------------
Global $EagleCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .----------------------
Global $InfernoCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .--------------------
Global $XbowCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-----------------------
Global $WizzTowerCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" . -----------------
Global $AirDefanceCSV; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .------------------
Global $MortarCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .---------------------
Global $ScatterShotCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .----------------
;~  -----------------------------------------------------------------------------------------------------------------------
Global $ExtrGoldCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $ExtrElixirCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-----------------
Global $ExtrDarkCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $DepoDarkCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $DepoGoldCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $DepoElixirCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" . ----------------
Global $TownHallCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-------------------
Global $ForcedSideCSV ; $[BUILDING]CSV is String of $Get[BUILDING] with special space and words like "|" .-----------------
Global $GetSideA ;This is all part of SIDE command variables---------------------------------------------------------------
Global $GetSideB ;This is all part of SIDEB command variables--------------------------------------------------------------
Global $BSideEnter = "      |EAGLE      |INFERNO    |XBOW       |WIZTOWER   |MORTAR     |AIRDEFENSE |SCATTER    |AIRSWEEPER |GEMBOX     |"
Global $ASideEnter = "      |EXTR. GOLD |EXTR.ELIXIR|EXTR. DARK |DEPO. GOLD |DEPO.ELIXIR|DEPO. DARK |TOWNHALL   |FORCED SIDE|           |"
;~ ------------------------------------------------------------------------------------------------------------------------
;~ ########################################################################################################################


;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ Add NOTE Menu Variable <>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ These variable is used to converts notes in Gui for CSV  ($NOTE) .. Mostly used in AddNotes.au3
Global $ReadNote ;---------------------------------------------------------------------------------------------------------
Global $SplitTheNote;------------------------------------------------------------------------------------------------------
Dim $CSVNOTE[1];-----------------------------------------------------------------------------------------------------------
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ GetSleepSize() Variable >~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ These variable used in DropFunc.au3 file to get sleep infos
Global $GetSleep1 ;Read from $SleepInput1
Global $GetSleep2 ;Read from $SleepInput2
Global $ADDSleepCSV ; This is slot of Sleep in DROP command. (11 Slot)
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ DROP COMMAND VARIABLE ~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ Some of DROP COMMAND VARIABLE.. Mostly they are in DropFunc.au3 File------------------------------------------------------
Global $SideType ; This is Letter of your side that you choosed after pressing a TROOP drop button
Global $SpellSideType ; This is Letter of your side that you choosed after pressing a SPELL drop button
Global $chooseMake = 1 ;this is a control of making MAKE command.
;~ --------------------if you put troop $choosemake is 1. if you put spell choose make 0 and
;~ --------------------after putting spell if you put troop program writes MAKE commands again (choose make 0)
;~ --------------------For now this is useless. I used it to check some bug. Now program use $ShouldICreateMakeFORArmy variable
Global $ShouldICreateMakeFORArmy  ; This is a control point instead of $chooseMake if program need MAKE command before DROP Command
Global $AddTile ; This is integer of choosen addtile from your GUI. It is sometimes negative because of spell points.
Global $SideNumber = 0 ; After choosing troop drop button, This will generate a suitable number for it.
Global $SpellSideNumber = 0 ; After choosing spell drop button, This will generate a suitable number for it.
Global $DropPoint ; This will string status of all DROP command
Global $Wideness ; Add a command in drop command like 'W1,W2'
Global $Comment = "" ; This is comment after $DropPoint to show what COMMAND is in CSV
Global $Comment2 = ""
Global $MakeSpell ; This is special MAKE command for Spells
Global $Make_SF = "MAKE  |Z          |FRONT-RIGHT|10         |" ;part of $MakeSpell
Global $Make_SE = "MAKE  |Y          |FRONT-LEFT |10         |" ;part of $MakeSpell
Global $InputRandomX=0 ;this variabel is for adding to DROP Command which includes RANDOMX_PX
Global $InputRandomY=0 ;this variabel is for adding to DROP Command which includes RANDOMY_PX
Global $SpellOnBuildingName  ;This is part of DROP Command in String. It changes depend on Building name what you choose.
Global $LogBuilding ; This will show the building name if you want to drop on building at LOG Screen
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ MAKE COMMAND VARIABLE ~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ Some of MAKE COMMAND VARIABLE.. Mostly they are in MakeFile.au3 File------------------------------------------------------
Global $FirstAdding = True ; This is a control of ADDCSV not to add MAKE comand at begining if user use spell at first drop.
;~ --------------------------If user put ADDCSV at beginging it will be always False.
Global $TName = "Barb       " ;This variable is part of DROP Command to add Troop Name that user choosed, it is equal Barb for first start
Global $TType = "Army"        ; This is a control variable to check if user choose army or spell, It is equal for first start
   Global $MakeEnter = "      |VECTOR_____|SIDE_______|DROP_POINTS|ADDTILES___|VERSUS_____|RANDOMX_PX_|RANDOMY_PX_|BUILDING___|___________|" & @CRLF ;HEading of MAKE Command
   Global $DropEnter = "      |VECTOR_____|INDEX______|QTY_X_VECT_|TROOPNAME__|DELAY_DROP_|DELAYCHANGE|SLEEPAFTER_|___________|___________|" & @CRLF ;HEading of DROP Command
Global $Make_A_plus0 = "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_A_plus1 = "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_A_plus2 = "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus0 = "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus1 = "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_B_plus2 = "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus0 = "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus1 = "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_C_plus2 = "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus0 = "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus1 = "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_D_plus2 = "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus0 = "MAKE  |M          |FRONT-LEFT |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus1 = "MAKE  |N          |FRONT-LEFT |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_E_plus2 = "MAKE  |O          |FRONT-LEFT |10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus0 = "MAKE  |P          |FRONT-RIGHT|10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus1 = "MAKE  |Q          |FRONT-RIGHT|10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_F_plus2 = "MAKE  |R          |FRONT-RIGHT|10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus0 = "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus1 = "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_G_plus2 = "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus0 = "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus1 = "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
Global $Make_H_plus2 = "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"
      Global $ReCalc = "RECALC|           |           |           |           |           |           |           |           |           |" & @CRLF
  Global $DropRemain=  "DROP  |P-M        |1-8        |1          |REMAIN     |50-70      |100        |50-100     |           |           |" & @CRLF
  Global $endofCSV1 =  "      |------------------------------------------ This CSV created with ------------------------------------------|" & @CRLF
  Global $endofCSV2 =  "      |------------------------------------- CSV Maker 2020 that is made by --------------------------------------|" & @CRLF
  Global $endofCSV3 =  "      |----------------------------------------------- @ratakantez -----------------------------------------------|" & @CRLF
  Global $endofCSV4 =  "      |------------------------------------------ www.mybot.run/forums -------------------------------------------|" & @CRLF
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ SOME OTHER VARIABLE <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ ----------These are to control some function. you can check the infos.----------------------------------------------------------
Global $LOGName = "Barbarian" ; This variable will show Troop/spell/hero/machine/Castle Name that you choose in LOG
Global $UndoLine ; This is a control command to controll how many line will be delete after pressing UNDO button.
Global $UndoOK = False ; Undo button is only avaliable one time before pressing ADDCSV. This variable controll not to press two timea undo button.
Global $TextToWrite ; Empty for deleting after pressing UNDO button
Global $GuiLastSpellPoint ;Control variable to change color of choosen Last Spell Button
Global $GuiLastArmyPoint ;Control variable to change color of choosen Last Army Button
Global $GuiLastAddTilePoint ;Control variable to change color of choosen Last Addtile Button
Global $g_hCursor = _WinAPI_LoadCursorFromFile(@ScriptDir & '\Cursor\Barbarian.cur'); Cursor variable on map. It will start with Barbarian becuase barbarian is first choosen by program in COMBO of Troops Name.
Global $Reset ; Reset all data in CSV maker. (will be avaliable some after version. or maybe it is..)
Global $AddTileChoose = False ; This is variable to control if addtile will be showed or hided..
Global $PtRadioTotal ;Control Varaible for radio of building.
Global $PtRadiowall1 ;Control Varaible for radio of building.
Global $PtRadiowall2 ;Control Varaible for radio of building.
Global $PtRadioEagle ;Control Varaible for radio of building.
Global $PtRadioInferno ;Control Varaible for radio of building.
Global $PtRadioXbow ;Control Varaible for radio of building.
Global $PtRadioWizzTower ;Control Varaible for radio of building.
Global $PtRadioAirDefense ;Control Varaible for radio of building.
Global $PtRadioTH ;Control Varaible for radio of building.
Global $PtRadioMortar ;Control Varaible for radio of building.
Global $PtRadioScatterShot ;Control Varaible for radio of building.
Global $ErrorADDcsv = 0 ;Error Control Variable
Global $FirstStartErrors = 1 ; Wrong Starting Error Control Variable
;~ ########################################################################################################################

;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~< WAIT COMMAND VARIABLE <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
Global $SetWait = "           " ;String of time that user choose (ms)-----------------------------------------------------
Global $TextToWrite ; Empty for deleting after pressing UNDO button-------------------------------------------------------
Global $WaitCommandCSV ;all of WAIT Command in CSV------------------------------------------------------------------------
Global $WaitCommand = "           " ; Status of breaking time-------------------------------------------------------------
;~ ########################################################################################################################

;Train and CCReq
Global $TrainBackGround ; Backgraound Pic of Train in Gui
Global $TH6, $TrainSelectTH6, $TrainSelectTH6Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $TH7, $TrainSelectTH7, $TrainSelectTH7Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $TH8, $TrainSelectTH8, $TrainSelectTH8Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $TH9, $TrainSelectTH9, $TrainSelectTH9Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $TH10, $TrainSelectTH10, $TrainSelectTH10Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $TH11, $TrainSelectTH11, $TrainSelectTH11Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $TH12, $TrainSelectTH12, $TrainSelectTH12Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $TH13, $TrainSelectTH13, $TrainSelectTH13Click ; Heading Label, Clicking Image and Clickarea for TH Level
Global $SaveTrain ; This variable save the data of user's input and return main GUI
;~ ############### Image of Armies #############
;~ TH[Level]Pic[TroopName] --> image of pictures in TH Level Coulumn
Global $TH6PicBarbarian, $TH7PicBarbarian, $TH8PicBarbarian, $TH9PicBarbarian, $TH10PicBarbarian, $TH11PicBarbarian, $TH12PicBarbarian, $TH13PicBarbarian
Global $TH6PicArcher, $TH7PicArcher, $TH8PicArcher, $TH9PicArcher, $TH10PicArcher, $TH11PicArcher, $TH12PicArcher, $TH13PicArcher
Global $TH6PicGiant, $TH7PicGiant, $TH8PicGiant, $TH9PicGiant, $TH10PicGiant, $TH11PicGiant, $TH12PicGiant, $TH13PicGiant
Global $TH6PicGoblin, $TH7PicGoblin, $TH8PicGoblin, $TH9PicGoblin, $TH10PicGoblin, $TH11PicGoblin, $TH12PicGoblin, $TH13PicGoblin
Global $TH6PicWallB, $TH7PicWallB, $TH8PicWallB, $TH9PicWallB, $TH10PicWallB, $TH11PicWallB, $TH12PicWallB, $TH13PicWallB
Global $TH6PicBall, $TH7PicBall, $TH8PicBall, $TH9PicBall, $TH10PicBall, $TH11PicBall, $TH12PicBall, $TH13PicBall
Global $TH6PicWizzard, $TH7PicWizzard, $TH8PicWizzard, $TH9PicWizzard, $TH10PicWizzard, $TH11PicWizzard, $TH12PicWizzard, $TH13PicWizzard
Global $TH6PicHealer, $TH7PicHealer, $TH8PicHealer, $TH9PicHealer, $TH10PicHealer, $TH11PicHealer, $TH12PicHealer, $TH13PicHealer
Global $TH6PicDragon, $TH7PicDragon, $TH8PicDragon, $TH9PicDragon, $TH10PicDragon, $TH11PicDragon, $TH12PicDragon, $TH13PicDragon
Global $TH6PicPekka, $TH7PicPekka, $TH8PicPekka, $TH9PicPekka, $TH10PicPekka, $TH11PicPekka, $TH12PicPekka, $TH13PicPekka
Global $TH6PicBabyDragon, $TH7PicBabyDragon, $TH8PicBabyDragon, $TH9PicBabyDragon, $TH10PicBabyDragon, $TH11PicBabyDragon, $TH12PicBabyDragon, $TH13PicBabyDragon
Global $TH6PicMiner, $TH7PicMiner, $TH8PicMiner, $TH9PicMiner, $TH10PicMiner, $TH11PicMiner, $TH12PicMiner, $TH13PicMiner
Global $TH6PicElectro, $TH7PicElectro, $TH8PicElectro, $TH9PicElectro, $TH10PicElectro, $TH11PicElectro, $TH12PicElectro, $TH13PicElectro
Global $TH6PicMini, $TH7PicMini, $TH8PicMini, $TH9PicMini, $TH10PicMini, $TH11PicMini, $TH12PicMini, $TH13PicMini
Global $TH6PicHogs, $TH7PicHogs, $TH8PicHogs, $TH9PicHogs, $TH10PicHogs, $TH11PicHogs, $TH12PicHogs, $TH13PicHogs
Global $TH6PicValkyre, $TH7PicValkyre, $TH8PicValkyre, $TH9PicValkyre, $TH10PicValkyre, $TH11PicValkyre, $TH12PicValkyre, $TH13PicValkyre
Global $TH6PicGolem, $TH7PicGolem, $TH8PicGolem, $TH9PicGolem, $TH10PicGolem, $TH11PicGolem, $TH12PicGolem, $TH13PicGolem
Global $TH6PicWitch, $TH7PicWitch, $TH8PicWitch, $TH9PicWitch, $TH10PicWitch, $TH11PicWitch, $TH12PicWitch, $TH13PicWitch
Global $TH6PicLava, $TH7PicLava, $TH8PicLava, $TH9PicLava, $TH10PicLava, $TH11PicLava, $TH12PicLava, $TH13PicLava
Global $TH6PicBowler, $TH7PicBowler, $TH8PicBowler, $TH9PicBowler, $TH10PicBowler, $TH11PicBowler, $TH12PicBowler, $TH13PicBowler
Global $TH6PicIceGolem, $TH7PicIceGolem, $TH8PicIceGolem, $TH9PicIceGolem, $TH10PicIceGolem, $TH11PicIceGolem, $TH12PicIceGolem, $TH13PicIceGolem
Global $TH6PicYeti, $TH7PicYeti, $TH8PicYeti, $TH9PicYeti, $TH10PicYeti, $TH11PicYeti, $TH12PicYeti, $TH13PicYeti
Global $TH6PicLSpell, $TH7PicLSpell, $TH8PicLSpell, $TH9PicLSpell, $TH10PicLSpell, $TH11PicLSpell, $TH12PicLSpell, $TH13PicLSpell
Global $TH6PicHSpell, $TH7PicHSpell, $TH8PicHSpell, $TH9PicHSpell, $TH10PicHSpell, $TH11PicHSpell, $TH12PicHSpell, $TH13PicHSpell
Global $TH6PicRSpell, $TH7PicRSpell, $TH8PicRSpell, $TH9PicRSpell, $TH10PicRSpell, $TH11PicRSpell, $TH12PicRSpell, $TH13PicRSpell
Global $TH6PicJSpell, $TH7PicJSpell, $TH8PicJSpell, $TH9PicJSpell, $TH10PicJSpell, $TH11PicJSpell, $TH12PicJSpell, $TH13PicJSpell
Global $TH6PicFSpell, $TH7PicFSpell, $TH8PicFSpell, $TH9PicFSpell, $TH10PicFSpell, $TH11PicFSpell, $TH12PicFSpell, $TH13PicFSpell
Global $TH6PicCSpell, $TH7PicCSpell, $TH8PicCSpell, $TH9PicCSpell, $TH10PicCSpell, $TH11PicCSpell, $TH12PicCSpell, $TH13PicCSpell
Global $TH6PicPSpell, $TH7PicPSpell, $TH8PicPSpell, $TH9PicPSpell, $TH10PicPSpell, $TH11PicPSpell, $TH12PicPSpell, $TH13PicPSpell
Global $TH6PicESpell, $TH7PicESpell, $TH8PicESpell, $TH9PicESpell, $TH10PicESpell, $TH11PicESpell, $TH12PicESpell, $TH13PicESpell
Global $TH6PicHaSpell, $TH7PicHaSpell, $TH8PicHaSpell, $TH9PicHaSpell, $TH10PicHaSpell, $TH11PicHaSpell, $TH12PicHaSpell, $TH13PicHaSpell
Global $TH6PicSkSpell, $TH7PicSkSpell, $TH8PicSkSpell, $TH9PicSkSpell, $TH10PicSkSpell, $TH11PicSkSpell, $TH12PicSkSpell, $TH13PicSkSpell
Global $TH6PicBaSpell, $TH7PicBaSpell, $TH8PicBaSpell, $TH9PicBaSpell, $TH10PicBaSpell, $TH11PicBaSpell, $TH12PicBaSpell, $TH13PicBaSpell
Global $TH6PicBattleB, $TH7PicBattleB, $TH8PicBattleB, $TH9PicBattleB, $TH10PicBattleB, $TH11PicBattleB, $TH12PicBattleB, $TH13PicBattleB
Global $TH6PicWallw, $TH7PicWallw, $TH8PicWallw, $TH9PicWallw, $TH10PicWallw, $TH11PicWallw, $TH12PicWallw, $TH13PicWallw
Global $TH6PicStoneS, $TH7PicStoneS, $TH8PicStoneS, $TH9PicStoneS, $TH10PicStoneS, $TH11PicStoneS, $TH12PicStoneS, $TH13PicStoneS
Global $TH6PicSiegeB, $TH7PicSiegeB, $TH8PicSiegeB, $TH9PicSiegeB, $TH10PicSiegeB, $TH11PicSiegeB, $TH12PicSiegeB, $TH13PicSiegeB
Global $TH6PicKing, $TH7PicKing, $TH8PicKing, $TH9PicKing, $TH10PicKing, $TH11PicKing, $TH12PicKing, $TH13PicKing
Global $TH6PicQueen, $TH7PicQueen, $TH8PicQueen, $TH9PicQueen, $TH10PicQueen, $TH11PicQueen, $TH12PicQueen, $TH13PicQueen
Global $TH6PicWarden, $TH7PicWarden, $TH8PicWarden, $TH9PicWarden, $TH10PicWarden, $TH11PicWarden, $TH12PicWarden, $TH13PicWarden
Global $TH6PicRoyaleC, $TH7PicRoyaleC, $TH8PicRoyaleC, $TH9PicRoyaleC, $TH10PicRoyaleC, $TH11PicRoyaleC, $TH12PicRoyaleC, $TH13PicRoyaleC
Global $TH6PicSiegeB, $TH7PicSiegeB, $TH8PicSiegeB, $TH9PicSiegeB, $TH10PicSiegeB, $TH11PicSiegeB, $TH12PicSiegeB, $TH13PicSiegeB

Global $TH6Lvl1 ,$TH6Lvl2 ,$TH6Lvl3 ,$TH6Lvl4 ,$TH6Lvl5 ,$TH6Lvl6 ,$TH6Lvl7 ,$TH6Lvl8 ,$TH6Lvl9 ,$TH6Lvl10 ,$TH6Lvl11 ,$TH6Lvl12 ,$TH6Lvl13 ,$TH6Lvl14 ,$TH6Lvl15 ,$TH6Lvl16 ,$TH6Lvl17 , _
	   $TH6Lvl18 ,$TH6Lvl19 ,$TH6Lvl20 ,$TH6Lvl21 ,$TH6Lvl22 ,$TH6Lvl23 ,$TH6Lvl24 ,$TH6Lvl25 ,$TH6Lvl26 ,$TH6Lvl27 ,$TH6Lvl28 ,$TH6Lvl29 ,$TH6Lvl30 ,$TH6Lvl31 ,$TH6Lvl32 ,$TH6Lvl33 ,$TH6Lvl34 , _
	   $TH6Lvl35 ,$TH6Lvl36 ,$TH6Lvl37 ,$TH6Lvl38 ,$TH6Lvl39 ,$TH6Lvl40 ,$TH6Lvl41 ,$TH6Lvl42
Global $TH7Lvl1 ,$TH7Lvl2 ,$TH7Lvl3 ,$TH7Lvl4 ,$TH7Lvl5 ,$TH7Lvl6 ,$TH7Lvl7 ,$TH7Lvl8 ,$TH7Lvl9 ,$TH7Lvl10 ,$TH7Lvl11 ,$TH7Lvl12 ,$TH7Lvl13 ,$TH7Lvl14 ,$TH7Lvl15 ,$TH7Lvl16 ,$TH7Lvl17 , _
	   $TH7Lvl18 ,$TH7Lvl19 ,$TH7Lvl20 ,$TH7Lvl21 ,$TH7Lvl22 ,$TH7Lvl23 ,$TH7Lvl24 ,$TH7Lvl25 ,$TH7Lvl26 ,$TH7Lvl27 ,$TH7Lvl28 ,$TH7Lvl29 ,$TH7Lvl30 ,$TH7Lvl31 ,$TH7Lvl32 ,$TH7Lvl33 ,$TH7Lvl34 , _
	   $TH7Lvl35 ,$TH7Lvl36 ,$TH7Lvl37 ,$TH7Lvl38 ,$TH7Lvl39 ,$TH7Lvl40 ,$TH7Lvl41 ,$TH7Lvl42
Global $TH8Lvl1 ,$TH8Lvl2 ,$TH8Lvl3 ,$TH8Lvl4 ,$TH8Lvl5 ,$TH8Lvl6 ,$TH8Lvl7 ,$TH8Lvl8 ,$TH8Lvl9 ,$TH8Lvl10 ,$TH8Lvl11 ,$TH8Lvl12 ,$TH8Lvl13 ,$TH8Lvl14 ,$TH8Lvl15 ,$TH8Lvl16 ,$TH8Lvl17 , _
	   $TH8Lvl18 ,$TH8Lvl19 ,$TH8Lvl20 ,$TH8Lvl21 ,$TH8Lvl22 ,$TH8Lvl23 ,$TH8Lvl24 ,$TH8Lvl25 ,$TH8Lvl26 ,$TH8Lvl27 ,$TH8Lvl28 ,$TH8Lvl29 ,$TH8Lvl30 ,$TH8Lvl31 ,$TH8Lvl32 ,$TH8Lvl33 ,$TH8Lvl34 , _
	   $TH8Lvl35 ,$TH8Lvl36 ,$TH8Lvl37 ,$TH8Lvl38 ,$TH8Lvl39 ,$TH8Lvl40 ,$TH8Lvl41 ,$TH8Lvl42
Global $TH9Lvl1 ,$TH9Lvl2 ,$TH9Lvl3 ,$TH9Lvl4 ,$TH9Lvl5 ,$TH9Lvl6 ,$TH9Lvl7 ,$TH9Lvl8 ,$TH9Lvl9 ,$TH9Lvl10 ,$TH9Lvl11 ,$TH9Lvl12 ,$TH9Lvl13 ,$TH9Lvl14 ,$TH9Lvl15 ,$TH9Lvl16 ,$TH9Lvl17 , _
	   $TH9Lvl18 ,$TH9Lvl19 ,$TH9Lvl20 ,$TH9Lvl21 ,$TH9Lvl22 ,$TH9Lvl23 ,$TH9Lvl24 ,$TH9Lvl25 ,$TH9Lvl26 ,$TH9Lvl27 ,$TH9Lvl28 ,$TH9Lvl29 ,$TH9Lvl30 ,$TH9Lvl31 ,$TH9Lvl32 ,$TH9Lvl33 ,$TH9Lvl34 , _
	   $TH9Lvl35 ,$TH9Lvl36 ,$TH9Lvl37 ,$TH9Lvl38 ,$TH9Lvl39 ,$TH9Lvl40 ,$TH9Lvl41 ,$TH9Lvl42
Global $TH10Lvl1 ,$TH10Lvl2 ,$TH10Lvl3 ,$TH10Lvl4 ,$TH10Lvl5 ,$TH10Lvl6 ,$TH10Lvl7 ,$TH10Lvl8 ,$TH10Lvl9 ,$TH10Lvl10 ,$TH10Lvl11 ,$TH10Lvl12 ,$TH10Lvl13 ,$TH10Lvl14 ,$TH10Lvl15 ,$TH10Lvl16 ,$TH10Lvl17 , _
	   $TH10Lvl18 ,$TH10Lvl19 ,$TH10Lvl20 ,$TH10Lvl21 ,$TH10Lvl22 ,$TH10Lvl23 ,$TH10Lvl24 ,$TH10Lvl25 ,$TH10Lvl26 ,$TH10Lvl27 ,$TH10Lvl28 ,$TH10Lvl29 ,$TH10Lvl30 ,$TH10Lvl31 ,$TH10Lvl32 ,$TH10Lvl33 ,$TH10Lvl34 , _
	   $TH10Lvl35 ,$TH10Lvl36 ,$TH10Lvl37 ,$TH10Lvl38 ,$TH10Lvl39 ,$TH10Lvl40 ,$TH10Lvl41 ,$TH10Lvl42
Global $TH11Lvl1 ,$TH11Lvl2 ,$TH11Lvl3 ,$TH11Lvl4 ,$TH11Lvl5 ,$TH11Lvl6 ,$TH11Lvl7 ,$TH11Lvl8 ,$TH11Lvl9 ,$TH11Lvl10 ,$TH11Lvl11 ,$TH11Lvl12 ,$TH11Lvl13 ,$TH11Lvl14 ,$TH11Lvl15 ,$TH11Lvl16 ,$TH11Lvl17 , _
	   $TH11Lvl18 ,$TH11Lvl19 ,$TH11Lvl20 ,$TH11Lvl21 ,$TH11Lvl22 ,$TH11Lvl23 ,$TH11Lvl24 ,$TH11Lvl25 ,$TH11Lvl26 ,$TH11Lvl27 ,$TH11Lvl28 ,$TH11Lvl29 ,$TH11Lvl30 ,$TH11Lvl31 ,$TH11Lvl32 ,$TH11Lvl33 ,$TH11Lvl34 , _
	   $TH11Lvl35 ,$TH11Lvl36 ,$TH11Lvl37 ,$TH11Lvl38 ,$TH11Lvl39 ,$TH11Lvl40 ,$TH11Lvl41 ,$TH11Lvl42
Global $TH12Lvl1 ,$TH12Lvl2 ,$TH12Lvl3 ,$TH12Lvl4 ,$TH12Lvl5 ,$TH12Lvl6 ,$TH12Lvl7 ,$TH12Lvl8 ,$TH12Lvl9 ,$TH12Lvl10 ,$TH12Lvl11 ,$TH12Lvl12 ,$TH12Lvl13 ,$TH12Lvl14 ,$TH12Lvl15 ,$TH12Lvl16 ,$TH12Lvl17 , _
	   $TH12Lvl18 ,$TH12Lvl19 ,$TH12Lvl20 ,$TH12Lvl21 ,$TH12Lvl22 ,$TH12Lvl23 ,$TH12Lvl24 ,$TH12Lvl25 ,$TH12Lvl26 ,$TH12Lvl27 ,$TH12Lvl28 ,$TH12Lvl29 ,$TH12Lvl30 ,$TH12Lvl31 ,$TH12Lvl32 ,$TH12Lvl33 ,$TH12Lvl34 , _
	   $TH12Lvl35 ,$TH12Lvl36 ,$TH12Lvl37 ,$TH12Lvl38 ,$TH12Lvl39 ,$TH12Lvl40 ,$TH12Lvl41 ,$TH12Lvl42
Global $TH13Lvl1 ,$TH13Lvl2 ,$TH13Lvl3 ,$TH13Lvl4 ,$TH13Lvl5 ,$TH13Lvl6 ,$TH13Lvl7 ,$TH13Lvl8 ,$TH13Lvl9 ,$TH13Lvl10 ,$TH13Lvl11 ,$TH13Lvl12 ,$TH13Lvl13 ,$TH13Lvl14 ,$TH13Lvl15 ,$TH13Lvl16 ,$TH13Lvl17 , _
	   $TH13Lvl18 ,$TH13Lvl19 ,$TH13Lvl20 ,$TH13Lvl21 ,$TH13Lvl22 ,$TH13Lvl23 ,$TH13Lvl24 ,$TH13Lvl25 ,$TH13Lvl26 ,$TH13Lvl27 ,$TH13Lvl28 ,$TH13Lvl29 ,$TH13Lvl30 ,$TH13Lvl31 ,$TH13Lvl32 ,$TH13Lvl33 ,$TH13Lvl34 , _
	   $TH13Lvl35 ,$TH13Lvl36 ,$TH13Lvl37 ,$TH13Lvl38 ,$TH13Lvl39 ,$TH13Lvl40 ,$TH13Lvl41 ,$TH13Lvl42

Global $TH6LblKing, $TH7LblKing, $TH8LblKing, $TH9LblKing, $TH10LblKing, $TH11LblKing, $TH12LblKing, $TH13LblKing
Global $TH6LblQueen, $TH7LblQueen, $TH8LblQueen, $TH9LblQueen, $TH10LblQueen, $TH11LblQueen, $TH12LblQueen, $TH13LblQueen
Global $TH6LblWarden, $TH7LblWarden, $TH8LblWarden, $TH9LblWarden, $TH10LblWarden, $TH11LblWarden, $TH12LblWarden, $TH13LblWarden
Global $TH6LblRoyaleC, $TH7LblRoyaleC, $TH8LblRoyaleC, $TH9LblRoyaleC, $TH10LblRoyaleC, $TH11LblRoyaleC, $TH12LblRoyaleC, $TH13LblRoyaleC


Global $TH6RequestCCInbox, $TH7RequestCCInbox, $TH8RequestCCInbox ,$TH9RequestCCInbox, $TH10RequestCCInbox, $TH11RequestCCInbox, $TH12RequestCCInbox, $TH13RequestCCInbox
Global $TH6RequestCCLabel, $TH7RequestCCLabel, $TH8RequestCCLabel, $TH9RequestCCLabel, $TH10RequestCCLabel, $TH11RequestCCLabel, $TH12RequestCCLabel, $TH13RequestCCLabel
Global $TH6RequestCSV, $TH7RequestCSV, $TH8RequestCSV, $TH9RequestCSV, $TH10RequestCSV, $TH11RequestCSV, $TH12RequestCSV, $TH13RequestCSV
Global $CCRequestCSVWrite = ""
Global $CCRequestCSVEnter = "      |___________|____TH06___|____TH07___|____TH08___|____TH09___|____TH10___|____TH11___|____TH12___|____TH13___|"
Global $TrainCSVWrite = "" ;This will be written by program if user set train
Global $TrainEnter = "      |_TROOPNAME_|____TH06___|____TH07___|____TH08___|____TH09___|____TH10___|____TH11___|____TH12___|____TH13___|"
Global $TrainShowControl = "TH6"
Global $TH13txtNumKing = 0
Global $TH13txtNumKingSecond = 0
Global $TH13txtNumQueen  = 0
Global $TH13txtNumQueenSecond  = 0
Global $TH13txtNumWarden  = 0
Global $TH13txtNumWardenSecond  = 0
Global $TH13txtNumRoyaleC  = 0
Global $TH13txtNumRoyaleCSecond  = 0
Global $TH12txtNumKing  = 0
Global $TH12txtNumKingSecond = 0
Global $TH12txtNumQueen = 0
Global $TH12txtNumQueenSecond = 0
Global $TH12txtNumWarden = 0
Global $TH12txtNumWardenSecond = 0
Global $TH12txtNumRoyaleC = 0
Global $TH12txtNumRoyaleCSecond = 0
Global $TH11txtNumKing = 0
Global $TH11txtNumKingSecond = 0
Global $TH11txtNumQueen = 0
Global $TH11txtNumQueenSecond = 0
Global $TH11txtNumWarden = 0
Global $TH11txtNumWardenSecond = 0
Global $TH11txtNumRoyaleC = 0
Global $TH11txtNumRoyaleCSecond = 0
Global $TH10txtNumKing = 0
Global $TH10txtNumKingSecond = 0
Global $TH10txtNumQueen = 0
Global $TH10txtNumQueenSecond = 0
Global $TH10txtNumWarden = 0
Global $TH10txtNumWardenSecond = 0
Global $TH10txtNumRoyaleC = 0
Global $TH10txtNumRoyaleCSecond = 0
Global $TH9txtNumKing = 0
Global $TH9txtNumKingSecond = 0
Global $TH9txtNumQueen = 0
Global $TH9txtNumQueenSecond = 0
Global $TH9txtNumWarden = 0
Global $TH9txtNumWardenSecond = 0
Global $TH9txtNumRoyaleC = 0
Global $TH9txtNumRoyaleCSecond = 0
Global $TH8txtNumKing = 0
Global $TH8txtNumKingSecond = 0
Global $TH8txtNumQueen = 0
Global $TH8txtNumQueenSecond = 0
Global $TH8txtNumWarden = 0
Global $TH8txtNumWardenSecond = 0
Global $TH8txtNumRoyaleC = 0
Global $TH8txtNumRoyaleCSecond = 0
Global $TH7txtNumKing = 0
Global $TH7txtNumKingSecond = 0
Global $TH7txtNumQueen = 0
Global $TH7txtNumQueenSecond = 0
Global $TH7txtNumWarden = 0
Global $TH7txtNumWardenSecond = 0
Global $TH7txtNumRoyaleC = 0
Global $TH7txtNumRoyaleCSecond = 0
Global $TH6txtNumKing = 0
Global $TH6txtNumKingSecond = 0
Global $TH6txtNumQueen = 0
Global $TH6txtNumQueenSecond = 0
Global $TH6txtNumWarden = 0
Global $TH6txtNumWardenSecond = 0
Global $TH6txtNumRoyaleC = 0
Global $TH6txtNumRoyaleCSecond = 0

Global $TH6txtNumBarbarian = 0
Global $TH7txtNumBarbarian = 0
Global $TH8txtNumBarbarian = 0
Global $TH9txtNumBarbarian = 0
Global $TH10txtNumBarbarian = 0
Global $TH11txtNumBarbarian = 0
Global $TH12txtNumBarbarian = 0
Global $TH13txtNumBarbarian = 0
Global $TH6txtNumArcher = 0
Global $TH7txtNumArcher = 0
Global $TH8txtNumArcher = 0
Global $TH9txtNumArcher = 0
Global $TH10txtNumArcher = 0
Global $TH11txtNumArcher = 0
Global $TH12txtNumArcher = 0
Global $TH13txtNumArcher = 0
Global $TH6txtNumGiant = 0
Global $TH7txtNumGiant = 0
Global $TH8txtNumGiant = 0
Global $TH9txtNumGiant = 0
Global $TH10txtNumGiant = 0
Global $TH11txtNumGiant = 0
Global $TH12txtNumGiant = 0
Global $TH13txtNumGiant = 0
Global $TH6txtNumGoblin = 0
Global $TH7txtNumGoblin = 0
Global $TH8txtNumGoblin = 0
Global $TH9txtNumGoblin = 0
Global $TH10txtNumGoblin = 0
Global $TH11txtNumGoblin = 0
Global $TH12txtNumGoblin = 0
Global $TH13txtNumGoblin = 0
Global $TH6txtNumWall = 0
Global $TH7txtNumWall = 0
Global $TH8txtNumWall = 0
Global $TH9txtNumWall = 0
Global $TH10txtNumWall = 0
Global $TH11txtNumWall = 0
Global $TH12txtNumWall = 0
Global $TH13txtNumWall = 0
Global $TH6txtNumBall = 0
Global $TH7txtNumBall = 0
Global $TH8txtNumBall = 0
Global $TH9txtNumBall = 0
Global $TH10txtNumBall = 0
Global $TH11txtNumBall = 0
Global $TH12txtNumBall = 0
Global $TH13txtNumBall = 0
Global $TH6txtNumWiza = 0
Global $TH7txtNumWiza = 0
Global $TH8txtNumWiza = 0
Global $TH9txtNumWiza = 0
Global $TH10txtNumWiza = 0
Global $TH11txtNumWiza = 0
Global $TH12txtNumWiza = 0
Global $TH13txtNumWiza = 0
Global $TH6txtNumHeal = 0
Global $TH7txtNumHeal = 0
Global $TH8txtNumHeal = 0
Global $TH9txtNumHeal = 0
Global $TH10txtNumHeal = 0
Global $TH11txtNumHeal = 0
Global $TH12txtNumHeal = 0
Global $TH13txtNumHeal = 0
Global $TH6txtNumDrag = 0
Global $TH7txtNumDrag = 0
Global $TH8txtNumDrag = 0
Global $TH9txtNumDrag = 0
Global $TH10txtNumDrag = 0
Global $TH11txtNumDrag = 0
Global $TH12txtNumDrag = 0
Global $TH13txtNumDrag = 0
Global $TH6txtNumPekk = 0
Global $TH7txtNumPekk = 0
Global $TH8txtNumPekk = 0
Global $TH9txtNumPekk = 0
Global $TH10txtNumPekk = 0
Global $TH11txtNumPekk = 0
Global $TH12txtNumPekk = 0
Global $TH13txtNumPekk = 0
Global $TH6txtNumBabyDragon = 0
Global $TH7txtNumBabyDragon = 0
Global $TH8txtNumBabyDragon = 0
Global $TH9txtNumBabyDragon = 0
Global $TH10txtNumBabyDragon = 0
Global $TH11txtNumBabyDragon = 0
Global $TH12txtNumBabyDragon = 0
Global $TH13txtNumBabyDragon = 0
Global $TH6txtNumMiner = 0
Global $TH7txtNumMiner = 0
Global $TH8txtNumMiner = 0
Global $TH9txtNumMiner = 0
Global $TH10txtNumMiner = 0
Global $TH11txtNumMiner = 0
Global $TH12txtNumMiner = 0
Global $TH13txtNumMiner = 0
Global $TH6txtNumEdrag = 0
Global $TH7txtNumEdrag = 0
Global $TH8txtNumEdrag = 0
Global $TH9txtNumEdrag = 0
Global $TH10txtNumEdrag = 0
Global $TH11txtNumEdrag = 0
Global $TH12txtNumEdrag = 0
Global $TH13txtNumEdrag = 0
Global $TH6txtNumYeti = 0
Global $TH7txtNumYeti = 0
Global $TH8txtNumYeti = 0
Global $TH9txtNumYeti = 0
Global $TH10txtNumYeti = 0
Global $TH11txtNumYeti = 0
Global $TH12txtNumYeti = 0
Global $TH13txtNumYeti = 0
Global $TH6txtNumMini = 0
Global $TH7txtNumMini = 0
Global $TH8txtNumMini = 0
Global $TH9txtNumMini = 0
Global $TH10txtNumMini = 0
Global $TH11txtNumMini = 0
Global $TH12txtNumMini = 0
Global $TH13txtNumMini = 0
Global $TH6txtNumHogs = 0
Global $TH7txtNumHogs = 0
Global $TH8txtNumHogs = 0
Global $TH9txtNumHogs = 0
Global $TH10txtNumHogs = 0
Global $TH11txtNumHogs = 0
Global $TH12txtNumHogs = 0
Global $TH13txtNumHogs = 0
Global $TH6txtNumValkyre = 0
Global $TH7txtNumValkyre = 0
Global $TH8txtNumValkyre = 0
Global $TH9txtNumValkyre = 0
Global $TH10txtNumValkyre = 0
Global $TH11txtNumValkyre = 0
Global $TH12txtNumValkyre = 0
Global $TH13txtNumValkyre = 0
Global $TH6txtNumGolem = 0
Global $TH7txtNumGolem = 0
Global $TH8txtNumGolem = 0
Global $TH9txtNumGolem = 0
Global $TH10txtNumGolem = 0
Global $TH11txtNumGolem = 0
Global $TH12txtNumGolem = 0
Global $TH13txtNumGolem = 0
Global $TH6txtNumWitch = 0
Global $TH7txtNumWitch = 0
Global $TH8txtNumWitch = 0
Global $TH9txtNumWitch = 0
Global $TH10txtNumWitch = 0
Global $TH11txtNumWitch = 0
Global $TH12txtNumWitch = 0
Global $TH13txtNumWitch = 0
Global $TH6txtNumLava = 0
Global $TH7txtNumLava = 0
Global $TH8txtNumLava = 0
Global $TH9txtNumLava = 0
Global $TH10txtNumLava = 0
Global $TH11txtNumLava = 0
Global $TH12txtNumLava = 0
Global $TH13txtNumLava = 0
Global $TH6txtNumBowler = 0
Global $TH7txtNumBowler = 0
Global $TH8txtNumBowler = 0
Global $TH9txtNumBowler = 0
Global $TH10txtNumBowler = 0
Global $TH11txtNumBowler = 0
Global $TH12txtNumBowler = 0
Global $TH13txtNumBowler = 0
Global $TH6txtNumIceGolem = 0
Global $TH7txtNumIceGolem = 0
Global $TH8txtNumIceGolem = 0
Global $TH9txtNumIceGolem = 0
Global $TH10txtNumIceGolem = 0
Global $TH11txtNumIceGolem = 0
Global $TH12txtNumIceGolem = 0
Global $TH13txtNumIceGolem = 0
Global $TH6txtNumLSpell = 0 = 0
Global $TH7txtNumLSpell = 0
Global $TH8txtNumLSpell = 0
Global $TH9txtNumLSpell = 0
Global $TH10txtNumLSpell = 0
Global $TH11txtNumLSpell = 0
Global $TH12txtNumLSpell = 0
Global $TH13txtNumLSpell = 0
Global $TH6txtNumHSpell = 0
Global $TH7txtNumHSpell = 0
Global $TH8txtNumHSpell = 0
Global $TH9txtNumHSpell = 0
Global $TH10txtNumHSpell = 0
Global $TH11txtNumHSpell = 0
Global $TH12txtNumHSpell = 0
Global $TH13txtNumHSpell = 0
Global $TH6txtNumRSpell = 0
Global $TH7txtNumRSpell = 0
Global $TH8txtNumRSpell = 0
Global $TH9txtNumRSpell = 0
Global $TH10txtNumRSpell = 0
Global $TH11txtNumRSpell = 0
Global $TH12txtNumRSpell = 0
Global $TH13txtNumRSpell = 0
Global $TH6txtNumJSpell = 0
Global $TH7txtNumJSpell = 0
Global $TH8txtNumJSpell = 0
Global $TH9txtNumJSpell = 0
Global $TH10txtNumJSpell = 0
Global $TH11txtNumJSpell = 0
Global $TH12txtNumJSpell = 0
Global $TH13txtNumJSpell = 0
Global $TH6txtNumFSpell = 0
Global $TH7txtNumFSpell = 0
Global $TH8txtNumFSpell = 0
Global $TH9txtNumFSpell = 0
Global $TH10txtNumFSpell = 0
Global $TH11txtNumFSpell = 0
Global $TH12txtNumFSpell = 0
Global $TH13txtNumFSpell = 0
Global $TH6txtNumCSpell = 0
Global $TH7txtNumCSpell = 0
Global $TH8txtNumCSpell = 0
Global $TH9txtNumCSpell = 0
Global $TH10txtNumCSpell = 0
Global $TH11txtNumCSpell = 0
Global $TH12txtNumCSpell = 0
Global $TH13txtNumCSpell = 0
Global $TH6txtNumPSpell = 0
Global $TH7txtNumPSpell = 0
Global $TH8txtNumPSpell = 0
Global $TH9txtNumPSpell = 0
Global $TH10txtNumPSpell = 0
Global $TH11txtNumPSpell = 0
Global $TH12txtNumPSpell = 0
Global $TH13txtNumPSpell = 0
Global $TH6txtNumESpell = 0
Global $TH7txtNumESpell = 0
Global $TH8txtNumESpell = 0
Global $TH9txtNumESpell = 0
Global $TH10txtNumESpell = 0
Global $TH11txtNumESpell = 0
Global $TH12txtNumESpell = 0
Global $TH13txtNumESpell = 0
Global $TH6txtNumHaSpell = 0
Global $TH7txtNumHaSpell = 0
Global $TH8txtNumHaSpell = 0
Global $TH9txtNumHaSpell = 0
Global $TH10txtNumHaSpell = 0
Global $TH11txtNumHaSpell = 0
Global $TH12txtNumHaSpell = 0
Global $TH13txtNumHaSpell = 0
Global $TH6txtNumSkSpell = 0
Global $TH7txtNumSkSpell = 0
Global $TH8txtNumSkSpell = 0
Global $TH9txtNumSkSpell = 0
Global $TH10txtNumSkSpell = 0
Global $TH11txtNumSkSpell = 0
Global $TH12txtNumSkSpell = 0
Global $TH13txtNumSkSpell = 0
Global $TH6txtNumBaSpell = 0
Global $TH7txtNumBaSpell = 0
Global $TH8txtNumBaSpell = 0
Global $TH9txtNumBaSpell = 0
Global $TH10txtNumBaSpell = 0
Global $TH11txtNumBaSpell = 0
Global $TH12txtNumBaSpell = 0
Global $TH13txtNumBaSpell = 0
Global $TH6txtNumBattleB = 0
Global $TH7txtNumBattleB = 0
Global $TH8txtNumBattleB = 0
Global $TH9txtNumBattleB = 0
Global $TH10txtNumBattleB = 0
Global $TH11txtNumBattleB = 0
Global $TH12txtNumBattleB = 0
Global $TH13txtNumBattleB = 0
Global $TH6txtNumWallw = 0
Global $TH7txtNumWallw = 0
Global $TH8txtNumWallw = 0
Global $TH9txtNumWallw = 0
Global $TH10txtNumWallw = 0
Global $TH11txtNumWallw = 0
Global $TH12txtNumWallw = 0
Global $TH13txtNumWallw = 0
Global $TH6txtNumStoneS = 0
Global $TH7txtNumStoneS = 0
Global $TH8txtNumStoneS = 0
Global $TH9txtNumStoneS = 0
Global $TH10txtNumStoneS = 0
Global $TH11txtNumStoneS = 0
Global $TH12txtNumStoneS = 0
Global $TH13txtNumStoneS = 0
Global $TH6txtNumSiegeB = 0
Global $TH7txtNumSiegeB = 0
Global $TH8txtNumSiegeB = 0
Global $TH9txtNumSiegeB = 0
Global $TH10txtNumSiegeB = 0
Global $TH11txtNumSiegeB = 0
Global $TH12txtNumSiegeB = 0
Global $TH13txtNumSiegeB = 0

Global $6King = ""
Global $7King = ""
Global $8King = ""
Global $9King = ""
Global $10King = ""
Global $11King = ""
Global $12King = ""
Global $13King = ""

Global $6Queen = ""
Global $7Queen = ""
Global $8Queen = ""
Global $9Queen = ""
Global $10Queen = ""
Global $11Queen = ""
Global $12Queen = ""
Global $13Queen = ""

Global $6Warden = ""
Global $7Warden = ""
Global $8Warden = ""
Global $9Warden = ""
Global $10Warden = ""
Global $11Warden = ""
Global $12Warden = ""
Global $13Warden = ""

Global $6RoyaleC = ""
Global $7RoyaleC = ""
Global $8RoyaleC = ""
Global $9RoyaleC = ""
Global $10RoyaleC = ""
Global $11RoyaleC = ""
Global $12RoyaleC = ""
Global $13RoyaleC = ""


Global $6Barbarian = ""
Global $7Barbarian = ""
Global $8Barbarian = ""
Global $9Barbarian = ""
Global $10Barbarian = ""
Global $11Barbarian = ""
Global $12Barbarian = ""
Global $13Barbarian = ""
Global $6Archer = ""
Global $7Archer = ""
Global $8Archer = ""
Global $9Archer = ""
Global $10Archer = ""
Global $11Archer = ""
Global $12Archer = ""
Global $13Archer = ""
Global $6Giant = ""
Global $7Giant = ""
Global $8Giant = ""
Global $9Giant = ""
Global $10Giant = ""
Global $11Giant = ""
Global $12Giant = ""
Global $13Giant = ""
Global $6Goblin = ""
Global $7Goblin = ""
Global $8Goblin = ""
Global $9Goblin = ""
Global $10Goblin = ""
Global $11Goblin = ""
Global $12Goblin = ""
Global $13Goblin = ""
Global $6Wall = ""
Global $7Wall = ""
Global $8Wall = ""
Global $9Wall = ""
Global $10Wall = ""
Global $11Wall = ""
Global $12Wall = ""
Global $13Wall = ""
Global $6Ball = ""
Global $7Ball = ""
Global $8Ball = ""
Global $9Ball = ""
Global $10Ball = ""
Global $11Ball = ""
Global $12Ball = ""
Global $13Ball = ""
Global $6Wiza = ""
Global $7Wiza = ""
Global $8Wiza = ""
Global $9Wiza = ""
Global $10Wiza = ""
Global $11Wiza = ""
Global $12Wiza = ""
Global $13Wiza = ""
Global $6Heal = ""
Global $7Heal = ""
Global $8Heal = ""
Global $9Heal = ""
Global $10Heal = ""
Global $11Heal = ""
Global $12Heal = ""
Global $13Heal = ""
Global $6Drag = ""
Global $7Drag = ""
Global $8Drag = ""
Global $9Drag = ""
Global $10Drag = ""
Global $11Drag = ""
Global $12Drag = ""
Global $13Drag = ""
Global $6Pekk = ""
Global $7Pekk = ""
Global $8Pekk = ""
Global $9Pekk = ""
Global $10Pekk = ""
Global $11Pekk = ""
Global $12Pekk = ""
Global $13Pekk = ""
Global $6BabyDragon = ""
Global $7BabyDragon = ""
Global $8BabyDragon = ""
Global $9BabyDragon = ""
Global $10BabyDragon = ""
Global $11BabyDragon = ""
Global $12BabyDragon = ""
Global $13BabyDragon = ""
Global $6Miner = ""
Global $7Miner = ""
Global $8Miner = ""
Global $9Miner = ""
Global $10Miner = ""
Global $11Miner = ""
Global $12Miner = ""
Global $13Miner = ""
Global $6EDrag = ""
Global $7EDrag = ""
Global $8EDrag = ""
Global $9EDrag = ""
Global $10EDrag = ""
Global $11EDrag = ""
Global $12EDrag = ""
Global $13EDrag = ""
Global $6Yeti = ""
Global $7Yeti = ""
Global $8Yeti = ""
Global $9Yeti = ""
Global $10Yeti = ""
Global $11Yeti = ""
Global $12Yeti = ""
Global $13Yeti = ""
Global $6Mini = ""
Global $7Mini = ""
Global $8Mini = ""
Global $9Mini = ""
Global $10Mini = ""
Global $11Mini = ""
Global $12Mini = ""
Global $13Mini = ""
Global $6Hogs = ""
Global $7Hogs = ""
Global $8Hogs = ""
Global $9Hogs = ""
Global $10Hogs = ""
Global $11Hogs = ""
Global $12Hogs = ""
Global $13Hogs = ""
Global $6Valkyre = ""
Global $7Valkyre = ""
Global $8Valkyre = ""
Global $9Valkyre = ""
Global $10Valkyre = ""
Global $11Valkyre = ""
Global $12Valkyre = ""
Global $13Valkyre = ""
Global $6Golem = ""
Global $7Golem = ""
Global $8Golem = ""
Global $9Golem = ""
Global $10Golem = ""
Global $11Golem = ""
Global $12Golem = ""
Global $13Golem = ""
Global $6Witch = ""
Global $7Witch = ""
Global $8Witch = ""
Global $9Witch = ""
Global $10Witch = ""
Global $11Witch = ""
Global $12Witch = ""
Global $13Witch = ""
Global $6Lava = ""
Global $7Lava = ""
Global $8Lava = ""
Global $9Lava = ""
Global $10Lava = ""
Global $11Lava = ""
Global $12Lava = ""
Global $13Lava = ""
Global $6Bowler = ""
Global $7Bowler = ""
Global $8Bowler = ""
Global $9Bowler = ""
Global $10Bowler = ""
Global $11Bowler = ""
Global $12Bowler = ""
Global $13Bowler = ""
Global $6IceGolem = ""
Global $7IceGolem = ""
Global $8IceGolem = ""
Global $9IceGolem = ""
Global $10IceGolem = ""
Global $11IceGolem = ""
Global $12IceGolem = ""
Global $13IceGolem = ""
Global $6LSpell = ""
Global $7LSpell = ""
Global $8LSpell = ""
Global $9LSpell = ""
Global $10LSpell = ""
Global $11LSpell = ""
Global $12LSpell = ""
Global $13LSpell = ""
Global $6HSpell = ""
Global $7HSpell = ""
Global $8HSpell = ""
Global $9HSpell = ""
Global $10HSpell = ""
Global $11HSpell = ""
Global $12HSpell = ""
Global $13HSpell = ""
Global $6RSpell = ""
Global $7RSpell = ""
Global $8RSpell = ""
Global $9RSpell = ""
Global $10RSpell = ""
Global $11RSpell = ""
Global $12RSpell = ""
Global $13RSpell = ""
Global $6JSpell = ""
Global $7JSpell = ""
Global $8JSpell = ""
Global $9JSpell = ""
Global $10JSpell = ""
Global $11JSpell = ""
Global $12JSpell = ""
Global $13JSpell = ""
Global $6FSpell = ""
Global $7FSpell = ""
Global $8FSpell = ""
Global $9FSpell = ""
Global $10FSpell = ""
Global $11FSpell = ""
Global $12FSpell = ""
Global $13FSpell = ""
Global $6PSpell = ""
Global $7PSpell = ""
Global $8PSpell = ""
Global $9PSpell = ""
Global $10PSpell = ""
Global $11PSpell = ""
Global $12PSpell = ""
Global $13PSpell = ""
Global $6CSpell = ""
Global $7CSpell = ""
Global $8CSpell = ""
Global $9CSpell = ""
Global $10CSpell = ""
Global $11CSpell = ""
Global $12CSpell = ""
Global $13CSpell = ""
Global $6ESpell = ""
Global $7ESpell = ""
Global $8ESpell = ""
Global $9ESpell = ""
Global $10ESpell = ""
Global $11ESpell = ""
Global $12ESpell = ""
Global $13ESpell = ""
Global $6HaSpell = ""
Global $7HaSpell = ""
Global $8HaSpell = ""
Global $9HaSpell = ""
Global $10HaSpell = ""
Global $11HaSpell = ""
Global $12HaSpell = ""
Global $13HaSpell = ""
Global $6SkSpell = ""
Global $7SkSpell = ""
Global $8SkSpell = ""
Global $9SkSpell = ""
Global $10SkSpell = ""
Global $11SkSpell = ""
Global $12SkSpell = ""
Global $13SkSpell = ""
Global $6BaSpell = ""
Global $7BaSpell = ""
Global $8BaSpell = ""
Global $9BaSpell = ""
Global $10BaSpell = ""
Global $11BaSpell = ""
Global $12BaSpell = ""
Global $13BaSpell = ""
Global $6BattleB = ""
Global $7BattleB = ""
Global $8BattleB = ""
Global $9BattleB = ""
Global $10BattleB = ""
Global $11BattleB = ""
Global $12BattleB = ""
Global $13BattleB = ""
Global $6Wallw = ""
Global $7Wallw = ""
Global $8Wallw = ""
Global $9Wallw = ""
Global $10Wallw = ""
Global $11Wallw = ""
Global $12Wallw = ""
Global $13Wallw = ""
Global $6StoneS = ""
Global $7StoneS = ""
Global $8StoneS = ""
Global $9StoneS = ""
Global $10StoneS = ""
Global $11StoneS = ""
Global $12StoneS = ""
Global $13StoneS = ""
Global $6SiegeB = ""
Global $7SiegeB = ""
Global $8SiegeB = ""
Global $9SiegeB = ""
Global $10SiegeB = ""
Global $11SiegeB = ""
Global $12SiegeB = ""
Global $13SiegeB = ""
Global $TrainBarb = ""
Global $TrainArcher = ""
Global $TrainGaint = ""
Global $TrainGoblin = ""
Global $TrainWallB = ""
Global $TrainBalloon = ""
Global $TrainWizard = ""
Global $TrainHealer = ""
Global $TrainDragon = ""
Global $TrainPekka= ""
Global $TrainBabyDragon= ""
Global $TrainMiner= ""
Global $TrainEDrag= ""
Global $TrainYeti= ""
Global $TrainMini= ""
Global $TrainHogsRider= ""
Global $TrainValkyre= ""
Global $TrainGolem= ""
Global $TrainWitch= ""
Global $TrainLava= ""
Global $TrainBowler= ""
Global $TrainIceGolem= ""

Global $TrainLSpell= ""
Global $TrainHSpell= ""
Global $TrainRSpell= ""
Global $TrainJSpell= ""
Global $TrainFSpell= ""
Global $TrainPSpell= ""
Global $TrainCSpell= ""
Global $TrainESpell= ""
Global $TrainHaSpell= ""
Global $TrainSkSpell= ""
Global $TrainBaSpell= ""
Global $TrainBattleB= ""
Global $TrainWallw= ""
Global $TrainStoneS= ""
Global $TrainSiegeB= ""
Global $TrainKing = ""
Global $TrainQueen = ""
Global $TrainWarden = ""
Global $TrainRoyaleC = ""


Global $UseDoRandomiseDB
Global $UseDontRandomiseDB
Global $UseDoRandomiseAB
Global $UseDontRandomiseAB
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~ RANDOMISE VARIABLES <>~<>~<>~<>~<>~<>~
;~ <>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~<>~
Global $DoRandomiseDB, $DoRandomiseAB ; Checkboxes in Mybot Gui to Randomise
Global $DontRandomiseDB, $DontRandomiseAB ;Checkboxes in Mybot Gui not to Randomise
Global $BackUpDB, $BackUpAB ;Buttons to avoid deleting original csv file in Mybot Gui
Global $IndexOfComboDB, $IndexOfComboAB ;Variables to get Number of ındex from $g_hCmbScriptNameDB and $g_hCmbScriptNameAB
Global $CSVFileName_inDB_Combo, $CSVFileName_inAB_Combo ; Variables to get Name of csv file from $g_hCmbScriptNameDB and $g_hCmbScriptNameAB
Global $CSVFileName_inDB_Combo_For_Randomise, $CSVFileName_inAB_Combo_For_Randomise ; Variables to get Name of csv file from $g_hCmbScriptNameDB and $g_hCmbScriptNameAB in Randomise Functions
Global $GetFileListFromDBScriptedCMB, $GetFileListFromABScriptedCMB ; Find file(s) to read if there is file in ...\CSV\OrginalCSVFileThatWillConvert\
Global $FileListFromOriginalFolder ; Control variable if there is file in ...\CSV\OrginalCSVFileThatWillConvert\
Global $ReadFile ; Path of read file
Global $CSVLines ; Array that contain $ReadFile lines
Global $SplitCSVLine ;Array that contain $CSVLines slot with decimal "|" This will work if any W[NUMBER] is found in $CSVLines[]
Global $IndexOfDropCommand ;Converted Integer Index for DROP command
Global $StringNewIndex ; String with blanks (11 Peices) of $IndexOfDropCommand for CSV file
Global $LowIndexLimit,$HighIndexLimit ;Converted Index Value min=1 max =10
Global $NewDropCommand ;Converted DROP Command Line
Global $AddedCommand ; Main Converted Part of CSV
Global $ConvertedFileInAttack ;FileWrite Variables for Converted CSV
Global $RealName ;Name of Real name BackUp File
Global $CheckifFiles ; BackUp Control Variable to check if there is a file in ...\CSV\OrginalCSVFileThatWillConvert\
Global $g_bDoRandomiseDB,$g_bDoRandomiseAB ;Config
Global $g_bDontRandomiseDB,$g_bDontRandomiseAB ;Config
Global $infopicforWidenessAB,$infopicforWidenessDB ;info for wideness option..

;~ ########################################################################################################################

