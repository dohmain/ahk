#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance Force
#UseHook On

; Arrows on ijkl ------------------------------------------------
CapsLock & i::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Up}
Else, SendInput {Blind}i
Return

CapsLock & j::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Left}
Else, SendInput {Blind}j
Return

CapsLock & k::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Down}
Else, SendInput {Blind}k
Return

CapsLock & l::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Right}
Else, SendInput {Blind}l
Return

; Home on u -----------------------------------------------------
CapsLock & u::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{HOME}
Else, SendInput {Blind}u
Return

; End on o ------------------------------------------------------
CapsLock & o::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{END}
Else, SendInput {Blind}o
Return

; PageUp on h ---------------------------------------------------
CapsLock & h::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{PgUp}
Else, SendInput {Blind}h
Return

; PageDown on n -------------------------------------------------
CapsLock & n::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{PgDn}
Else, SendInput {Blind}n
Return

; Delete on ; ---------------------------------------------------
CapsLock & `;::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{Delete}
Else, SendInput {Blind};
Return

; Insert on '
CapsLock & '::
GetKeyState, CapsLockMode, CapsLock, T 
IfEqual, CapsLockMode, D, SendInput {Blind}{Insert}
Else, SendInput {Blind}'
Return

; PrintScreen on p-----------------------------------------------
CapsLock & p::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Blind}{PrintScreen}
Else, SendInput {Blind}p
Return

; Mute-----------------------------------------------------------
CapsLock & s::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Volume_Mute}
Else, SendInput {Blind}s
Return

; Volume Down----------------------------------------------------
CapsLock & d::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Volume_Down 1}
Else, SendInput {Blind}d
Return

;Volume Up-------------------------------------------------------

CapsLock & f::
GetKeyState, CapsLockMode, CapsLock, T
IfEqual, CapsLockMode, D, SendInput {Volume_Up 1}
Else, SendInput {Blind}f
Return

; Backspace to |\ -----------------------------------------------
Backspace::\
Return

; |\ to Backspace -----------------------------------------------
\::Backspace
Return

; Space Cadet Shift ---------------------------------------------
~LShift::
	KeyWait, LShift
	If (A_TimeSinceThisHotkey < 300 and A_PriorKey = "LShift") {
		Send, (
	}
return

~RShift::
	KeyWait, RShift
	If (A_TimeSinceThisHotkey < 300 and A_PriorKey = "RShift") {
		Send, )
	}
return