﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
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
