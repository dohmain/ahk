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

	CapsLock & j::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Left}
		return
	}
	
	CapsLock & k::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Down}
		return
	}

	CapsLock & l::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Right}
		return
	}

; Home on u -----------------------------------------------------
	CapsLock & u::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{HOME}
		return
	}

; End on o ------------------------------------------------------
	CapsLock & o::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{END}
		return
	}

; PageUp on h ---------------------------------------------------
	CapsLock & h::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{PgUp}
		return
	}

; PageDown on n -------------------------------------------------
	CapsLock & n::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{PgDn}
		return
	}

; Delete on ; ---------------------------------------------------
	CapsLock & `;::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Delete}
		return
	}

; Insert on ' ---------------------------------------------------
	CapsLock & '::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Insert}
		return
	}

; PrintScreen on p-----------------------------------------------
	CapsLock & p::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{PrintScreen}
		return
	}

; Mute on s------------------------------------------------------
	CapsLock & s::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Volume_Mute}
		return
	}

; Volume Down on d-----------------------------------------------
	CapsLock & d::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Volume_Down 1}
		return
	}

; Volume Up on f--------------------------------------------------
	CapsLock & f::
	if GetKeyState("CapsLock")
	{
		SendInput {Blind}{Volume_Up 1}
		return
	}

; Backspace and \ swap-------------------------------------------
	Backspace::\
	return

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
