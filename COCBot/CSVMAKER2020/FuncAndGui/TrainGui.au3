
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

Func SetTrain()
	;Barbarian
	If GUICtrlRead($TH6txtNumBarbarian) > 0 Or GUICtrlRead($TH7txtNumBarbarian) > 0 Or GUICtrlRead($TH8txtNumBarbarian) > 0 Or GUICtrlRead($TH9txtNumBarbarian) > 0 Or GUICtrlRead($TH10txtNumBarbarian) > 0 Or GUICtrlRead($TH11txtNumBarbarian) > 0 Or GUICtrlRead($TH12txtNumBarbarian) > 0 Or GUICtrlRead($TH13txtNumBarbarian) > 0 Then
		If GUICtrlRead($TH6txtNumBarbarian) >= 0 Then
			$6Barbarian = "|" & GUICtrlRead($TH6txtNumBarbarian) & "          "
			If GUICtrlRead($TH6txtNumBarbarian) >= 10 Then
				$6Barbarian = "|" & GUICtrlRead($TH6txtNumBarbarian) & "         "
					If GUICtrlRead($TH6txtNumBarbarian) >= 100 Then
						$6Barbarian = "|" & GUICtrlRead($TH6txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBarbarian) >= 0 Then
			$7Barbarian = "|" & GUICtrlRead($TH7txtNumBarbarian) & "          "
			If GUICtrlRead($TH7txtNumBarbarian) >= 10 Then
				$7Barbarian = "|" & GUICtrlRead($TH7txtNumBarbarian) & "         "
					If GUICtrlRead($TH7txtNumBarbarian) >= 100 Then
						$7Barbarian = "|" & GUICtrlRead($TH7txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBarbarian) >= 0 Then
			$8Barbarian = "|" & GUICtrlRead($TH8txtNumBarbarian) & "          "
			If GUICtrlRead($TH8txtNumBarbarian) >= 10 Then
				$8Barbarian = "|" & GUICtrlRead($TH8txtNumBarbarian) & "         "
					If GUICtrlRead($TH8txtNumBarbarian) >= 100 Then
						$8Barbarian = "|" & GUICtrlRead($TH8txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBarbarian) >= 0 Then
			$9Barbarian = "|" & GUICtrlRead($TH9txtNumBarbarian) & "          "
			If GUICtrlRead($TH9txtNumBarbarian) >= 10 Then
				$9Barbarian = "|" & GUICtrlRead($TH9txtNumBarbarian) & "         "
					If GUICtrlRead($TH9txtNumBarbarian) >= 100 Then
						$9Barbarian = "|" & GUICtrlRead($TH9txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBarbarian) >= 0 Then
			$10Barbarian = "|" & GUICtrlRead($TH10txtNumBarbarian) & "          "
			If GUICtrlRead($TH10txtNumBarbarian) >= 10 Then
				$10Barbarian = "|" & GUICtrlRead($TH10txtNumBarbarian) & "         "
					If GUICtrlRead($TH10txtNumBarbarian) >= 100 Then
						$10Barbarian = "|" & GUICtrlRead($TH10txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBarbarian) >= 0 Then
			$11Barbarian = "|" & GUICtrlRead($TH11txtNumBarbarian) & "          "
			If GUICtrlRead($TH11txtNumBarbarian) >= 10 Then
				$11Barbarian = "|" & GUICtrlRead($TH11txtNumBarbarian) & "         "
					If GUICtrlRead($TH11txtNumBarbarian) >= 100 Then
						$11Barbarian = "|" & GUICtrlRead($TH11txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBarbarian) >= 0 Then
			$12Barbarian = "|" & GUICtrlRead($TH12txtNumBarbarian) & "          "
			If GUICtrlRead($TH12txtNumBarbarian) >= 10 Then
				$12Barbarian = "|" & GUICtrlRead($TH12txtNumBarbarian) & "         "
					If GUICtrlRead($TH12txtNumBarbarian) >= 100 Then
						$12Barbarian = "|" & GUICtrlRead($TH12txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBarbarian) >= 0 Then
			$13Barbarian = "|" & GUICtrlRead($TH13txtNumBarbarian) & "          "
			If GUICtrlRead($TH13txtNumBarbarian) >= 10 Then
				$13Barbarian = "|" & GUICtrlRead($TH13txtNumBarbarian) & "         "
					If GUICtrlRead($TH13txtNumBarbarian) >= 100 Then
						$13Barbarian = "|" & GUICtrlRead($TH13txtNumBarbarian) & "        "
					EndIf
			EndIf
		EndIf
		$TrainBarb = "TRAIN |Barb       " & $6Barbarian & $7Barbarian & $8Barbarian & $9Barbarian & $10Barbarian & $11Barbarian & $12Barbarian & $13Barbarian &"|" & @CRLF
	EndIf

;archer

	If GUICtrlRead($TH6txtNumArcher) > 0 Or GUICtrlRead($TH7txtNumArcher) > 0 Or GUICtrlRead($TH8txtNumArcher) > 0 Or GUICtrlRead($TH9txtNumArcher) > 0 Or GUICtrlRead($TH10txtNumArcher) > 0 Or GUICtrlRead($TH11txtNumArcher) > 0 Or GUICtrlRead($TH12txtNumArcher) > 0 Or GUICtrlRead($TH13txtNumArcher) > 0 Then
		If GUICtrlRead($TH6txtNumArcher) >= 0 Then
			$6Archer = "|" & GUICtrlRead($TH6txtNumArcher) & "          "
			If GUICtrlRead($TH6txtNumArcher) >= 10 Then
				$6Archer = "|" & GUICtrlRead($TH6txtNumArcher) & "         "
					If GUICtrlRead($TH6txtNumArcher) >= 100 Then
						$6Archer = "|" & GUICtrlRead($TH6txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumArcher) >= 0 Then
			$7Archer = "|" & GUICtrlRead($TH7txtNumArcher) & "          "
			If GUICtrlRead($TH7txtNumArcher) >= 10 Then
				$7Archer = "|" & GUICtrlRead($TH7txtNumArcher) & "         "
					If GUICtrlRead($TH7txtNumArcher) >= 100 Then
						$7Archer = "|" & GUICtrlRead($TH7txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumArcher) >= 0 Then
			$8Archer = "|" & GUICtrlRead($TH8txtNumArcher) & "          "
			If GUICtrlRead($TH8txtNumArcher) >= 10 Then
				$8Archer = "|" & GUICtrlRead($TH8txtNumArcher) & "         "
					If GUICtrlRead($TH8txtNumArcher) >= 100 Then
						$8Archer = "|" & GUICtrlRead($TH8txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumArcher) >= 0 Then
			$9Archer = "|" & GUICtrlRead($TH9txtNumArcher) & "          "
			If GUICtrlRead($TH9txtNumArcher) >= 10 Then
				$9Archer = "|" & GUICtrlRead($TH9txtNumArcher) & "         "
					If GUICtrlRead($TH9txtNumArcher) >= 100 Then
						$9Archer = "|" & GUICtrlRead($TH9txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumArcher) >= 0 Then
			$10Archer = "|" & GUICtrlRead($TH10txtNumArcher) & "          "
			If GUICtrlRead($TH10txtNumArcher) >= 10 Then
				$10Archer = "|" & GUICtrlRead($TH10txtNumArcher) & "         "
					If GUICtrlRead($TH10txtNumArcher) >= 100 Then
						$10Archer = "|" & GUICtrlRead($TH10txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumArcher) >= 0 Then
			$11Archer = "|" & GUICtrlRead($TH11txtNumArcher) & "          "
			If GUICtrlRead($TH11txtNumArcher) >= 10 Then
				$11Archer = "|" & GUICtrlRead($TH11txtNumArcher) & "         "
					If GUICtrlRead($TH11txtNumArcher) >= 100 Then
						$11Archer = "|" & GUICtrlRead($TH11txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumArcher) >= 0 Then
			$12Archer = "|" & GUICtrlRead($TH12txtNumArcher) & "          "
			If GUICtrlRead($TH12txtNumArcher) >= 10 Then
				$12Archer = "|" & GUICtrlRead($TH12txtNumArcher) & "         "
					If GUICtrlRead($TH12txtNumArcher) >= 100 Then
						$12Archer = "|" & GUICtrlRead($TH12txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumArcher) >= 0 Then
			$13Archer = "|" & GUICtrlRead($TH13txtNumArcher) & "          "
			If GUICtrlRead($TH13txtNumArcher) >= 10 Then
				$13Archer = "|" & GUICtrlRead($TH13txtNumArcher) & "         "
					If GUICtrlRead($TH13txtNumArcher) >= 100 Then
						$13Archer = "|" & GUICtrlRead($TH13txtNumArcher) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainArcher = "TRAIN |Arch       " & $6Archer & $7Archer & $8Archer & $9Archer & $10Archer & $11Archer & $12Archer & $13Archer &"|" & @CRLF
	EndIf


;Giant

	If GUICtrlRead($TH6txtNumGiant) > 0 Or GUICtrlRead($TH7txtNumGiant) > 0 Or GUICtrlRead($TH8txtNumGiant) > 0 Or GUICtrlRead($TH9txtNumGiant) > 0 Or GUICtrlRead($TH10txtNumGiant) > 0 Or GUICtrlRead($TH11txtNumGiant) > 0 Or GUICtrlRead($TH12txtNumGiant) > 0 Or GUICtrlRead($TH13txtNumGiant) > 0 Then
		If GUICtrlRead($TH6txtNumGiant) >= 0 Then
			$6Giant = "|" & GUICtrlRead($TH6txtNumGiant) & "          "
			If GUICtrlRead($TH6txtNumGiant) >= 10 Then
				$6Giant = "|" & GUICtrlRead($TH6txtNumGiant) & "         "
					If GUICtrlRead($TH6txtNumGiant) >= 100 Then
						$6Giant = "|" & GUICtrlRead($TH6txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumGiant) >= 0 Then
			$7Giant = "|" & GUICtrlRead($TH7txtNumGiant) & "          "
			If GUICtrlRead($TH7txtNumGiant) >= 10 Then
				$7Giant = "|" & GUICtrlRead($TH7txtNumGiant) & "         "
					If GUICtrlRead($TH7txtNumGiant) >= 100 Then
						$7Giant = "|" & GUICtrlRead($TH7txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumGiant) >= 0 Then
			$8Giant = "|" & GUICtrlRead($TH8txtNumGiant) & "          "
			If GUICtrlRead($TH8txtNumGiant) >= 10 Then
				$8Giant = "|" & GUICtrlRead($TH8txtNumGiant) & "         "
					If GUICtrlRead($TH8txtNumGiant) >= 100 Then
						$8Giant = "|" & GUICtrlRead($TH8txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumGiant) >= 0 Then
			$9Giant = "|" & GUICtrlRead($TH9txtNumGiant) & "          "
			If GUICtrlRead($TH9txtNumGiant) >= 10 Then
				$9Giant = "|" & GUICtrlRead($TH9txtNumGiant) & "         "
					If GUICtrlRead($TH9txtNumGiant) >= 100 Then
						$9Giant = "|" & GUICtrlRead($TH9txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumGiant) >= 0 Then
			$10Giant = "|" & GUICtrlRead($TH10txtNumGiant) & "          "
			If GUICtrlRead($TH10txtNumGiant) >= 10 Then
				$10Giant = "|" & GUICtrlRead($TH10txtNumGiant) & "         "
					If GUICtrlRead($TH10txtNumGiant) >= 100 Then
						$10Giant = "|" & GUICtrlRead($TH10txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumGiant) >= 0 Then
			$11Giant = "|" & GUICtrlRead($TH11txtNumGiant) & "          "
			If GUICtrlRead($TH11txtNumGiant) >= 10 Then
				$11Giant = "|" & GUICtrlRead($TH11txtNumGiant) & "         "
					If GUICtrlRead($TH11txtNumGiant) >= 100 Then
						$11Giant = "|" & GUICtrlRead($TH11txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumGiant) >= 0 Then
			$12Giant = "|" & GUICtrlRead($TH12txtNumGiant) & "          "
			If GUICtrlRead($TH12txtNumGiant) >= 10 Then
				$12Giant = "|" & GUICtrlRead($TH12txtNumGiant) & "         "
					If GUICtrlRead($TH12txtNumGiant) >= 100 Then
						$12Giant = "|" & GUICtrlRead($TH12txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumGiant) >= 0 Then
			$13Giant = "|" & GUICtrlRead($TH13txtNumGiant) & "          "
			If GUICtrlRead($TH13txtNumGiant) >= 10 Then
				$13Giant = "|" & GUICtrlRead($TH13txtNumGiant) & "         "
					If GUICtrlRead($TH13txtNumGiant) >= 100 Then
						$13Giant = "|" & GUICtrlRead($TH13txtNumGiant) & "        "
					EndIf
			EndIf
		EndIf
		$TrainGaint = "TRAIN |Gaint      " & $6Giant & $7Giant & $8Giant & $9Giant & $10Giant & $11Giant & $12Giant & $13Giant &"|" & @CRLF
	EndIf


;Goblin


	If GUICtrlRead($TH6txtNumGoblin) > 0 Or GUICtrlRead($TH7txtNumGoblin) > 0 Or GUICtrlRead($TH8txtNumGoblin) > 0 Or GUICtrlRead($TH9txtNumGoblin) > 0 Or GUICtrlRead($TH10txtNumGoblin) > 0 Or GUICtrlRead($TH11txtNumGoblin) > 0 Or GUICtrlRead($TH12txtNumGoblin) > 0 Or GUICtrlRead($TH13txtNumGoblin) > 0 Then
		If GUICtrlRead($TH6txtNumGoblin) >= 0 Then
			$6Goblin = "|" & GUICtrlRead($TH6txtNumGoblin) & "          "
			If GUICtrlRead($TH6txtNumGoblin) >= 10 Then
				$6Goblin = "|" & GUICtrlRead($TH6txtNumGoblin) & "         "
					If GUICtrlRead($TH6txtNumGoblin) >= 100 Then
						$6Goblin = "|" & GUICtrlRead($TH6txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumGoblin) >= 0 Then
			$7Goblin = "|" & GUICtrlRead($TH7txtNumGoblin) & "          "
			If GUICtrlRead($TH7txtNumGoblin) >= 10 Then
				$7Goblin = "|" & GUICtrlRead($TH7txtNumGoblin) & "         "
					If GUICtrlRead($TH7txtNumGoblin) >= 100 Then
						$7Goblin = "|" & GUICtrlRead($TH7txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumGoblin) >= 0 Then
			$8Goblin = "|" & GUICtrlRead($TH8txtNumGoblin) & "          "
			If GUICtrlRead($TH8txtNumGoblin) >= 10 Then
				$8Goblin = "|" & GUICtrlRead($TH8txtNumGoblin) & "         "
					If GUICtrlRead($TH8txtNumGoblin) >= 100 Then
						$8Goblin = "|" & GUICtrlRead($TH8txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumGoblin) >= 0 Then
			$9Goblin = "|" & GUICtrlRead($TH9txtNumGoblin) & "          "
			If GUICtrlRead($TH9txtNumGoblin) >= 10 Then
				$9Goblin = "|" & GUICtrlRead($TH9txtNumGoblin) & "         "
					If GUICtrlRead($TH9txtNumGoblin) >= 100 Then
						$9Goblin = "|" & GUICtrlRead($TH9txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumGoblin) >= 0 Then
			$10Goblin = "|" & GUICtrlRead($TH10txtNumGoblin) & "          "
			If GUICtrlRead($TH10txtNumGoblin) >= 10 Then
				$10Goblin = "|" & GUICtrlRead($TH10txtNumGoblin) & "         "
					If GUICtrlRead($TH10txtNumGoblin) >= 100 Then
						$10Goblin = "|" & GUICtrlRead($TH10txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumGoblin) >= 0 Then
			$11Goblin = "|" & GUICtrlRead($TH11txtNumGoblin) & "          "
			If GUICtrlRead($TH11txtNumGoblin) >= 10 Then
				$11Goblin = "|" & GUICtrlRead($TH11txtNumGoblin) & "         "
					If GUICtrlRead($TH11txtNumGoblin) >= 100 Then
						$11Goblin = "|" & GUICtrlRead($TH11txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumGoblin) >= 0 Then
			$12Goblin = "|" & GUICtrlRead($TH12txtNumGoblin) & "          "
			If GUICtrlRead($TH12txtNumGoblin) >= 10 Then
				$12Goblin = "|" & GUICtrlRead($TH12txtNumGoblin) & "         "
					If GUICtrlRead($TH12txtNumGoblin) >= 100 Then
						$12Goblin = "|" & GUICtrlRead($TH12txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumGoblin) >= 0 Then
			$13Goblin = "|" & GUICtrlRead($TH13txtNumGoblin) & "          "
			If GUICtrlRead($TH13txtNumGoblin) >= 10 Then
				$13Goblin = "|" & GUICtrlRead($TH13txtNumGoblin) & "         "
					If GUICtrlRead($TH13txtNumGoblin) >= 100 Then
						$13Goblin = "|" & GUICtrlRead($TH13txtNumGoblin) & "        "
					EndIf
			EndIf
		EndIf
		$TrainGoblin = "TRAIN |Gobl       " & $6Goblin & $7Goblin & $8Goblin & $9Goblin & $10Goblin & $11Goblin & $12Goblin & $12Goblin &"|" & @CRLF
	EndIf



;WallBreaker

	If GUICtrlRead($TH6txtNumWall) > 0 Or GUICtrlRead($TH7txtNumWall) > 0 Or GUICtrlRead($TH8txtNumWall) > 0 Or GUICtrlRead($TH9txtNumWall) > 0 Or GUICtrlRead($TH10txtNumWall) > 0 Or GUICtrlRead($TH11txtNumWall) > 0 Or GUICtrlRead($TH12txtNumWall) > 0  Or GUICtrlRead($TH13txtNumWall) > 0 Then
		If GUICtrlRead($TH6txtNumWall) >= 0 Then
			$6Wall = "|" & GUICtrlRead($TH6txtNumWall) & "          "
			If GUICtrlRead($TH6txtNumWall) >= 10 Then
				$6Wall = "|" & GUICtrlRead($TH6txtNumWall) & "         "
					If GUICtrlRead($TH6txtNumWall) >= 100 Then
						$6Wall = "|" & GUICtrlRead($TH6txtNumWall) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWall) >= 0 Then
			$7Wall = "|" & GUICtrlRead($TH7txtNumWall) & "          "
			If GUICtrlRead($TH7txtNumWall) >= 10 Then
				$7Wall = "|" & GUICtrlRead($TH7txtNumWall) & "         "
					If GUICtrlRead($TH7txtNumWall) >= 100 Then
						$7Wall = "|" & GUICtrlRead($TH7txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWall) >= 0 Then
			$8Wall = "|" & GUICtrlRead($TH8txtNumWall) & "          "
			If GUICtrlRead($TH8txtNumWall) >= 10 Then
				$8Wall = "|" & GUICtrlRead($TH8txtNumWall) & "         "
					If GUICtrlRead($TH8txtNumWall) >= 100 Then
						$8Wall = "|" & GUICtrlRead($TH8txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWall) >= 0 Then
			$9Wall = "|" & GUICtrlRead($TH9txtNumWall) & "          "
			If GUICtrlRead($TH9txtNumWall) >= 10 Then
				$9Wall = "|" & GUICtrlRead($TH9txtNumWall) & "         "
					If GUICtrlRead($TH9txtNumWall) >= 100 Then
						$9Wall = "|" & GUICtrlRead($TH9txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWall) >= 0 Then
			$10Wall = "|" & GUICtrlRead($TH10txtNumWall) & "          "
			If GUICtrlRead($TH10txtNumWall) >= 10 Then
				$10Wall = "|" & GUICtrlRead($TH10txtNumWall) & "         "
					If GUICtrlRead($TH10txtNumWall) >= 100 Then
						$10Wall = "|" & GUICtrlRead($TH10txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWall) >= 0 Then
			$11Wall = "|" & GUICtrlRead($TH11txtNumWall) & "          "
			If GUICtrlRead($TH11txtNumWall) >= 10 Then
				$11Wall = "|" & GUICtrlRead($TH11txtNumWall) & "         "
					If GUICtrlRead($TH11txtNumWall) >= 100 Then
						$11Wall = "|" & GUICtrlRead($TH11txtNumWall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWall) >= 0 Then
			$12Wall = "|" & GUICtrlRead($TH12txtNumWall) & "          "
			If GUICtrlRead($TH12txtNumWall) >= 10 Then
				$12Wall = "|" & GUICtrlRead($TH12txtNumWall) & "         "
					If GUICtrlRead($TH12txtNumWall) >= 100 Then
						$12Wall = "|" & GUICtrlRead($TH12txtNumWall) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumWall) >= 0 Then
			$13Wall = "|" & GUICtrlRead($TH13txtNumWall) & "          "
			If GUICtrlRead($TH13txtNumWall) >= 10 Then
				$13Wall = "|" & GUICtrlRead($TH13txtNumWall) & "         "
					If GUICtrlRead($TH13txtNumWall) >= 100 Then
						$13Wall = "|" & GUICtrlRead($TH13txtNumWall) & "        "
					EndIf
			EndIf
		EndIf


	  $TrainWallB = "TRAIN |Wall       " & $6Wall & $7Wall & $8Wall & $9Wall & $10Wall & $11Wall & $12Wall & $13Wall &"|" & @CRLF
	EndIf


;Balloon

	If GUICtrlRead($TH6txtNumBall) > 0 Or GUICtrlRead($TH7txtNumBall) > 0 Or GUICtrlRead($TH8txtNumBall) > 0 Or GUICtrlRead($TH9txtNumBall) > 0 Or GUICtrlRead($TH10txtNumBall) > 0 Or GUICtrlRead($TH11txtNumBall) > 0 Or GUICtrlRead($TH12txtNumBall) > 0  Or GUICtrlRead($TH13txtNumBall) > 0 Then
		If GUICtrlRead($TH6txtNumBall) >= 0 Then
			$6Ball = "|" & GUICtrlRead($TH6txtNumBall) & "          "
			If GUICtrlRead($TH6txtNumBall) >= 10 Then
				$6Ball = "|" & GUICtrlRead($TH6txtNumBall) & "         "
					If GUICtrlRead($TH6txtNumBall) >= 100 Then
						$6Ball = "|" & GUICtrlRead($TH6txtNumBall) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBall) >= 0 Then
			$7Ball = "|" & GUICtrlRead($TH7txtNumBall) & "          "
			If GUICtrlRead($TH7txtNumBall) >= 10 Then
				$7Ball = "|" & GUICtrlRead($TH7txtNumBall) & "         "
					If GUICtrlRead($TH7txtNumBall) >= 100 Then
						$7Ball = "|" & GUICtrlRead($TH7txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBall) >= 0 Then
			$8Ball = "|" & GUICtrlRead($TH8txtNumBall) & "          "
			If GUICtrlRead($TH8txtNumBall) >= 10 Then
				$8Ball = "|" & GUICtrlRead($TH8txtNumBall) & "         "
					If GUICtrlRead($TH8txtNumBall) >= 100 Then
						$8Ball = "|" & GUICtrlRead($TH8txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBall) >= 0 Then
			$9Ball = "|" & GUICtrlRead($TH9txtNumBall) & "          "
			If GUICtrlRead($TH9txtNumBall) >= 10 Then
				$9Ball = "|" & GUICtrlRead($TH9txtNumBall) & "         "
					If GUICtrlRead($TH9txtNumBall) >= 100 Then
						$9Ball = "|" & GUICtrlRead($TH9txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBall) >= 0 Then
			$10Ball = "|" & GUICtrlRead($TH10txtNumBall) & "          "
			If GUICtrlRead($TH10txtNumBall) >= 10 Then
				$10Ball = "|" & GUICtrlRead($TH10txtNumBall) & "         "
					If GUICtrlRead($TH10txtNumBall) >= 100 Then
						$10Ball = "|" & GUICtrlRead($TH10txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBall) >= 0 Then
			$11Ball = "|" & GUICtrlRead($TH11txtNumBall) & "          "
			If GUICtrlRead($TH11txtNumBall) >= 10 Then
				$11Ball = "|" & GUICtrlRead($TH11txtNumBall) & "         "
					If GUICtrlRead($TH11txtNumBall) >= 100 Then
						$11Ball = "|" & GUICtrlRead($TH11txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBall) >= 0 Then
			$12Ball = "|" & GUICtrlRead($TH12txtNumBall) & "          "
			If GUICtrlRead($TH12txtNumBall) >= 10 Then
				$12Ball = "|" & GUICtrlRead($TH12txtNumBall) & "         "
					If GUICtrlRead($TH12txtNumBall) >= 100 Then
						$12Ball = "|" & GUICtrlRead($TH12txtNumBall) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumBall) >= 0 Then
			$13Ball = "|" & GUICtrlRead($TH13txtNumBall) & "          "
			If GUICtrlRead($TH13txtNumBall) >= 10 Then
				$13Ball = "|" & GUICtrlRead($TH13txtNumBall) & "         "
					If GUICtrlRead($TH13txtNumBall) >= 100 Then
						$13Ball = "|" & GUICtrlRead($TH13txtNumBall) & "        "
					EndIf
			EndIf
		EndIf
		$TrainBalloon = "TRAIN |Ball       " & $6Ball & $7Ball & $8Ball & $9Ball & $10Ball & $11Ball & $12Ball & $13Ball &"|" & @CRLF
	EndIf


;Wizard

	If GUICtrlRead($TH6txtNumWiza) > 0 Or GUICtrlRead($TH7txtNumWiza) > 0 Or GUICtrlRead($TH8txtNumWiza) > 0 Or GUICtrlRead($TH9txtNumWiza) > 0 Or GUICtrlRead($TH10txtNumWiza) > 0 Or GUICtrlRead($TH11txtNumWiza) > 0 Or GUICtrlRead($TH12txtNumWiza) > 0 Or GUICtrlRead($TH13txtNumWiza) > 0 Then
		If GUICtrlRead($TH6txtNumWiza) >= 0 Then
			$6Wiza = "|" & GUICtrlRead($TH6txtNumWiza) & "          "
			If GUICtrlRead($TH6txtNumWiza) >= 10 Then
				$6Wiza = "|" & GUICtrlRead($TH6txtNumWiza) & "         "
					If GUICtrlRead($TH6txtNumWiza) >= 100 Then
						$6Wiza = "|" & GUICtrlRead($TH6txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWiza) >= 0 Then
			$7Wiza = "|" & GUICtrlRead($TH7txtNumWiza) & "          "
			If GUICtrlRead($TH7txtNumWiza) >= 10 Then
				$7Wiza = "|" & GUICtrlRead($TH7txtNumWiza) & "         "
					If GUICtrlRead($TH7txtNumWiza) >= 100 Then
						$7Wiza = "|" & GUICtrlRead($TH7txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWiza) >= 0 Then
			$8Wiza = "|" & GUICtrlRead($TH8txtNumWiza) & "          "
			If GUICtrlRead($TH8txtNumWiza) >= 10 Then
				$8Wiza = "|" & GUICtrlRead($TH8txtNumWiza) & "         "
					If GUICtrlRead($TH8txtNumWiza) >= 100 Then
						$8Wiza = "|" & GUICtrlRead($TH8txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWiza) >= 0 Then
			$9Wiza = "|" & GUICtrlRead($TH9txtNumWiza) & "          "
			If GUICtrlRead($TH9txtNumWiza) >= 10 Then
				$9Wiza = "|" & GUICtrlRead($TH9txtNumWiza) & "         "
					If GUICtrlRead($TH9txtNumWiza) >= 100 Then
						$9Wiza = "|" & GUICtrlRead($TH9txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWiza) >= 0 Then
			$10Wiza = "|" & GUICtrlRead($TH10txtNumWiza) & "          "
			If GUICtrlRead($TH10txtNumWiza) >= 10 Then
				$10Wiza = "|" & GUICtrlRead($TH10txtNumWiza) & "         "
					If GUICtrlRead($TH10txtNumWiza) >= 100 Then
						$10Wiza = "|" & GUICtrlRead($TH10txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWiza) >= 0 Then
			$11Wiza = "|" & GUICtrlRead($TH11txtNumWiza) & "          "
			If GUICtrlRead($TH11txtNumWiza) >= 10 Then
				$11Wiza = "|" & GUICtrlRead($TH11txtNumWiza) & "         "
					If GUICtrlRead($TH11txtNumWiza) >= 100 Then
						$11Wiza = "|" & GUICtrlRead($TH11txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWiza) >= 0 Then
			$12Wiza = "|" & GUICtrlRead($TH12txtNumWiza) & "          "
			If GUICtrlRead($TH12txtNumWiza) >= 10 Then
				$12Wiza = "|" & GUICtrlRead($TH12txtNumWiza) & "         "
					If GUICtrlRead($TH12txtNumWiza) >= 100 Then
						$12Wiza = "|" & GUICtrlRead($TH12txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumWiza) >= 0 Then
			$13Wiza = "|" & GUICtrlRead($TH13txtNumWiza) & "          "
			If GUICtrlRead($TH13txtNumWiza) >= 10 Then
				$13Wiza = "|" & GUICtrlRead($TH13txtNumWiza) & "         "
					If GUICtrlRead($TH13txtNumWiza) >= 100 Then
						$13Wiza = "|" & GUICtrlRead($TH13txtNumWiza) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainWizard = "TRAIN |Wiza       " & $6Wiza & $7Wiza & $8Wiza & $9Wiza & $10Wiza & $11Wiza & $12Wiza & $13Wiza &"|" & @CRLF
	EndIf



;Healer

	If GUICtrlRead($TH6txtNumHeal) > 0 Or GUICtrlRead($TH7txtNumHeal) > 0 Or GUICtrlRead($TH8txtNumHeal) > 0 Or GUICtrlRead($TH9txtNumHeal) > 0 Or GUICtrlRead($TH10txtNumHeal) > 0 Or GUICtrlRead($TH11txtNumHeal) > 0 Or GUICtrlRead($TH12txtNumHeal) > 0  Or GUICtrlRead($TH13txtNumHeal) > 0 Then
		If GUICtrlRead($TH6txtNumHeal) >= 0 Then
			$6Heal = "|" & GUICtrlRead($TH6txtNumHeal) & "          "
			If GUICtrlRead($TH6txtNumHeal) >= 10 Then
				$6Heal = "|" & GUICtrlRead($TH6txtNumHeal) & "         "
					If GUICtrlRead($TH6txtNumHeal) >= 100 Then
						$6Heal = "|" & GUICtrlRead($TH6txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHeal) >= 0 Then
			$7Heal = "|" & GUICtrlRead($TH7txtNumHeal) & "          "
			If GUICtrlRead($TH7txtNumHeal) >= 10 Then
				$7Heal = "|" & GUICtrlRead($TH7txtNumHeal) & "         "
					If GUICtrlRead($TH7txtNumHeal) >= 100 Then
						$7Heal = "|" & GUICtrlRead($TH7txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHeal) >= 0 Then
			$8Heal = "|" & GUICtrlRead($TH8txtNumHeal) & "          "
			If GUICtrlRead($TH8txtNumHeal) >= 10 Then
				$8Heal = "|" & GUICtrlRead($TH8txtNumHeal) & "         "
					If GUICtrlRead($TH8txtNumHeal) >= 100 Then
						$8Heal = "|" & GUICtrlRead($TH8txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHeal) >= 0 Then
			$9Heal = "|" & GUICtrlRead($TH9txtNumHeal) & "          "
			If GUICtrlRead($TH9txtNumHeal) >= 10 Then
				$9Heal = "|" & GUICtrlRead($TH9txtNumHeal) & "         "
					If GUICtrlRead($TH9txtNumHeal) >= 100 Then
						$9Heal = "|" & GUICtrlRead($TH9txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHeal) >= 0 Then
			$10Heal = "|" & GUICtrlRead($TH10txtNumHeal) & "          "
			If GUICtrlRead($TH10txtNumHeal) >= 10 Then
				$10Heal = "|" & GUICtrlRead($TH10txtNumHeal) & "         "
					If GUICtrlRead($TH10txtNumHeal) >= 100 Then
						$10Heal = "|" & GUICtrlRead($TH10txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHeal) >= 0 Then
			$11Heal = "|" & GUICtrlRead($TH11txtNumHeal) & "          "
			If GUICtrlRead($TH11txtNumHeal) >= 10 Then
				$11Heal = "|" & GUICtrlRead($TH11txtNumHeal) & "         "
					If GUICtrlRead($TH11txtNumHeal) >= 100 Then
						$11Heal = "|" & GUICtrlRead($TH11txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHeal) >= 0 Then
			$12Heal = "|" & GUICtrlRead($TH12txtNumHeal) & "          "
			If GUICtrlRead($TH12txtNumHeal) >= 10 Then
				$12Heal = "|" & GUICtrlRead($TH12txtNumHeal) & "         "
					If GUICtrlRead($TH12txtNumHeal) >= 100 Then
						$12Heal = "|" & GUICtrlRead($TH12txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHeal) >= 0 Then
			$13Heal = "|" & GUICtrlRead($TH13txtNumHeal) & "          "
			If GUICtrlRead($TH13txtNumHeal) >= 10 Then
				$13Heal = "|" & GUICtrlRead($TH13txtNumHeal) & "         "
					If GUICtrlRead($TH13txtNumHeal) >= 100 Then
						$13Heal = "|" & GUICtrlRead($TH13txtNumHeal) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHealer = "TRAIN |Heal       " & $6Heal & $7Heal & $8Heal & $9Heal & $10Heal & $11Heal & $12Heal & $13Heal &"|" & @CRLF
	EndIf

;Dragon

	If GUICtrlRead($TH6txtNumDrag) > 0 Or GUICtrlRead($TH7txtNumDrag) > 0 Or GUICtrlRead($TH8txtNumDrag) > 0 Or GUICtrlRead($TH9txtNumDrag) > 0 Or GUICtrlRead($TH10txtNumDrag) > 0 Or GUICtrlRead($TH11txtNumDrag) > 0 Or GUICtrlRead($TH12txtNumDrag) > 0 Or GUICtrlRead($TH13txtNumDrag) > 0 Then
		If GUICtrlRead($TH6txtNumDrag) >= 0 Then
			$6Drag = "|" & GUICtrlRead($TH6txtNumDrag) & "          "
			If GUICtrlRead($TH6txtNumDrag) >= 10 Then
				$6Drag = "|" & GUICtrlRead($TH6txtNumDrag) & "         "
					If GUICtrlRead($TH6txtNumDrag) >= 100 Then
						$6Drag = "|" & GUICtrlRead($TH6txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumDrag) >= 0 Then
			$7Drag = "|" & GUICtrlRead($TH7txtNumDrag) & "          "
			If GUICtrlRead($TH7txtNumDrag) >= 10 Then
				$7Drag = "|" & GUICtrlRead($TH7txtNumDrag) & "         "
					If GUICtrlRead($TH7txtNumDrag) >= 100 Then
						$7Drag = "|" & GUICtrlRead($TH7txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumDrag) >= 0 Then
			$8Drag = "|" & GUICtrlRead($TH8txtNumDrag) & "          "
			If GUICtrlRead($TH8txtNumDrag) >= 10 Then
				$8Drag = "|" & GUICtrlRead($TH8txtNumDrag) & "         "
					If GUICtrlRead($TH8txtNumDrag) >= 100 Then
						$8Drag = "|" & GUICtrlRead($TH8txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumDrag) >= 0 Then
			$9Drag = "|" & GUICtrlRead($TH9txtNumDrag) & "          "
			If GUICtrlRead($TH9txtNumDrag) >= 10 Then
				$9Drag = "|" & GUICtrlRead($TH9txtNumDrag) & "         "
					If GUICtrlRead($TH9txtNumDrag) >= 100 Then
						$9Drag = "|" & GUICtrlRead($TH9txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumDrag) >= 0 Then
			$10Drag = "|" & GUICtrlRead($TH10txtNumDrag) & "          "
			If GUICtrlRead($TH10txtNumDrag) >= 10 Then
				$10Drag = "|" & GUICtrlRead($TH10txtNumDrag) & "         "
					If GUICtrlRead($TH10txtNumDrag) >= 100 Then
						$10Drag = "|" & GUICtrlRead($TH10txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumDrag) >= 0 Then
			$11Drag = "|" & GUICtrlRead($TH11txtNumDrag) & "          "
			If GUICtrlRead($TH11txtNumDrag) >= 10 Then
				$11Drag = "|" & GUICtrlRead($TH11txtNumDrag) & "         "
					If GUICtrlRead($TH11txtNumDrag) >= 100 Then
						$11Drag = "|" & GUICtrlRead($TH11txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumDrag) >= 0 Then
			$12Drag = "|" & GUICtrlRead($TH12txtNumDrag) & "          "
			If GUICtrlRead($TH12txtNumDrag) >= 10 Then
				$12Drag = "|" & GUICtrlRead($TH12txtNumDrag) & "         "
					If GUICtrlRead($TH12txtNumDrag) >= 100 Then
						$12Drag = "|" & GUICtrlRead($TH12txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumDrag) >= 0 Then
			$13Drag = "|" & GUICtrlRead($TH13txtNumDrag) & "          "
			If GUICtrlRead($TH13txtNumDrag) >= 10 Then
				$13Drag = "|" & GUICtrlRead($TH13txtNumDrag) & "         "
					If GUICtrlRead($TH13txtNumDrag) >= 100 Then
						$13Drag = "|" & GUICtrlRead($TH13txtNumDrag) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainDragon = "TRAIN |Drag       " & $6Drag & $7Drag & $8Drag & $9Drag & $10Drag & $11Drag & $12Drag & $13Drag &"|" & @CRLF
	EndIf


;Pekka

	If GUICtrlRead($TH6txtNumPekk) > 0 Or GUICtrlRead($TH7txtNumPekk) > 0 Or GUICtrlRead($TH8txtNumPekk) > 0 Or GUICtrlRead($TH9txtNumPekk) > 0 Or GUICtrlRead($TH10txtNumPekk) > 0 Or GUICtrlRead($TH11txtNumPekk) > 0 Or GUICtrlRead($TH12txtNumPekk) > 0 Or GUICtrlRead($TH13txtNumPekk) > 0 Then
		If GUICtrlRead($TH6txtNumPekk) >= 0 Then
			$6Pekk = "|" & GUICtrlRead($TH6txtNumPekk) & "          "
			If GUICtrlRead($TH6txtNumPekk) >= 10 Then
				$6Pekk = "|" & GUICtrlRead($TH6txtNumPekk) & "         "
					If GUICtrlRead($TH6txtNumPekk) >= 100 Then
						$6Pekk = "|" & GUICtrlRead($TH6txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumPekk) >= 0 Then
			$7Pekk = "|" & GUICtrlRead($TH7txtNumPekk) & "          "
			If GUICtrlRead($TH7txtNumPekk) >= 10 Then
				$7Pekk = "|" & GUICtrlRead($TH7txtNumPekk) & "         "
					If GUICtrlRead($TH7txtNumPekk) >= 100 Then
						$7Pekk = "|" & GUICtrlRead($TH7txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumPekk) >= 0 Then
			$8Pekk = "|" & GUICtrlRead($TH8txtNumPekk) & "          "
			If GUICtrlRead($TH8txtNumPekk) >= 10 Then
				$8Pekk = "|" & GUICtrlRead($TH8txtNumPekk) & "         "
					If GUICtrlRead($TH8txtNumPekk) >= 100 Then
						$8Pekk = "|" & GUICtrlRead($TH8txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumPekk) >= 0 Then
			$9Pekk = "|" & GUICtrlRead($TH9txtNumPekk) & "          "
			If GUICtrlRead($TH9txtNumPekk) >= 10 Then
				$9Pekk = "|" & GUICtrlRead($TH9txtNumPekk) & "         "
					If GUICtrlRead($TH9txtNumPekk) >= 100 Then
						$9Pekk = "|" & GUICtrlRead($TH9txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumPekk) >= 0 Then
			$10Pekk = "|" & GUICtrlRead($TH10txtNumPekk) & "          "
			If GUICtrlRead($TH10txtNumPekk) >= 10 Then
				$10Pekk = "|" & GUICtrlRead($TH10txtNumPekk) & "         "
					If GUICtrlRead($TH10txtNumPekk) >= 100 Then
						$10Pekk = "|" & GUICtrlRead($TH10txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumPekk) >= 0 Then
			$11Pekk = "|" & GUICtrlRead($TH11txtNumPekk) & "          "
			If GUICtrlRead($TH11txtNumPekk) >= 10 Then
				$11Pekk = "|" & GUICtrlRead($TH11txtNumPekk) & "         "
					If GUICtrlRead($TH11txtNumPekk) >= 100 Then
						$11Pekk = "|" & GUICtrlRead($TH11txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumPekk) >= 0 Then
			$12Pekk = "|" & GUICtrlRead($TH12txtNumPekk) & "          "
			If GUICtrlRead($TH12txtNumPekk) >= 10 Then
				$12Pekk = "|" & GUICtrlRead($TH12txtNumPekk) & "         "
					If GUICtrlRead($TH12txtNumPekk) >= 100 Then
						$12Pekk = "|" & GUICtrlRead($TH12txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumPekk) >= 0 Then
			$13Pekk = "|" & GUICtrlRead($TH13txtNumPekk) & "          "
			If GUICtrlRead($TH13txtNumPekk) >= 10 Then
				$13Pekk = "|" & GUICtrlRead($TH13txtNumPekk) & "         "
					If GUICtrlRead($TH13txtNumPekk) >= 100 Then
						$13Pekk = "|" & GUICtrlRead($TH13txtNumPekk) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainPekka = "TRAIN |Pekk       " & $6Pekk & $7Pekk & $8Pekk & $9Pekk & $10Pekk & $11Pekk & $12Pekk & $13Pekk &"|" & @CRLF
	EndIf




;BabyDragon

	If GUICtrlRead($TH6txtNumBabyDragon) > 0 Or GUICtrlRead($TH7txtNumBabyDragon) > 0 Or GUICtrlRead($TH8txtNumBabyDragon) > 0 Or GUICtrlRead($TH9txtNumBabyDragon) > 0 Or GUICtrlRead($TH10txtNumBabyDragon) > 0 Or GUICtrlRead($TH11txtNumBabyDragon) > 0 Or GUICtrlRead($TH12txtNumBabyDragon) > 0 Or GUICtrlRead($TH13txtNumBabyDragon) > 0 Then
		If GUICtrlRead($TH6txtNumBabyDragon) >= 0 Then
			$6BabyDragon = "|" & GUICtrlRead($TH6txtNumBabyDragon) & "          "
			If GUICtrlRead($TH6txtNumBabyDragon) >= 10 Then
				$6BabyDragon = "|" & GUICtrlRead($TH6txtNumBabyDragon) & "         "
					If GUICtrlRead($TH6txtNumBabyDragon) >= 100 Then
						$6BabyDragon = "|" & GUICtrlRead($TH6txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBabyDragon) >= 0 Then
			$7BabyDragon = "|" & GUICtrlRead($TH7txtNumBabyDragon) & "          "
			If GUICtrlRead($TH7txtNumBabyDragon) >= 10 Then
				$7BabyDragon = "|" & GUICtrlRead($TH7txtNumBabyDragon) & "         "
					If GUICtrlRead($TH7txtNumBabyDragon) >= 100 Then
						$7BabyDragon = "|" & GUICtrlRead($TH7txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBabyDragon) >= 0 Then
			$8BabyDragon = "|" & GUICtrlRead($TH8txtNumBabyDragon) & "          "
			If GUICtrlRead($TH8txtNumBabyDragon) >= 10 Then
				$8BabyDragon = "|" & GUICtrlRead($TH8txtNumBabyDragon) & "         "
					If GUICtrlRead($TH8txtNumBabyDragon) >= 100 Then
						$8BabyDragon = "|" & GUICtrlRead($TH8txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBabyDragon) >= 0 Then
			$9BabyDragon = "|" & GUICtrlRead($TH9txtNumBabyDragon) & "          "
			If GUICtrlRead($TH9txtNumBabyDragon) >= 10 Then
				$9BabyDragon = "|" & GUICtrlRead($TH9txtNumBabyDragon) & "         "
					If GUICtrlRead($TH9txtNumBabyDragon) >= 100 Then
						$9BabyDragon = "|" & GUICtrlRead($TH9txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBabyDragon) >= 0 Then
			$10BabyDragon = "|" & GUICtrlRead($TH10txtNumBabyDragon) & "          "
			If GUICtrlRead($TH10txtNumBabyDragon) >= 10 Then
				$10BabyDragon = "|" & GUICtrlRead($TH10txtNumBabyDragon) & "         "
					If GUICtrlRead($TH10txtNumBabyDragon) >= 100 Then
						$10BabyDragon = "|" & GUICtrlRead($TH10txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBabyDragon) >= 0 Then
			$11BabyDragon = "|" & GUICtrlRead($TH11txtNumBabyDragon) & "          "
			If GUICtrlRead($TH11txtNumBabyDragon) >= 10 Then
				$11BabyDragon = "|" & GUICtrlRead($TH11txtNumBabyDragon) & "         "
					If GUICtrlRead($TH11txtNumBabyDragon) >= 100 Then
						$11BabyDragon = "|" & GUICtrlRead($TH11txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBabyDragon) >= 0 Then
			$12BabyDragon = "|" & GUICtrlRead($TH12txtNumBabyDragon) & "          "
			If GUICtrlRead($TH12txtNumBabyDragon) >= 10 Then
				$12BabyDragon = "|" & GUICtrlRead($TH12txtNumBabyDragon) & "         "
					If GUICtrlRead($TH12txtNumBabyDragon) >= 100 Then
						$12BabyDragon = "|" & GUICtrlRead($TH12txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBabyDragon) >= 0 Then
			$13BabyDragon = "|" & GUICtrlRead($TH13txtNumBabyDragon) & "          "
			If GUICtrlRead($TH13txtNumBabyDragon) >= 10 Then
				$13BabyDragon = "|" & GUICtrlRead($TH13txtNumBabyDragon) & "         "
					If GUICtrlRead($TH13txtNumBabyDragon) >= 100 Then
						$13BabyDragon = "|" & GUICtrlRead($TH13txtNumBabyDragon) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBabyDragon = "TRAIN |BabyD      " & $6BabyDragon & $7BabyDragon & $8BabyDragon & $9BabyDragon & $10BabyDragon & $11BabyDragon & $12BabyDragon & $12BabyDragon &"|" & @CRLF
	EndIf


;Miner

	If GUICtrlRead($TH6txtNumMiner) > 0 Or GUICtrlRead($TH7txtNumMiner) > 0 Or GUICtrlRead($TH8txtNumMiner) > 0 Or GUICtrlRead($TH9txtNumMiner) > 0 Or GUICtrlRead($TH10txtNumMiner) > 0 Or GUICtrlRead($TH11txtNumMiner) > 0 Or GUICtrlRead($TH12txtNumMiner) > 0  Or GUICtrlRead($TH13txtNumMiner) > 0 Then
		If GUICtrlRead($TH6txtNumMiner) >= 0 Then
			$6Miner = "|" & GUICtrlRead($TH6txtNumMiner) & "          "
			If GUICtrlRead($TH6txtNumMiner) >= 10 Then
				$6Miner = "|" & GUICtrlRead($TH6txtNumMiner) & "         "
					If GUICtrlRead($TH6txtNumMiner) >= 100 Then
						$6Miner = "|" & GUICtrlRead($TH6txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumMiner) >= 0 Then
			$7Miner = "|" & GUICtrlRead($TH7txtNumMiner) & "          "
			If GUICtrlRead($TH7txtNumMiner) >= 10 Then
				$7Miner = "|" & GUICtrlRead($TH7txtNumMiner) & "         "
					If GUICtrlRead($TH7txtNumMiner) >= 100 Then
						$7Miner = "|" & GUICtrlRead($TH7txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumMiner) >= 0 Then
			$8Miner = "|" & GUICtrlRead($TH8txtNumMiner) & "          "
			If GUICtrlRead($TH8txtNumMiner) >= 10 Then
				$8Miner = "|" & GUICtrlRead($TH8txtNumMiner) & "         "
					If GUICtrlRead($TH8txtNumMiner) >= 100 Then
						$8Miner = "|" & GUICtrlRead($TH8txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumMiner) >= 0 Then
			$9Miner = "|" & GUICtrlRead($TH9txtNumMiner) & "          "
			If GUICtrlRead($TH9txtNumMiner) >= 10 Then
				$9Miner = "|" & GUICtrlRead($TH9txtNumMiner) & "         "
					If GUICtrlRead($TH9txtNumMiner) >= 100 Then
						$9Miner = "|" & GUICtrlRead($TH9txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumMiner) >= 0 Then
			$10Miner = "|" & GUICtrlRead($TH10txtNumMiner) & "          "
			If GUICtrlRead($TH10txtNumMiner) >= 10 Then
				$10Miner = "|" & GUICtrlRead($TH10txtNumMiner) & "         "
					If GUICtrlRead($TH10txtNumMiner) >= 100 Then
						$10Miner = "|" & GUICtrlRead($TH10txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumMiner) >= 0 Then
			$11Miner = "|" & GUICtrlRead($TH11txtNumMiner) & "          "
			If GUICtrlRead($TH11txtNumMiner) >= 10 Then
				$11Miner = "|" & GUICtrlRead($TH11txtNumMiner) & "         "
					If GUICtrlRead($TH11txtNumMiner) >= 100 Then
						$11Miner = "|" & GUICtrlRead($TH11txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumMiner) >= 0 Then
			$12Miner = "|" & GUICtrlRead($TH12txtNumMiner) & "          "
			If GUICtrlRead($TH12txtNumMiner) >= 10 Then
				$12Miner = "|" & GUICtrlRead($TH12txtNumMiner) & "         "
					If GUICtrlRead($TH12txtNumMiner) >= 100 Then
						$12Miner = "|" & GUICtrlRead($TH12txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumMiner) >= 0 Then
			$13Miner = "|" & GUICtrlRead($TH13txtNumMiner) & "          "
			If GUICtrlRead($TH13txtNumMiner) >= 10 Then
				$13Miner = "|" & GUICtrlRead($TH13txtNumMiner) & "         "
					If GUICtrlRead($TH13txtNumMiner) >= 100 Then
						$13Miner = "|" & GUICtrlRead($TH13txtNumMiner) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainMiner = "TRAIN |Mine       " & $6Miner & $7Miner & $8Miner & $9Miner & $10Miner & $11Miner & $12Miner & $13Miner &"|" & @CRLF
	EndIf

   ;Electro Dragon

	If GUICtrlRead($TH6txtNumEdrag) > 0 Or GUICtrlRead($TH7txtNumEdrag) > 0 Or GUICtrlRead($TH8txtNumEdrag) > 0 Or GUICtrlRead($TH9txtNumEdrag) > 0 Or GUICtrlRead($TH10txtNumEdrag) > 0 Or GUICtrlRead($TH11txtNumEdrag) > 0 Or GUICtrlRead($TH12txtNumEdrag) > 0 Or GUICtrlRead($TH13txtNumEdrag) > 0 Then
		If GUICtrlRead($TH6txtNumEdrag) >= 0 Then
			$6Edrag = "|" & GUICtrlRead($TH6txtNumEdrag) & "          "
			If GUICtrlRead($TH6txtNumEdrag) >= 10 Then
				$6Edrag = "|" & GUICtrlRead($TH6txtNumEdrag) & "         "
					If GUICtrlRead($TH6txtNumEdrag) >= 100 Then
						$6Edrag = "|" & GUICtrlRead($TH6txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumEdrag) >= 0 Then
			$7Edrag = "|" & GUICtrlRead($TH7txtNumEdrag) & "          "
			If GUICtrlRead($TH7txtNumEdrag) >= 10 Then
				$7Edrag = "|" & GUICtrlRead($TH7txtNumEdrag) & "         "
					If GUICtrlRead($TH7txtNumEdrag) >= 100 Then
						$7Edrag = "|" & GUICtrlRead($TH7txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumEdrag) >= 0 Then
			$8Edrag = "|" & GUICtrlRead($TH8txtNumEdrag) & "          "
			If GUICtrlRead($TH8txtNumEdrag) >= 10 Then
				$8Edrag = "|" & GUICtrlRead($TH8txtNumEdrag) & "         "
					If GUICtrlRead($TH8txtNumEdrag) >= 100 Then
						$8Edrag = "|" & GUICtrlRead($TH8txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumEdrag) >= 0 Then
			$9Edrag = "|" & GUICtrlRead($TH9txtNumEdrag) & "          "
			If GUICtrlRead($TH9txtNumEdrag) >= 10 Then
				$9Edrag = "|" & GUICtrlRead($TH9txtNumEdrag) & "         "
					If GUICtrlRead($TH9txtNumEdrag) >= 100 Then
						$9Edrag = "|" & GUICtrlRead($TH9txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumEdrag) >= 0 Then
			$10Edrag = "|" & GUICtrlRead($TH10txtNumEdrag) & "          "
			If GUICtrlRead($TH10txtNumEdrag) >= 10 Then
				$10Edrag = "|" & GUICtrlRead($TH10txtNumEdrag) & "         "
					If GUICtrlRead($TH10txtNumEdrag) >= 100 Then
						$10Edrag = "|" & GUICtrlRead($TH10txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumEdrag) >= 0 Then
			$11Edrag = "|" & GUICtrlRead($TH11txtNumEdrag) & "          "
			If GUICtrlRead($TH11txtNumEdrag) >= 10 Then
				$11Edrag = "|" & GUICtrlRead($TH11txtNumEdrag) & "         "
					If GUICtrlRead($TH11txtNumEdrag) >= 100 Then
						$11Edrag = "|" & GUICtrlRead($TH11txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumEdrag) >= 0 Then
			$12Edrag = "|" & GUICtrlRead($TH12txtNumEdrag) & "          "
			If GUICtrlRead($TH12txtNumEdrag) >= 10 Then
				$12Edrag = "|" & GUICtrlRead($TH12txtNumEdrag) & "         "
					If GUICtrlRead($TH12txtNumEdrag) >= 100 Then
						$12Edrag = "|" & GUICtrlRead($TH12txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumEdrag) >= 0 Then
			$13Edrag = "|" & GUICtrlRead($TH13txtNumEdrag) & "          "
			If GUICtrlRead($TH13txtNumEdrag) >= 10 Then
				$13Edrag = "|" & GUICtrlRead($TH13txtNumEdrag) & "         "
					If GUICtrlRead($TH13txtNumEdrag) >= 100 Then
						$13Edrag = "|" & GUICtrlRead($TH13txtNumEdrag) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainEdrag = "TRAIN |EDrag      " & $6Edrag & $7Edrag & $8Edrag & $9Edrag & $10Edrag & $11Edrag & $12Edrag & $13Edrag &"|" & @CRLF
	EndIf

   ;Yeti

	If GUICtrlRead($TH6txtNumYeti) > 0 Or GUICtrlRead($TH7txtNumYeti) > 0 Or GUICtrlRead($TH8txtNumYeti) > 0 Or GUICtrlRead($TH9txtNumYeti) > 0 Or GUICtrlRead($TH10txtNumYeti) > 0 Or GUICtrlRead($TH11txtNumYeti) > 0 Or GUICtrlRead($TH12txtNumYeti) > 0  Or GUICtrlRead($TH13txtNumYeti) > 0 Then
;~ 		If GUICtrlRead($TH6txtNumYeti) >= 0 Then
;~ 			$6Yeti = "|" & GUICtrlRead($TH6txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH6txtNumYeti) >= 10 Then
;~ 				$6Yeti = "|" & GUICtrlRead($TH6txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH6txtNumYeti) >= 100 Then
						$6Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf
;~ 		If GUICtrlRead($TH7txtNumYeti) >= 0 Then
;~ 			$7Yeti = "|" & GUICtrlRead($TH7txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH7txtNumYeti) >= 10 Then
;~ 				$7Yeti = "|" & GUICtrlRead($TH7txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH7txtNumYeti) >= 100 Then
						$7Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH8txtNumYeti) >= 0 Then
;~ 			$8Yeti = "|" & GUICtrlRead($TH8txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH8txtNumYeti) >= 10 Then
;~ 				$8Yeti = "|" & GUICtrlRead($TH8txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH8txtNumYeti) >= 100 Then
						$8Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH9txtNumYeti) >= 0 Then
;~ 			$9Yeti = "|" & GUICtrlRead($TH9txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH9txtNumYeti) >= 10 Then
;~ 				$9Yeti = "|" & GUICtrlRead($TH9txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH9txtNumYeti) >= 100 Then
						$9Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH10txtNumYeti) >= 0 Then
;~ 			$10Yeti = "|" & GUICtrlRead($TH10txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH10txtNumYeti) >= 10 Then
;~ 				$10Yeti = "|" & GUICtrlRead($TH10txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH10txtNumYeti) >= 100 Then
						$10Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH11txtNumYeti) >= 0 Then
;~ 			$11Yeti = "|" & GUICtrlRead($TH11txtNumYeti) & "          "
;~ 			If GUICtrlRead($TH11txtNumYeti) >= 10 Then
;~ 				$11Yeti = "|" & GUICtrlRead($TH11txtNumYeti) & "         "
;~ 					If GUICtrlRead($TH11txtNumYeti) >= 100 Then
						$11Yeti = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

		If GUICtrlRead($TH12txtNumYeti) >= 0 Then
			$12Yeti = "|" & GUICtrlRead($TH12txtNumYeti) & "          "
			If GUICtrlRead($TH12txtNumYeti) >= 10 Then
				$12Yeti = "|" & GUICtrlRead($TH12txtNumYeti) & "         "
					If GUICtrlRead($TH12txtNumYeti) >= 100 Then
						$12Yeti = "|" & GUICtrlRead($TH12txtNumYeti) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumYeti) >= 0 Then
			$13Yeti = "|" & GUICtrlRead($TH13txtNumYeti) & "          "
			If GUICtrlRead($TH13txtNumYeti) >= 10 Then
				$13Yeti = "|" & GUICtrlRead($TH13txtNumYeti) & "         "
					If GUICtrlRead($TH13txtNumYeti) >= 100 Then
						$13Yeti = "|" & GUICtrlRead($TH13txtNumYeti) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainYeti = "TRAIN |Yeti       " & $6Yeti & $7Yeti & $8Yeti & $9Yeti & $10Yeti & $11Yeti & $12Yeti & $13Yeti &"|" & @CRLF
	EndIf



   ;Minion

	If GUICtrlRead($TH6txtNumMini) > 0 Or GUICtrlRead($TH7txtNumMini) > 0 Or GUICtrlRead($TH8txtNumMini) > 0 Or GUICtrlRead($TH9txtNumMini) > 0 Or GUICtrlRead($TH10txtNumMini) > 0 Or GUICtrlRead($TH11txtNumMini) > 0 Or GUICtrlRead($TH12txtNumMini) > 0 Or GUICtrlRead($TH13txtNumMini) > 0 Then
		If GUICtrlRead($TH6txtNumMini) >= 0 Then
			$6Mini = "|" & GUICtrlRead($TH6txtNumMini) & "          "
			If GUICtrlRead($TH6txtNumMini) >= 10 Then
				$6Mini = "|" & GUICtrlRead($TH6txtNumMini) & "         "
					If GUICtrlRead($TH6txtNumMini) >= 100 Then
						$6Mini = "|" & GUICtrlRead($TH6txtNumMini) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumMini) >= 0 Then
			$7Mini = "|" & GUICtrlRead($TH7txtNumMini) & "          "
			If GUICtrlRead($TH7txtNumMini) >= 10 Then
				$7Mini = "|" & GUICtrlRead($TH7txtNumMini) & "         "
					If GUICtrlRead($TH7txtNumMini) >= 100 Then
						$7Mini = "|" & GUICtrlRead($TH7txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumMini) >= 0 Then
			$8Mini = "|" & GUICtrlRead($TH8txtNumMini) & "          "
			If GUICtrlRead($TH8txtNumMini) >= 10 Then
				$8Mini = "|" & GUICtrlRead($TH8txtNumMini) & "         "
					If GUICtrlRead($TH8txtNumMini) >= 100 Then
						$8Mini = "|" & GUICtrlRead($TH8txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumMini) >= 0 Then
			$9Mini = "|" & GUICtrlRead($TH9txtNumMini) & "          "
			If GUICtrlRead($TH9txtNumMini) >= 10 Then
				$9Mini = "|" & GUICtrlRead($TH9txtNumMini) & "         "
					If GUICtrlRead($TH9txtNumMini) >= 100 Then
						$9Mini = "|" & GUICtrlRead($TH9txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumMini) >= 0 Then
			$10Mini = "|" & GUICtrlRead($TH10txtNumMini) & "          "
			If GUICtrlRead($TH10txtNumMini) >= 10 Then
				$10Mini = "|" & GUICtrlRead($TH10txtNumMini) & "         "
					If GUICtrlRead($TH10txtNumMini) >= 100 Then
						$10Mini = "|" & GUICtrlRead($TH10txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumMini) >= 0 Then
			$11Mini = "|" & GUICtrlRead($TH11txtNumMini) & "          "
			If GUICtrlRead($TH11txtNumMini) >= 10 Then
				$11Mini = "|" & GUICtrlRead($TH11txtNumMini) & "         "
					If GUICtrlRead($TH11txtNumMini) >= 100 Then
						$11Mini = "|" & GUICtrlRead($TH11txtNumMini) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumMini) >= 0 Then
			$12Mini = "|" & GUICtrlRead($TH12txtNumMini) & "          "
			If GUICtrlRead($TH12txtNumMini) >= 10 Then
				$12Mini = "|" & GUICtrlRead($TH12txtNumMini) & "         "
					If GUICtrlRead($TH12txtNumMini) >= 100 Then
						$12Mini = "|" & GUICtrlRead($TH12txtNumMini) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumMini) >= 0 Then
			$13Mini = "|" & GUICtrlRead($TH13txtNumMini) & "          "
			If GUICtrlRead($TH13txtNumMini) >= 10 Then
				$13Mini = "|" & GUICtrlRead($TH13txtNumMini) & "         "
					If GUICtrlRead($TH13txtNumMini) >= 100 Then
						$13Mini = "|" & GUICtrlRead($TH13txtNumMini) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainMini = "TRAIN |Mini       " & $6Mini & $7Mini & $8Mini & $9Mini & $10Mini & $11Mini & $12Mini & $13Mini &"|" & @CRLF
	EndIf



    ;Hogs Rider

	If GUICtrlRead($TH6txtNumHogs) > 0 Or GUICtrlRead($TH7txtNumHogs) > 0 Or GUICtrlRead($TH8txtNumHogs) > 0 Or GUICtrlRead($TH9txtNumHogs) > 0 Or GUICtrlRead($TH10txtNumHogs) > 0 Or GUICtrlRead($TH11txtNumHogs) > 0 Or GUICtrlRead($TH12txtNumHogs) > 0 Or GUICtrlRead($TH13txtNumHogs) > 0 Then
		If GUICtrlRead($TH6txtNumHogs) >= 0 Then
			$6Hogs = "|" & GUICtrlRead($TH6txtNumHogs) & "          "
			If GUICtrlRead($TH6txtNumHogs) >= 10 Then
				$6Hogs = "|" & GUICtrlRead($TH6txtNumHogs) & "         "
					If GUICtrlRead($TH6txtNumHogs) >= 100 Then
						$6Hogs = "|" & GUICtrlRead($TH6txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHogs) >= 0 Then
			$7Hogs = "|" & GUICtrlRead($TH7txtNumHogs) & "          "
			If GUICtrlRead($TH7txtNumHogs) >= 10 Then
				$7Hogs = "|" & GUICtrlRead($TH7txtNumHogs) & "         "
					If GUICtrlRead($TH7txtNumHogs) >= 100 Then
						$7Hogs = "|" & GUICtrlRead($TH7txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHogs) >= 0 Then
			$8Hogs = "|" & GUICtrlRead($TH8txtNumHogs) & "          "
			If GUICtrlRead($TH8txtNumHogs) >= 10 Then
				$8Hogs = "|" & GUICtrlRead($TH8txtNumHogs) & "         "
					If GUICtrlRead($TH8txtNumHogs) >= 100 Then
						$8Hogs = "|" & GUICtrlRead($TH8txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHogs) >= 0 Then
			$9Hogs = "|" & GUICtrlRead($TH9txtNumHogs) & "          "
			If GUICtrlRead($TH9txtNumHogs) >= 10 Then
				$9Hogs = "|" & GUICtrlRead($TH9txtNumHogs) & "         "
					If GUICtrlRead($TH9txtNumHogs) >= 100 Then
						$9Hogs = "|" & GUICtrlRead($TH9txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHogs) >= 0 Then
			$10Hogs = "|" & GUICtrlRead($TH10txtNumHogs) & "          "
			If GUICtrlRead($TH10txtNumHogs) >= 10 Then
				$10Hogs = "|" & GUICtrlRead($TH10txtNumHogs) & "         "
					If GUICtrlRead($TH10txtNumHogs) >= 100 Then
						$10Hogs = "|" & GUICtrlRead($TH10txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHogs) >= 0 Then
			$11Hogs = "|" & GUICtrlRead($TH11txtNumHogs) & "          "
			If GUICtrlRead($TH11txtNumHogs) >= 10 Then
				$11Hogs = "|" & GUICtrlRead($TH11txtNumHogs) & "         "
					If GUICtrlRead($TH11txtNumHogs) >= 100 Then
						$11Hogs = "|" & GUICtrlRead($TH11txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHogs) >= 0 Then
			$12Hogs = "|" & GUICtrlRead($TH12txtNumHogs) & "          "
			If GUICtrlRead($TH12txtNumHogs) >= 10 Then
				$12Hogs = "|" & GUICtrlRead($TH12txtNumHogs) & "         "
					If GUICtrlRead($TH12txtNumHogs) >= 100 Then
						$12Hogs = "|" & GUICtrlRead($TH12txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHogs) >= 0 Then
			$13Hogs = "|" & GUICtrlRead($TH13txtNumHogs) & "          "
			If GUICtrlRead($TH13txtNumHogs) >= 10 Then
				$13Hogs = "|" & GUICtrlRead($TH13txtNumHogs) & "         "
					If GUICtrlRead($TH13txtNumHogs) >= 100 Then
						$13Hogs = "|" & GUICtrlRead($TH13txtNumHogs) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHogsRider = "TRAIN |Hogs       " & $6Hogs & $7Hogs & $8Hogs & $9Hogs & $10Hogs & $11Hogs & $12Hogs & $13Hogs &"|" & @CRLF
	EndIf


;Valkyre

	If GUICtrlRead($TH6txtNumValkyre) > 0 Or GUICtrlRead($TH7txtNumValkyre) > 0 Or GUICtrlRead($TH8txtNumValkyre) > 0 Or GUICtrlRead($TH9txtNumValkyre) > 0 Or GUICtrlRead($TH10txtNumValkyre) > 0 Or GUICtrlRead($TH11txtNumValkyre) > 0 Or GUICtrlRead($TH12txtNumValkyre) > 0 Or GUICtrlRead($TH13txtNumValkyre) > 0 Then
		If GUICtrlRead($TH6txtNumValkyre) >= 0 Then
			$6Valkyre = "|" & GUICtrlRead($TH6txtNumValkyre) & "          "
			If GUICtrlRead($TH6txtNumValkyre) >= 10 Then
				$6Valkyre = "|" & GUICtrlRead($TH6txtNumValkyre) & "         "
					If GUICtrlRead($TH6txtNumValkyre) >= 100 Then
						$6Valkyre = "|" & GUICtrlRead($TH6txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumValkyre) >= 0 Then
			$7Valkyre = "|" & GUICtrlRead($TH7txtNumValkyre) & "          "
			If GUICtrlRead($TH7txtNumValkyre) >= 10 Then
				$7Valkyre = "|" & GUICtrlRead($TH7txtNumValkyre) & "         "
					If GUICtrlRead($TH7txtNumValkyre) >= 100 Then
						$7Valkyre = "|" & GUICtrlRead($TH7txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumValkyre) >= 0 Then
			$8Valkyre = "|" & GUICtrlRead($TH8txtNumValkyre) & "          "
			If GUICtrlRead($TH8txtNumValkyre) >= 10 Then
				$8Valkyre = "|" & GUICtrlRead($TH8txtNumValkyre) & "         "
					If GUICtrlRead($TH8txtNumValkyre) >= 100 Then
						$8Valkyre = "|" & GUICtrlRead($TH8txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumValkyre) >= 0 Then
			$9Valkyre = "|" & GUICtrlRead($TH9txtNumValkyre) & "          "
			If GUICtrlRead($TH9txtNumValkyre) >= 10 Then
				$9Valkyre = "|" & GUICtrlRead($TH9txtNumValkyre) & "         "
					If GUICtrlRead($TH9txtNumValkyre) >= 100 Then
						$9Valkyre = "|" & GUICtrlRead($TH9txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumValkyre) >= 0 Then
			$10Valkyre = "|" & GUICtrlRead($TH10txtNumValkyre) & "          "
			If GUICtrlRead($TH10txtNumValkyre) >= 10 Then
				$10Valkyre = "|" & GUICtrlRead($TH10txtNumValkyre) & "         "
					If GUICtrlRead($TH10txtNumValkyre) >= 100 Then
						$10Valkyre = "|" & GUICtrlRead($TH10txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumValkyre) >= 0 Then
			$11Valkyre = "|" & GUICtrlRead($TH11txtNumValkyre) & "          "
			If GUICtrlRead($TH11txtNumValkyre) >= 10 Then
				$11Valkyre = "|" & GUICtrlRead($TH11txtNumValkyre) & "         "
					If GUICtrlRead($TH11txtNumValkyre) >= 100 Then
						$11Valkyre = "|" & GUICtrlRead($TH11txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumValkyre) >= 0 Then
			$12Valkyre = "|" & GUICtrlRead($TH12txtNumValkyre) & "          "
			If GUICtrlRead($TH12txtNumValkyre) >= 10 Then
				$12Valkyre = "|" & GUICtrlRead($TH12txtNumValkyre) & "         "
					If GUICtrlRead($TH12txtNumValkyre) >= 100 Then
						$12Valkyre = "|" & GUICtrlRead($TH12txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumValkyre) >= 0 Then
			$13Valkyre = "|" & GUICtrlRead($TH13txtNumValkyre) & "          "
			If GUICtrlRead($TH13txtNumValkyre) >= 10 Then
				$13Valkyre = "|" & GUICtrlRead($TH13txtNumValkyre) & "         "
					If GUICtrlRead($TH13txtNumValkyre) >= 100 Then
						$13Valkyre = "|" & GUICtrlRead($TH13txtNumValkyre) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainValkyre = "TRAIN |Valk       " & $6Valkyre & $7Valkyre & $8Valkyre & $9Valkyre & $10Valkyre & $11Valkyre & $12Valkyre & $13Valkyre &"|" & @CRLF
	EndIf


;Golem

	If GUICtrlRead($TH6txtNumGolem) > 0 Or GUICtrlRead($TH7txtNumGolem) > 0 Or GUICtrlRead($TH8txtNumGolem) > 0 Or GUICtrlRead($TH9txtNumGolem) > 0 Or GUICtrlRead($TH10txtNumGolem) > 0 Or GUICtrlRead($TH11txtNumGolem) > 0 Or GUICtrlRead($TH12txtNumGolem) > 0  Or GUICtrlRead($TH13txtNumGolem) > 0 Then
		If GUICtrlRead($TH6txtNumGolem) >= 0 Then
			$6Golem = "|" & GUICtrlRead($TH6txtNumGolem) & "          "
			If GUICtrlRead($TH6txtNumGolem) >= 10 Then
				$6Golem = "|" & GUICtrlRead($TH6txtNumGolem) & "         "
					If GUICtrlRead($TH6txtNumGolem) >= 100 Then
						$6Golem = "|" & GUICtrlRead($TH6txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumGolem) >= 0 Then
			$7Golem = "|" & GUICtrlRead($TH7txtNumGolem) & "          "
			If GUICtrlRead($TH7txtNumGolem) >= 10 Then
				$7Golem = "|" & GUICtrlRead($TH7txtNumGolem) & "         "
					If GUICtrlRead($TH7txtNumGolem) >= 100 Then
						$7Golem = "|" & GUICtrlRead($TH7txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumGolem) >= 0 Then
			$8Golem = "|" & GUICtrlRead($TH8txtNumGolem) & "          "
			If GUICtrlRead($TH8txtNumGolem) >= 10 Then
				$8Golem = "|" & GUICtrlRead($TH8txtNumGolem) & "         "
					If GUICtrlRead($TH8txtNumGolem) >= 100 Then
						$8Golem = "|" & GUICtrlRead($TH8txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumGolem) >= 0 Then
			$9Golem = "|" & GUICtrlRead($TH9txtNumGolem) & "          "
			If GUICtrlRead($TH9txtNumGolem) >= 10 Then
				$9Golem = "|" & GUICtrlRead($TH9txtNumGolem) & "         "
					If GUICtrlRead($TH9txtNumGolem) >= 100 Then
						$9Golem = "|" & GUICtrlRead($TH9txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumGolem) >= 0 Then
			$10Golem = "|" & GUICtrlRead($TH10txtNumGolem) & "          "
			If GUICtrlRead($TH10txtNumGolem) >= 10 Then
				$10Golem = "|" & GUICtrlRead($TH10txtNumGolem) & "         "
					If GUICtrlRead($TH10txtNumGolem) >= 100 Then
						$10Golem = "|" & GUICtrlRead($TH10txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumGolem) >= 0 Then
			$11Golem = "|" & GUICtrlRead($TH11txtNumGolem) & "          "
			If GUICtrlRead($TH11txtNumGolem) >= 10 Then
				$11Golem = "|" & GUICtrlRead($TH11txtNumGolem) & "         "
					If GUICtrlRead($TH11txtNumGolem) >= 100 Then
						$11Golem = "|" & GUICtrlRead($TH11txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumGolem) >= 0 Then
			$12Golem = "|" & GUICtrlRead($TH12txtNumGolem) & "          "
			If GUICtrlRead($TH12txtNumGolem) >= 10 Then
				$12Golem = "|" & GUICtrlRead($TH12txtNumGolem) & "         "
					If GUICtrlRead($TH12txtNumGolem) >= 100 Then
						$12Golem = "|" & GUICtrlRead($TH12txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumGolem) >= 0 Then
			$13Golem = "|" & GUICtrlRead($TH13txtNumGolem) & "          "
			If GUICtrlRead($TH13txtNumGolem) >= 10 Then
				$13Golem = "|" & GUICtrlRead($TH13txtNumGolem) & "         "
					If GUICtrlRead($TH13txtNumGolem) >= 100 Then
						$13Golem = "|" & GUICtrlRead($TH13txtNumGolem) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainGolem = "TRAIN |Gole       " & $6Golem & $7Golem & $8Golem & $9Golem & $10Golem & $11Golem & $12Golem & $13Golem &"|" & @CRLF
	EndIf


;Witch

	If GUICtrlRead($TH6txtNumWitch) > 0 Or GUICtrlRead($TH7txtNumWitch) > 0 Or GUICtrlRead($TH8txtNumWitch) > 0 Or GUICtrlRead($TH9txtNumWitch) > 0 Or GUICtrlRead($TH10txtNumWitch) > 0 Or GUICtrlRead($TH11txtNumWitch) > 0 Or GUICtrlRead($TH12txtNumWitch) > 0  Or GUICtrlRead($TH13txtNumWitch) > 0 Then
		If GUICtrlRead($TH6txtNumWitch) >= 0 Then
			$6Witch = "|" & GUICtrlRead($TH6txtNumWitch) & "          "
			If GUICtrlRead($TH6txtNumWitch) >= 10 Then
				$6Witch = "|" & GUICtrlRead($TH6txtNumWitch) & "         "
					If GUICtrlRead($TH6txtNumWitch) >= 100 Then
						$6Witch = "|" & GUICtrlRead($TH6txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWitch) >= 0 Then
			$7Witch = "|" & GUICtrlRead($TH7txtNumWitch) & "          "
			If GUICtrlRead($TH7txtNumWitch) >= 10 Then
				$7Witch = "|" & GUICtrlRead($TH7txtNumWitch) & "         "
					If GUICtrlRead($TH7txtNumWitch) >= 100 Then
						$7Witch = "|" & GUICtrlRead($TH7txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWitch) >= 0 Then
			$8Witch = "|" & GUICtrlRead($TH8txtNumWitch) & "          "
			If GUICtrlRead($TH8txtNumWitch) >= 10 Then
				$8Witch = "|" & GUICtrlRead($TH8txtNumWitch) & "         "
					If GUICtrlRead($TH8txtNumWitch) >= 100 Then
						$8Witch = "|" & GUICtrlRead($TH8txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWitch) >= 0 Then
			$9Witch = "|" & GUICtrlRead($TH9txtNumWitch) & "          "
			If GUICtrlRead($TH9txtNumWitch) >= 10 Then
				$9Witch = "|" & GUICtrlRead($TH9txtNumWitch) & "         "
					If GUICtrlRead($TH9txtNumWitch) >= 100 Then
						$9Witch = "|" & GUICtrlRead($TH9txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWitch) >= 0 Then
			$10Witch = "|" & GUICtrlRead($TH10txtNumWitch) & "          "
			If GUICtrlRead($TH10txtNumWitch) >= 10 Then
				$10Witch = "|" & GUICtrlRead($TH10txtNumWitch) & "         "
					If GUICtrlRead($TH10txtNumWitch) >= 100 Then
						$10Witch = "|" & GUICtrlRead($TH10txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWitch) >= 0 Then
			$11Witch = "|" & GUICtrlRead($TH11txtNumWitch) & "          "
			If GUICtrlRead($TH11txtNumWitch) >= 10 Then
				$11Witch = "|" & GUICtrlRead($TH11txtNumWitch) & "         "
					If GUICtrlRead($TH11txtNumWitch) >= 100 Then
						$11Witch = "|" & GUICtrlRead($TH11txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWitch) >= 0 Then
			$12Witch = "|" & GUICtrlRead($TH12txtNumWitch) & "          "
			If GUICtrlRead($TH12txtNumWitch) >= 10 Then
				$12Witch = "|" & GUICtrlRead($TH12txtNumWitch) & "         "
					If GUICtrlRead($TH12txtNumWitch) >= 100 Then
						$12Witch = "|" & GUICtrlRead($TH12txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumWitch) >= 0 Then
			$13Witch = "|" & GUICtrlRead($TH13txtNumWitch) & "          "
			If GUICtrlRead($TH13txtNumWitch) >= 10 Then
				$13Witch = "|" & GUICtrlRead($TH13txtNumWitch) & "         "
					If GUICtrlRead($TH13txtNumWitch) >= 100 Then
						$13Witch = "|" & GUICtrlRead($TH13txtNumWitch) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainWitch = "TRAIN |Witc       " & $6Witch & $7Witch & $8Witch & $9Witch & $10Witch & $11Witch & $12Witch & $13Witch &"|" & @CRLF
	EndIf

;Lava

	If GUICtrlRead($TH6txtNumLava) > 0 Or GUICtrlRead($TH7txtNumLava) > 0 Or GUICtrlRead($TH8txtNumLava) > 0 Or GUICtrlRead($TH9txtNumLava) > 0 Or GUICtrlRead($TH10txtNumLava) > 0 Or GUICtrlRead($TH11txtNumLava) > 0 Or GUICtrlRead($TH12txtNumLava) > 0  Or GUICtrlRead($TH13txtNumLava) > 0 Then
		If GUICtrlRead($TH6txtNumLava) >= 0 Then
			$6Lava = "|" & GUICtrlRead($TH6txtNumLava) & "          "
			If GUICtrlRead($TH6txtNumLava) >= 10 Then
				$6Lava = "|" & GUICtrlRead($TH6txtNumLava) & "         "
					If GUICtrlRead($TH6txtNumLava) >= 100 Then
						$6Lava = "|" & GUICtrlRead($TH6txtNumLava) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumLava) >= 0 Then
			$7Lava = "|" & GUICtrlRead($TH7txtNumLava) & "          "
			If GUICtrlRead($TH7txtNumLava) >= 10 Then
				$7Lava = "|" & GUICtrlRead($TH7txtNumLava) & "         "
					If GUICtrlRead($TH7txtNumLava) >= 100 Then
						$7Lava = "|" & GUICtrlRead($TH7txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumLava) >= 0 Then
			$8Lava = "|" & GUICtrlRead($TH8txtNumLava) & "          "
			If GUICtrlRead($TH8txtNumLava) >= 10 Then
				$8Lava = "|" & GUICtrlRead($TH8txtNumLava) & "         "
					If GUICtrlRead($TH8txtNumLava) >= 100 Then
						$8Lava = "|" & GUICtrlRead($TH8txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumLava) >= 0 Then
			$9Lava = "|" & GUICtrlRead($TH9txtNumLava) & "          "
			If GUICtrlRead($TH9txtNumLava) >= 10 Then
				$9Lava = "|" & GUICtrlRead($TH9txtNumLava) & "         "
					If GUICtrlRead($TH9txtNumLava) >= 100 Then
						$9Lava = "|" & GUICtrlRead($TH9txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumLava) >= 0 Then
			$10Lava = "|" & GUICtrlRead($TH10txtNumLava) & "          "
			If GUICtrlRead($TH10txtNumLava) >= 10 Then
				$10Lava = "|" & GUICtrlRead($TH10txtNumLava) & "         "
					If GUICtrlRead($TH10txtNumLava) >= 100 Then
						$10Lava = "|" & GUICtrlRead($TH10txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumLava) >= 0 Then
			$11Lava = "|" & GUICtrlRead($TH11txtNumLava) & "          "
			If GUICtrlRead($TH11txtNumLava) >= 10 Then
				$11Lava = "|" & GUICtrlRead($TH11txtNumLava) & "         "
					If GUICtrlRead($TH11txtNumLava) >= 100 Then
						$11Lava = "|" & GUICtrlRead($TH11txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumLava) >= 0 Then
			$12Lava = "|" & GUICtrlRead($TH12txtNumLava) & "          "
			If GUICtrlRead($TH12txtNumLava) >= 10 Then
				$12Lava = "|" & GUICtrlRead($TH12txtNumLava) & "         "
					If GUICtrlRead($TH12txtNumLava) >= 100 Then
						$12Lava = "|" & GUICtrlRead($TH12txtNumLava) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumLava) >= 0 Then
			$13Lava = "|" & GUICtrlRead($TH13txtNumLava) & "          "
			If GUICtrlRead($TH13txtNumLava) >= 10 Then
				$13Lava = "|" & GUICtrlRead($TH13txtNumLava) & "         "
					If GUICtrlRead($TH13txtNumLava) >= 100 Then
						$13Lava = "|" & GUICtrlRead($TH13txtNumLava) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainLava = "TRAIN |Lava       " & $6Lava & $7Lava & $8Lava & $9Lava & $10Lava & $11Lava & $12Lava & $13Lava &"|" & @CRLF
	EndIf

;Bowler

	If GUICtrlRead($TH6txtNumBowler) > 0 Or GUICtrlRead($TH7txtNumBowler) > 0 Or GUICtrlRead($TH8txtNumBowler) > 0 Or GUICtrlRead($TH9txtNumBowler) > 0 Or GUICtrlRead($TH10txtNumBowler) > 0 Or GUICtrlRead($TH11txtNumBowler) > 0 Or GUICtrlRead($TH12txtNumBowler) > 0  Or GUICtrlRead($TH13txtNumBowler) > 0 Then
		If GUICtrlRead($TH6txtNumBowler) >= 0 Then
			$6Bowler = "|" & GUICtrlRead($TH6txtNumBowler) & "          "
			If GUICtrlRead($TH6txtNumBowler) >= 10 Then
				$6Bowler = "|" & GUICtrlRead($TH6txtNumBowler) & "         "
					If GUICtrlRead($TH6txtNumBowler) >= 100 Then
						$6Bowler = "|" & GUICtrlRead($TH6txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBowler) >= 0 Then
			$7Bowler = "|" & GUICtrlRead($TH7txtNumBowler) & "          "
			If GUICtrlRead($TH7txtNumBowler) >= 10 Then
				$7Bowler = "|" & GUICtrlRead($TH7txtNumBowler) & "         "
					If GUICtrlRead($TH7txtNumBowler) >= 100 Then
						$7Bowler = "|" & GUICtrlRead($TH7txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBowler) >= 0 Then
			$8Bowler = "|" & GUICtrlRead($TH8txtNumBowler) & "          "
			If GUICtrlRead($TH8txtNumBowler) >= 10 Then
				$8Bowler = "|" & GUICtrlRead($TH8txtNumBowler) & "         "
					If GUICtrlRead($TH8txtNumBowler) >= 100 Then
						$8Bowler = "|" & GUICtrlRead($TH8txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBowler) >= 0 Then
			$9Bowler = "|" & GUICtrlRead($TH9txtNumBowler) & "          "
			If GUICtrlRead($TH9txtNumBowler) >= 10 Then
				$9Bowler = "|" & GUICtrlRead($TH9txtNumBowler) & "         "
					If GUICtrlRead($TH9txtNumBowler) >= 100 Then
						$9Bowler = "|" & GUICtrlRead($TH9txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBowler) >= 0 Then
			$10Bowler = "|" & GUICtrlRead($TH10txtNumBowler) & "          "
			If GUICtrlRead($TH10txtNumBowler) >= 10 Then
				$10Bowler = "|" & GUICtrlRead($TH10txtNumBowler) & "         "
					If GUICtrlRead($TH10txtNumBowler) >= 100 Then
						$10Bowler = "|" & GUICtrlRead($TH10txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBowler) >= 0 Then
			$11Bowler = "|" & GUICtrlRead($TH11txtNumBowler) & "          "
			If GUICtrlRead($TH11txtNumBowler) >= 10 Then
				$11Bowler = "|" & GUICtrlRead($TH11txtNumBowler) & "         "
					If GUICtrlRead($TH11txtNumBowler) >= 100 Then
						$11Bowler = "|" & GUICtrlRead($TH11txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBowler) >= 0 Then
			$12Bowler = "|" & GUICtrlRead($TH12txtNumBowler) & "          "
			If GUICtrlRead($TH12txtNumBowler) >= 10 Then
				$12Bowler = "|" & GUICtrlRead($TH12txtNumBowler) & "         "
					If GUICtrlRead($TH12txtNumBowler) >= 100 Then
						$12Bowler = "|" & GUICtrlRead($TH12txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBowler) >= 0 Then
			$13Bowler = "|" & GUICtrlRead($TH13txtNumBowler) & "          "
			If GUICtrlRead($TH13txtNumBowler) >= 10 Then
				$13Bowler = "|" & GUICtrlRead($TH13txtNumBowler) & "         "
					If GUICtrlRead($TH13txtNumBowler) >= 100 Then
						$13Bowler = "|" & GUICtrlRead($TH13txtNumBowler) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBowler = "TRAIN |Bowl       " & $6Bowler & $7Bowler & $8Bowler & $9Bowler & $10Bowler & $11Bowler & $12Bowler & $13Bowler &"|" & @CRLF
	EndIf
;IceGolem

	If GUICtrlRead($TH6txtNumIceGolem) > 0 Or GUICtrlRead($TH7txtNumIceGolem) > 0 Or GUICtrlRead($TH8txtNumIceGolem) > 0 Or GUICtrlRead($TH9txtNumIceGolem) > 0 Or GUICtrlRead($TH10txtNumIceGolem) > 0 Or GUICtrlRead($TH11txtNumIceGolem) > 0 Or GUICtrlRead($TH12txtNumIceGolem) > 0  Or GUICtrlRead($TH13txtNumIceGolem) > 0 Then
		If GUICtrlRead($TH6txtNumIceGolem) >= 0 Then
			$6IceGolem = "|" & GUICtrlRead($TH6txtNumIceGolem) & "          "
			If GUICtrlRead($TH6txtNumIceGolem) >= 10 Then
				$6IceGolem = "|" & GUICtrlRead($TH6txtNumIceGolem) & "         "
					If GUICtrlRead($TH6txtNumIceGolem) >= 100 Then
						$6IceGolem = "|" & GUICtrlRead($TH6txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumIceGolem) >= 0 Then
			$7IceGolem = "|" & GUICtrlRead($TH7txtNumIceGolem) & "          "
			If GUICtrlRead($TH7txtNumIceGolem) >= 10 Then
				$7IceGolem = "|" & GUICtrlRead($TH7txtNumIceGolem) & "         "
					If GUICtrlRead($TH7txtNumIceGolem) >= 100 Then
						$7IceGolem = "|" & GUICtrlRead($TH7txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumIceGolem) >= 0 Then
			$8IceGolem = "|" & GUICtrlRead($TH8txtNumIceGolem) & "          "
			If GUICtrlRead($TH8txtNumIceGolem) >= 10 Then
				$8IceGolem = "|" & GUICtrlRead($TH8txtNumIceGolem) & "         "
					If GUICtrlRead($TH8txtNumIceGolem) >= 100 Then
						$8IceGolem = "|" & GUICtrlRead($TH8txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumIceGolem) >= 0 Then
			$9IceGolem = "|" & GUICtrlRead($TH9txtNumIceGolem) & "          "
			If GUICtrlRead($TH9txtNumIceGolem) >= 10 Then
				$9IceGolem = "|" & GUICtrlRead($TH9txtNumIceGolem) & "         "
					If GUICtrlRead($TH9txtNumIceGolem) >= 100 Then
						$9IceGolem = "|" & GUICtrlRead($TH9txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumIceGolem) >= 0 Then
			$10IceGolem = "|" & GUICtrlRead($TH10txtNumIceGolem) & "          "
			If GUICtrlRead($TH10txtNumIceGolem) >= 10 Then
				$10IceGolem = "|" & GUICtrlRead($TH10txtNumIceGolem) & "         "
					If GUICtrlRead($TH10txtNumIceGolem) >= 100 Then
						$10IceGolem = "|" & GUICtrlRead($TH10txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumIceGolem) >= 0 Then
			$11IceGolem = "|" & GUICtrlRead($TH11txtNumIceGolem) & "          "
			If GUICtrlRead($TH11txtNumIceGolem) >= 10 Then
				$11IceGolem = "|" & GUICtrlRead($TH11txtNumIceGolem) & "         "
					If GUICtrlRead($TH11txtNumIceGolem) >= 100 Then
						$11IceGolem = "|" & GUICtrlRead($TH11txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumIceGolem) >= 0 Then
			$12IceGolem = "|" & GUICtrlRead($TH12txtNumIceGolem) & "          "
			If GUICtrlRead($TH12txtNumIceGolem) >= 10 Then
				$12IceGolem = "|" & GUICtrlRead($TH12txtNumIceGolem) & "         "
					If GUICtrlRead($TH12txtNumIceGolem) >= 100 Then
						$12IceGolem = "|" & GUICtrlRead($TH12txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumIceGolem) >= 0 Then
			$13IceGolem = "|" & GUICtrlRead($TH13txtNumIceGolem) & "          "
			If GUICtrlRead($TH13txtNumIceGolem) >= 10 Then
				$13IceGolem = "|" & GUICtrlRead($TH13txtNumIceGolem) & "         "
					If GUICtrlRead($TH13txtNumIceGolem) >= 100 Then
						$13IceGolem = "|" & GUICtrlRead($TH13txtNumIceGolem) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainIceGolem = "TRAIN |IceG       " & $6IceGolem & $7IceGolem & $8IceGolem & $9IceGolem & $10IceGolem & $11IceGolem & $12IceGolem & $13IceGolem &"|" & @CRLF
	EndIf
;Light Spell

	If GUICtrlRead($TH6txtNumLspell) > 0 Or GUICtrlRead($TH7txtNumLspell) > 0 Or GUICtrlRead($TH8txtNumLspell) > 0 Or GUICtrlRead($TH9txtNumLspell) > 0 Or GUICtrlRead($TH10txtNumLspell) > 0 Or GUICtrlRead($TH11txtNumLspell) > 0 Or GUICtrlRead($TH12txtNumLspell) > 0  Or GUICtrlRead($TH13txtNumLspell) > 0 Then
		If GUICtrlRead($TH6txtNumLspell) >= 0 Then
			$6Lspell = "|" & GUICtrlRead($TH6txtNumLspell) & "          "
			If GUICtrlRead($TH6txtNumLspell) >= 10 Then
				$6Lspell = "|" & GUICtrlRead($TH6txtNumLspell) & "         "
					If GUICtrlRead($TH6txtNumLspell) >= 100 Then
						$6Lspell = "|" & GUICtrlRead($TH6txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumLspell) >= 0 Then
			$7Lspell = "|" & GUICtrlRead($TH7txtNumLspell) & "          "
			If GUICtrlRead($TH7txtNumLspell) >= 10 Then
				$7Lspell = "|" & GUICtrlRead($TH7txtNumLspell) & "         "
					If GUICtrlRead($TH7txtNumLspell) >= 100 Then
						$7Lspell = "|" & GUICtrlRead($TH7txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumLspell) >= 0 Then
			$8Lspell = "|" & GUICtrlRead($TH8txtNumLspell) & "          "
			If GUICtrlRead($TH8txtNumLspell) >= 10 Then
				$8Lspell = "|" & GUICtrlRead($TH8txtNumLspell) & "         "
					If GUICtrlRead($TH8txtNumLspell) >= 100 Then
						$8Lspell = "|" & GUICtrlRead($TH8txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumLspell) >= 0 Then
			$9Lspell = "|" & GUICtrlRead($TH9txtNumLspell) & "          "
			If GUICtrlRead($TH9txtNumLspell) >= 10 Then
				$9Lspell = "|" & GUICtrlRead($TH9txtNumLspell) & "         "
					If GUICtrlRead($TH9txtNumLspell) >= 100 Then
						$9Lspell = "|" & GUICtrlRead($TH9txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumLspell) >= 0 Then
			$10Lspell = "|" & GUICtrlRead($TH10txtNumLspell) & "          "
			If GUICtrlRead($TH10txtNumLspell) >= 10 Then
				$10Lspell = "|" & GUICtrlRead($TH10txtNumLspell) & "         "
					If GUICtrlRead($TH10txtNumLspell) >= 100 Then
						$10Lspell = "|" & GUICtrlRead($TH10txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumLspell) >= 0 Then
			$11Lspell = "|" & GUICtrlRead($TH11txtNumLspell) & "          "
			If GUICtrlRead($TH11txtNumLspell) >= 10 Then
				$11Lspell = "|" & GUICtrlRead($TH11txtNumLspell) & "         "
					If GUICtrlRead($TH11txtNumLspell) >= 100 Then
						$11Lspell = "|" & GUICtrlRead($TH11txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumLspell) >= 0 Then
			$12Lspell = "|" & GUICtrlRead($TH12txtNumLspell) & "          "
			If GUICtrlRead($TH12txtNumLspell) >= 10 Then
				$12Lspell = "|" & GUICtrlRead($TH12txtNumLspell) & "         "
					If GUICtrlRead($TH12txtNumLspell) >= 100 Then
						$12Lspell = "|" & GUICtrlRead($TH12txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumLspell) >= 0 Then
			$13Lspell = "|" & GUICtrlRead($TH13txtNumLspell) & "          "
			If GUICtrlRead($TH13txtNumLspell) >= 10 Then
				$13Lspell = "|" & GUICtrlRead($TH13txtNumLspell) & "         "
					If GUICtrlRead($TH13txtNumLspell) >= 100 Then
						$13Lspell = "|" & GUICtrlRead($TH13txtNumLspell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainLSpell = "TRAIN |LSpell     " & $6LSpell & $7LSpell & $8LSpell & $9LSpell & $10LSpell & $11LSpell & $12LSpell & $13LSpell &"|" & @CRLF
	EndIf

;Heal Spell

	If GUICtrlRead($TH6txtNumHSpell) > 0 Or GUICtrlRead($TH7txtNumHSpell) > 0 Or GUICtrlRead($TH8txtNumHSpell) > 0 Or GUICtrlRead($TH9txtNumHSpell) > 0 Or GUICtrlRead($TH10txtNumHSpell) > 0 Or GUICtrlRead($TH11txtNumHSpell) > 0 Or GUICtrlRead($TH12txtNumHSpell) > 0 Or GUICtrlRead($TH13txtNumHSpell) > 0 Then
		If GUICtrlRead($TH6txtNumHSpell) >= 0 Then
			$6HSpell = "|" & GUICtrlRead($TH6txtNumHSpell) & "          "
			If GUICtrlRead($TH6txtNumHSpell) >= 10 Then
				$6HSpell = "|" & GUICtrlRead($TH6txtNumHSpell) & "         "
					If GUICtrlRead($TH6txtNumHSpell) >= 100 Then
						$6HSpell = "|" & GUICtrlRead($TH6txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHSpell) >= 0 Then
			$7HSpell = "|" & GUICtrlRead($TH7txtNumHSpell) & "          "
			If GUICtrlRead($TH7txtNumHSpell) >= 10 Then
				$7HSpell = "|" & GUICtrlRead($TH7txtNumHSpell) & "         "
					If GUICtrlRead($TH7txtNumHSpell) >= 100 Then
						$7HSpell = "|" & GUICtrlRead($TH7txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHSpell) >= 0 Then
			$8HSpell = "|" & GUICtrlRead($TH8txtNumHSpell) & "          "
			If GUICtrlRead($TH8txtNumHSpell) >= 10 Then
				$8HSpell = "|" & GUICtrlRead($TH8txtNumHSpell) & "         "
					If GUICtrlRead($TH8txtNumHSpell) >= 100 Then
						$8HSpell = "|" & GUICtrlRead($TH8txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHSpell) >= 0 Then
			$9HSpell = "|" & GUICtrlRead($TH9txtNumHSpell) & "          "
			If GUICtrlRead($TH9txtNumHSpell) >= 10 Then
				$9HSpell = "|" & GUICtrlRead($TH9txtNumHSpell) & "         "
					If GUICtrlRead($TH9txtNumHSpell) >= 100 Then
						$9HSpell = "|" & GUICtrlRead($TH9txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHSpell) >= 0 Then
			$10HSpell = "|" & GUICtrlRead($TH10txtNumHSpell) & "          "
			If GUICtrlRead($TH10txtNumHSpell) >= 10 Then
				$10HSpell = "|" & GUICtrlRead($TH10txtNumHSpell) & "         "
					If GUICtrlRead($TH10txtNumHSpell) >= 100 Then
						$10HSpell = "|" & GUICtrlRead($TH10txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHSpell) >= 0 Then
			$11HSpell = "|" & GUICtrlRead($TH11txtNumHSpell) & "          "
			If GUICtrlRead($TH11txtNumHSpell) >= 10 Then
				$11HSpell = "|" & GUICtrlRead($TH11txtNumHSpell) & "         "
					If GUICtrlRead($TH11txtNumHSpell) >= 100 Then
						$11HSpell = "|" & GUICtrlRead($TH11txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHSpell) >= 0 Then
			$12HSpell = "|" & GUICtrlRead($TH12txtNumHSpell) & "          "
			If GUICtrlRead($TH12txtNumHSpell) >= 10 Then
				$12HSpell = "|" & GUICtrlRead($TH12txtNumHSpell) & "         "
					If GUICtrlRead($TH12txtNumHSpell) >= 100 Then
						$12HSpell = "|" & GUICtrlRead($TH12txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHSpell) >= 0 Then
			$13HSpell = "|" & GUICtrlRead($TH13txtNumHSpell) & "          "
			If GUICtrlRead($TH13txtNumHSpell) >= 10 Then
				$13HSpell = "|" & GUICtrlRead($TH13txtNumHSpell) & "         "
					If GUICtrlRead($TH13txtNumHSpell) >= 100 Then
						$13HSpell = "|" & GUICtrlRead($TH13txtNumHSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHSpell = "TRAIN |HSpell     " & $6HSpell & $7HSpell & $8HSpell & $9HSpell & $10HSpell & $11HSpell & $12HSpell & $13HSpell &"|" & @CRLF
	EndIf



;Rage Spell

	If GUICtrlRead($TH6txtNumRSpell) > 0 Or GUICtrlRead($TH7txtNumRSpell) > 0 Or GUICtrlRead($TH8txtNumRSpell) > 0 Or GUICtrlRead($TH9txtNumRSpell) > 0 Or GUICtrlRead($TH10txtNumRSpell) > 0 Or GUICtrlRead($TH11txtNumRSpell) > 0 Or GUICtrlRead($TH12txtNumRSpell) > 0 Or GUICtrlRead($TH13txtNumRSpell) > 0 Then
		If GUICtrlRead($TH6txtNumRSpell) >= 0 Then
			$6RSpell = "|" & GUICtrlRead($TH6txtNumRSpell) & "          "
			If GUICtrlRead($TH6txtNumRSpell) >= 10 Then
				$6RSpell = "|" & GUICtrlRead($TH6txtNumRSpell) & "         "
					If GUICtrlRead($TH6txtNumRSpell) >= 100 Then
						$6RSpell = "|" & GUICtrlRead($TH6txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumRSpell) >= 0 Then
			$7RSpell = "|" & GUICtrlRead($TH7txtNumRSpell) & "          "
			If GUICtrlRead($TH7txtNumRSpell) >= 10 Then
				$7RSpell = "|" & GUICtrlRead($TH7txtNumRSpell) & "         "
					If GUICtrlRead($TH7txtNumRSpell) >= 100 Then
						$7RSpell = "|" & GUICtrlRead($TH7txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumRSpell) >= 0 Then
			$8RSpell = "|" & GUICtrlRead($TH8txtNumRSpell) & "          "
			If GUICtrlRead($TH8txtNumRSpell) >= 10 Then
				$8RSpell = "|" & GUICtrlRead($TH8txtNumRSpell) & "         "
					If GUICtrlRead($TH8txtNumRSpell) >= 100 Then
						$8RSpell = "|" & GUICtrlRead($TH8txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumRSpell) >= 0 Then
			$9RSpell = "|" & GUICtrlRead($TH9txtNumRSpell) & "          "
			If GUICtrlRead($TH9txtNumRSpell) >= 10 Then
				$9RSpell = "|" & GUICtrlRead($TH9txtNumRSpell) & "         "
					If GUICtrlRead($TH9txtNumRSpell) >= 100 Then
						$9RSpell = "|" & GUICtrlRead($TH9txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumRSpell) >= 0 Then
			$10RSpell = "|" & GUICtrlRead($TH10txtNumRSpell) & "          "
			If GUICtrlRead($TH10txtNumRSpell) >= 10 Then
				$10RSpell = "|" & GUICtrlRead($TH10txtNumRSpell) & "         "
					If GUICtrlRead($TH10txtNumRSpell) >= 100 Then
						$10RSpell = "|" & GUICtrlRead($TH10txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumRSpell) >= 0 Then
			$11RSpell = "|" & GUICtrlRead($TH11txtNumRSpell) & "          "
			If GUICtrlRead($TH11txtNumRSpell) >= 10 Then
				$11RSpell = "|" & GUICtrlRead($TH11txtNumRSpell) & "         "
					If GUICtrlRead($TH11txtNumRSpell) >= 100 Then
						$11RSpell = "|" & GUICtrlRead($TH11txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumRSpell) >= 0 Then
			$12RSpell = "|" & GUICtrlRead($TH12txtNumRSpell) & "          "
			If GUICtrlRead($TH12txtNumRSpell) >= 10 Then
				$12RSpell = "|" & GUICtrlRead($TH12txtNumRSpell) & "         "
					If GUICtrlRead($TH12txtNumRSpell) >= 100 Then
						$12RSpell = "|" & GUICtrlRead($TH12txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumRSpell) >= 0 Then
			$13RSpell = "|" & GUICtrlRead($TH13txtNumRSpell) & "          "
			If GUICtrlRead($TH13txtNumRSpell) >= 10 Then
				$13RSpell = "|" & GUICtrlRead($TH13txtNumRSpell) & "         "
					If GUICtrlRead($TH13txtNumRSpell) >= 100 Then
						$13RSpell = "|" & GUICtrlRead($TH13txtNumRSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainRSpell = "TRAIN |RSpell     " & $6RSpell & $7RSpell & $8RSpell & $9RSpell & $10RSpell & $11RSpell & $12RSpell & $13RSpell &"|" & @CRLF
	EndIf

;Jump Spell

	If GUICtrlRead($TH6txtNumJSpell) > 0 Or GUICtrlRead($TH7txtNumJSpell) > 0 Or GUICtrlRead($TH8txtNumJSpell) > 0 Or GUICtrlRead($TH9txtNumJSpell) > 0 Or GUICtrlRead($TH10txtNumJSpell) > 0 Or GUICtrlRead($TH11txtNumJSpell) > 0 Or GUICtrlRead($TH12txtNumJSpell) > 0  Or GUICtrlRead($TH13txtNumJSpell) > 0 Then
		If GUICtrlRead($TH6txtNumJSpell) >= 0 Then
			$6JSpell = "|" & GUICtrlRead($TH6txtNumJSpell) & "          "
			If GUICtrlRead($TH6txtNumJSpell) >= 10 Then
				$6JSpell = "|" & GUICtrlRead($TH6txtNumJSpell) & "         "
					If GUICtrlRead($TH6txtNumJSpell) >= 100 Then
						$6JSpell = "|" & GUICtrlRead($TH6txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumJSpell) >= 0 Then
			$7JSpell = "|" & GUICtrlRead($TH7txtNumJSpell) & "          "
			If GUICtrlRead($TH7txtNumJSpell) >= 10 Then
				$7JSpell = "|" & GUICtrlRead($TH7txtNumJSpell) & "         "
					If GUICtrlRead($TH7txtNumJSpell) >= 100 Then
						$7JSpell = "|" & GUICtrlRead($TH7txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumJSpell) >= 0 Then
			$8JSpell = "|" & GUICtrlRead($TH8txtNumJSpell) & "          "
			If GUICtrlRead($TH8txtNumJSpell) >= 10 Then
				$8JSpell = "|" & GUICtrlRead($TH8txtNumJSpell) & "         "
					If GUICtrlRead($TH8txtNumJSpell) >= 100 Then
						$8JSpell = "|" & GUICtrlRead($TH8txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumJSpell) >= 0 Then
			$9JSpell = "|" & GUICtrlRead($TH9txtNumJSpell) & "          "
			If GUICtrlRead($TH9txtNumJSpell) >= 10 Then
				$9JSpell = "|" & GUICtrlRead($TH9txtNumJSpell) & "         "
					If GUICtrlRead($TH9txtNumJSpell) >= 100 Then
						$9JSpell = "|" & GUICtrlRead($TH9txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumJSpell) >= 0 Then
			$10JSpell = "|" & GUICtrlRead($TH10txtNumJSpell) & "          "
			If GUICtrlRead($TH10txtNumJSpell) >= 10 Then
				$10JSpell = "|" & GUICtrlRead($TH10txtNumJSpell) & "         "
					If GUICtrlRead($TH10txtNumJSpell) >= 100 Then
						$10JSpell = "|" & GUICtrlRead($TH10txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumJSpell) >= 0 Then
			$11JSpell = "|" & GUICtrlRead($TH11txtNumJSpell) & "          "
			If GUICtrlRead($TH11txtNumJSpell) >= 10 Then
				$11JSpell = "|" & GUICtrlRead($TH11txtNumJSpell) & "         "
					If GUICtrlRead($TH11txtNumJSpell) >= 100 Then
						$11JSpell = "|" & GUICtrlRead($TH11txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumJSpell) >= 0 Then
			$12JSpell = "|" & GUICtrlRead($TH12txtNumJSpell) & "          "
			If GUICtrlRead($TH12txtNumJSpell) >= 10 Then
				$12JSpell = "|" & GUICtrlRead($TH12txtNumJSpell) & "         "
					If GUICtrlRead($TH12txtNumJSpell) >= 100 Then
						$12JSpell = "|" & GUICtrlRead($TH12txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumJSpell) >= 0 Then
			$13JSpell = "|" & GUICtrlRead($TH13txtNumJSpell) & "          "
			If GUICtrlRead($TH13txtNumJSpell) >= 10 Then
				$13JSpell = "|" & GUICtrlRead($TH13txtNumJSpell) & "         "
					If GUICtrlRead($TH13txtNumJSpell) >= 100 Then
						$13JSpell = "|" & GUICtrlRead($TH13txtNumJSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainJSpell = "TRAIN |JSpell     " & $6JSpell & $7JSpell & $8JSpell & $9JSpell & $10JSpell & $11JSpell & $12JSpell & $13JSpell &"|" & @CRLF
	EndIf



;Freeze Spell

	If GUICtrlRead($TH6txtNumFSpell) > 0 Or GUICtrlRead($TH7txtNumFSpell) > 0 Or GUICtrlRead($TH8txtNumFSpell) > 0 Or GUICtrlRead($TH9txtNumFSpell) > 0 Or GUICtrlRead($TH10txtNumFSpell) > 0 Or GUICtrlRead($TH11txtNumFSpell) > 0 Or GUICtrlRead($TH12txtNumFSpell) > 0  Or GUICtrlRead($TH13txtNumFSpell) > 0 Then
		If GUICtrlRead($TH6txtNumFSpell) >= 0 Then
			$6FSpell = "|" & GUICtrlRead($TH6txtNumFSpell) & "          "
			If GUICtrlRead($TH6txtNumFSpell) >= 10 Then
				$6FSpell = "|" & GUICtrlRead($TH6txtNumFSpell) & "         "
					If GUICtrlRead($TH6txtNumFSpell) >= 100 Then
						$6FSpell = "|" & GUICtrlRead($TH6txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumFSpell) >= 0 Then
			$7FSpell = "|" & GUICtrlRead($TH7txtNumFSpell) & "          "
			If GUICtrlRead($TH7txtNumFSpell) >= 10 Then
				$7FSpell = "|" & GUICtrlRead($TH7txtNumFSpell) & "         "
					If GUICtrlRead($TH7txtNumFSpell) >= 100 Then
						$7FSpell = "|" & GUICtrlRead($TH7txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumFSpell) >= 0 Then
			$8FSpell = "|" & GUICtrlRead($TH8txtNumFSpell) & "          "
			If GUICtrlRead($TH8txtNumFSpell) >= 10 Then
				$8FSpell = "|" & GUICtrlRead($TH8txtNumFSpell) & "         "
					If GUICtrlRead($TH8txtNumFSpell) >= 100 Then
						$8FSpell = "|" & GUICtrlRead($TH8txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumFSpell) >= 0 Then
			$9FSpell = "|" & GUICtrlRead($TH9txtNumFSpell) & "          "
			If GUICtrlRead($TH9txtNumFSpell) >= 10 Then
				$9FSpell = "|" & GUICtrlRead($TH9txtNumFSpell) & "         "
					If GUICtrlRead($TH9txtNumFSpell) >= 100 Then
						$9FSpell = "|" & GUICtrlRead($TH9txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumFSpell) >= 0 Then
			$10FSpell = "|" & GUICtrlRead($TH10txtNumFSpell) & "          "
			If GUICtrlRead($TH10txtNumFSpell) >= 10 Then
				$10FSpell = "|" & GUICtrlRead($TH10txtNumFSpell) & "         "
					If GUICtrlRead($TH10txtNumFSpell) >= 100 Then
						$10FSpell = "|" & GUICtrlRead($TH10txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumFSpell) >= 0 Then
			$11FSpell = "|" & GUICtrlRead($TH11txtNumFSpell) & "          "
			If GUICtrlRead($TH11txtNumFSpell) >= 10 Then
				$11FSpell = "|" & GUICtrlRead($TH11txtNumFSpell) & "         "
					If GUICtrlRead($TH11txtNumFSpell) >= 100 Then
						$11FSpell = "|" & GUICtrlRead($TH11txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumFSpell) >= 0 Then
			$12FSpell = "|" & GUICtrlRead($TH12txtNumFSpell) & "          "
			If GUICtrlRead($TH12txtNumFSpell) >= 10 Then
				$12FSpell = "|" & GUICtrlRead($TH12txtNumFSpell) & "         "
					If GUICtrlRead($TH12txtNumFSpell) >= 100 Then
						$12FSpell = "|" & GUICtrlRead($TH12txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumFSpell) >= 0 Then
			$13FSpell = "|" & GUICtrlRead($TH13txtNumFSpell) & "          "
			If GUICtrlRead($TH13txtNumFSpell) >= 10 Then
				$13FSpell = "|" & GUICtrlRead($TH13txtNumFSpell) & "         "
					If GUICtrlRead($TH13txtNumFSpell) >= 100 Then
						$13FSpell = "|" & GUICtrlRead($TH13txtNumFSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainFSpell = "TRAIN |FSpell     " & $6FSpell & $7FSpell & $8FSpell & $9FSpell & $10FSpell & $11FSpell & $12FSpell & $13FSpell &"|" & @CRLF
	EndIf



;Poison Spell

	If GUICtrlRead($TH6txtNumPSpell) > 0 Or GUICtrlRead($TH7txtNumPSpell) > 0 Or GUICtrlRead($TH8txtNumPSpell) > 0 Or GUICtrlRead($TH9txtNumPSpell) > 0 Or GUICtrlRead($TH10txtNumPSpell) > 0 Or GUICtrlRead($TH11txtNumPSpell) > 0 Or GUICtrlRead($TH12txtNumPSpell) > 0  Or GUICtrlRead($TH13txtNumPSpell) > 0 Then
		If GUICtrlRead($TH6txtNumPSpell) >= 0 Then
			$6PSpell = "|" & GUICtrlRead($TH6txtNumPSpell) & "          "
			If GUICtrlRead($TH6txtNumPSpell) >= 10 Then
				$6PSpell = "|" & GUICtrlRead($TH6txtNumPSpell) & "         "
					If GUICtrlRead($TH6txtNumPSpell) >= 100 Then
						$6PSpell = "|" & GUICtrlRead($TH6txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumPSpell) >= 0 Then
			$7PSpell = "|" & GUICtrlRead($TH7txtNumPSpell) & "          "
			If GUICtrlRead($TH7txtNumPSpell) >= 10 Then
				$7PSpell = "|" & GUICtrlRead($TH7txtNumPSpell) & "         "
					If GUICtrlRead($TH7txtNumPSpell) >= 100 Then
						$7PSpell = "|" & GUICtrlRead($TH7txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumPSpell) >= 0 Then
			$8PSpell = "|" & GUICtrlRead($TH8txtNumPSpell) & "          "
			If GUICtrlRead($TH8txtNumPSpell) >= 10 Then
				$8PSpell = "|" & GUICtrlRead($TH8txtNumPSpell) & "         "
					If GUICtrlRead($TH8txtNumPSpell) >= 100 Then
						$8PSpell = "|" & GUICtrlRead($TH8txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumPSpell) >= 0 Then
			$9PSpell = "|" & GUICtrlRead($TH9txtNumPSpell) & "          "
			If GUICtrlRead($TH9txtNumPSpell) >= 10 Then
				$9PSpell = "|" & GUICtrlRead($TH9txtNumPSpell) & "         "
					If GUICtrlRead($TH9txtNumPSpell) >= 100 Then
						$9PSpell = "|" & GUICtrlRead($TH9txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumPSpell) >= 0 Then
			$10PSpell = "|" & GUICtrlRead($TH10txtNumPSpell) & "          "
			If GUICtrlRead($TH10txtNumPSpell) >= 10 Then
				$10PSpell = "|" & GUICtrlRead($TH10txtNumPSpell) & "         "
					If GUICtrlRead($TH10txtNumPSpell) >= 100 Then
						$10PSpell = "|" & GUICtrlRead($TH10txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumPSpell) >= 0 Then
			$11PSpell = "|" & GUICtrlRead($TH11txtNumPSpell) & "          "
			If GUICtrlRead($TH11txtNumPSpell) >= 10 Then
				$11PSpell = "|" & GUICtrlRead($TH11txtNumPSpell) & "         "
					If GUICtrlRead($TH11txtNumPSpell) >= 100 Then
						$11PSpell = "|" & GUICtrlRead($TH11txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumPSpell) >= 0 Then
			$12PSpell = "|" & GUICtrlRead($TH12txtNumPSpell) & "          "
			If GUICtrlRead($TH12txtNumPSpell) >= 10 Then
				$12PSpell = "|" & GUICtrlRead($TH12txtNumPSpell) & "         "
					If GUICtrlRead($TH12txtNumPSpell) >= 100 Then
						$12PSpell = "|" & GUICtrlRead($TH12txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumPSpell) >= 0 Then
			$13PSpell = "|" & GUICtrlRead($TH13txtNumPSpell) & "          "
			If GUICtrlRead($TH13txtNumPSpell) >= 10 Then
				$13PSpell = "|" & GUICtrlRead($TH13txtNumPSpell) & "         "
					If GUICtrlRead($TH13txtNumPSpell) >= 100 Then
						$13PSpell = "|" & GUICtrlRead($TH13txtNumPSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainPSpell = "TRAIN |PSpell     " & $6PSpell & $7PSpell & $8PSpell & $9PSpell & $10PSpell & $11PSpell & $12PSpell & $13PSpell &"|" & @CRLF
	EndIf




;Clone Spell

	If GUICtrlRead($TH6txtNumCSpell) > 0 Or GUICtrlRead($TH7txtNumCSpell) > 0 Or GUICtrlRead($TH8txtNumCSpell) > 0 Or GUICtrlRead($TH9txtNumCSpell) > 0 Or GUICtrlRead($TH10txtNumCSpell) > 0 Or GUICtrlRead($TH11txtNumCSpell) > 0 Or GUICtrlRead($TH12txtNumCSpell) > 0  Or GUICtrlRead($TH13txtNumCSpell) > 0 Then
		If GUICtrlRead($TH6txtNumCSpell) >= 0 Then
			$6CSpell = "|" & GUICtrlRead($TH6txtNumCSpell) & "          "
			If GUICtrlRead($TH6txtNumCSpell) >= 10 Then
				$6CSpell = "|" & GUICtrlRead($TH6txtNumCSpell) & "         "
					If GUICtrlRead($TH6txtNumCSpell) >= 100 Then
						$6CSpell = "|" & GUICtrlRead($TH6txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumCSpell) >= 0 Then
			$7CSpell = "|" & GUICtrlRead($TH7txtNumCSpell) & "          "
			If GUICtrlRead($TH7txtNumCSpell) >= 10 Then
				$7CSpell = "|" & GUICtrlRead($TH7txtNumCSpell) & "         "
					If GUICtrlRead($TH7txtNumCSpell) >= 100 Then
						$7CSpell = "|" & GUICtrlRead($TH7txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumCSpell) >= 0 Then
			$8CSpell = "|" & GUICtrlRead($TH8txtNumCSpell) & "          "
			If GUICtrlRead($TH8txtNumCSpell) >= 10 Then
				$8CSpell = "|" & GUICtrlRead($TH8txtNumCSpell) & "         "
					If GUICtrlRead($TH8txtNumCSpell) >= 100 Then
						$8CSpell = "|" & GUICtrlRead($TH8txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumCSpell) >= 0 Then
			$9CSpell = "|" & GUICtrlRead($TH9txtNumCSpell) & "          "
			If GUICtrlRead($TH9txtNumCSpell) >= 10 Then
				$9CSpell = "|" & GUICtrlRead($TH9txtNumCSpell) & "         "
					If GUICtrlRead($TH9txtNumCSpell) >= 100 Then
						$9CSpell = "|" & GUICtrlRead($TH9txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumCSpell) >= 0 Then
			$10CSpell = "|" & GUICtrlRead($TH10txtNumCSpell) & "          "
			If GUICtrlRead($TH10txtNumCSpell) >= 10 Then
				$10CSpell = "|" & GUICtrlRead($TH10txtNumCSpell) & "         "
					If GUICtrlRead($TH10txtNumCSpell) >= 100 Then
						$10CSpell = "|" & GUICtrlRead($TH10txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumCSpell) >= 0 Then
			$11CSpell = "|" & GUICtrlRead($TH11txtNumCSpell) & "          "
			If GUICtrlRead($TH11txtNumCSpell) >= 10 Then
				$11CSpell = "|" & GUICtrlRead($TH11txtNumCSpell) & "         "
					If GUICtrlRead($TH11txtNumCSpell) >= 100 Then
						$11CSpell = "|" & GUICtrlRead($TH11txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumCSpell) >= 0 Then
			$12CSpell = "|" & GUICtrlRead($TH12txtNumCSpell) & "          "
			If GUICtrlRead($TH12txtNumCSpell) >= 10 Then
				$12CSpell = "|" & GUICtrlRead($TH12txtNumCSpell) & "         "
					If GUICtrlRead($TH12txtNumCSpell) >= 100 Then
						$12CSpell = "|" & GUICtrlRead($TH12txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumCSpell) >= 0 Then
			$13CSpell = "|" & GUICtrlRead($TH13txtNumCSpell) & "          "
			If GUICtrlRead($TH13txtNumCSpell) >= 10 Then
				$13CSpell = "|" & GUICtrlRead($TH13txtNumCSpell) & "         "
					If GUICtrlRead($TH13txtNumCSpell) >= 100 Then
						$13CSpell = "|" & GUICtrlRead($TH13txtNumCSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainCSpell = "TRAIN |CSpell     " & $6CSpell & $7CSpell & $8CSpell & $9CSpell & $10CSpell & $11CSpell & $12CSpell & $13CSpell &"|" & @CRLF
	EndIf

;EarthQuake Spell

	If GUICtrlRead($TH6txtNumESpell) > 0 Or GUICtrlRead($TH7txtNumESpell) > 0 Or GUICtrlRead($TH8txtNumESpell) > 0 Or GUICtrlRead($TH9txtNumESpell) > 0 Or GUICtrlRead($TH10txtNumESpell) > 0 Or GUICtrlRead($TH11txtNumESpell) > 0 Or GUICtrlRead($TH12txtNumESpell) > 0  Or GUICtrlRead($TH13txtNumESpell) > 0 Then
		If GUICtrlRead($TH6txtNumESpell) >= 0 Then
			$6ESpell = "|" & GUICtrlRead($TH6txtNumESpell) & "          "
			If GUICtrlRead($TH6txtNumESpell) >= 10 Then
				$6ESpell = "|" & GUICtrlRead($TH6txtNumESpell) & "         "
					If GUICtrlRead($TH6txtNumESpell) >= 100 Then
						$6ESpell = "|" & GUICtrlRead($TH6txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumESpell) >= 0 Then
			$7ESpell = "|" & GUICtrlRead($TH7txtNumESpell) & "          "
			If GUICtrlRead($TH7txtNumESpell) >= 10 Then
				$7ESpell = "|" & GUICtrlRead($TH7txtNumESpell) & "         "
					If GUICtrlRead($TH7txtNumESpell) >= 100 Then
						$7ESpell = "|" & GUICtrlRead($TH7txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumESpell) >= 0 Then
			$8ESpell = "|" & GUICtrlRead($TH8txtNumESpell) & "          "
			If GUICtrlRead($TH8txtNumESpell) >= 10 Then
				$8ESpell = "|" & GUICtrlRead($TH8txtNumESpell) & "         "
					If GUICtrlRead($TH8txtNumESpell) >= 100 Then
						$8ESpell = "|" & GUICtrlRead($TH8txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumESpell) >= 0 Then
			$9ESpell = "|" & GUICtrlRead($TH9txtNumESpell) & "          "
			If GUICtrlRead($TH9txtNumESpell) >= 10 Then
				$9ESpell = "|" & GUICtrlRead($TH9txtNumESpell) & "         "
					If GUICtrlRead($TH9txtNumESpell) >= 100 Then
						$9ESpell = "|" & GUICtrlRead($TH9txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumESpell) >= 0 Then
			$10ESpell = "|" & GUICtrlRead($TH10txtNumESpell) & "          "
			If GUICtrlRead($TH10txtNumESpell) >= 10 Then
				$10ESpell = "|" & GUICtrlRead($TH10txtNumESpell) & "         "
					If GUICtrlRead($TH10txtNumESpell) >= 100 Then
						$10ESpell = "|" & GUICtrlRead($TH10txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumESpell) >= 0 Then
			$11ESpell = "|" & GUICtrlRead($TH11txtNumESpell) & "          "
			If GUICtrlRead($TH11txtNumESpell) >= 10 Then
				$11ESpell = "|" & GUICtrlRead($TH11txtNumESpell) & "         "
					If GUICtrlRead($TH11txtNumESpell) >= 100 Then
						$11ESpell = "|" & GUICtrlRead($TH11txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumESpell) >= 0 Then
			$12ESpell = "|" & GUICtrlRead($TH12txtNumESpell) & "          "
			If GUICtrlRead($TH12txtNumESpell) >= 10 Then
				$12ESpell = "|" & GUICtrlRead($TH12txtNumESpell) & "         "
					If GUICtrlRead($TH12txtNumESpell) >= 100 Then
						$12ESpell = "|" & GUICtrlRead($TH12txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumESpell) >= 0 Then
			$13ESpell = "|" & GUICtrlRead($TH13txtNumESpell) & "          "
			If GUICtrlRead($TH13txtNumESpell) >= 10 Then
				$13ESpell = "|" & GUICtrlRead($TH13txtNumESpell) & "         "
					If GUICtrlRead($TH13txtNumESpell) >= 100 Then
						$13ESpell = "|" & GUICtrlRead($TH13txtNumESpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainESpell = "TRAIN |ESpell     " & $6ESpell & $7ESpell & $8ESpell & $9ESpell & $10ESpell & $11ESpell & $12ESpell & $13ESpell &"|" & @CRLF
	EndIf




;Haste Spell

	If GUICtrlRead($TH6txtNumHaSpell) > 0 Or GUICtrlRead($TH7txtNumHaSpell) > 0 Or GUICtrlRead($TH8txtNumHaSpell) > 0 Or GUICtrlRead($TH9txtNumHaSpell) > 0 Or GUICtrlRead($TH10txtNumHaSpell) > 0 Or GUICtrlRead($TH11txtNumHaSpell) > 0 Or GUICtrlRead($TH12txtNumHaSpell) > 0  Or GUICtrlRead($TH13txtNumHaSpell) > 0 Then
		If GUICtrlRead($TH6txtNumHaSpell) >= 0 Then
			$6HaSpell = "|" & GUICtrlRead($TH6txtNumHaSpell) & "          "
			If GUICtrlRead($TH6txtNumHaSpell) >= 10 Then
				$6HaSpell = "|" & GUICtrlRead($TH6txtNumHaSpell) & "         "
					If GUICtrlRead($TH6txtNumHaSpell) >= 100 Then
						$6HaSpell = "|" & GUICtrlRead($TH6txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumHaSpell) >= 0 Then
			$7HaSpell = "|" & GUICtrlRead($TH7txtNumHaSpell) & "          "
			If GUICtrlRead($TH7txtNumHaSpell) >= 10 Then
				$7HaSpell = "|" & GUICtrlRead($TH7txtNumHaSpell) & "         "
					If GUICtrlRead($TH7txtNumHaSpell) >= 100 Then
						$7HaSpell = "|" & GUICtrlRead($TH7txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumHaSpell) >= 0 Then
			$8HaSpell = "|" & GUICtrlRead($TH8txtNumHaSpell) & "          "
			If GUICtrlRead($TH8txtNumHaSpell) >= 10 Then
				$8HaSpell = "|" & GUICtrlRead($TH8txtNumHaSpell) & "         "
					If GUICtrlRead($TH8txtNumHaSpell) >= 100 Then
						$8HaSpell = "|" & GUICtrlRead($TH8txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumHaSpell) >= 0 Then
			$9HaSpell = "|" & GUICtrlRead($TH9txtNumHaSpell) & "          "
			If GUICtrlRead($TH9txtNumHaSpell) >= 10 Then
				$9HaSpell = "|" & GUICtrlRead($TH9txtNumHaSpell) & "         "
					If GUICtrlRead($TH9txtNumHaSpell) >= 100 Then
						$9HaSpell = "|" & GUICtrlRead($TH9txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumHaSpell) >= 0 Then
			$10HaSpell = "|" & GUICtrlRead($TH10txtNumHaSpell) & "          "
			If GUICtrlRead($TH10txtNumHaSpell) >= 10 Then
				$10HaSpell = "|" & GUICtrlRead($TH10txtNumHaSpell) & "         "
					If GUICtrlRead($TH10txtNumHaSpell) >= 100 Then
						$10HaSpell = "|" & GUICtrlRead($TH10txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumHaSpell) >= 0 Then
			$11HaSpell = "|" & GUICtrlRead($TH11txtNumHaSpell) & "          "
			If GUICtrlRead($TH11txtNumHaSpell) >= 10 Then
				$11HaSpell = "|" & GUICtrlRead($TH11txtNumHaSpell) & "         "
					If GUICtrlRead($TH11txtNumHaSpell) >= 100 Then
						$11HaSpell = "|" & GUICtrlRead($TH11txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumHaSpell) >= 0 Then
			$12HaSpell = "|" & GUICtrlRead($TH12txtNumHaSpell) & "          "
			If GUICtrlRead($TH12txtNumHaSpell) >= 10 Then
				$12HaSpell = "|" & GUICtrlRead($TH12txtNumHaSpell) & "         "
					If GUICtrlRead($TH12txtNumHaSpell) >= 100 Then
						$12HaSpell = "|" & GUICtrlRead($TH12txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumHaSpell) >= 0 Then
			$13HaSpell = "|" & GUICtrlRead($TH13txtNumHaSpell) & "          "
			If GUICtrlRead($TH13txtNumHaSpell) >= 10 Then
				$13HaSpell = "|" & GUICtrlRead($TH13txtNumHaSpell) & "         "
					If GUICtrlRead($TH13txtNumHaSpell) >= 100 Then
						$13HaSpell = "|" & GUICtrlRead($TH13txtNumHaSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainHaSpell = "TRAIN |HaSpell    " & $6HaSpell & $7HaSpell & $8HaSpell & $9HaSpell & $10HaSpell & $11HaSpell & $12HaSpell & $13HaSpell &"|" & @CRLF
	EndIf


;Bat Spell

	If GUICtrlRead($TH6txtNumBaSpell) > 0 Or GUICtrlRead($TH7txtNumBaSpell) > 0 Or GUICtrlRead($TH8txtNumBaSpell) > 0 Or GUICtrlRead($TH9txtNumBaSpell) > 0 Or GUICtrlRead($TH10txtNumBaSpell) > 0 Or GUICtrlRead($TH11txtNumBaSpell) > 0 Or GUICtrlRead($TH12txtNumBaSpell) > 0  Or GUICtrlRead($TH13txtNumBaSpell) > 0 Then
		If GUICtrlRead($TH6txtNumBaSpell) >= 0 Then
			$6BaSpell = "|" & GUICtrlRead($TH6txtNumBaSpell) & "          "
			If GUICtrlRead($TH6txtNumBaSpell) >= 10 Then
				$6BaSpell = "|" & GUICtrlRead($TH6txtNumBaSpell) & "         "
					If GUICtrlRead($TH6txtNumBaSpell) >= 100 Then
						$6BaSpell = "|" & GUICtrlRead($TH6txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBaSpell) >= 0 Then
			$7BaSpell = "|" & GUICtrlRead($TH7txtNumBaSpell) & "          "
			If GUICtrlRead($TH7txtNumBaSpell) >= 10 Then
				$7BaSpell = "|" & GUICtrlRead($TH7txtNumBaSpell) & "         "
					If GUICtrlRead($TH7txtNumBaSpell) >= 100 Then
						$7BaSpell = "|" & GUICtrlRead($TH7txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBaSpell) >= 0 Then
			$8BaSpell = "|" & GUICtrlRead($TH8txtNumBaSpell) & "          "
			If GUICtrlRead($TH8txtNumBaSpell) >= 10 Then
				$8BaSpell = "|" & GUICtrlRead($TH8txtNumBaSpell) & "         "
					If GUICtrlRead($TH8txtNumBaSpell) >= 100 Then
						$8BaSpell = "|" & GUICtrlRead($TH8txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBaSpell) >= 0 Then
			$9BaSpell = "|" & GUICtrlRead($TH9txtNumBaSpell) & "          "
			If GUICtrlRead($TH9txtNumBaSpell) >= 10 Then
				$9BaSpell = "|" & GUICtrlRead($TH9txtNumBaSpell) & "         "
					If GUICtrlRead($TH9txtNumBaSpell) >= 100 Then
						$9BaSpell = "|" & GUICtrlRead($TH9txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBaSpell) >= 0 Then
			$10BaSpell = "|" & GUICtrlRead($TH10txtNumBaSpell) & "          "
			If GUICtrlRead($TH10txtNumBaSpell) >= 10 Then
				$10BaSpell = "|" & GUICtrlRead($TH10txtNumBaSpell) & "         "
					If GUICtrlRead($TH10txtNumBaSpell) >= 100 Then
						$10BaSpell = "|" & GUICtrlRead($TH10txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBaSpell) >= 0 Then
			$11BaSpell = "|" & GUICtrlRead($TH11txtNumBaSpell) & "          "
			If GUICtrlRead($TH11txtNumBaSpell) >= 10 Then
				$11BaSpell = "|" & GUICtrlRead($TH11txtNumBaSpell) & "         "
					If GUICtrlRead($TH11txtNumBaSpell) >= 100 Then
						$11BaSpell = "|" & GUICtrlRead($TH11txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBaSpell) >= 0 Then
			$12BaSpell = "|" & GUICtrlRead($TH12txtNumBaSpell) & "          "
			If GUICtrlRead($TH12txtNumBaSpell) >= 10 Then
				$12BaSpell = "|" & GUICtrlRead($TH12txtNumBaSpell) & "         "
					If GUICtrlRead($TH12txtNumBaSpell) >= 100 Then
						$12BaSpell = "|" & GUICtrlRead($TH12txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBaSpell) >= 0 Then
			$13BaSpell = "|" & GUICtrlRead($TH13txtNumBaSpell) & "          "
			If GUICtrlRead($TH13txtNumBaSpell) >= 10 Then
				$13BaSpell = "|" & GUICtrlRead($TH13txtNumBaSpell) & "         "
					If GUICtrlRead($TH13txtNumBaSpell) >= 100 Then
						$13BaSpell = "|" & GUICtrlRead($TH13txtNumBaSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBaSpell = "TRAIN |BtSpell    " & $6BaSpell & $7BaSpell & $8BaSpell & $9BaSpell & $10BaSpell & $11BaSpell & $12BaSpell & $13BaSpell &"|" & @CRLF
	EndIf



;Skeleton Spell

	If GUICtrlRead($TH6txtNumSkSpell) > 0 Or GUICtrlRead($TH7txtNumSkSpell) > 0 Or GUICtrlRead($TH8txtNumSkSpell) > 0 Or GUICtrlRead($TH9txtNumSkSpell) > 0 Or GUICtrlRead($TH10txtNumSkSpell) > 0 Or GUICtrlRead($TH11txtNumSkSpell) > 0 Or GUICtrlRead($TH12txtNumSkSpell) > 0  Or GUICtrlRead($TH13txtNumSkSpell) > 0 Then
		If GUICtrlRead($TH6txtNumSkSpell) >= 0 Then
			$6SkSpell = "|" & GUICtrlRead($TH6txtNumSkSpell) & "          "
			If GUICtrlRead($TH6txtNumSkSpell) >= 10 Then
				$6SkSpell = "|" & GUICtrlRead($TH6txtNumSkSpell) & "         "
					If GUICtrlRead($TH6txtNumSkSpell) >= 100 Then
						$6SkSpell = "|" & GUICtrlRead($TH6txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumSkSpell) >= 0 Then
			$7SkSpell = "|" & GUICtrlRead($TH7txtNumSkSpell) & "          "
			If GUICtrlRead($TH7txtNumSkSpell) >= 10 Then
				$7SkSpell = "|" & GUICtrlRead($TH7txtNumSkSpell) & "         "
					If GUICtrlRead($TH7txtNumSkSpell) >= 100 Then
						$7SkSpell = "|" & GUICtrlRead($TH7txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumSkSpell) >= 0 Then
			$8SkSpell = "|" & GUICtrlRead($TH8txtNumSkSpell) & "          "
			If GUICtrlRead($TH8txtNumSkSpell) >= 10 Then
				$8SkSpell = "|" & GUICtrlRead($TH8txtNumSkSpell) & "         "
					If GUICtrlRead($TH8txtNumSkSpell) >= 100 Then
						$8SkSpell = "|" & GUICtrlRead($TH8txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumSkSpell) >= 0 Then
			$9SkSpell = "|" & GUICtrlRead($TH9txtNumSkSpell) & "          "
			If GUICtrlRead($TH9txtNumSkSpell) >= 10 Then
				$9SkSpell = "|" & GUICtrlRead($TH9txtNumSkSpell) & "         "
					If GUICtrlRead($TH9txtNumSkSpell) >= 100 Then
						$9SkSpell = "|" & GUICtrlRead($TH9txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumSkSpell) >= 0 Then
			$10SkSpell = "|" & GUICtrlRead($TH10txtNumSkSpell) & "          "
			If GUICtrlRead($TH10txtNumSkSpell) >= 10 Then
				$10SkSpell = "|" & GUICtrlRead($TH10txtNumSkSpell) & "         "
					If GUICtrlRead($TH10txtNumSkSpell) >= 100 Then
						$10SkSpell = "|" & GUICtrlRead($TH10txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumSkSpell) >= 0 Then
			$11SkSpell = "|" & GUICtrlRead($TH11txtNumSkSpell) & "          "
			If GUICtrlRead($TH11txtNumSkSpell) >= 10 Then
				$11SkSpell = "|" & GUICtrlRead($TH11txtNumSkSpell) & "         "
					If GUICtrlRead($TH11txtNumSkSpell) >= 100 Then
						$11SkSpell = "|" & GUICtrlRead($TH11txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumSkSpell) >= 0 Then
			$12SkSpell = "|" & GUICtrlRead($TH12txtNumSkSpell) & "          "
			If GUICtrlRead($TH12txtNumSkSpell) >= 10 Then
				$12SkSpell = "|" & GUICtrlRead($TH12txtNumSkSpell) & "         "
					If GUICtrlRead($TH12txtNumSkSpell) >= 100 Then
						$12SkSpell = "|" & GUICtrlRead($TH12txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumSkSpell) >= 0 Then
			$13SkSpell = "|" & GUICtrlRead($TH13txtNumSkSpell) & "          "
			If GUICtrlRead($TH13txtNumSkSpell) >= 10 Then
				$13SkSpell = "|" & GUICtrlRead($TH13txtNumSkSpell) & "         "
					If GUICtrlRead($TH13txtNumSkSpell) >= 100 Then
						$13SkSpell = "|" & GUICtrlRead($TH13txtNumSkSpell) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainSkSpell = "TRAIN |SkSpell    " & $6SkSpell & $7SkSpell & $8SkSpell & $9SkSpell & $10SkSpell & $11SkSpell & $12SkSpell & $13SkSpell &"|" & @CRLF
	EndIf

;Battl B.
	If GUICtrlRead($TH6txtNumBattleB) > 0 Or GUICtrlRead($TH7txtNumBattleB) > 0 Or GUICtrlRead($TH8txtNumBattleB) > 0 Or GUICtrlRead($TH9txtNumBattleB) > 0 Or GUICtrlRead($TH10txtNumBattleB) > 0 Or GUICtrlRead($TH11txtNumBattleB) > 0 Or GUICtrlRead($TH12txtNumBattleB) > 0  Or GUICtrlRead($TH13txtNumBattleB) > 0 Then
		If GUICtrlRead($TH6txtNumBattleB) >= 0 Then
			$6BattleB = "|" & GUICtrlRead($TH6txtNumBattleB) & "          "
			If GUICtrlRead($TH6txtNumBattleB) >= 10 Then
				$6BattleB = "|" & GUICtrlRead($TH6txtNumBattleB) & "         "
					If GUICtrlRead($TH6txtNumBattleB) >= 100 Then
						$6BattleB = "|" & GUICtrlRead($TH6txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumBattleB) >= 0 Then
			$7BattleB = "|" & GUICtrlRead($TH7txtNumBattleB) & "          "
			If GUICtrlRead($TH7txtNumBattleB) >= 10 Then
				$7BattleB = "|" & GUICtrlRead($TH7txtNumBattleB) & "         "
					If GUICtrlRead($TH7txtNumBattleB) >= 100 Then
						$7BattleB = "|" & GUICtrlRead($TH7txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumBattleB) >= 0 Then
			$8BattleB = "|" & GUICtrlRead($TH8txtNumBattleB) & "          "
			If GUICtrlRead($TH8txtNumBattleB) >= 10 Then
				$8BattleB = "|" & GUICtrlRead($TH8txtNumBattleB) & "         "
					If GUICtrlRead($TH8txtNumBattleB) >= 100 Then
						$8BattleB = "|" & GUICtrlRead($TH8txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumBattleB) >= 0 Then
			$9BattleB = "|" & GUICtrlRead($TH9txtNumBattleB) & "          "
			If GUICtrlRead($TH9txtNumBattleB) >= 10 Then
				$9BattleB = "|" & GUICtrlRead($TH9txtNumBattleB) & "         "
					If GUICtrlRead($TH9txtNumBattleB) >= 100 Then
						$9BattleB = "|" & GUICtrlRead($TH9txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumBattleB) >= 0 Then
			$10BattleB = "|" & GUICtrlRead($TH10txtNumBattleB) & "          "
			If GUICtrlRead($TH10txtNumBattleB) >= 10 Then
				$10BattleB = "|" & GUICtrlRead($TH10txtNumBattleB) & "         "
					If GUICtrlRead($TH10txtNumBattleB) >= 100 Then
						$10BattleB = "|" & GUICtrlRead($TH10txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumBattleB) >= 0 Then
			$11BattleB = "|" & GUICtrlRead($TH11txtNumBattleB) & "          "
			If GUICtrlRead($TH11txtNumBattleB) >= 10 Then
				$11BattleB = "|" & GUICtrlRead($TH11txtNumBattleB) & "         "
					If GUICtrlRead($TH11txtNumBattleB) >= 100 Then
						$11BattleB = "|" & GUICtrlRead($TH11txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumBattleB) >= 0 Then
			$12BattleB = "|" & GUICtrlRead($TH12txtNumBattleB) & "          "
			If GUICtrlRead($TH12txtNumBattleB) >= 10 Then
				$12BattleB = "|" & GUICtrlRead($TH12txtNumBattleB) & "         "
					If GUICtrlRead($TH12txtNumBattleB) >= 100 Then
						$12BattleB = "|" & GUICtrlRead($TH12txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumBattleB) >= 0 Then
			$13BattleB = "|" & GUICtrlRead($TH13txtNumBattleB) & "          "
			If GUICtrlRead($TH13txtNumBattleB) >= 10 Then
				$13BattleB = "|" & GUICtrlRead($TH13txtNumBattleB) & "         "
					If GUICtrlRead($TH13txtNumBattleB) >= 100 Then
						$13BattleB = "|" & GUICtrlRead($TH13txtNumBattleB) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainBattleB = "TRAIN |BattleB    " & $6BattleB & $7BattleB & $8BattleB & $9BattleB & $10BattleB & $11BattleB & $12BattleB & $13BattleB &"|" & @CRLF
	EndIf


;Wall Wrecker.
	If GUICtrlRead($TH6txtNumWallw) > 0 Or GUICtrlRead($TH7txtNumWallw) > 0 Or GUICtrlRead($TH8txtNumWallw) > 0 Or GUICtrlRead($TH9txtNumWallw) > 0 Or GUICtrlRead($TH10txtNumWallw) > 0 Or GUICtrlRead($TH11txtNumWallw) > 0 Or GUICtrlRead($TH12txtNumWallw) > 0  Or GUICtrlRead($TH13txtNumWallw) > 0 Then
		If GUICtrlRead($TH6txtNumWallw) >= 0 Then
			$6Wallw = "|" & GUICtrlRead($TH6txtNumWallw) & "          "
			If GUICtrlRead($TH6txtNumWallw) >= 10 Then
				$6Wallw = "|" & GUICtrlRead($TH6txtNumWallw) & "         "
					If GUICtrlRead($TH6txtNumWallw) >= 100 Then
						$6Wallw = "|" & GUICtrlRead($TH6txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumWallw) >= 0 Then
			$7Wallw = "|" & GUICtrlRead($TH7txtNumWallw) & "          "
			If GUICtrlRead($TH7txtNumWallw) >= 10 Then
				$7Wallw = "|" & GUICtrlRead($TH7txtNumWallw) & "         "
					If GUICtrlRead($TH7txtNumWallw) >= 100 Then
						$7Wallw = "|" & GUICtrlRead($TH7txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumWallw) >= 0 Then
			$8Wallw = "|" & GUICtrlRead($TH8txtNumWallw) & "          "
			If GUICtrlRead($TH8txtNumWallw) >= 10 Then
				$8Wallw = "|" & GUICtrlRead($TH8txtNumWallw) & "         "
					If GUICtrlRead($TH8txtNumWallw) >= 100 Then
						$8Wallw = "|" & GUICtrlRead($TH8txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumWallw) >= 0 Then
			$9Wallw = "|" & GUICtrlRead($TH9txtNumWallw) & "          "
			If GUICtrlRead($TH9txtNumWallw) >= 10 Then
				$9Wallw = "|" & GUICtrlRead($TH9txtNumWallw) & "         "
					If GUICtrlRead($TH9txtNumWallw) >= 100 Then
						$9Wallw = "|" & GUICtrlRead($TH9txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumWallw) >= 0 Then
			$10Wallw = "|" & GUICtrlRead($TH10txtNumWallw) & "          "
			If GUICtrlRead($TH10txtNumWallw) >= 10 Then
				$10Wallw = "|" & GUICtrlRead($TH10txtNumWallw) & "         "
					If GUICtrlRead($TH10txtNumWallw) >= 100 Then
						$10Wallw = "|" & GUICtrlRead($TH10txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumWallw) >= 0 Then
			$11Wallw = "|" & GUICtrlRead($TH11txtNumWallw) & "          "
			If GUICtrlRead($TH11txtNumWallw) >= 10 Then
				$11Wallw = "|" & GUICtrlRead($TH11txtNumWallw) & "         "
					If GUICtrlRead($TH11txtNumWallw) >= 100 Then
						$11Wallw = "|" & GUICtrlRead($TH11txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumWallw) >= 0 Then
			$12Wallw = "|" & GUICtrlRead($TH12txtNumWallw) & "          "
			If GUICtrlRead($TH12txtNumWallw) >= 10 Then
				$12Wallw = "|" & GUICtrlRead($TH12txtNumWallw) & "         "
					If GUICtrlRead($TH12txtNumWallw) >= 100 Then
						$12Wallw = "|" & GUICtrlRead($TH12txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH13txtNumWallw) >= 0 Then
			$13Wallw = "|" & GUICtrlRead($TH13txtNumWallw) & "          "
			If GUICtrlRead($TH13txtNumWallw) >= 10 Then
				$13Wallw = "|" & GUICtrlRead($TH13txtNumWallw) & "         "
					If GUICtrlRead($TH13txtNumWallw) >= 100 Then
						$13Wallw = "|" & GUICtrlRead($TH13txtNumWallw) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainWallw = "TRAIN |WallW      " & $6Wallw & $7Wallw & $8Wallw & $9Wallw & $10Wallw & $11Wallw & $12Wallw & $13Wallw &"|" & @CRLF
	EndIf



;~ StoneS
	If GUICtrlRead($TH6txtNumStoneS) > 0 Or GUICtrlRead($TH7txtNumStoneS) > 0 Or GUICtrlRead($TH8txtNumStoneS) > 0 Or GUICtrlRead($TH9txtNumStoneS) > 0 Or GUICtrlRead($TH10txtNumStoneS) > 0 Or GUICtrlRead($TH11txtNumStoneS) > 0 Or GUICtrlRead($TH12txtNumStoneS) > 0 Or GUICtrlRead($TH13txtNumStoneS) > 0 Then
		If GUICtrlRead($TH6txtNumStoneS) >= 0 Then
			$6StoneS = "|" & GUICtrlRead($TH6txtNumStoneS) & "          "
			If GUICtrlRead($TH6txtNumStoneS) >= 10 Then
				$6StoneS = "|" & GUICtrlRead($TH6txtNumStoneS) & "         "
					If GUICtrlRead($TH6txtNumStoneS) >= 100 Then
						$6StoneS = "|" & GUICtrlRead($TH6txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf
		If GUICtrlRead($TH7txtNumStoneS) >= 0 Then
			$7StoneS = "|" & GUICtrlRead($TH7txtNumStoneS) & "          "
			If GUICtrlRead($TH7txtNumStoneS) >= 10 Then
				$7StoneS = "|" & GUICtrlRead($TH7txtNumStoneS) & "         "
					If GUICtrlRead($TH7txtNumStoneS) >= 100 Then
						$7StoneS = "|" & GUICtrlRead($TH7txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH8txtNumStoneS) >= 0 Then
			$8StoneS = "|" & GUICtrlRead($TH8txtNumStoneS) & "          "
			If GUICtrlRead($TH8txtNumStoneS) >= 10 Then
				$8StoneS = "|" & GUICtrlRead($TH8txtNumStoneS) & "         "
					If GUICtrlRead($TH8txtNumStoneS) >= 100 Then
						$8StoneS = "|" & GUICtrlRead($TH8txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH9txtNumStoneS) >= 0 Then
			$9StoneS = "|" & GUICtrlRead($TH9txtNumStoneS) & "          "
			If GUICtrlRead($TH9txtNumStoneS) >= 10 Then
				$9StoneS = "|" & GUICtrlRead($TH9txtNumStoneS) & "         "
					If GUICtrlRead($TH9txtNumStoneS) >= 100 Then
						$9StoneS = "|" & GUICtrlRead($TH9txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH10txtNumStoneS) >= 0 Then
			$10StoneS = "|" & GUICtrlRead($TH10txtNumStoneS) & "          "
			If GUICtrlRead($TH10txtNumStoneS) >= 10 Then
				$10StoneS = "|" & GUICtrlRead($TH10txtNumStoneS) & "         "
					If GUICtrlRead($TH10txtNumStoneS) >= 100 Then
						$10StoneS = "|" & GUICtrlRead($TH10txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH11txtNumStoneS) >= 0 Then
			$11StoneS = "|" & GUICtrlRead($TH11txtNumStoneS) & "          "
			If GUICtrlRead($TH11txtNumStoneS) >= 10 Then
				$11StoneS = "|" & GUICtrlRead($TH11txtNumStoneS) & "         "
					If GUICtrlRead($TH11txtNumStoneS) >= 100 Then
						$11StoneS = "|" & GUICtrlRead($TH11txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH12txtNumStoneS) >= 0 Then
			$12StoneS = "|" & GUICtrlRead($TH12txtNumStoneS) & "          "
			If GUICtrlRead($TH12txtNumStoneS) >= 10 Then
				$12StoneS = "|" & GUICtrlRead($TH12txtNumStoneS) & "         "
					If GUICtrlRead($TH12txtNumStoneS) >= 100 Then
						$12StoneS = "|" & GUICtrlRead($TH12txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumStoneS) >= 0 Then
			$13StoneS = "|" & GUICtrlRead($TH13txtNumStoneS) & "          "
			If GUICtrlRead($TH13txtNumStoneS) >= 10 Then
				$13StoneS = "|" & GUICtrlRead($TH13txtNumStoneS) & "         "
					If GUICtrlRead($TH13txtNumStoneS) >= 100 Then
						$13StoneS = "|" & GUICtrlRead($TH13txtNumStoneS) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainStoneS = "TRAIN |StoneS     " & $6StoneS & $7StoneS & $8StoneS & $9StoneS & $10StoneS & $11StoneS & $12StoneS & $13StoneS &"|" & @CRLF
	EndIf

;~ SiegeB
	If GUICtrlRead($TH6txtNumSiegeB) > 0 Or GUICtrlRead($TH7txtNumSiegeB) > 0 Or GUICtrlRead($TH8txtNumSiegeB) > 0 Or GUICtrlRead($TH9txtNumSiegeB) > 0 Or GUICtrlRead($TH10txtNumSiegeB) > 0 Or GUICtrlRead($TH11txtNumSiegeB) > 0 Or GUICtrlRead($TH12txtNumSiegeB) > 0 Or GUICtrlRead($TH13txtNumSiegeB) > 0 Then
;~ 		If GUICtrlRead($TH6txtNumSiegeB) >= 0 Then
;~ 			$6SiegeB = "|" & GUICtrlRead($TH6txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH6txtNumSiegeB) >= 10 Then
;~ 				$6SiegeB = "|" & GUICtrlRead($TH6txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH6txtNumSiegeB) >= 100 Then
						$6SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf
;~ 		If GUICtrlRead($TH7txtNumSiegeB) >= 0 Then
;~ 			$7SiegeB = "|" & GUICtrlRead($TH7txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH7txtNumSiegeB) >= 10 Then
;~ 				$7SiegeB = "|" & GUICtrlRead($TH7txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH7txtNumSiegeB) >= 100 Then
						$7SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH8txtNumSiegeB) >= 0 Then
;~ 			$8SiegeB = "|" & GUICtrlRead($TH8txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH8txtNumSiegeB) >= 10 Then
;~ 				$8SiegeB = "|" & GUICtrlRead($TH8txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH8txtNumSiegeB) >= 100 Then
						$8SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH9txtNumSiegeB) >= 0 Then
;~ 			$9SiegeB = "|" & GUICtrlRead($TH9txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH9txtNumSiegeB) >= 10 Then
;~ 				$9SiegeB = "|" & GUICtrlRead($TH9txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH9txtNumSiegeB) >= 100 Then
						$9SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH10txtNumSiegeB) >= 0 Then
;~ 			$10SiegeB = "|" & GUICtrlRead($TH10txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH10txtNumSiegeB) >= 10 Then
;~ 				$10SiegeB = "|" & GUICtrlRead($TH10txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH10txtNumSiegeB) >= 100 Then
						$10SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

;~ 		If GUICtrlRead($TH11txtNumSiegeB) >= 0 Then
;~ 			$11SiegeB = "|" & GUICtrlRead($TH11txtNumSiegeB) & "          "
;~ 			If GUICtrlRead($TH11txtNumSiegeB) >= 10 Then
;~ 				$11SiegeB = "|" & GUICtrlRead($TH11txtNumSiegeB) & "         "
;~ 					If GUICtrlRead($TH11txtNumSiegeB) >= 100 Then
						$11SiegeB = "|0          "
;~ 					EndIf
;~ 			EndIf
;~ 		EndIf

		If GUICtrlRead($TH12txtNumSiegeB) >= 0 Then
			$12SiegeB = "|" & GUICtrlRead($TH12txtNumSiegeB) & "          "
			If GUICtrlRead($TH12txtNumSiegeB) >= 10 Then
				$12SiegeB = "|" & GUICtrlRead($TH12txtNumSiegeB) & "         "
					If GUICtrlRead($TH12txtNumSiegeB) >= 100 Then
						$12SiegeB = "|" & GUICtrlRead($TH12txtNumSiegeB) & "        "
					EndIf
			EndIf
		EndIf

		If GUICtrlRead($TH13txtNumSiegeB) >= 0 Then
			$13SiegeB = "|" & GUICtrlRead($TH13txtNumSiegeB) & "          "
			If GUICtrlRead($TH13txtNumSiegeB) >= 10 Then
				$13SiegeB = "|" & GUICtrlRead($TH13txtNumSiegeB) & "         "
					If GUICtrlRead($TH13txtNumSiegeB) >= 100 Then
						$13SiegeB = "|" & GUICtrlRead($TH13txtNumSiegeB) & "        "
					EndIf
			EndIf
		EndIf
	  $TrainSiegeB = "TRAIN |SiegeB     " & $6SiegeB & $7SiegeB & $8SiegeB & $9SiegeB & $10SiegeB & $11SiegeB & $12SiegeB & $13SiegeB &"|" & @CRLF
	EndIf


;King
   If GUICtrlRead($TH6txtNumKing) > 0 Or GUICtrlRead($TH7txtNumKing) > 0 Or GUICtrlRead($TH8txtNumKing) > 0 Or GUICtrlRead($TH9txtNumKing) > 0 Or GUICtrlRead($TH10txtNumKing) > 0 Or GUICtrlRead($TH11txtNumKing) > 0 Or GUICtrlRead($TH12txtNumKing) > 0 Or GUICtrlRead($TH13txtNumKing) > 0 Then
	  if GUICtrlRead($TH6txtNumKing) = 1 Then
		 $6King = "|1          "
	  EndIf
	  if GUICtrlRead($TH6txtNumKing) = 0 Then
		 $6King = "|0          "
	  EndIf

	  if GUICtrlRead($TH6txtNumKing) > 1 Then
		 If GUICtrlRead($TH6txtNumKingSecond) >= 0 Then
		 $6King = "|" & GUICtrlRead($TH6txtNumKing) & GUICtrlRead($TH6txtNumKingSecond) &"         "
			If GUICtrlRead($TH6txtNumKingSecond) >= 10 Then
			   $6King = "|" & GUICtrlRead($TH6txtNumKing) & GUICtrlRead($TH6txtNumKingSecond) &"        "
				  If GUICtrlRead($TH6txtNumKingSecond) >= 100 Then
				  $6King = "|" & GUICtrlRead($TH6txtNumKing) & GUICtrlRead($TH6txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH7txtNumKing) = 1 Then
		 $7King = "|1          "
	  EndIf
	  if GUICtrlRead($TH7txtNumKing) = 0 Then
		 $7King = "|0          "
	  EndIf

	  if GUICtrlRead($TH7txtNumKing) > 1 Then
		 If GUICtrlRead($TH7txtNumKingSecond) >= 0 Then
		 $7King = "|" & GUICtrlRead($TH7txtNumKing) & GUICtrlRead($TH7txtNumKingSecond) &"         "
			If GUICtrlRead($TH7txtNumKingSecond) >= 10 Then
			   $7King = "|" & GUICtrlRead($TH7txtNumKing) & GUICtrlRead($TH7txtNumKingSecond) &"        "
				  If GUICtrlRead($TH7txtNumKingSecond) >= 100 Then
				  $7King = "|" & GUICtrlRead($TH7txtNumKing) & GUICtrlRead($TH7txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
	  if GUICtrlRead($TH8txtNumKing) = 1 Then
		 $8King = "|1          "
	  EndIf
	  if GUICtrlRead($TH8txtNumKing) = 0 Then
		 $8King = "|0          "
	  EndIf
	  if GUICtrlRead($TH8txtNumKing) > 1 Then
		 If GUICtrlRead($TH8txtNumKingSecond) >= 0 Then
		 $8King = "|" & GUICtrlRead($TH8txtNumKing) & GUICtrlRead($TH8txtNumKingSecond) &"         "
			If GUICtrlRead($TH8txtNumKingSecond) >= 10 Then
			   $8King = "|" & GUICtrlRead($TH8txtNumKing) & GUICtrlRead($TH8txtNumKingSecond) &"        "
				  If GUICtrlRead($TH8txtNumKingSecond) >= 100 Then
				  $8King = "|" & GUICtrlRead($TH8txtNumKing) & GUICtrlRead($TH8txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH9txtNumKing) = 1 Then
		 $9King = "|1          "
	  EndIf
	  if GUICtrlRead($TH9txtNumKing) = 0 Then
		 $9King = "|0          "
	  EndIf
	  if GUICtrlRead($TH9txtNumKing) > 1 Then
		 If GUICtrlRead($TH9txtNumKingSecond) >= 0 Then
		 $9King = "|" & GUICtrlRead($TH9txtNumKing) & GUICtrlRead($TH9txtNumKingSecond) &"         "
			If GUICtrlRead($TH9txtNumKingSecond) >= 10 Then
			   $9King = "|" & GUICtrlRead($TH9txtNumKing) & GUICtrlRead($TH9txtNumKingSecond) &"        "
				  If GUICtrlRead($TH9txtNumKingSecond) >= 100 Then
				  $9King = "|" & GUICtrlRead($TH9txtNumKing) & GUICtrlRead($TH9txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH10txtNumKing) = 1 Then
		 $10King = "|1          "
	  EndIf
	  if GUICtrlRead($TH10txtNumKing) = 0 Then
		 $10King = "|0          "
	  EndIf

	  if GUICtrlRead($TH10txtNumKing) > 1 Then
		 If GUICtrlRead($TH10txtNumKingSecond) >= 0 Then
		 $10King = "|" & GUICtrlRead($TH10txtNumKing) & GUICtrlRead($TH10txtNumKingSecond) &"         "
			If GUICtrlRead($TH10txtNumKingSecond) >= 10 Then
			   $10King = "|" & GUICtrlRead($TH10txtNumKing) & GUICtrlRead($TH10txtNumKingSecond) &"        "
				  If GUICtrlRead($TH10txtNumKingSecond) >= 100 Then
				  $10King = "|" & GUICtrlRead($TH10txtNumKing) & GUICtrlRead($TH10txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH11txtNumKing) = 1 Then
		 $11King = "|1          "
	  EndIf
	  if GUICtrlRead($TH11txtNumKing) = 0 Then
		 $11King = "|0          "
	  EndIf
	  if GUICtrlRead($TH11txtNumKing) > 1 Then
		 If GUICtrlRead($TH11txtNumKingSecond) >= 0 Then
		 $11King = "|" & GUICtrlRead($TH11txtNumKing) & GUICtrlRead($TH11txtNumKingSecond) &"         "
			If GUICtrlRead($TH11txtNumKingSecond) >= 10 Then
			   $11King = "|" & GUICtrlRead($TH11txtNumKing) & GUICtrlRead($TH11txtNumKingSecond) &"        "
				  If GUICtrlRead($TH11txtNumKingSecond) >= 100 Then
				  $11King = "|" & GUICtrlRead($TH11txtNumKing) & GUICtrlRead($TH11txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH12txtNumKing) = 1 Then
		 $12King = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumKing) = 0 Then
		 $12King = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumKing) > 1 Then
		 If GUICtrlRead($TH12txtNumKingSecond) >= 0 Then
		 $12King = "|" & GUICtrlRead($TH12txtNumKing) & GUICtrlRead($TH12txtNumKingSecond) &"         "
			If GUICtrlRead($TH12txtNumKingSecond) >= 10 Then
			   $12King = "|" & GUICtrlRead($TH12txtNumKing) & GUICtrlRead($TH12txtNumKingSecond) &"        "
				  If GUICtrlRead($TH12txtNumKingSecond) >= 100 Then
				  $12King = "|" & GUICtrlRead($TH12txtNumKing) & GUICtrlRead($TH12txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  if GUICtrlRead($TH13txtNumKing) = 1 Then
		 $13King = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumKing) = 0 Then
		 $13King = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumKing) > 1 Then
		 If GUICtrlRead($TH13txtNumKingSecond) >= 0 Then
		 $13King = "|" & GUICtrlRead($TH13txtNumKing) & GUICtrlRead($TH13txtNumKingSecond) &"         "
			If GUICtrlRead($TH13txtNumKingSecond) >= 10 Then
			   $13King = "|" & GUICtrlRead($TH13txtNumKing) & GUICtrlRead($TH13txtNumKingSecond) &"        "
				  If GUICtrlRead($TH13txtNumKingSecond) >= 100 Then
				  $13King = "|" & GUICtrlRead($TH13txtNumKing) & GUICtrlRead($TH13txtNumKingSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainKing = "TRAIN |King       " & $6King & $7King & $8King & $9King & $10King & $11King & $12King & $13King &"|" & @CRLF
   EndIf


;Queen
   If GUICtrlRead($TH6txtNumQueen) > 0 Or GUICtrlRead($TH7txtNumQueen) > 0 Or GUICtrlRead($TH8txtNumQueen) > 0 Or GUICtrlRead($TH9txtNumQueen) > 0 Or GUICtrlRead($TH10txtNumQueen) > 0 Or GUICtrlRead($TH11txtNumQueen) > 0 Or GUICtrlRead($TH12txtNumQueen) > 0  Or GUICtrlRead($TH13txtNumQueen) > 0 Then
	  if GUICtrlRead($TH6txtNumQueen) = 1 Then
		 $6Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH6txtNumQueen) = 0 Then
		 $6Queen = "|0          "
	  EndIf

	  if GUICtrlRead($TH6txtNumQueen) > 1 Then
		 If GUICtrlRead($TH6txtNumQueenSecond) >= 0 Then
		 $6Queen = "|" & GUICtrlRead($TH6txtNumQueen) & GUICtrlRead($TH6txtNumQueenSecond) &"         "
			If GUICtrlRead($TH6txtNumQueenSecond) >= 10 Then
			   $6Queen = "|" & GUICtrlRead($TH6txtNumQueen) & GUICtrlRead($TH6txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH6txtNumQueenSecond) >= 100 Then
				  $6Queen = "|" & GUICtrlRead($TH6txtNumQueen) & GUICtrlRead($TH6txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH7txtNumQueen) = 1 Then
		 $7Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH7txtNumQueen) = 0 Then
		 $7Queen = "|0          "
	  EndIf

	  if GUICtrlRead($TH7txtNumQueen) > 1 Then
		 If GUICtrlRead($TH7txtNumQueenSecond) >= 0 Then
		 $7Queen = "|" & GUICtrlRead($TH7txtNumQueen) & GUICtrlRead($TH7txtNumQueenSecond) &"         "
			If GUICtrlRead($TH7txtNumQueenSecond) >= 10 Then
			   $7Queen = "|" & GUICtrlRead($TH7txtNumQueen) & GUICtrlRead($TH7txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH7txtNumQueenSecond) >= 100 Then
				  $7Queen = "|" & GUICtrlRead($TH7txtNumQueen) & GUICtrlRead($TH7txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
	  if GUICtrlRead($TH8txtNumQueen) = 1 Then
		 $8Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH8txtNumQueen) = 0 Then
		 $8Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH8txtNumQueen) > 1 Then
		 If GUICtrlRead($TH8txtNumQueenSecond) >= 0 Then
		 $8Queen = "|" & GUICtrlRead($TH8txtNumQueen) & GUICtrlRead($TH8txtNumQueenSecond) &"         "
			If GUICtrlRead($TH8txtNumQueenSecond) >= 10 Then
			   $8Queen = "|" & GUICtrlRead($TH8txtNumQueen) & GUICtrlRead($TH8txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH8txtNumQueenSecond) >= 100 Then
				  $8Queen = "|" & GUICtrlRead($TH8txtNumQueen) & GUICtrlRead($TH8txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH9txtNumQueen) = 1 Then
		 $9Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH9txtNumQueen) = 0 Then
		 $9Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH9txtNumQueen) > 1 Then
		 If GUICtrlRead($TH9txtNumQueenSecond) >= 0 Then
		 $9Queen = "|" & GUICtrlRead($TH9txtNumQueen) & GUICtrlRead($TH9txtNumQueenSecond) &"         "
			If GUICtrlRead($TH9txtNumQueenSecond) >= 10 Then
			   $9Queen = "|" & GUICtrlRead($TH9txtNumQueen) & GUICtrlRead($TH9txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH9txtNumQueenSecond) >= 100 Then
				  $9Queen = "|" & GUICtrlRead($TH9txtNumQueen) & GUICtrlRead($TH9txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH10txtNumQueen) = 1 Then
		 $10Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH10txtNumQueen) = 0 Then
		 $10Queen = "|0          "
	  EndIf

	  if GUICtrlRead($TH10txtNumQueen) > 1 Then
		 If GUICtrlRead($TH10txtNumQueenSecond) >= 0 Then
		 $10Queen = "|" & GUICtrlRead($TH10txtNumQueen) & GUICtrlRead($TH10txtNumQueenSecond) &"         "
			If GUICtrlRead($TH10txtNumQueenSecond) >= 10 Then
			   $10Queen = "|" & GUICtrlRead($TH10txtNumQueen) & GUICtrlRead($TH10txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH10txtNumQueenSecond) >= 100 Then
				  $10Queen = "|" & GUICtrlRead($TH10txtNumQueen) & GUICtrlRead($TH10txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH11txtNumQueen) = 1 Then
		 $11Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH11txtNumQueen) = 0 Then
		 $11Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH11txtNumQueen) > 1 Then
		 If GUICtrlRead($TH11txtNumQueenSecond) >= 0 Then
		 $11Queen = "|" & GUICtrlRead($TH11txtNumQueen) & GUICtrlRead($TH11txtNumQueenSecond) &"         "
			If GUICtrlRead($TH11txtNumQueenSecond) >= 10 Then
			   $11Queen = "|" & GUICtrlRead($TH11txtNumQueen) & GUICtrlRead($TH11txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH11txtNumQueenSecond) >= 100 Then
				  $11Queen = "|" & GUICtrlRead($TH11txtNumQueen) & GUICtrlRead($TH11txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH12txtNumQueen) = 1 Then
		 $12Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumQueen) = 0 Then
		 $12Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumQueen) > 1 Then
		 If GUICtrlRead($TH12txtNumQueenSecond) >= 0 Then
		 $12Queen = "|" & GUICtrlRead($TH12txtNumQueen) & GUICtrlRead($TH12txtNumQueenSecond) &"         "
			If GUICtrlRead($TH12txtNumQueenSecond) >= 10 Then
			   $12Queen = "|" & GUICtrlRead($TH12txtNumQueen) & GUICtrlRead($TH12txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH12txtNumQueenSecond) >= 100 Then
				  $12Queen = "|" & GUICtrlRead($TH12txtNumQueen) & GUICtrlRead($TH12txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH13txtNumQueen) = 1 Then
		 $13Queen = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumQueen) = 0 Then
		 $13Queen = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumQueen) > 1 Then
		 If GUICtrlRead($TH13txtNumQueenSecond) >= 0 Then
		 $13Queen = "|" & GUICtrlRead($TH13txtNumQueen) & GUICtrlRead($TH13txtNumQueenSecond) &"         "
			If GUICtrlRead($TH13txtNumQueenSecond) >= 10 Then
			   $13Queen = "|" & GUICtrlRead($TH13txtNumQueen) & GUICtrlRead($TH13txtNumQueenSecond) &"        "
				  If GUICtrlRead($TH13txtNumQueenSecond) >= 100 Then
				  $13Queen = "|" & GUICtrlRead($TH13txtNumQueen) & GUICtrlRead($TH13txtNumQueenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainQueen = "TRAIN |Queen      " & $6Queen & $7Queen & $8Queen & $9Queen & $10Queen & $11Queen & $12Queen & $13Queen &"|" & @CRLF
   EndIf


;Warden
   If GUICtrlRead($TH6txtNumWarden) > 0 Or GUICtrlRead($TH7txtNumWarden) > 0 Or GUICtrlRead($TH8txtNumWarden) > 0 Or GUICtrlRead($TH9txtNumWarden) > 0 Or GUICtrlRead($TH10txtNumWarden) > 0 Or GUICtrlRead($TH11txtNumWarden) > 0 Or GUICtrlRead($TH12txtNumWarden) > 0  Or GUICtrlRead($TH13txtNumWarden) > 0 Then
	  if GUICtrlRead($TH6txtNumWarden) = 1 Then
		 $6Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH6txtNumWarden) = 0 Then
		 $6Warden = "|0          "
	  EndIf

	  if GUICtrlRead($TH6txtNumWarden) > 1 Then
		 If GUICtrlRead($TH6txtNumWardenSecond) >= 0 Then
		 $6Warden = "|" & GUICtrlRead($TH6txtNumWarden) & GUICtrlRead($TH6txtNumWardenSecond) &"         "
			If GUICtrlRead($TH6txtNumWardenSecond) >= 10 Then
			   $6Warden = "|" & GUICtrlRead($TH6txtNumWarden) & GUICtrlRead($TH6txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH6txtNumWardenSecond) >= 100 Then
				  $6Warden = "|" & GUICtrlRead($TH6txtNumWarden) & GUICtrlRead($TH6txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH7txtNumWarden) = 1 Then
		 $7Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH7txtNumWarden) = 0 Then
		 $7Warden = "|0          "
	  EndIf

	  if GUICtrlRead($TH7txtNumWarden) > 1 Then
		 If GUICtrlRead($TH7txtNumWardenSecond) >= 0 Then
		 $7Warden = "|" & GUICtrlRead($TH7txtNumWarden) & GUICtrlRead($TH7txtNumWardenSecond) &"         "
			If GUICtrlRead($TH7txtNumWardenSecond) >= 10 Then
			   $7Warden = "|" & GUICtrlRead($TH7txtNumWarden) & GUICtrlRead($TH7txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH7txtNumWardenSecond) >= 100 Then
				  $7Warden = "|" & GUICtrlRead($TH7txtNumWarden) & GUICtrlRead($TH7txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
	  if GUICtrlRead($TH8txtNumWarden) = 1 Then
		 $8Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH8txtNumWarden) = 0 Then
		 $8Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH8txtNumWarden) > 1 Then
		 If GUICtrlRead($TH8txtNumWardenSecond) >= 0 Then
		 $8Warden = "|" & GUICtrlRead($TH8txtNumWarden) & GUICtrlRead($TH8txtNumWardenSecond) &"         "
			If GUICtrlRead($TH8txtNumWardenSecond) >= 10 Then
			   $8Warden = "|" & GUICtrlRead($TH8txtNumWarden) & GUICtrlRead($TH8txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH8txtNumWardenSecond) >= 100 Then
				  $8Warden = "|" & GUICtrlRead($TH8txtNumWarden) & GUICtrlRead($TH8txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH9txtNumWarden) = 1 Then
		 $9Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH9txtNumWarden) = 0 Then
		 $9Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH9txtNumWarden) > 1 Then
		 If GUICtrlRead($TH9txtNumWardenSecond) >= 0 Then
		 $9Warden = "|" & GUICtrlRead($TH9txtNumWarden) & GUICtrlRead($TH9txtNumWardenSecond) &"         "
			If GUICtrlRead($TH9txtNumWardenSecond) >= 10 Then
			   $9Warden = "|" & GUICtrlRead($TH9txtNumWarden) & GUICtrlRead($TH9txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH9txtNumWardenSecond) >= 100 Then
				  $9Warden = "|" & GUICtrlRead($TH9txtNumWarden) & GUICtrlRead($TH9txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH10txtNumWarden) = 1 Then
		 $10Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH10txtNumWarden) = 0 Then
		 $10Warden = "|0          "
	  EndIf

	  if GUICtrlRead($TH10txtNumWarden) > 1 Then
		 If GUICtrlRead($TH10txtNumWardenSecond) >= 0 Then
		 $10Warden = "|" & GUICtrlRead($TH10txtNumWarden) & GUICtrlRead($TH10txtNumWardenSecond) &"         "
			If GUICtrlRead($TH10txtNumWardenSecond) >= 10 Then
			   $10Warden = "|" & GUICtrlRead($TH10txtNumWarden) & GUICtrlRead($TH10txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH10txtNumWardenSecond) >= 100 Then
				  $10Warden = "|" & GUICtrlRead($TH10txtNumWarden) & GUICtrlRead($TH10txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH11txtNumWarden) = 1 Then
		 $11Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH11txtNumWarden) = 0 Then
		 $11Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH11txtNumWarden) > 1 Then
		 If GUICtrlRead($TH11txtNumWardenSecond) >= 0 Then
		 $11Warden = "|" & GUICtrlRead($TH11txtNumWarden) & GUICtrlRead($TH11txtNumWardenSecond) &"         "
			If GUICtrlRead($TH11txtNumWardenSecond) >= 10 Then
			   $11Warden = "|" & GUICtrlRead($TH11txtNumWarden) & GUICtrlRead($TH11txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH11txtNumWardenSecond) >= 100 Then
				  $11Warden = "|" & GUICtrlRead($TH11txtNumWarden) & GUICtrlRead($TH11txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH12txtNumWarden) = 1 Then
		 $12Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumWarden) = 0 Then
		 $12Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumWarden) > 1 Then
		 If GUICtrlRead($TH12txtNumWardenSecond) >= 0 Then
		 $12Warden = "|" & GUICtrlRead($TH12txtNumWarden) & GUICtrlRead($TH12txtNumWardenSecond) &"         "
			If GUICtrlRead($TH12txtNumWardenSecond) >= 10 Then
			   $12Warden = "|" & GUICtrlRead($TH12txtNumWarden) & GUICtrlRead($TH12txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH12txtNumWardenSecond) >= 100 Then
				  $12Warden = "|" & GUICtrlRead($TH12txtNumWarden) & GUICtrlRead($TH12txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf

	  if GUICtrlRead($TH13txtNumWarden) = 1 Then
		 $13Warden = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumWarden) = 0 Then
		 $13Warden = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumWarden) > 1 Then
		 If GUICtrlRead($TH13txtNumWardenSecond) >= 0 Then
		 $13Warden = "|" & GUICtrlRead($TH13txtNumWarden) & GUICtrlRead($TH13txtNumWardenSecond) &"         "
			If GUICtrlRead($TH13txtNumWardenSecond) >= 10 Then
			   $13Warden = "|" & GUICtrlRead($TH13txtNumWarden) & GUICtrlRead($TH13txtNumWardenSecond) &"        "
				  If GUICtrlRead($TH13txtNumWardenSecond) >= 100 Then
				  $13Warden = "|" & GUICtrlRead($TH13txtNumWarden) & GUICtrlRead($TH13txtNumWardenSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainWarden = "TRAIN |Warden     " & $6Warden & $7Warden & $8Warden & $9Warden & $10Warden & $11Warden & $12Warden & $13Warden &"|" & @CRLF
   EndIf


;Royale Champion

   If GUICtrlRead($TH6txtNumRoyaleC) > 0 Or GUICtrlRead($TH7txtNumRoyaleC) > 0 Or GUICtrlRead($TH8txtNumRoyaleC) > 0 Or GUICtrlRead($TH9txtNumRoyaleC) > 0 Or GUICtrlRead($TH10txtNumRoyaleC) > 0 Or GUICtrlRead($TH11txtNumRoyaleC) > 0 Or GUICtrlRead($TH12txtNumRoyaleC) > 0 Or GUICtrlRead($TH13txtNumRoyaleC) > 0 Then
;~ 	  if GUICtrlRead($TH6txtNumRoyaleC) = 1 Then
;~ 		 $6RoyaleC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH6txtNumRoyaleC) = 0 Then
		 $6RoyaleC = "|0          "
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH6txtNumRoyaleC) > 1 Then
;~ 		 If GUICtrlRead($TH6txtNumRoyaleCSecond) >= 0 Then
;~ 		 $6RoyaleC = "|" & GUICtrlRead($TH6txtNumRoyaleC) & GUICtrlRead($TH6txtNumRoyaleCSecond) &"         "
;~ 			If GUICtrlRead($TH6txtNumRoyaleCSecond) >= 10 Then
;~ 			   $6RoyaleC = "|" & GUICtrlRead($TH6txtNumRoyaleC) & GUICtrlRead($TH6txtNumRoyaleCSecond) &"        "
;~ 				  If GUICtrlRead($TH6txtNumRoyaleCSecond) >= 100 Then
;~ 				  $6RoyaleC = "|" & GUICtrlRead($TH6txtNumRoyaleC) & GUICtrlRead($TH6txtNumRoyaleCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH7txtNumRoyaleC) = 1 Then
;~ 		 $7RoyaleC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH7txtNumRoyaleC) = 0 Then
		 $7RoyaleC = "|0          "
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH7txtNumRoyaleC) > 1 Then
;~ 		 If GUICtrlRead($TH7txtNumRoyaleCSecond) >= 0 Then
;~ 		 $7RoyaleC = "|" & GUICtrlRead($TH7txtNumRoyaleC) & GUICtrlRead($TH7txtNumRoyaleCSecond) &"         "
;~ 			If GUICtrlRead($TH7txtNumRoyaleCSecond) >= 10 Then
;~ 			   $7RoyaleC = "|" & GUICtrlRead($TH7txtNumRoyaleC) & GUICtrlRead($TH7txtNumRoyaleCSecond) &"        "
;~ 				  If GUICtrlRead($TH7txtNumRoyaleCSecond) >= 100 Then
;~ 				  $7RoyaleC = "|" & GUICtrlRead($TH7txtNumRoyaleC) & GUICtrlRead($TH7txtNumRoyaleCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH8txtNumRoyaleC) = 1 Then
;~ 		 $8RoyaleC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH8txtNumRoyaleC) = 0 Then
		 $8RoyaleC = "|0          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH8txtNumRoyaleC) > 1 Then
;~ 		 If GUICtrlRead($TH8txtNumRoyaleCSecond) >= 0 Then
;~ 		 $8RoyaleC = "|" & GUICtrlRead($TH8txtNumRoyaleC) & GUICtrlRead($TH8txtNumRoyaleCSecond) &"         "
;~ 			If GUICtrlRead($TH8txtNumRoyaleCSecond) >= 10 Then
;~ 			   $8RoyaleC = "|" & GUICtrlRead($TH8txtNumRoyaleC) & GUICtrlRead($TH8txtNumRoyaleCSecond) &"        "
;~ 				  If GUICtrlRead($TH8txtNumRoyaleCSecond) >= 100 Then
;~ 				  $8RoyaleC = "|" & GUICtrlRead($TH8txtNumRoyaleC) & GUICtrlRead($TH8txtNumRoyaleCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH9txtNumRoyaleC) = 1 Then
;~ 		 $9RoyaleC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH9txtNumRoyaleC) = 0 Then
		 $9RoyaleC = "|0          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH9txtNumRoyaleC) > 1 Then
;~ 		 If GUICtrlRead($TH9txtNumRoyaleCSecond) >= 0 Then
;~ 		 $9RoyaleC = "|" & GUICtrlRead($TH9txtNumRoyaleC) & GUICtrlRead($TH9txtNumRoyaleCSecond) &"         "
;~ 			If GUICtrlRead($TH9txtNumRoyaleCSecond) >= 10 Then
;~ 			   $9RoyaleC = "|" & GUICtrlRead($TH9txtNumRoyaleC) & GUICtrlRead($TH9txtNumRoyaleCSecond) &"        "
;~ 				  If GUICtrlRead($TH9txtNumRoyaleCSecond) >= 100 Then
;~ 				  $9RoyaleC = "|" & GUICtrlRead($TH9txtNumRoyaleC) & GUICtrlRead($TH9txtNumRoyaleCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH10txtNumRoyaleC) = 1 Then
;~ 		 $10RoyaleC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH10txtNumRoyaleC) = 0 Then
		 $10RoyaleC = "|0          "
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH10txtNumRoyaleC) > 1 Then
;~ 		 If GUICtrlRead($TH10txtNumRoyaleCSecond) >= 0 Then
;~ 		 $10RoyaleC = "|" & GUICtrlRead($TH10txtNumRoyaleC) & GUICtrlRead($TH10txtNumRoyaleCSecond) &"         "
;~ 			If GUICtrlRead($TH10txtNumRoyaleCSecond) >= 10 Then
;~ 			   $10RoyaleC = "|" & GUICtrlRead($TH10txtNumRoyaleC) & GUICtrlRead($TH10txtNumRoyaleCSecond) &"        "
;~ 				  If GUICtrlRead($TH10txtNumRoyaleCSecond) >= 100 Then
;~ 				  $10RoyaleC = "|" & GUICtrlRead($TH10txtNumRoyaleC) & GUICtrlRead($TH10txtNumRoyaleCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

;~ 	  if GUICtrlRead($TH11txtNumRoyaleC) = 1 Then
;~ 		 $11RoyaleC = "|1          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH11txtNumRoyaleC) = 0 Then
		 $11RoyaleC = "|0          "
;~ 	  EndIf
;~ 	  if GUICtrlRead($TH11txtNumRoyaleC) > 1 Then
;~ 		 If GUICtrlRead($TH11txtNumRoyaleCSecond) >= 0 Then
;~ 		 $11RoyaleC = "|" & GUICtrlRead($TH11txtNumRoyaleC) & GUICtrlRead($TH11txtNumRoyaleCSecond) &"         "
;~ 			If GUICtrlRead($TH11txtNumRoyaleCSecond) >= 10 Then
;~ 			   $11RoyaleC = "|" & GUICtrlRead($TH11txtNumRoyaleC) & GUICtrlRead($TH11txtNumRoyaleCSecond) &"        "
;~ 				  If GUICtrlRead($TH11txtNumRoyaleCSecond) >= 100 Then
;~ 				  $11RoyaleC = "|" & GUICtrlRead($TH11txtNumRoyaleC) & GUICtrlRead($TH11txtNumRoyaleCSecond) &"       "
;~ 				  EndIf
;~ 			EndIf
;~ 		 EndIf
;~ 	  EndIf

	  if GUICtrlRead($TH12txtNumRoyaleC) = 1 Then
		 $12RoyaleC = "|1          "
	  EndIf
	  if GUICtrlRead($TH12txtNumRoyaleC) = 0 Then
		 $12RoyaleC = "|0          "
	  EndIf
	  if GUICtrlRead($TH12txtNumRoyaleC) > 1 Then
		 If GUICtrlRead($TH12txtNumRoyaleCSecond) >= 0 Then
		 $12RoyaleC = "|" & GUICtrlRead($TH12txtNumRoyaleC) & GUICtrlRead($TH12txtNumRoyaleCSecond) &"         "
			If GUICtrlRead($TH12txtNumRoyaleCSecond) >= 10 Then
			   $12RoyaleC = "|" & GUICtrlRead($TH12txtNumRoyaleC) & GUICtrlRead($TH12txtNumRoyaleCSecond) &"        "
				  If GUICtrlRead($TH12txtNumRoyaleCSecond) >= 100 Then
				  $12RoyaleC = "|" & GUICtrlRead($TH12txtNumRoyaleC) & GUICtrlRead($TH12txtNumRoyaleCSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf
  if GUICtrlRead($TH13txtNumRoyaleC) = 1 Then
		 $13RoyaleC = "|1          "
	  EndIf
	  if GUICtrlRead($TH13txtNumRoyaleC) = 0 Then
		 $13RoyaleC = "|0          "
	  EndIf
	  if GUICtrlRead($TH13txtNumRoyaleC) > 1 Then
		 If GUICtrlRead($TH13txtNumRoyaleCSecond) >= 0 Then
		 $13RoyaleC = "|" & GUICtrlRead($TH13txtNumRoyaleC) & GUICtrlRead($TH13txtNumRoyaleCSecond) &"         "
			If GUICtrlRead($TH13txtNumRoyaleCSecond) >= 10 Then
			   $13RoyaleC = "|" & GUICtrlRead($TH13txtNumRoyaleC) & GUICtrlRead($TH13txtNumRoyaleCSecond) &"        "
				  If GUICtrlRead($TH13txtNumRoyaleCSecond) >= 100 Then
				  $13RoyaleC = "|" & GUICtrlRead($TH13txtNumRoyaleC) & GUICtrlRead($TH13txtNumRoyaleCSecond) &"       "
				  EndIf
			EndIf
		 EndIf
	  EndIf


	  $TrainRoyaleC = "TRAIN |Champion   " & $6RoyaleC & $7RoyaleC & $8RoyaleC & $9RoyaleC & $10RoyaleC & $11RoyaleC & $12RoyaleC & $13RoyaleC &"|" & @CRLF
   EndIf






$TrainCSVWrite =  $TrainBarb & $TrainArcher & $TrainGaint & $TrainGoblin & $TrainWallB & $TrainBalloon & $TrainWizard & $TrainHealer & $TrainDragon &  $TrainPekka & $TrainBabyDragon & $TrainMiner & $TrainEdrag & $TrainYeti & $TrainMini & $TrainHogsRider & $TrainValkyre & $TrainGolem & $TrainWitch & $TrainLava & $TrainBowler & $TrainIceGolem & $TrainLSpell & $TrainHSpell & $TrainRSpell & $TrainJSpell & $TrainFSpell & $TrainPSpell & $TrainCSpell & $TrainESpell & $TrainHaSpell & $TrainSkSpell & $TrainBaSpell & $TrainBattleB & $TrainWallw & $TrainStoneS & $TrainSiegeB & $TrainKing & $TrainQueen & $TrainWarden & $TrainRoyaleC



EndFunc

Func GetRequestCC()
	$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox))
	If (11-StringLen($TH6RequestCSV)) < 0 Then
		$TH6RequestCSV = StringTrimRight($TH6RequestCSV,Abs(11-StringLen($TH6RequestCSV)))
	ElseIf (11-StringLen($TH6RequestCSV)) = 1 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH6RequestCSV)) = 2 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH6RequestCSV)) = 3 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH6RequestCSV)) = 4 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH6RequestCSV)) = 5 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH6RequestCSV)) = 6 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH6RequestCSV)) = 7 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH6RequestCSV)) = 8 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH6RequestCSV)) = 9 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH6RequestCSV)) = 10 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH6RequestCSV)) = 11 Then
		$TH6RequestCSV = String(GUICtrlRead($TH6RequestCCInbox)) & "           "
	EndIf

	$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox))
	If (11-StringLen($TH7RequestCSV)) < 0 Then
		$TH7RequestCSV = StringTrimRight($TH7RequestCSV,Abs(11-StringLen($TH7RequestCSV)))
	ElseIf (11-StringLen($TH7RequestCSV)) = 1 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH7RequestCSV)) = 2 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH7RequestCSV)) = 3 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH7RequestCSV)) = 4 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH7RequestCSV)) = 5 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH7RequestCSV)) = 6 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH7RequestCSV)) = 7 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH7RequestCSV)) = 8 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH7RequestCSV)) = 9 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH7RequestCSV)) = 10 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH7RequestCSV)) = 11 Then
		$TH7RequestCSV = String(GUICtrlRead($TH7RequestCCInbox)) & "           "
	EndIf

	$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox))
	If (11-StringLen($TH8RequestCSV)) < 0 Then
		$TH8RequestCSV = StringTrimRight($TH8RequestCSV,Abs(11-StringLen($TH8RequestCSV)))
	ElseIf (11-StringLen($TH8RequestCSV)) = 1 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH8RequestCSV)) = 2 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH8RequestCSV)) = 3 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH8RequestCSV)) = 4 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH8RequestCSV)) = 5 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH8RequestCSV)) = 6 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH8RequestCSV)) = 7 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH8RequestCSV)) = 8 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH8RequestCSV)) = 9 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH8RequestCSV)) = 10 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH8RequestCSV)) = 11 Then
		$TH8RequestCSV = String(GUICtrlRead($TH8RequestCCInbox)) & "           "
	EndIf


	$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox))
	If (11-StringLen($TH9RequestCSV)) < 0 Then
		$TH9RequestCSV = StringTrimRight($TH9RequestCSV,Abs(11-StringLen($TH9RequestCSV)))
	ElseIf (11-StringLen($TH9RequestCSV)) = 1 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH9RequestCSV)) = 2 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH9RequestCSV)) = 3 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH9RequestCSV)) = 4 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH9RequestCSV)) = 5 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH9RequestCSV)) = 6 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH9RequestCSV)) = 7 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH9RequestCSV)) = 8 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH9RequestCSV)) = 9 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH9RequestCSV)) = 10 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH9RequestCSV)) = 11 Then
		$TH9RequestCSV = String(GUICtrlRead($TH9RequestCCInbox)) & "           "
	EndIf

	$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox))
	If (11-StringLen($TH10RequestCSV)) < 0 Then
		$TH10RequestCSV = StringTrimRight($TH10RequestCSV,Abs(11-StringLen($TH10RequestCSV)))
	ElseIf (11-StringLen($TH10RequestCSV)) = 1 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH10RequestCSV)) = 2 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH10RequestCSV)) = 3 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH10RequestCSV)) = 4 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH10RequestCSV)) = 5 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH10RequestCSV)) = 6 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH10RequestCSV)) = 7 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH10RequestCSV)) = 8 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH10RequestCSV)) = 9 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH10RequestCSV)) = 10 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH10RequestCSV)) = 11 Then
		$TH10RequestCSV = String(GUICtrlRead($TH10RequestCCInbox)) & "           "
	EndIf

	$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox))
	If (11-StringLen($TH11RequestCSV)) < 0 Then
		$TH11RequestCSV = StringTrimRight($TH11RequestCSV,Abs(11-StringLen($TH11RequestCSV)))
	ElseIf (11-StringLen($TH11RequestCSV)) = 1 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH11RequestCSV)) = 2 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH11RequestCSV)) = 3 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH11RequestCSV)) = 4 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH11RequestCSV)) = 5 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH11RequestCSV)) = 6 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH11RequestCSV)) = 7 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH11RequestCSV)) = 8 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH11RequestCSV)) = 9 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH11RequestCSV)) = 10 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH11RequestCSV)) = 11 Then
		$TH11RequestCSV = String(GUICtrlRead($TH11RequestCCInbox)) & "           "
	EndIf

	$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox))
	If (11-StringLen($TH12RequestCSV)) < 0 Then
		$TH12RequestCSV = StringTrimRight($TH12RequestCSV,Abs(11-StringLen($TH12RequestCSV)))
	ElseIf (11-StringLen($TH12RequestCSV)) = 1 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH12RequestCSV)) = 2 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH12RequestCSV)) = 3 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH12RequestCSV)) = 4 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH12RequestCSV)) = 5 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH12RequestCSV)) = 6 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH12RequestCSV)) = 7 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH12RequestCSV)) = 8 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH12RequestCSV)) = 9 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH12RequestCSV)) = 10 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH12RequestCSV)) = 11 Then
		$TH12RequestCSV = String(GUICtrlRead($TH12RequestCCInbox)) & "           "
	EndIf

	$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox))
	If (11-StringLen($TH13RequestCSV)) < 0 Then
		$TH13RequestCSV = StringTrimRight($TH13RequestCSV,Abs(11-StringLen($TH13RequestCSV)))
	ElseIf (11-StringLen($TH13RequestCSV)) = 1 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & " "
	ElseIf (11-StringLen($TH13RequestCSV)) = 2 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "  "
	ElseIf (11-StringLen($TH13RequestCSV)) = 3 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "   "
	ElseIf (11-StringLen($TH13RequestCSV)) = 4 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "    "
	ElseIf (11-StringLen($TH13RequestCSV)) = 5 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "     "
	ElseIf (11-StringLen($TH13RequestCSV)) = 6 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "      "
	ElseIf (11-StringLen($TH13RequestCSV)) = 7 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "       "
	ElseIf (11-StringLen($TH13RequestCSV)) = 8 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "        "
	ElseIf (11-StringLen($TH13RequestCSV)) = 9 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "         "
	ElseIf (11-StringLen($TH13RequestCSV)) = 10 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "          "
	ElseIf (11-StringLen($TH13RequestCSV)) = 11 Then
		$TH13RequestCSV = String(GUICtrlRead($TH13RequestCCInbox)) & "           "
	EndIf

	If String(GUICtrlRead($TH13RequestCCInbox)) = "" And String(GUICtrlRead($TH12RequestCCInbox)) = "" And String(GUICtrlRead($TH11RequestCCInbox)) = "" And String(GUICtrlRead($TH10RequestCCInbox)) = "" And String(GUICtrlRead($TH9RequestCCInbox)) = "" And String(GUICtrlRead($TH8RequestCCInbox)) = "" And String(GUICtrlRead($TH7RequestCCInbox)) = "" And String(GUICtrlRead($TH6RequestCCInbox)) = "" Then
		$CCRequestCSVWrite = ""
	Else
		$CCRequestCSVWrite = "CCREQ |           |"&$TH6RequestCSV&"|"&$TH7RequestCSV&"|"&$TH8RequestCSV&"|"&$TH9RequestCSV&"|"&$TH10RequestCSV&"|"&$TH11RequestCSV&"|"&$TH12RequestCSV&"|"&$TH13RequestCSV&"|" & @CRLF
	EndIf

EndFunc

Func ShowTrainMenu()
	GUICtrlSetState($OpenTrain,$GUI_HIDE)
	GUICtrlSetState($CloseTrain,$GUI_SHOW)
	GUICtrlSetState($info_pic,$GUI_HIDE)
	GUICtrlSetState($LabelHis,$GUI_HIDE)
	GUICtrlSetState($TrainBackGround,$GUI_SHOW)
	ShowTrainTH13()
	GUICtrlSetState($TrainSelectTH13,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH13Click,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH12Click,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH11Click,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH10Click,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH9Click,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH8Click,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH7Click,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH6Click,$GUI_SHOW)
EndFunc

Func SaveandExitTrainMenu()

	GUICtrlSetState($OpenTrain,$GUI_SHOW)
	GUICtrlSetState($CloseTrain,$GUI_HIDE)
	GUICtrlSetState($TrainBackGround,$GUI_HIDE)
	HideTrainTH6()
	HideTrainTH7()
	HideTrainTH8()
	HideTrainTH9()
	HideTrainTH10()
	HideTrainTH11()
	HideTrainTH12()
	HideTrainTH13()
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13Click,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12Click,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11Click,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10Click,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9Click,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8Click,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7Click,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH6Click,$GUI_HIDE)
	GUICtrlSetState($info_pic,$GUI_SHOW)
	$GetHis = InetRead("https://raw.githubusercontent.com/ratakantez/UpdateCsvMaker_English/master/history.txt")
	If @error Or $GetHis = "" Then Return
	$GetHis = BinaryToString($GetHis)
	GUICtrlSetData($LabelHis,$GetHis)
	GUICtrlSetState($LabelHis,$GUI_SHOW)

EndFunc



Func ShowOnlyTH6()

	GUICtrlSetState($TrainSelectTH6,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)

;~ 	$TrainShowControl = "TH6"
;~ 	If $TrainShowControl = "TH7" Then
		HideTrainTH7()
;~ 	ElseIf $TrainShowControl = "TH8" Then
		HideTrainTH8()
;~ 	ElseIf $TrainShowControl = "TH9" Then
		HideTrainTH9()
;~ 	ElseIf $TrainShowControl = "TH10" Then
		HideTrainTH10()
;~ 	ElseIf $TrainShowControl = "TH11" Then
		HideTrainTH11()
;~ 	ElseIf $TrainShowControl = "TH12" Then
		HideTrainTH12()
;~ 	ElseIf $TrainShowControl = "TH13" Then
		HideTrainTH13()
;~ 	EndIf
	GUICtrlSetState($TH6,$GUI_SHOW)
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH13,$GUI_HIDE)
	ShowTrainTH6()


EndFunc
Func ShowOnlyTH7()
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)

;~ 	$TrainShowControl = "TH7"
;~ 	If $TrainShowControl = "TH6" Then
		HideTrainTH6()
;~ 	ElseIf $TrainShowControl = "TH8" Then
		HideTrainTH8()
;~ 	ElseIf $TrainShowControl = "TH9" Then
		HideTrainTH9()
;~ 	ElseIf $TrainShowControl = "TH10" Then
		HideTrainTH10()
;~ 	ElseIf $TrainShowControl = "TH11" Then
		HideTrainTH11()
;~ 	ElseIf $TrainShowControl = "TH12" Then
		HideTrainTH12()
;~ 	ElseIf $TrainShowControl = "TH13" Then
		HideTrainTH13()
;~ 	EndIf

	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH7,$GUI_SHOW)
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH13,$GUI_HIDE)
	ShowTrainTH7()

EndFunc
Func ShowOnlyTH8()
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)

;~ 	$TrainShowControl = "TH8"
;~ 	If $TrainShowControl = "TH6" Then
		HideTrainTH6()
;~ 	ElseIf $TrainShowControl = "TH7" Then
		HideTrainTH7()
;~ 	ElseIf $TrainShowControl = "TH9" Then
		HideTrainTH9()
;~ 	ElseIf $TrainShowControl = "TH10" Then
		HideTrainTH10()
;~ 	ElseIf $TrainShowControl = "TH11" Then
		HideTrainTH11()
;~ 	ElseIf $TrainShowControl = "TH12" Then
		HideTrainTH12()
;~ 	ElseIf $TrainShowControl = "TH13" Then
		HideTrainTH13()
;~ 	EndIf

	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH8,$GUI_SHOW)
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH13,$GUI_HIDE)
	ShowTrainTH8()


EndFunc
Func ShowOnlyTH9()
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)

;~ 	$TrainShowControl = "TH9"
;~ 	If $TrainShowControl = "TH6" Then
		HideTrainTH6()
;~ 	ElseIf $TrainShowControl = "TH7" Then
		HideTrainTH7()
;~ 	ElseIf $TrainShowControl = "TH8" Then
		HideTrainTH8()
;~ 	ElseIf $TrainShowControl = "TH10" Then
		HideTrainTH10()
;~ 	ElseIf $TrainShowControl = "TH11" Then
		HideTrainTH11()
;~ 	ElseIf $TrainShowControl = "TH12" Then
		HideTrainTH12()
;~ 	ElseIf $TrainShowControl = "TH13" Then
		HideTrainTH13()
;~ 	EndIf
	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH9,$GUI_SHOW)
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH13,$GUI_HIDE)
	ShowTrainTH9()

EndFunc
Func ShowOnlyTH10()
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)

;~ 	$TrainShowControl = "TH10"
;~ 	If $TrainShowControl = "TH6" Then
		HideTrainTH6()
;~ 	ElseIf $TrainShowControl = "TH7" Then
		HideTrainTH7()
;~ 	ElseIf $TrainShowControl = "TH8" Then
		HideTrainTH8()
;~ 	ElseIf $TrainShowControl = "TH9" Then
		HideTrainTH9()
;~ 	ElseIf $TrainShowControl = "TH11" Then
		HideTrainTH11()
;~ 	ElseIf $TrainShowControl = "TH12" Then
		HideTrainTH12()
;~ 	ElseIf $TrainShowControl = "TH13" Then
		HideTrainTH13()
;~ 	EndIf

	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH10,$GUI_SHOW)
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH13,$GUI_HIDE)
	ShowTrainTH10()

EndFunc
Func ShowOnlyTH11()
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)

;~ 	$TrainShowControl = "TH11"
;~ 	If $TrainShowControl = "TH6" Then
		HideTrainTH6()
;~ 	ElseIf $TrainShowControl = "TH7" Then
		HideTrainTH7()
;~ 	ElseIf $TrainShowControl = "TH8" Then
		HideTrainTH8()
;~ 	ElseIf $TrainShowControl = "TH9" Then
		HideTrainTH9()
;~ 	ElseIf $TrainShowControl = "TH10" Then
		HideTrainTH10()
;~ 	ElseIf $TrainShowControl = "TH12" Then
		HideTrainTH12()
;~ 	ElseIf $TrainShowControl = "TH13" Then
		HideTrainTH13()
;~ 	EndIf


	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH11,$GUI_SHOW)
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH13,$GUI_HIDE)
	ShowTrainTH11()


EndFunc
Func ShowOnlyTH12()
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_SHOW)
	GUICtrlSetState($TrainSelectTH13,$GUI_HIDE)

;~ 	$TrainShowControl = "TH12"
;~ 	If $TrainShowControl = "TH6" Then
		HideTrainTH6()
;~ 	ElseIf $TrainShowControl = "TH7" Then
		HideTrainTH7()
;~ 	ElseIf $TrainShowControl = "TH8" Then
		HideTrainTH8()
;~ 	ElseIf $TrainShowControl = "TH9" Then
		HideTrainTH9()
;~ 	ElseIf $TrainShowControl = "TH10" Then
		HideTrainTH10()
;~ 	ElseIf $TrainShowControl = "TH11" Then
		HideTrainTH11()
;~ 	ElseIf $TrainShowControl = "TH13" Then
		HideTrainTH13()
;~ 	EndIf

	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH12,$GUI_SHOW)
	GUICtrlSetState($TH13,$GUI_HIDE)
	ShowTrainTH12()


EndFunc
Func ShowOnlyTH13()
	GUICtrlSetState($TrainSelectTH6,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH7,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH8,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH9,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH10,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH11,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH12,$GUI_HIDE)
	GUICtrlSetState($TrainSelectTH13,$GUI_SHOW)
	$TrainShowControl = "TH13"
;~ 	If $TrainShowControl = "TH6" Then
		HideTrainTH6()
;~ 	ElseIf $TrainShowControl = "TH7" Then
		HideTrainTH7()
;~ 	ElseIf $TrainShowControl = "TH8" Then
		HideTrainTH8()
;~ 	ElseIf $TrainShowControl = "TH9" Then
		HideTrainTH9()
;~ 	ElseIf $TrainShowControl = "TH10" Then
		HideTrainTH10()
;~ 	ElseIf $TrainShowControl = "TH11" Then
		HideTrainTH11()
;~ 	ElseIf $TrainShowControl = "TH12" Then
		HideTrainTH12()
;~ 	EndIf

	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH13,$GUI_SHOW)
	ShowTrainTH13()


EndFunc

Func ShowTrainTH6()
	GUICtrlSetState($TH6,$GUI_SHOW)
	GUICtrlSetState($TH6PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH6PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH6PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH6PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH6PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH6PicBall,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH6PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH6PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH6PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH6PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH6PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH6PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH6PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH6PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH6PicMini,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH6PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH6PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH6PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH6PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH6PicLava,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH6PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH6PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH6PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH6PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH6PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH6PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH6PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH6PicKing,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH6LblKing,$GUI_SHOW)
	GUICtrlSetState($TH6PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH6LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH6PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH6LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH6PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH6txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH6LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH6RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH6RequestCCInbox,$GUI_SHOW)

;~ 	For $i=$TH6 to $TH6txtNumHSpell
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH6()
	GUICtrlSetState($TH6,$GUI_HIDE)
	GUICtrlSetState($TH6PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH6PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH6PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH6PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH6PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH6PicBall,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH6PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH6PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH6PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH6PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH6PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH6PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH6PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH6PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH6PicMini,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH6PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH6PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH6PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH6PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH6PicLava,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH6PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH6PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH6PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH6PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH6PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH6PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH6PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH6PicKing,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH6LblKing,$GUI_HIDE)
	GUICtrlSetState($TH6PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH6LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH6PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH6LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH6PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH6txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH6LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH6RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH6RequestCCInbox,$GUI_HIDE)
;~ 	For $i=$TH6 to $TH6txtNumHSpell
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc
Func ShowTrainTH7()
	GUICtrlSetState($TH7,$GUI_SHOW)
	GUICtrlSetState($TH7PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH7PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH7PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH7PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH7PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH7PicBall,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH7PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH7PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH7PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH7PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH7PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH7PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH7PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH7PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH7PicMini,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH7PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH7PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH7PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH7PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH7PicLava,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH7PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH7PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH7PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH7PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH7PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH7PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH7PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH7PicKing,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH7LblKing,$GUI_SHOW)
	GUICtrlSetState($TH7PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH7LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH7PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH7LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH7PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH7txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH7LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH7RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH7RequestCCInbox,$GUI_SHOW)
;~ 	For $i=$TH7 to $TH7LblKing
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH7()
	GUICtrlSetState($TH7,$GUI_HIDE)
	GUICtrlSetState($TH7PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH7PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH7PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH7PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH7PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH7PicBall,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH7PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH7PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH7PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH7PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH7PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH7PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH7PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH7PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH7PicMini,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH7PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH7PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH7PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH7PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH7PicLava,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH7PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH7PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH7PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH7PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH7PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH7PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH7PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH7PicKing,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH7LblKing,$GUI_HIDE)
	GUICtrlSetState($TH7PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH7LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH7PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH7LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH7PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH7txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH7LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH7RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH7RequestCCInbox,$GUI_HIDE)
;~ 	For $i=$TH7 to $TH7LblKing
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc
Func ShowTrainTH8()
	GUICtrlSetState($TH8,$GUI_SHOW)
	GUICtrlSetState($TH8PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH8PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH8PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH8PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH8PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH8PicBall,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH8PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH8PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH8PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH8PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH8PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH8PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH8PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH8PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH8PicMini,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH8PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH8PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH8PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH8PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH8PicLava,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH8PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH8PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH8PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH8PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH8PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH8PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH8PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH8PicKing,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH8LblKing,$GUI_SHOW)
	GUICtrlSetState($TH8PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH8LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH8PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH8LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH8PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH8txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH8LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH8RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH8RequestCCInbox,$GUI_SHOW)

;~ 	For $i=$TH8 to $TH8LblKing
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH8()
	GUICtrlSetState($TH8,$GUI_HIDE)
	GUICtrlSetState($TH8PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH8PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH8PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH8PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH8PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH8PicBall,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH8PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH8PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH8PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH8PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH8PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH8PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH8PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH8PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH8PicMini,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH8PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH8PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH8PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH8PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH8PicLava,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH8PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH8PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH8PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH8PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH8PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH8PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH8PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH8PicKing,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH8LblKing,$GUI_HIDE)
	GUICtrlSetState($TH8PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH8LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH8PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH8LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH8PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH8txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH8LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH8RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH8RequestCCInbox,$GUI_HIDE)
;~ 	For $i=$TH8 to $TH8LblKing
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc
Func ShowTrainTH9()
	GUICtrlSetState($TH9,$GUI_SHOW)
	GUICtrlSetState($TH9PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH9PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH9PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH9PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH9PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH9PicBall,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH9PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH9PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH9PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH9PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH9PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH9PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH9PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH9PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH9PicMini,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH9PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH9PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH9PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH9PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH9PicLava,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH9PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH9PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH9PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH9PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH9PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH9PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH9PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH9PicKing,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH9LblKing,$GUI_SHOW)
	GUICtrlSetState($TH9PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH9LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH9PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH9LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH9PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH9txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH9LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH9RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH9RequestCCInbox,$GUI_SHOW)

;~ 	For $i=$TH9 to $TH9LblQueen
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH9()
	GUICtrlSetState($TH9,$GUI_HIDE)
	GUICtrlSetState($TH9PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH9PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH9PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH9PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH9PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH9PicBall,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH9PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH9PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH9PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH9PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH9PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH9PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH9PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH9PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH9PicMini,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH9PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH9PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH9PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH9PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH9PicLava,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH9PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH9PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH9PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH9PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH9PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH9PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH9PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH9PicKing,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH9LblKing,$GUI_HIDE)
	GUICtrlSetState($TH9PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH9LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH9PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH9LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH9PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH9txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH9LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH9RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH9RequestCCInbox,$GUI_HIDE)
;~ 	For $i=$TH9 to $TH9LblQueen
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc
Func ShowTrainTH10()
	GUICtrlSetState($TH10,$GUI_SHOW)
	GUICtrlSetState($TH10PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH10PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH10PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH10PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH10PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH10PicBall,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH10PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH10PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH10PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH10PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH10PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH10PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH10PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH10PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH10PicMini,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH10PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH10PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH10PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH10PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH10PicLava,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH10PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH10PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH10PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH10PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH10PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH10PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH10PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH10PicKing,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH10LblKing,$GUI_SHOW)
	GUICtrlSetState($TH10PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH10LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH10PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH10LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH10PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH10txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH10LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH10RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH10RequestCCInbox,$GUI_SHOW)

;~ 	For $i=$TH10 to $TH10LblQueen
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH10()
	GUICtrlSetState($TH10,$GUI_HIDE)
	GUICtrlSetState($TH10PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH10PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH10PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH10PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH10PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH10PicBall,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH10PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH10PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH10PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH10PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH10PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH10PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH10PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH10PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH10PicMini,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH10PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH10PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH10PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH10PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH10PicLava,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH10PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH10PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH10PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH10PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH10PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH10PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH10PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH10PicKing,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH10LblKing,$GUI_HIDE)
	GUICtrlSetState($TH10PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH10LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH10PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH10LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH10PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH10txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH10LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH10RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH10RequestCCInbox,$GUI_HIDE)
;~ 	For $i=$TH10 to $TH10LblQueen
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc
Func ShowTrainTH11()
	GUICtrlSetState($TH11,$GUI_SHOW)
	GUICtrlSetState($TH11PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH11PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH11PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH11PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH11PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH11PicBall,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH11PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH11PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH11PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH11PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH11PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH11PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH11PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH11PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH11PicMini,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH11PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH11PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH11PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH11PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH11PicLava,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH11PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH11PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH11PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH11PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH11PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH11PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH11PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH11PicKing,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH11LblKing,$GUI_SHOW)
	GUICtrlSetState($TH11PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH11LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH11PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH11LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH11PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH11txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH11LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH11RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH11RequestCCInbox,$GUI_SHOW)

;~ 	For $i=$TH11 to $TH11LblWarden
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH11()
	GUICtrlSetState($TH11,$GUI_HIDE)
	GUICtrlSetState($TH11PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH11PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH11PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH11PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH11PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH11PicBall,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH11PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH11PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH11PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH11PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH11PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH11PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH11PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH11PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH11PicMini,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH11PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH11PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH11PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH11PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH11PicLava,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH11PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH11PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH11PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH11PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH11PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH11PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH11PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH11PicKing,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH11LblKing,$GUI_HIDE)
	GUICtrlSetState($TH11PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH11LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH11PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH11LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH11PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH11txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH11LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH11RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH11RequestCCInbox,$GUI_HIDE)
;~ 	For $i=$TH11 to $TH11LblWarden
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc
Func ShowTrainTH12()
	GUICtrlSetState($TH12,$GUI_SHOW)
	GUICtrlSetState($TH12PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH12PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH12PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH12PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH12PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH12PicBall,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH12PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH12PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH12PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH12PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH12PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH12PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH12PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH12PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH12PicMini,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH12PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH12PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH12PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH12PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH12PicLava,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH12PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH12PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH12PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH12PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH12PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH12PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH12PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH12PicKing,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH12LblKing,$GUI_SHOW)
	GUICtrlSetState($TH12PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH12LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH12PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH12LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH12PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH12txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH12LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH12RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH12RequestCCInbox,$GUI_SHOW)

;~ 	For $i=$TH12 to $TH12LblWarden
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH12()
	GUICtrlSetState($TH12,$GUI_HIDE)
	GUICtrlSetState($TH12PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH12PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH12PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH12PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH12PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH12PicBall,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH12PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH12PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH12PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH12PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH12PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH12PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH12PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH12PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH12PicMini,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH12PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH12PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH12PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH12PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH12PicLava,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH12PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH12PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH12PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH12PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH12PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH12PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH12PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH12PicKing,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH12LblKing,$GUI_HIDE)
	GUICtrlSetState($TH12PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH12LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH12PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH12LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH12PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH12txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH12LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH12RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH12RequestCCInbox,$GUI_HIDE)
;~ 	For $i=$TH12 to $TH12LblWarden
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc
Func ShowTrainTH13()
	GUICtrlSetState($TH13,$GUI_SHOW)
	GUICtrlSetState($TH13PicBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumBarbarian,$GUI_SHOW)
	GUICtrlSetState($TH13PicArcher,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumArcher,$GUI_SHOW)
	GUICtrlSetState($TH13PicGiant,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumGiant,$GUI_SHOW)
	GUICtrlSetState($TH13PicGoblin,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumGoblin,$GUI_SHOW)
	GUICtrlSetState($TH13PicWallB,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumWall,$GUI_SHOW)
	GUICtrlSetState($TH13PicBall,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumBall,$GUI_SHOW)
	GUICtrlSetState($TH13PicWizzard,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumWiza,$GUI_SHOW)
	GUICtrlSetState($TH13PicHealer,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumHeal,$GUI_SHOW)
	GUICtrlSetState($TH13PicDragon,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumDrag,$GUI_SHOW)
	GUICtrlSetState($TH13PicPekka,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumPekk,$GUI_SHOW)
	GUICtrlSetState($TH13PicBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumBabyDragon,$GUI_SHOW)
	GUICtrlSetState($TH13PicMiner,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumMiner,$GUI_SHOW)
	GUICtrlSetState($TH13PicElectro,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumEdrag,$GUI_SHOW)
	GUICtrlSetState($TH13PicYeti,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumYeti,$GUI_SHOW)
	GUICtrlSetState($TH13PicMini,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumMini,$GUI_SHOW)
	GUICtrlSetState($TH13PicHogs,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumHogs,$GUI_SHOW)
	GUICtrlSetState($TH13PicValkyre,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumValkyre,$GUI_SHOW)
	GUICtrlSetState($TH13PicGolem,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumGolem,$GUI_SHOW)
	GUICtrlSetState($TH13PicWitch,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumWitch,$GUI_SHOW)
	GUICtrlSetState($TH13PicLava,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumLava,$GUI_SHOW)
	GUICtrlSetState($TH13PicBowler,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumBowler,$GUI_SHOW)
	GUICtrlSetState($TH13PicIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumIceGolem,$GUI_SHOW)
	GUICtrlSetState($TH13PicLSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumLSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicHSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumHSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicRSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumRSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicJSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumJSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicFSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumFSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicCSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumCSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicPSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumPSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicESpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumESpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumHaSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumSkSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumBaSpell,$GUI_SHOW)
	GUICtrlSetState($TH13PicBattleB,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumBattleB,$GUI_SHOW)
	GUICtrlSetState($TH13PicWallw,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumWallw,$GUI_SHOW)
	GUICtrlSetState($TH13PicStoneS,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumStoneS,$GUI_SHOW)
	GUICtrlSetState($TH13PicSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumSiegeB,$GUI_SHOW)
	GUICtrlSetState($TH13PicKing,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumKing,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumKingSecond,$GUI_SHOW)
	GUICtrlSetState($TH13LblKing,$GUI_SHOW)
	GUICtrlSetState($TH13PicQueen,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumQueen,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumQueenSecond,$GUI_SHOW)
	GUICtrlSetState($TH13LblQueen,$GUI_SHOW)
	GUICtrlSetState($TH13PicWarden,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumWarden,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumWardenSecond,$GUI_SHOW)
	GUICtrlSetState($TH13LblWarden,$GUI_SHOW)
	GUICtrlSetState($TH13PicRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH13txtNumRoyaleCSecond,$GUI_SHOW)
	GUICtrlSetState($TH13LblRoyaleC,$GUI_SHOW)
	GUICtrlSetState($TH13RequestCCLabel,$GUI_SHOW)
	GUICtrlSetState($TH13RequestCCInbox,$GUI_SHOW)

;~ 	For $i=$TH13 to $TH13LblRoyaleC
;~ 		GUICtrlSetState($i,$GUI_SHOW)
;~ 	Next
EndFunc
Func HideTrainTH13()
	GUICtrlSetState($TH13,$GUI_HIDE)
	GUICtrlSetState($TH13PicBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumBarbarian,$GUI_HIDE)
	GUICtrlSetState($TH13PicArcher,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumArcher,$GUI_HIDE)
	GUICtrlSetState($TH13PicGiant,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumGiant,$GUI_HIDE)
	GUICtrlSetState($TH13PicGoblin,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumGoblin,$GUI_HIDE)
	GUICtrlSetState($TH13PicWallB,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumWall,$GUI_HIDE)
	GUICtrlSetState($TH13PicBall,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumBall,$GUI_HIDE)
	GUICtrlSetState($TH13PicWizzard,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumWiza,$GUI_HIDE)
	GUICtrlSetState($TH13PicHealer,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumHeal,$GUI_HIDE)
	GUICtrlSetState($TH13PicDragon,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumDrag,$GUI_HIDE)
	GUICtrlSetState($TH13PicPekka,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumPekk,$GUI_HIDE)
	GUICtrlSetState($TH13PicBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumBabyDragon,$GUI_HIDE)
	GUICtrlSetState($TH13PicMiner,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumMiner,$GUI_HIDE)
	GUICtrlSetState($TH13PicElectro,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumEdrag,$GUI_HIDE)
	GUICtrlSetState($TH13PicYeti,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumYeti,$GUI_HIDE)
	GUICtrlSetState($TH13PicMini,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumMini,$GUI_HIDE)
	GUICtrlSetState($TH13PicHogs,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumHogs,$GUI_HIDE)
	GUICtrlSetState($TH13PicValkyre,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumValkyre,$GUI_HIDE)
	GUICtrlSetState($TH13PicGolem,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumGolem,$GUI_HIDE)
	GUICtrlSetState($TH13PicWitch,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumWitch,$GUI_HIDE)
	GUICtrlSetState($TH13PicLava,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumLava,$GUI_HIDE)
	GUICtrlSetState($TH13PicBowler,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumBowler,$GUI_HIDE)
	GUICtrlSetState($TH13PicIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumIceGolem,$GUI_HIDE)
	GUICtrlSetState($TH13PicLSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumLSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicHSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumHSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicRSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumRSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicJSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumJSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicFSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumFSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicCSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumCSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicPSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumPSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicESpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumESpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumHaSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumSkSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumBaSpell,$GUI_HIDE)
	GUICtrlSetState($TH13PicBattleB,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumBattleB,$GUI_HIDE)
	GUICtrlSetState($TH13PicWallw,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumWallw,$GUI_HIDE)
	GUICtrlSetState($TH13PicStoneS,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumStoneS,$GUI_HIDE)
	GUICtrlSetState($TH13PicSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumSiegeB,$GUI_HIDE)
	GUICtrlSetState($TH13PicKing,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumKing,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumKingSecond,$GUI_HIDE)
	GUICtrlSetState($TH13LblKing,$GUI_HIDE)
	GUICtrlSetState($TH13PicQueen,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumQueen,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumQueenSecond,$GUI_HIDE)
	GUICtrlSetState($TH13LblQueen,$GUI_HIDE)
	GUICtrlSetState($TH13PicWarden,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumWarden,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumWardenSecond,$GUI_HIDE)
	GUICtrlSetState($TH13LblWarden,$GUI_HIDE)
	GUICtrlSetState($TH13PicRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH13txtNumRoyaleCSecond,$GUI_HIDE)
	GUICtrlSetState($TH13LblRoyaleC,$GUI_HIDE)
	GUICtrlSetState($TH13RequestCCLabel,$GUI_HIDE)
	GUICtrlSetState($TH13RequestCCInbox,$GUI_HIDE)

;~ 	For $i=$TH13 to $TH13LblRoyaleC
;~ 		GUICtrlSetState($i,$GUI_HIDE)
;~ 	Next
EndFunc

