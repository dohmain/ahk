#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance Force
#UseHook On

; Arrows on ijkl ------------------------------------------------
CapsLock & i::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Up}
	return
}
else
{
	SendInput {Blind}i
	return
}

CapsLock & j::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Left}
	return
}
else
{
	SendInput {Blind}j
	return
}

CapsLock & k::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Down}
	return
}
else
{
	SendInput {Blind}k
	return
}

CapsLock & l::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Right}
	return
}
else
{
	SendInput {Blind}l
	return
}

; Home on u -----------------------------------------------------
CapsLock & u::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{HOME}
	return
}
else
{
	SendInput {Blind}u
	return
}

; End on o ------------------------------------------------------
CapsLock & o::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{END}
	return
}
else
{
	SendInput {Blind}o
	return
}

; PageUp on h ---------------------------------------------------
CapsLock & h::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{PgUp}
	return
}
else
{
	SendInput {Blind}h
	return
}

; PageDown on n -------------------------------------------------
CapsLock & n::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{PgDn}
	return
}
else
{
	SendInput {Blind}n
	return
}

; Delete on ; ---------------------------------------------------
CapsLock & `;::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Delete}
	return
}
else
{
	SendInput {Blind};
	return
}

; Insert on ' ---------------------------------------------------
CapsLock & '::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Insert}
	return
}
else
{
	SendInput {Blind}'
	return
}

; PrintScreen on p-----------------------------------------------
CapsLock & p::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{PrintScreen}
	return
}
else
{
	SendInput {Blind}p
	return
}

; Mute-----------------------------------------------------------
CapsLock & s::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Volume_Mute}
	return
}
else
{
	SendInput {Blind}s
	return
}

; Volume Down----------------------------------------------------
CapsLock & d::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Volume_Down 1}
	return
}
else
{
	SendInput {Blind}d
	return
}

;Volume Up-------------------------------------------------------

CapsLock & f::
if GetKeyState("CapsLock")
{
	SendInput {Blind}{Volume_Up 1}
	return
}
else
{
	SendInput {Blind}f
	return
}

; Backspace to |\ -----------------------------------------------
Backspace::\
return

; |\ to Backspace -----------------------------------------------
\::Backspace
return

; Space Cadet Shift ---------------------------------------------
~LShift::
	KeyWait, LShift
	if (A_TimeSinceThisHotkey < 300 and A_PriorKey = "LShift") {
		Send, (
	}
return

~RShift::
	KeyWait, RShift
	if (A_TimeSinceThisHotkey < 300 and A_PriorKey = "RShift") {
		Send, )
	}
return