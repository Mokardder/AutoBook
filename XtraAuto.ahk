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
FileReadLine, NewMessage, %A_Temp%/UpdateNew.txt, 2
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





#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




Enroll:="|<Enroll>*172$35.0M0030100020400020M00020UTzk63100U442010A85zu08U8040F0E080W0U0E141TyU2820104E40O08U80g0F0Lz80V0U2A12104864208k843zx0kA00q10800A608000M08001U080061"
Log_In:="|<login>*216$38.kC1s6kw7sz1iT36MkPrklq06xwABb1jz33NkPTklaA6nwCNn1gzxwDkP7U"
Mob:="|<Mob>*204$38.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw000007000001k00000A000003000000k00000A000003000000k00000A000003000000k00000A000003000000k00000A000003000000s"
Password:="|<>*220$54.y00000001n00000001V2210040/VBBaoHPCTn1cY6mFgny7a72eEcVU9VUmeEcVUNcYHAFcnUDjbn4D8TU"
Login_Now:="|<Login Now>*189$69.DwTltbrtxwSty1s7AQz7C1nDXbCNXbstXaNwwnvAAz3AwnDbaTtYbsNbbNwwH3AYz9AwNDbaMNa7tVbb1wwnnAkzAAwsDXbCNb7tlXb061s3AwzCC1w0MTUtbbttsTY"
Order_Cyl:="|<Order_Cyl>*199$21.7zz0zzs1kM06300kM06H00mM06H0DzzXzzys00y003k00S003k00S003zzzzzzzzzzzzzzzzzzzzzU"
Order_Now:="|<Order Now>*214$71.7kyDs67zTT7q3UA3UA1wSQ3DbCNXDtnsQnaTaQnaTnbkt7aTAtb4zbDUmTAyM3D830T9YyNwkCQFy1yN9wntaQtbwnwsHtnbANnDtXtknbUCQkC0nbnlUD0wsUw1b7bnkyE"
HomePage:="|<HomePage>*225$71.11UE6TXk00kS6DlkQzjsM7twAsnktUMNsMn0NVbXn0knkkq0n3D7a1VYX0ATa6P/DnzNaDT3AAqqM7wnASs6MNZgkA3zABUAknCNUM66MP0Mz6AnykAATrkkwANbxUkASDk"
Tripple:="|<Tripple>*187$17.zzy00400Dzzzzzzzz00C00Tzzzzzk0TU0zzzzzzy"
Log_Out:="|<Log Out>*202$23.00000000000000000003zU07y00A000M000k1U1U1U301U6TzUAzz0M0A0k0k1U3030006000A000Tw00000000000000001"
LogOut_Pop:="|<LogOut_Pop>*217$47.UT3syAPz1aAn6MkW66kaAlV4ABUA9X28MPDMH64Ekq6kaA8UVaBXAMFxqCtgRUXtsDVkS14"
Back:="|<>*190$23.zzzzzzzzzzzzzzzzzzzzwzzzlzzz7zzwTzzlzzz7zzw00zw01zwzzzwzzzwzzzwzzzwzzzxzzzzzzzzzzzzzzzzzzzzzzzzz"




^Z::
Sleep, 700

FileSelectFile, list, 3, , Select a Booking List File (*.txt)


FormatTime, sDated,, dd/MM/yyyy
SplitPath, list, name
FileRead, text, %list%
RegExReplace(text, "(\R)",,count)
count += 1


FileRead, Input, %list%

Input:= StrSplit(input,"`n")

Loop % input.Length()-1
{
	row:= input[A_Index]
	row:= StrSplit(row, ":")
	N_me:= row[1]
	mob_no:= row[2]
	pass:= row[3]
	
	Gosub, HERE
}


^E::ExitApp
^P::Pause
^S::Suspend



HERE:
{
	
	
	
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Enroll)){
		Sleep, 10
	}
;MsgBox, Enroll Found
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=-5,MoveBack:=0)
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Log_In)){
		Sleep, 10	
	}
;MsgBox, Log_In Found
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,MoveBack:=0)
	Sleep, 1500
	while (!ok:=FindText(453,0,915,767,0,0,Mob)){
		Sleep, 10
	}
;MsgBox, Mob Found
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,MoveBack:=0)
	SendInput, +{Home}
	Sleep, 1000
	send, % mob_no
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Password)){
		Sleep, 10
	}
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,MoveBack:=0)
	Sleep, 1000
	Send, % pass
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Login_Now)){
		Sleep, 10
	}
;MsgBox, Login_Now Found
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,MoveBack:=0)
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Order_Cyl)){
		Sleep, 10
	}
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,MoveBack:=0)
	
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Order_Now)){
		Sleep, 10
	}
;MsgBox, Order_Now Found
	Sleep, 1000
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,MoveBack:=0)
	Sleep, 2000
	;MsgBox, Clicking Again
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,MoveBack:=0)
	
	;================== Click Back
	Waiat:= A_Sec + 5
	while (A_Sec < Waiat){
		if ok:=FindText(519,232,150000,150000,0,0,HomePage){
			FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,1)
			FileAppend,
(
Date: %sDated% File_Name: %name%(%Count%) Mobile_No: %mob_no%(%N_me%)✔ Reason: ✔ `n
), %A_Desktop%\Book Log.txt
			
			Gosub, Next
			return
		}
		
	}
	if ok:=FindText(519,232,150000,150000,0,0,Back)
		FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,1)
	
	Next:
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Tripple)){
		Sleep, 10
	}
;MsgBox, Tripple Found
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,0)
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,Log_Out)){
		Sleep, 10
	}
;MsgBox, Log_Out Found
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,0)
	Sleep, 1000
	while (!ok:=FindText(453,0,915,767,0,0,LogOut_Pop)){
		Sleep, 10
	}
;MsgBox, LogOut_Pop Found
	FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,0)
	Sleep, 1000
	return
	Click_Back:
	{
		
		
		Sleep, 100
		while (!ok:=FindText(453,0,915,767,0,0,Back)){
			Sleep, 10
			;ToolTip, Searching Back Button
		}
	;MsgBox, Found Back
		FindText_Left_Click(Ok,X_Adj:=0,Y_Adj:=0,0)
		FileAppend,
(
Date: %sDated% File_Name: %name%(%Count%) Mobile_No: %mob_no%(%N_me%)✖ Reason: ✖  `n
), %A_Desktop%\Book Log.txt
	     Goto, Next
		
		return
	}
	
	
}
	return












;========================= FIND TEXT ================================
;============== Main Code to Paste==========================


;~  https://autohotkey.com/boards/viewtopic.php?f=6&t=17834
;~  Note: parameters of the X,Y is the center of the coordinates,
; and the W,H is the offset distance to the center,
; So the search range is (X-W, Y-H)-->(X+W, Y+H).
; err1 is the character "0" fault-tolerant in percentage.
; err0 is the character "_" fault-tolerant in percentage.
; Text can be a lot of text to find, separated by "|".
; ruturn is a array, contains the X,Y,W,H,Comment results of Each Find.

FindText(x,y,w,h,err1,err0,text)
{
	xywh2xywh(x-w,y-h,2*w+1,2*h+1,x,y,w,h)
	if (w<1 or h<1)
		return, 0
	bch:=A_BatchLines
	SetBatchLines, -1
  ;--------------------------------------
	GetBitsFromScreen(x,y,w,h,Scan0,Stride,bits)
  ;--------------------------------------
	sx:=0, sy:=0, sw:=w, sh:=h, arr:=[]
	Loop, 2 {
		Loop, Parse, text, |
		{
			v:=A_LoopField
			IfNotInString, v, $, Continue
				Comment:="", e1:=err1, e0:=err0
    ; You Can Add Comment Text within The <>
			if RegExMatch(v,"<([^>]*)>",r)
				v:=StrReplace(v,r), Comment:=Trim(r1)
    ; You can Add two fault-tolerant in the [], separated by commas
			if RegExMatch(v,"\[([^\]]*)]",r)
			{
				v:=StrReplace(v,r), r1.=","
				StringSplit, r, r1, `,
				e1:=r1, e0:=r2
			}
			StringSplit, r, v, $
			color:=r1, v:=r2
			StringSplit, r, v, .
			w1:=r1, v:=base64tobit(r2), h1:=StrLen(v)//w1
			if (r0<2 or h1<1 or w1>sw or h1>sh or StrLen(v)!=w1*h1)
				Continue
    ;--------------------------------------------
			if InStr(color,"-")
			{
				r:=e1, e1:=e0, e0:=r, v:=StrReplace(v,"1","_")
				v:=StrReplace(StrReplace(v,"0","1"),"_","0")
			}
			mode:=InStr(color,"*") ? 1:0
			color:=RegExReplace(color,"[*\-]") . "@"
			StringSplit, r, color, @
			color:=Round(r1), n:=Round(r2,2)+(!r2)
			n:=Floor(255*3*(1-n)), k:=StrLen(v)*4
			VarSetCapacity(ss, sw*sh, Asc("0"))
			VarSetCapacity(s1, k, 0), VarSetCapacity(s0, k, 0)
			VarSetCapacity(rx, 8, 0), VarSetCapacity(ry, 8, 0)
			len1:=len0:=0, j:=sw-w1+1, i:=-j
			ListLines, Off
			Loop, Parse, v
			{
				i:=Mod(A_Index,w1)=1 ? i+j : i+1
				if A_LoopField
					NumPut(i, s1, 4*len1++, "int")
				else
					NumPut(i, s0, 4*len0++, "int")
			}
			ListLines, On
			e1:=Round(len1*e1), e0:=Round(len0*e0)
    ;--------------------------------------------
			if PicFind(mode,color,n,Scan0,Stride,sx,sy,sw,sh
      ,ss,s1,s0,len1,len0,e1,e0,w1,h1,rx,ry)
			{
				rx+=x, ry+=y
				arr.Push(rx,ry,w1,h1,Comment)
			}
		}
		if (arr.MaxIndex())
			Break
		if (A_Index=1 and err1=0 and err0=0)
			err1:=0.05, err0:=0.05
		else Break
	}
	SetBatchLines, %bch%
	return, arr.MaxIndex() ? arr:0
}

PicFind(mode, color, n, Scan0, Stride
  , sx, sy, sw, sh, ByRef ss, ByRef s1, ByRef s0
  , len1, len0, err1, err0, w, h, ByRef rx, ByRef ry)
{
	static MyFunc
	if !MyFunc
	{
		x32:="5589E583EC408B45200FAF45188B551CC1E20201D08945F"
    . "48B5524B80000000029D0C1E00289C28B451801D08945D8C74"
    . "5F000000000837D08000F85F00000008B450CC1E81025FF000"
    . "0008945D48B450CC1E80825FF0000008945D08B450C25FF000"
    . "0008945CCC745F800000000E9AC000000C745FC00000000E98"
    . "A0000008B45F483C00289C28B451401D00FB6000FB6C02B45D"
    . "48945EC8B45F483C00189C28B451401D00FB6000FB6C02B45D"
    . "08945E88B55F48B451401D00FB6000FB6C02B45CC8945E4837"
    . "DEC007903F75DEC837DE8007903F75DE8837DE4007903F75DE"
    . "48B55EC8B45E801C28B45E401D03B45107F0B8B55F08B452C0"
    . "1D0C600318345FC018345F4048345F0018B45FC3B45240F8C6"
    . "AFFFFFF8345F8018B45D80145F48B45F83B45280F8C48FFFFF"
    . "FE9A30000008B450C83C00169C0E803000089450CC745F8000"
    . "00000EB7FC745FC00000000EB648B45F483C00289C28B45140"
    . "1D00FB6000FB6C069D02B0100008B45F483C00189C18B45140"
    . "1C80FB6000FB6C069C04B0200008D0C028B55F48B451401D00"
    . "FB6000FB6C06BC07201C83B450C730B8B55F08B452C01D0C60"
    . "0318345FC018345F4048345F0018B45FC3B45247C948345F80"
    . "18B45D80145F48B45F83B45280F8C75FFFFFF8B45242B45488"
    . "3C0018945488B45282B454C83C00189454C8B453839453C0F4"
    . "D453C8945D8C745F800000000E9E3000000C745FC00000000E"
    . "9C70000008B45F80FAF452489C28B45FC01D08945F48B45408"
    . "945E08B45448945DCC745F000000000EB708B45F03B45387D2"
    . "E8B45F08D1485000000008B453001D08B108B45F401D089C28"
    . "B452C01D00FB6003C31740A836DE001837DE00078638B45F03"
    . "B453C7D2E8B45F08D1485000000008B453401D08B108B45F40"
    . "1D089C28B452C01D00FB6003C30740A836DDC01837DDC00783"
    . "08345F0018B45F03B45D87C888B551C8B45FC01C28B4550891"
    . "08B55208B45F801C28B45548910B801000000EB2990EB01908"
    . "345FC018B45FC3B45480F8C2DFFFFFF8345F8018B45F83B454"
    . "C0F8C11FFFFFFB800000000C9C25000"
		x64:="554889E54883EC40894D10895518448945204C894D288B4"
    . "5400FAF45308B5538C1E20201D08945F48B5548B8000000002"
    . "9D0C1E00289C28B453001D08945D8C745F000000000837D100"
    . "00F85000100008B4518C1E81025FF0000008945D48B4518C1E"
    . "80825FF0000008945D08B451825FF0000008945CCC745F8000"
    . "00000E9BC000000C745FC00000000E99A0000008B45F483C00"
    . "24863D0488B45284801D00FB6000FB6C02B45D48945EC8B45F"
    . "483C0014863D0488B45284801D00FB6000FB6C02B45D08945E"
    . "88B45F44863D0488B45284801D00FB6000FB6C02B45CC8945E"
    . "4837DEC007903F75DEC837DE8007903F75DE8837DE4007903F"
    . "75DE48B55EC8B45E801C28B45E401D03B45207F108B45F0486"
    . "3D0488B45584801D0C600318345FC018345F4048345F0018B4"
    . "5FC3B45480F8C5AFFFFFF8345F8018B45D80145F48B45F83B4"
    . "5500F8C38FFFFFFE9B60000008B451883C00169C0E80300008"
    . "94518C745F800000000E98F000000C745FC00000000EB748B4"
    . "5F483C0024863D0488B45284801D00FB6000FB6C069D02B010"
    . "0008B45F483C0014863C8488B45284801C80FB6000FB6C069C"
    . "04B0200008D0C028B45F44863D0488B45284801D00FB6000FB"
    . "6C06BC07201C83B451873108B45F04863D0488B45584801D0C"
    . "600318345FC018345F4048345F0018B45FC3B45487C848345F"
    . "8018B45D80145F48B45F83B45500F8C65FFFFFF8B45482B859"
    . "000000083C0018985900000008B45502B859800000083C0018"
    . "985980000008B45703945780F4D45788945D8C745F80000000"
    . "0E90B010000C745FC00000000E9EC0000008B45F80FAF45488"
    . "9C28B45FC01D08945F48B85800000008945E08B85880000008"
    . "945DCC745F000000000E9800000008B45F03B45707D368B45F"
    . "04898488D148500000000488B45604801D08B108B45F401D04"
    . "863D0488B45584801D00FB6003C31740A836DE001837DE0007"
    . "8778B45F03B45787D368B45F04898488D148500000000488B4"
    . "5684801D08B108B45F401D04863D0488B45584801D00FB6003"
    . "C30740A836DDC01837DDC00783C8345F0018B45F03B45D80F8"
    . "C74FFFFFF8B55388B45FC01C2488B85A000000089108B55408"
    . "B45F801C2488B85A80000008910B801000000EB2F90EB01908"
    . "345FC018B45FC3B85900000000F8C05FFFFFF8345F8018B45F"
    . "83B85980000000F8CE6FEFFFFB8000000004883C4405DC390"
		MCode(MyFunc, A_PtrSize=8 ? x64:x32)
	}
	return, DllCall(&MyFunc, "int",mode
    , "uint",color, "int",n, "ptr",Scan0, "int",Stride
    , "int",sx, "int",sy, "int",sw, "int",sh
    , "ptr",&ss, "ptr",&s1, "ptr",&s0
    , "int",len1, "int",len0, "int",err1, "int",err0
    , "int",w, "int",h, "int*",rx, "int*",ry)
}

xywh2xywh(x1,y1,w1,h1,ByRef x,ByRef y,ByRef w,ByRef h)
{
	SysGet, zx, 76
	SysGet, zy, 77
	SysGet, zw, 78
	SysGet, zh, 79
	left:=x1, right:=x1+w1-1, up:=y1, down:=y1+h1-1
	left:=left<zx ? zx:left, right:=right>zx+zw-1 ? zx+zw-1:right
	up:=up<zy ? zy:up, down:=down>zy+zh-1 ? zy+zh-1:down
	x:=left, y:=up, w:=right-left+1, h:=down-up+1
}

GetBitsFromScreen(x,y,w,h,ByRef Scan0,ByRef Stride,ByRef bits)
{
	VarSetCapacity(bits,w*h*4,0), bpp:=32
	Scan0:=&bits, Stride:=((w*bpp+31)//32)*4
	Ptr:=A_PtrSize ? "UPtr" : "UInt", PtrP:=Ptr . "*"
	win:=DllCall("GetDesktopWindow", Ptr)
	hDC:=DllCall("GetWindowDC", Ptr,win, Ptr)
	mDC:=DllCall("CreateCompatibleDC", Ptr,hDC, Ptr)
  ;-------------------------
	VarSetCapacity(bi, 40, 0), NumPut(40, bi, 0, "int")
	NumPut(w, bi, 4, "int"), NumPut(-h, bi, 8, "int")
	NumPut(1, bi, 12, "short"), NumPut(bpp, bi, 14, "short")
  ;-------------------------
	if hBM:=DllCall("CreateDIBSection", Ptr,mDC, Ptr,&bi
    , "int",0, PtrP,ppvBits, Ptr,0, "int",0, Ptr)
	{
		oBM:=DllCall("SelectObject", Ptr,mDC, Ptr,hBM, Ptr)
		DllCall("BitBlt", Ptr,mDC, "int",0, "int",0, "int",w, "int",h
      , Ptr,hDC, "int",x, "int",y, "uint",0x00CC0020|0x40000000)
		DllCall("RtlMoveMemory","ptr",Scan0,"ptr",ppvBits,"ptr",Stride*h)
		DllCall("SelectObject", Ptr,mDC, Ptr,oBM)
		DllCall("DeleteObject", Ptr,hBM)
	}
	DllCall("DeleteDC", Ptr,mDC)
	DllCall("ReleaseDC", Ptr,win, Ptr,hDC)
}

base64tobit(s)
{
	ListLines, Off
	Chars:="0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    . "abcdefghijklmnopqrstuvwxyz"
	SetFormat, IntegerFast, d
	StringCaseSense, On
	Loop, Parse, Chars
	{
		i:=A_Index-1, v:=(i>>5&1) . (i>>4&1)
      . (i>>3&1) . (i>>2&1) . (i>>1&1) . (i&1)
		s:=StrReplace(s,A_LoopField,v)
	}
	StringCaseSense, Off
	s:=SubStr(s,1,InStr(s,"1",0,0)-1)
	s:=RegExReplace(s,"[^01]+")
	ListLines, On
	return, s
}

bit2base64(s)
{
	ListLines, Off
	s:=RegExReplace(s,"[^01]+")
	s.=SubStr("100000",1,6-Mod(StrLen(s),6))
	s:=RegExReplace(s,".{6}","|$0")
	Chars:="0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    . "abcdefghijklmnopqrstuvwxyz"
	SetFormat, IntegerFast, d
	Loop, Parse, Chars
	{
		i:=A_Index-1, v:="|" . (i>>5&1) . (i>>4&1)
      . (i>>3&1) . (i>>2&1) . (i>>1&1) . (i&1)
		s:=StrReplace(s,v,A_LoopField)
	}
	ListLines, On
	return, s
}

ASCII(s)
{
	if RegExMatch(s,"(\d+)\.([\w+/]{3,})",r)
	{
		s:=RegExReplace(base64tobit(r2),".{" r1 "}","$0`n")
		s:=StrReplace(StrReplace(s,"0","_"),"1","0")
	}
	else s=
		return, s
}

MCode(ByRef code, hex)
{
	ListLines, Off
	bch:=A_BatchLines
	SetBatchLines, -1
	VarSetCapacity(code, StrLen(hex)//2)
	Loop, % StrLen(hex)//2
		NumPut("0x" . SubStr(hex,2*A_Index-1,2), code, A_Index-1, "char")
	Ptr:=A_PtrSize ? "UPtr" : "UInt"
	DllCall("VirtualProtect", Ptr,&code, Ptr
    ,VarSetCapacity(code), "uint",0x40, Ptr . "*",0)
	SetBatchLines, %bch%
	ListLines, On
}

; You can put the text library at the beginning of the script,
; and Use Pic(Text,1) to add the text library to Pic()'s Lib,
; Use Pic("comment1|comment2|...") to get text images from Lib
Pic(comments, add_to_Lib=0) {
	static Lib:=[]
	if (add_to_Lib)
	{
		re:="<([^>]*)>[^$]+\$\d+\.[\w+/]{3,}"
		Loop, Parse, comments, |
			if RegExMatch(A_LoopField,re,r)
				Lib[Trim(r1)]:=r
	}
	else
	{
		text:=""
		Loop, Parse, comments, |
			text.="|" . Lib[Trim(A_LoopField)]
		return, text
	}
}

*/
;================= The End =================

;***********Custom functions by Joe Glines  http://the-automator.com*******************
;***********Left click*******************
FindText_Left_Click(Obj,X_Adj=0,Y_Adj=0,Move_Back=0){
	CoordMode, Mouse
	MouseGetPos,Orig_X,Orig_Y
	x:=(obj.1+obj.3//2)+X_Adj
	y:=(obj.2+obj.4//2)+Y_Adj
	Click, %X%,%Y%
	if (Move_Back){
		Sleep, 30
  ;MouseMove, %Orig_X%,%Orig_Y%
	}
	Return
}

FindText_Control_Click(Obj,X_Adj=0,Y_Adj=0,ahkEXE=""){
	SetControlDelay -1 ;Recommended to improve reliability
	x:=(obj.1+obj.3//2)+X_Adj ;Calculate x
	y:=(obj.2+obj.4//2)+Y_Adj ;Calculate y
	ControlClick,x%x% y%y%,ahk_exe %ahkEXE%,,,,NA  ;Send control click to coordinates of specific window in NA mode
	;na mode:=NA avoids marking the target window as active and avoids merging its input processing with that of the script, which may prevent physical movement of the mouse from interfering (but usually only when the target window is not active). However, this method might not work for all types of windows and controls.
}


;***********Right click*******************
FindText_Right_Click(Obj,X_Adj=0,Y_Adj=0,Move_Back=0){
	CoordMode, Mouse
	MouseGetPos,Orig_X,Orig_Y
	x:=(obj.1+obj.3//2)+X_Adj
	y:=(obj.2+obj.4//2)+Y_Adj
	Click Right, %X%,%Y%
	if (Move_Back){
		Sleep, 30
		MouseMove, %Orig_X%,%Orig_Y%
	}
	Return
}

;***********Double click*******************
FindText_Double_Click(Obj,X_Adj=0,Y_Adj=0,Move_Back=0){
	CoordMode, Mouse
	MouseGetPos,Orig_X,Orig_Y
	x:=(obj.1+obj.3//2)+X_Adj
	y:=(obj.2+obj.4//2)+Y_Adj
	MouseMove, %X%,%Y%
	Click 2
	if (Move_Back){
		Sleep, 30
		MouseMove, %Orig_X%,%Orig_Y%
	}
}

;***********Move mouse to location*******************
FindText_Move_Mouse(Obj,X_Adj=0,Y_Adj=0){
	CoordMode, Mouse
	x:=(obj.1+obj.3//2)+X_Adj
	y:=(obj.2+obj.4//2)+Y_Adj
	MouseMove, %X%,%Y%
}

;***********Send text to location*******************
FindText_Send_Text(Obj,Text,Enter=0,X_Adj=0,Y_Adj=0,Move_Back=0){
	;~ MsgBox % IsObject(obj)
	CoordMode, Mouse
	MouseGetPos,Orig_X,Orig_Y
	x:=(obj.1+obj.3//2)+X_Adj
	y:=(obj.2+obj.4//2)+Y_Adj
	MouseMove, %X%,%Y%
	Sleep 30
	Click, %X%,%Y%
;~ m("x " x,"y " y)
	Sleep 30
;~ SendInput , %Text%
	SendInput , ^v
	if (Enter=1)
		SendInput , {Enter}
	if (Move_Back){
		Sleep, 30
		MouseMove, %Orig_X%,%Orig_Y%
	}
}





;=================================================== Gui Update
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

rawAhk:= A_ScriptFullPath
SplitPath, rawAhk,,,,no_ext_file
ahkfolder= %A_ScriptDir%/%no_ext_file%.ahk

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
	Sleep, 300
	ToolTip, Waiting for New Update..
	Sleep, 300
	ToolTip, Waiting for New Update...
	Sleep, 300
	ToolTip, Waiting for New Update....
	Sleep, 300
	
	if (NewVersion > OldVersion)
	{
		Break
	}
}
MsgBox, Update Received !!
FileReadLine, NewMessage, %A_Temp%/UpdateNew.txt, 2
FileDelete, %A_Temp%/UpdateOld.txt
FileDelete, %A_ScriptFullPath%
urldownloadtofile %urlAhk%, %ahkfolder%
FileMove, %A_Temp%/UpdateNew.txt, %A_Temp%/UpdateOld.txt
Msgbox, Restart The Application. New Version : %NewVersion% `n %NewMessage%
return






Gui2Close:
Gui 2:Destroy
return
