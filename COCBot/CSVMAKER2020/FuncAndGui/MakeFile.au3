
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

;Create a csv file



Func WriteNormalMakeCommand()

FileWrite($g_sSaveLocation, $MakeEnter)

FileWrite($g_sSaveLocation,$Make_A_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_B_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_C_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_D_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_E_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_F_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_G_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_H_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus2)
FileWrite($g_sSaveLocation, @CRLF)




EndFunc


Func WriteRandomMakeCommand()

FileWrite($g_sSaveLocation, $MakeEnter)

 $Make_A_plus0 = "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_A_plus1 = "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_A_plus2 = "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_B_plus0 = "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_B_plus1 = "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_B_plus2 = "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_C_plus0 = "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_C_plus1 = "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_C_plus2 = "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_D_plus0 = "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_D_plus1 = "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_D_plus2 = "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_E_plus0 = "MAKE  |M          |FRONT-LEFT |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_E_plus1 = "MAKE  |N          |FRONT-LEFT |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_E_plus2 = "MAKE  |O          |FRONT-LEFT |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_F_plus0 = "MAKE  |P          |FRONT-RIGHT|10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_F_plus1 = "MAKE  |Q          |FRONT-RIGHT|10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_F_plus2 = "MAKE  |R          |FRONT-RIGHT|10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_G_plus0 = "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_G_plus1 = "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_G_plus2 = "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"

 $Make_H_plus0 = "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_H_plus1 = "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"
 $Make_H_plus2 = "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |" &$InputRandomX& "|" &$InputRandomY& "|           |           |"


FileWrite($g_sSaveLocation,$Make_A_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_A_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_B_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_B_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_C_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_C_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_D_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_D_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_E_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_E_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_F_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_F_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_G_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_G_plus2)
FileWrite($g_sSaveLocation, @CRLF)

FileWrite($g_sSaveLocation,$Make_H_plus0)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus1)
FileWrite($g_sSaveLocation, @CRLF)
FileWrite($g_sSaveLocation,$Make_H_plus2)
FileWrite($g_sSaveLocation, @CRLF)
 $Make_A_plus0 = "MAKE  |A          |BACK-RIGHT |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_A_plus1 = "MAKE  |B          |BACK-RIGHT |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_A_plus2 = "MAKE  |C          |BACK-RIGHT |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_B_plus0 = "MAKE  |D          |BACK-LEFT  |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_B_plus1 = "MAKE  |E          |BACK-LEFT  |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_B_plus2 = "MAKE  |F          |BACK-LEFT  |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_C_plus0 = "MAKE  |G          |LEFT-BACK  |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_C_plus1 = "MAKE  |H          |LEFT-BACK  |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_C_plus2 = "MAKE  |I          |LEFT-BACK  |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_D_plus0 = "MAKE  |J          |LEFT-FRONT |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_D_plus1 = "MAKE  |K          |LEFT-FRONT |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_D_plus2 = "MAKE  |L          |LEFT-FRONT |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_E_plus0 = "MAKE  |M          |FRONT-LEFT |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_E_plus1 = "MAKE  |N          |FRONT-LEFT |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_E_plus2 = "MAKE  |O          |FRONT-LEFT |10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_F_plus0 = "MAKE  |P          |FRONT-RIGHT|10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_F_plus1 = "MAKE  |Q          |FRONT-RIGHT|10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_F_plus2 = "MAKE  |R          |FRONT-RIGHT|10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_G_plus0 = "MAKE  |S          |RIGHT-FRONT|10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_G_plus1 = "MAKE  |T          |RIGHT-FRONT|10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_G_plus2 = "MAKE  |U          |RIGHT-FRONT|10         |2          |INT-EXT    |0          |0          |           |           |"

 $Make_H_plus0 = "MAKE  |V          |RIGHT-BACK |10         |0          |INT-EXT    |0          |0          |           |           |"
 $Make_H_plus1 = "MAKE  |W          |RIGHT-BACK |10         |1          |INT-EXT    |0          |0          |           |           |"
 $Make_H_plus2 = "MAKE  |X          |RIGHT-BACK |10         |2          |INT-EXT    |0          |0          |           |           |"



EndFunc
