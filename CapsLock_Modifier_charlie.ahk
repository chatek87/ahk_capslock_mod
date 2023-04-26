#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                     ; Enable warnings to assist with detecting common errors.
#SingleInstance FORCE       ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

		
;================================================================================================
;  CapsLock processing.  Must double tap CapsLock to toggle CapsLock mode on or off.
;================================================================================================
; Must double tap CapsLock to toggle CapsLock mode on or off.
;CapsLock::
;    KeyWait, CapsLock                                                   ; Wait forever until Capslock is released.
;    KeyWait, CapsLock, D T0.2                                           ; ErrorLevel = 1 if CapsLock not down within 0.2 seconds.
;    if ((ErrorLevel = 0) && (A_PriorKey = "CapsLock") )                 ; Is a double tap on CapsLock?
;        {
;        SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"  ; Toggle the state of CapsLock LED
;        }
return

CapsLock::return


;================================================================================================
; Hot keys with CapsLock modifier.  See https://autohotkey.com/docs/Hotkeys.htm#combo
;================================================================================================
; Get DEFINITION of selected word.    
;CapsLock & d::
;    ClipboardGet()
;    Run, http://www.google.com/search?q=define+%clipboard%     ; Launch with contents of clipboard
;    ClipboardRestore()
;Return
;
; GOOGLE the selected text.
;CapsLock & g::
;    ClipboardGet()
;    Run, http://www.google.com/search?q=%clipboard%             ; Launch with contents of clipboard
;    ClipboardRestore()
;Return
;
; Do THESAURUS of selected word
;CapsLock & t::
;    ClipboardGet()
;    Run http://www.thesaurus.com/browse/%Clipboard%             ; Launch with contents of clipboard
;    ClipboardRestore()
;Return
;
; Do WIKIPEDIA of selected word
;CapsLock & w::
;    ClipboardGet()
;    Run, https://en.wikipedia.org/wiki/%clipboard%              ; Launch with contents of clipboard
;    ClipboardRestore()
;Return

;CapsLock & Shift :: Shift 

; Disable CapsLock toggle with modifier keys
Shift & CapsLock:: return
Ctrl & CapsLock:: return
;LWin & CapsLock:: return
;RWin & CapsLock:: return
Alt & CapsLock:: return
CapsLock & Shift:: return
CapsLock & Ctrl:: return
CapsLock & LWin:: return
CapsLock & RWin:: return
CapsLock & Tab:: return
CapsLock & Esc:: return
CapsLock & Space:: return
CapsLock & Enter:: return
CapsLock & Backspace:: return
CapsLock & ScrollLock:: return
CapsLock & Del:: return
CapsLock & Ins:: return
CapsLock & Home:: return
CapsLock & End:: return


; Map navigation keys with CapsLock
CapsLock & i:: Up

CapsLock & k:: Down

CapsLock & j:: Left

CapsLock & l:: Right

CapsLock & u:: Home

CapsLock & o:: End


; Disable all CapsLock key combinations except those declared above
CapsLock & `:: return
CapsLock & 1:: return
CapsLock & 2:: return
CapsLock & 3:: return
CapsLock & 4:: return
CapsLock & 5:: return
CapsLock & 6:: return
CapsLock & 7:: return
CapsLock & 8:: return
CapsLock & 9:: return
CapsLock & 0:: return
CapsLock & -:: return
CapsLock & =:: return
CapsLock & q:: return
CapsLock & w:: return
CapsLock & e:: return
CapsLock & r:: return
CapsLock & t:: return
CapsLock & y:: return
;CapsLock & u:: return
;CapsLock & i:: return
;CapsLock & o:: return
CapsLock & p:: return
CapsLock & [:: return
CapsLock & ]:: return
CapsLock & \:: return
CapsLock & a:: return
CapsLock & s:: return
CapsLock & d:: return
CapsLock & f:: return
CapsLock & g:: return
CapsLock & h:: return
;CapsLock & j:: return
;CapsLock & k:: return
;CapsLock & l:: return
CapsLock & `;:: return
CapsLock & ':: return
CapsLock & z:: return
CapsLock & x:: return
CapsLock & c:: return
CapsLock & v:: return
CapsLock & b:: return
CapsLock & n:: return
CapsLock & m:: return
CapsLock & ,:: return
CapsLock & .:: return
CapsLock & /:: return
CapsLock & F1:: return
CapsLock & F2:: return
CapsLock & F3:: return
CapsLock & F4:: return
CapsLock & F5:: return
CapsLock & F6:: return
CapsLock & F7:: return
CapsLock & F8:: return
CapsLock & F9:: return
CapsLock & F10:: return
CapsLock & F11:: return
CapsLock & F12:: return


	

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;================================================================================================
; Clipboard helper functions.
;================================================================================================
ClipboardGet()
{
    OldClipboard:= ClipboardAll                         ;Save existing clipboard.
    Clipboard:= ""
    Send, ^c                                            ;Copy selected test to clipboard
    ClipWait 0
    If ErrorLevel
        {
        MsgBox, No Text Selected!
        Return
        }
}


ClipboardRestore()
{
    Clipboard:= OldClipboard
}


