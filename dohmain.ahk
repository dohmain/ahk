#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance Force
#UseHook On

; Arrows on ijkl ------------------------------------------------
	CapsLock & i::
		SendInput {Blind}{Up}
		return
	
	CapsLock & j::
		SendInput {Blind}{Left}
		return
	
	CapsLock & k::
		SendInput {Blind}{Down}
		return

	CapsLock & l::
		SendInput {Blind}{Right}
		return

; Home on u -----------------------------------------------------
	CapsLock & u::
		SendInput {Blind}{HOME}
		return

; End on o ------------------------------------------------------
	CapsLock & o::
		SendInput {Blind}{END}
		return

; PageUp on h ---------------------------------------------------
	CapsLock & h::
		SendInput {Blind}{PgUp}
		return

; PageDown on n -------------------------------------------------
	CapsLock & n::
		SendInput {Blind}{PgDn}
		return

; Delete on ; ---------------------------------------------------
	CapsLock & `;::
		SendInput {Blind}{Delete}
		return

; Insert on ' ---------------------------------------------------
	CapsLock & '::
		SendInput {Blind}{Insert}
		return

; PrintScreen on p-----------------------------------------------
	CapsLock & p::
		SendInput {Blind}{PrintScreen}
		return

; Mute on s------------------------------------------------------
	CapsLock & s::
		SendInput {Blind}{Volume_Mute}
		return

; Volume Down on d-----------------------------------------------
	CapsLock & d::
		SendInput {Blind}{Volume_Down 1}
		return

; Volume Up on f--------------------------------------------------
	CapsLock & f::
		SendInput {Blind}{Volume_Up 1}
		return

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

	CapsLock & ,::
		SendInput ^#{Left}
		return 

	CapsLock & .::
		SendInput ^#{Right}
		return