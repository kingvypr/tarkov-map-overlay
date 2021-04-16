#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#RequireAdmin

Global $tarkov = "EscapeFromTarkov"
Global $map = "tarkov-map-alpha"
Global $isVisible = False

Global $pid = ShellExecute(@scriptDir & "\" & $map & ".exe","",@scriptDir,"runas")
OnAutoItExitRegister("_close")

Sleep(3000)

Global $hWnd = WinGetHandle($map)

WinSetState($map,"",@SW_HIDE)

HotKeySet("+m","_togglemap")

While 1

   If WinExists($tarkov) And ProcessExists($pid) Then
	  For $i = 1 to 25
		 Sleep(420)
	  Next
   Else
	  Exit
   EndIf

WEnd


Func _togglemap()
   If Not WinActive($tarkov) And Not $isVisible Then
	  HotKeySet("+m")
	  Send("M")
	  HotKeySet("+m","_togglemap")
   Else
	  If $isVisible Then
		 WinSetState($map,"",@SW_HIDE)
	  Else
		 WinSetState($map,"",@SW_SHOW)
	  EndIf
	  $isVisible = Not $isVisible
   EndIf
EndFunc

Func _close()

   Do
	  ProcessClose($map & ".exe")
	  Sleep(100)
   Until Not ProcessExists($map & ".exe")

EndFunc
