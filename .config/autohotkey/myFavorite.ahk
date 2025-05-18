; 1. help ======================================================================
/* 
{
	; 단축키
	https://tricks-office.com/autohotkey/

	win : # 
	alt : !
	ctrl : ^
	shift : +
}


{
	; 실행1
	hotKey::cmd
}


{
	; 실행2
	hotkey::
		cmd1
		cmd2
	return
}
*/
; ==============================================================================
 
 
; 2. 프로그램 활성화시 실행 ====================================================
; #IfWinActive ahk_class Notepad 
; {
; 	; {Win} + h  >>  메모장이 활성화 되어 있을 때만 hello popup
; 	#h::msgbox, hello
; }
; #IfWinActive


; #IfWinActive, ahk_class Notepad
; {
; 	; {한자}  >>  메모장이 활성화 되어 있을 때만 hello popup
; 	vk19::
; 		msgBox "hello"
; 	return
; }


; {
; 	; {Win} + /  >>  현재 실행된 창의 class를 popup
; 	#/::
; 		WinGetClass, class, A
; 		MsgBox, The active window's class is "%class%".
; 	return
; }


; #IfWinActive, ahk_class QWidget
; {
; 	; {LAlt} +  >>  Nuke와 Maya가 활성화 되어 있을 때만 ?
; 	LAlt & vkc0::
; 		send, {alt down}{mButton down}
; 		keyWait, vkc0
; 		send, {alt up}{mButton up}
; 	return
; }


; #IfWinActive, ahk_class QTool
; {
; 	; {LAlt} +  >>  Nuke와 Maya가 활성화 되어 있을 때만 ?
; 	LAlt & vkc0::
; 		send, {alt down}{mButton down}
; 		keyWait, vkc0
; 		send, {alt up}{mButton up}
; 	return
; }
; ==============================================================================

 

; 3. HotStrings  ===============================================================
{
	; -> 입력하면 바로  >>  변환
	:*:->::→
	return
}

{
	; <- 입력하면 바로  <<  변환
	:*:<-::←
	return
}
; ==============================================================================


; 4. Remapping =================================================================
; https://www.autohotkey.com/docs/v1/Hotkeys.htm
; https://www.autohotkey.com/board/topic/50245-hotkey-for-home-end-page-up-down/

; ------------------------------------------------------------------------------
{
	; {Alt} + {Win} + {Left}  >>  {HOME}
	!#Left::Send {Home}
}

{
	; {Alt} + {Win} + {Right}  >>  {END}
	!#Right::Send {End}
}

{
	; {Alt} + {Win} + {Up}  >>  {PgUp}
	!#Up::Send {PgUp}
}

{
	; {Alt} + {Win} + {Down}  >>  {PgDn}
	!#Down::Send {PgDn}
}
; ------------------------------------------------------------------------------

; ------------------------------------------------------------------------------
{
	; {Shift} + "{Alt} + {Win} + {Left}"  >>  Shift + {HOME}
	+!#Left::Send {Shift down}{Home}{Shift up}
}

{
	; {Shift} + "{Alt} + {Win} + {Right}"  >>  Shift + {END}
	+!#Right::Send {Shift down}{End}{Shift up}
}

{
	; {Shift} + "{Alt} + {Win} + {Up}"  >>  Shift + {PgUp}
	+!#Up::Send {Shift down}{PgUp}{Shift up}
}

{
	; {Shift} + "{Alt} + {Win} + {Down}"  >>  Shift + {PgDn}
	+!#Down::Send {Shift down}{PgDn}{Shift up}
}
; ------------------------------------------------------------------------------

; ------------------------------------------------------------------------------
; blender에서는 {Shift} + {Space} 사용안함
; #IfWinNotActive, Blender
#IfWinNotActive ahk_exe blender.exe
{
	; {Shift} + {Space}  >>  한영전환
	+space::Send, {vk15sc138}
	return
}
; ------------------------------------------------------------------------------

; ------------------------------------------------------------------------------
{
	; {Win} + {esc}  >>  RMB 팝업
	#esc::
		; send, {rButton down}{rButton up}
		MouseGetPos, xpos, ypos
		Send {rButton down}
		SoundBeep, 1000, 20
		KeyWait, %A_ThisHotkey%
		Send {rButton up}
		SoundBeep, 1500, 20
		MouseMove, xpos, ypos
	return
}

; {
; 	; {Win} + `  >>  RMB 팝업
; 	#`::
; 		send, {rButton down}{rButton up}
; 	return
; }

; {
; 	; {Alt} + `  >>  RMB 팝업
; 	!`::
; 		send, {rButton}
; 	return
; }

; {
; 	; {LCtrl} + {한자}  >>  RMB 팝업
; 	LControl & vk19::
; 		send, {rButton}
; 	return
; }
; ------------------------------------------------------------------------------


; ------------------------------------------------------------------------------
; {
; 	; {한자} + {Up}  >>  볼륨업
; 	Left & vk19::
; 		SoundSet, +50
; 		send, {Volume_Up}
; 	return 
; }

; {
; 	; {한자} + {Down}  >>  볼륨다운
; 	Right & vk19::
; 		SoundSet, -50
; 		send, {Volume_Down}
; 	return 
; }
; ------------------------------------------------------------------------------

; ------------------------------------------------------------------------------
; {
; 	AppsKey::
; 		mouseClick, right
; 	return
; }
; ------------------------------------------------------------------------------
; ==============================================================================


; 5. Run Apps  =================================================================
; ------------------------------------------------------------------------------
{
	; win + F10  >>  배경화면 변경
	#F10:: 
		run, sudo C:\Users\jungs\mySettings\cmd\_050_personalization\_040_theme\wallpaper.cmd
	return
}
; ------------------------------------------------------------------------------

; ------------------------------------------------------------------------------
; {
; 	; win + c  >>  계산기 실행
; 	#c:: 
; 		run, calc.exe
; 	return
; }
; ------------------------------------------------------------------------------

; ------------------------------------------------------------------------------
; {
; 	;win + v  >>  페인터 실행
; 	#v:: 
; 		run, mspaint.exe
; 	return
; }
; ------------------------------------------------------------------------------
; ==============================================================================


; 6. msgbox ====================================================================
; ------------------------------------------------------------------------------
; {
; 	^u::
; 		msgbox,이렇게 하면 되요
; 	return
; }
; ------------------------------------------------------------------------------
; ==============================================================================