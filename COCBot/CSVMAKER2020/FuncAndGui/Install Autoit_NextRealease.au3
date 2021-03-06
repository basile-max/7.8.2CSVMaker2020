; #FUNCTION# ====================================================================================================================
; Name ..........: CSV Maker Main
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

Func InstallAutoIt()
				Local $Key1 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
				Local $Key2 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
				Local $Key3 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
				Local $Key4 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\AutoIt v3\AutoIt","Version")
				Local $Key5 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\AutoIt v3\AutoIt","Version")
				Local $Key6 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\AutoIt v3\AutoIt","Version")

				If String($Key1)= "" And String($Key2)= "" And String($Key3)= "" And String($Key4)= "" And String($Key5)= "" And String($Key6)= ""  Then
					Local $AutoitInstall = "https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.exe"
					MsgBox($MB_OK,"WARNING","Program detect that you dont have AutoIt and update will download and open Autoit Installer for once. After you install Autoit Program will go on to update CSV Maker.Update and CSV Maker may not work well without Autoit!!!")
					$AutoitFileSize = InetGetSize ($AutoitInstall)
					$AutoitGuiProgress = GUICreate ("Downloading Autoit" ,360, 100, @DesktopWidth/2-360/2, @DesktopHeight/2-100/2, BitOR($WS_EX_TOOLWINDOW,$WS_EX_WINDOWEDGE,$WS_EX_COMPOSITED))
					$AutoitProgressBar = GUICtrlCreateProgress (5, 5, 350, 20)
					GUISetState ( @SW_SHOW, $AutoitGuiProgress )
					$AutoitDownload = InetGet($AutoitInstall, @ScriptDir & "\autoit-v3-setup.exe", $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
					Local $AutoitInfoData
					Do
						$AutoitInfoData = InetGetInfo ($AutoitDownload)
						If Not @error Then
							$AutoitInetGet = $AutoitInfoData[0]
							$AutoitDownloadPercent = Round ((100 * $AutoitInetGet ) / $AutoitFileSize)
							$AutoitDownloadPercent = _Min (_Max (1, $AutoitDownloadPercent), 99)
							GUICtrlSetData ($AutoitProgressBar, $AutoitDownloadPercent)
							$AutoitLabel = GUICtrlCreateLabel ('Progress : ' & $AutoitDownloadPercent & ' %', 5, 25, 350, 50)
						EndIf
						Sleep ( 100 )
					Until $AutoitInfoData[2] = True
					$AutoitLabel = GUICtrlCreateLabel ('Download successfull !', 5, 25, 350, 50)
					Sleep (1000)
					$AutoitLabel = GUICtrlCreateLabel ('Install AutoIt Manually. After Installation, Program will go on. Please Do Not CLOSE this window.', 5, 25, 350, 50)
					Sleep(1000)
					ShellExecuteWait("autoit-v3-setup.exe","",@ScriptDir,"open" )



					While 1
						Local $Key1 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
						Local $Key2 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
						Local $Key3 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\Wow6432Node\AutoIt v3\AutoIt","Version")
						Local $Key4 = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\AutoIt v3\AutoIt","Version")
						Local $Key5 = RegRead("HKEY_LOCAL_MACHINE64\SOFTWARE\AutoIt v3\AutoIt","Version")
						Local $Key6 = RegRead("HKEY_LOCAL_MACHINE32\SOFTWARE\AutoIt v3\AutoIt","Version")

						if String($Key1)= "" And String($Key2)= "" And String($Key3)= "" And String($Key4)= "" And String($Key5)= "" And String($Key6)= ""  Then
							Sleep (1000)
						Else
							$AutoitLabel = GUICtrlCreateLabel ('Autoit Installed. Now Program is begining !', 5, 25, 350, 50)
							Sleep (3000)
							GUISetState ( @SW_HIDE, $AutoitGuiProgress )
							ExitLoop
						EndIf
					WEnd

				EndIf

EndFunc
