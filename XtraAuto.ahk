;===============================  Don't Mess This Line From 1 to 70 ========================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



Hotkey, ^z, , Off
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/Mokardder/AutoBook/main/ChangeLog.txt", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse() ;this is taken from the installer. Can also be located as an example on the urldownloadtofile page of the quick reference guide.
version := whr.ResponseText

urlCheck= https://raw.githubusercontent.com/Mokardder/AutoBook/main/UpdateChechk.txt
txtfolder= %A_Temp%/UpdateNew.txt
urlAhk= https://raw.githubusercontent.com/Mokardder/AutoBook/main/XtraAuto.ahk
urldownloadtofile %urlCheck%, %txtfolder%
FileRead, NewCheck, %A_Temp%/UpdateNew.txt
FileRead, OldCheck, %A_Temp%/UpdateOld.txt
FileReadLine, OldVersion, %A_Temp%/UpdateOld.txt, 1
FileReadLine, NewVersion, %A_Temp%/UpdateNew.txt, 1
FileReadLine, NewMessage, %A_Temp%/UpdateNew.txt, 2


rawAhk:= A_ScriptFullPath
SplitPath, rawAhk,,,,no_ext_file
ahkfolder= %A_ScriptDir%/%no_ext_file%.ahk



if (NewCheck > OldCheck){
	
	Msgbox, New Version Arrived
	Gui, Font, S12 CBlue Bold,
	Gui, Add, Text, x17 y6 w440 h340 +Center, ## Change Log ##
	Gui, Font, S8 CRed Bold,
	Gui, Add, Text, x177 y29 w120 h20 , Mokardder @ Github
	Gui, Font, ,
	Gui, Add, Text, x177 y49 w120 h20 +Center, New Version: %NewVersion%
	Gui, Add, Text, x28 y60 w120 h20 +Center, Installed Version: %OldVersion%
	Gui, Add, Button, x182 y309 w110 h30 gUpdateScript, UPDATE
	Gui, Add, GroupBox, x32 y69 w410 h240 +Center, Update Log
	Gui, Font, S10 CRed Bold,
	Gui, Add, Text, x37 y87 w400 h220 +Center, %Version%
	Gui, Show, w479 h351, Update GUI
	return
}
else{
	Gosub, StartHere
	return
}





UpdateScript:
FileDelete, %A_Temp%/UpdateOld.txt
FileDelete, %A_ScriptFullPath%
urldownloadtofile %urlAhk%, %ahkfolder%
FileMove, %A_Temp%/UpdateNew.txt, %A_Temp%/UpdateOld.txt
Msgbox, Restart The Application. New Version : %NewVersion% `n %NewMessage%
ExitApp


GuiClose:
MsgBox, Update is Mandatory to run Script
return


;================================ End Here =======================


StartHere:

Hotkey, ^z, , On
^Z::
Sleep, 700

FileSelectFile, list, 3, , Select a Booking List File (*.txt)
FileRead, Input, %list%

Input:= StrSplit(input,"`n")

Loop % input.Length()-1
{
	row:= input[A_Index]
	row:= StrSplit(row, ";")
	mob_no:= row[1]
	pass:= row[2]
	Gosub, HERE
	}
SelectAll(){
	SendInput,+{Home}
}



^E::ExitApp
^P::Pause
^S::Suspend

HERE:
{
	Sleep, 1000
; Enroll Click
	
;~ IniRead, OutputVarX, C:\Windows\Mouse_Location.ini, Plus Button, XPOS
;~ IniRead, OutputVarY, C:\Windows\Mouse_Location.ini, Plus Button, YPOS
;~ IniRead, OutputVar, C:\Windows\Mouse_Location.ini, Plus Button, Time
	
	
	MouseMove, 537, 237
	MouseClick,Left, 537, 237
	Sleep, 1000
	
; Login Click
	
;~ IniRead, OutputVarX, C:\Windows\Mouse_Location.ini, Mobile Number, XPOS
;~ IniRead, OutputVarY, C:\Windows\Mouse_Location.ini, Mobile Number, XPOS
;~ IniRead, OutputVar, C:\Windows\Mouse_Location.ini, Mobile Number, Time
	
	
	MouseMove, 548, 672
	MouseClick,Left, 548, 672
	Sleep, 1000
	
	
; Number Click & send
	
	
	MouseMove, 596, 298
	MouseClick,Left, 596, 298
	Sleep, 1000
	Send % SelectAll()
	Sleep, 500
	Send %mob_no%
	Sleep, 1000
	
; password
	
	MouseMove, 538, 344
	MouseClick,Left, 538, 344
	Sleep, 1000
	send %pass%
	
	
	
	
; Login Click
;~ IniRead, OutputVar, C:\Windows\Mouse_Location.ini, Mobile Number, Send Time
	
	MouseMove, 675, 390
	MouseClick,Left, 675, 390
	Sleep, 10000
	
; Order Click
	
;~ IniRead, OutputVarX, C:\Windows\Mouse_Location.ini, Search Button, XPOS
;~ IniRead, OutputVarY, C:\Windows\Mouse_Location.ini, Search Button, YPOS
;~ IniRead, OutputVar, C:\Windows\Mouse_Location.ini, Search Button, Time
	
	
	MouseMove, 540, 357
	MouseClick,Left, 540, 357
	Sleep, 3000
	
; Order Now CLick
	
;~ IniRead, OutputVarX, C:\Windows\Mouse_Location.ini, Place Order, XPOS
;~ IniRead, OutputVarY, C:\Windows\Mouse_Location.ini, Place Order, YPOS
;~ IniRead, OutputVar, C:\Windows\Mouse_Location.ini, Place Order, Time
	
	
	MouseMove, 690, 746
	MouseClick,Left, 690, 746
	Sleep, 3000
	
; GTPH Click
	
;~ IniRead, OutputVarX, C:\Windows\Mouse_Location.ini, Cancel, XPOS
;~ IniRead, OutputVarY, C:\Windows\Mouse_Location.ini, Cancel, YPOS
;~ IniRead, OutputVarF, C:\Windows\Mouse_Location.ini, Cancel, First Time
;~ IniRead, OutputVarS, C:\Windows\Mouse_Location.ini, Cancel, Second Time
	
	
	MouseMove, 584, 741
	MouseClick,Left, 584, 741
	Sleep, 300
	
; Triple HR
	
	MouseMove, 490, 43
	MouseClick,Left, 490, 43
	Sleep, 3000
	
; Logout Click
	
;~ IniRead, OutputVarX, C:\Windows\Mouse_Location.ini, First Back, XPOS
;~ IniRead, OutputVarY, C:\Windows\Mouse_Location.ini, First Back, YPOS
;~ IniRead, OutputVar, C:\Windows\Mouse_Location.ini, First Back, Time
	
	
	MouseMove, 554, 597
	MouseClick,Left, 554, 597
	Sleep, 3000
	
; Pop Logout Click
	
;~ IniRead, OutputVarX, C:\Windows\Mouse_Location.ini, Second Back, XPOS
;~ IniRead, OutputVarY, C:\Windows\Mouse_Location.ini, Second Back, YPOS
;~ IniRead, OutputVar, C:\Windows\Mouse_Location.ini, Second Back, Time
	
	
	MouseMove, 800, 440
	MouseClick,Left, 800, 440
	Sleep, 3000
}
return

F12::
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/Mokardder/AutoBook/main/ChangeLog.txt", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse() ;this is taken from the installer. Can also be located as an example on the urldownloadtofile page of the quick reference guide.
version := whr.ResponseText

urlCheck= https://raw.githubusercontent.com/Mokardder/AutoBook/main/UpdateChechk.txt
txtfolder= %A_Temp%/UpdateNew.txt
urlAhk= https://raw.githubusercontent.com/Mokardder/AutoBook/main/XtraAuto.ahk
urldownloadtofile %urlCheck%, %txtfolder%
FileRead, NewCheck, %A_Temp%/UpdateNew.txt
FileRead, OldCheck, %A_Temp%/UpdateOld.txt
FileReadLine, OldVersion, %A_Temp%/UpdateOld.txt, 1
FileReadLine, NewVersion, %A_Temp%/UpdateNew.txt, 1
FileReadLine, NewMessage, %A_Temp%/UpdateNew.txt, 2

Gui 2: Font, S12 CBlue Bold,
Gui 2: Add, Text, x17 y6 w440 h340 +Center, ## Change Log ##
Gui 2: Font, S8 CRed Bold,
Gui 2: Add, Text, x177 y29 w120 h20 , Mokardder @ Github
Gui 2: Font, ,
Gui 2: Add, Text, x95 y49 w250 h20 +Center, Latest: %NewVersion%
FileReadLine, OutputVarUpdate1, %A_Temp%/UpdateOld.txt, 1
Gui 2: Add, Text, x28 y60 w120 h20 +Center, Installed Version: %OldVersion%
Gui 2: Add, Button, x110 y309 w110 h30 gUpdateIn, UPDATE
Gui 2: Add, Button, x250 y309 w110 h30 gUpdateInForce, Force Update
Gui 2: Add, Text, x115 y338 w250 h20 +Center, Don't Download if both version are same
Gui 2: Add, GroupBox, x32 y69 w410 h240 +Center, Update Log
Gui 2: Font, S10 CRed Bold,
Gui 2: Add, Text, x37 y87 w400 h220 +Center, %Version%
Gui 2: Show, w479 h351, Update GUI
return




Updatein:
if (NewCheck > OldCheck){
	FileDelete, %A_Temp%/UpdateOld.txt
	FileDelete, %A_ScriptFullPath%
	urldownloadtofile %urlAhk%, %ahkfolder%
	FileMove, %A_Temp%/UpdateNew.txt, %A_Temp%/UpdateOld.txt
	Msgbox, Restart The Application. New Version : %NewVersion% `n %NewMessage%
	return
}
	else{
		MsgBox, Currently there is no update
		return
}

UpdateInForce:
while (NewCheck == OldCheck)
{
	urldownloadtofile %urlCheck%, %txtfolder%
	FileReadLine, OldVersion, %A_Temp%/UpdateOld.txt, 1
        FileReadLine, NewVersion, %A_Temp%/UpdateNew.txt, 1
	ToolTip, Waiting for New Update.
	ToolTip, Waiting for New Update..
	ToolTip, Waiting for New Update...
	ToolTip, Waiting for New Update....
	
	if (NewVersion > OldVersion)
	{
		Break
	}
}
MsgBox, Update Received !!
FileDelete, %A_Temp%/UpdateOld.txt
FileDelete, %A_ScriptFullPath%
urldownloadtofile %urlAhk%, %ahkfolder%
FileMove, %A_Temp%/UpdateNew.txt, %A_Temp%/UpdateOld.txt
Msgbox, Restart The Application. New Version : %NewVersion% `n %NewMessage%
return






Gui2Close:
Gui 2:Destroy
return
