#NoEnv
DetectHiddenWindows On
SetBatchLines, -1
CoordMode, Mouse, Screen
#Include Neutron.ahk
global RGBKeys:=[]
global toggle:=true
global doWrap:=true
global maxBright:=[0.33,0.67,1,0]
global activeBrightness:=1
global altStateOSK:=FALSE
global altStateTicks:=0
global ctrlStateOSK:=FALSE
global ctrlStateTicks:=0
global shiftStateOSK:=FALSE
global shiftStateTicks:=0
global winStateOSK:=FALSE
global winStateTicks:=0
global lastHwndMacro:=0
FileRead, html, Simple.html
neutron := new NeutronWindow(html) ;,150) ;add transparency
OnMessage(0x004A, "MsgMonitor")
If !WinExist("ahk_class KBLIGHTSUPDATE")
{
	Run "C:\tmp\k95platinumxtOSK\KBLightsUpdate.exe"
	sleep 1000
	Process, Exist, KBLIGHTSUPDATE.exe
	PID:=ErrorLevel
	WinHide,ahk_pid %PID%
}
else {
	Process, Exist, KBLIGHTSUPDATE.exe
	PID:=ErrorLevel
	WinHide,ahk_pid %PID%
}
lastHwndMacro:=WinExist("A")
requestKBUpdate()
{
	global neutron
	Process, Exist, KBLightsUpdate.exe
	PID:=ErrorLevel
	SendMessage, 0x5556, 1,1,,ahk_pid %PID%,,,,
	t(neutron,"test")
}
neutron.Gui("+LabelNeutron")
neutron.Show("x-8 y-8 w1915 h699")
SetTimer, requestKBUpdate, 100
return
NeutronClose:
ExitApp
return
t(neutron,event)
{
	; neutron.qs(".NULL").setAttribute("style", "background-color: rgba(" . RGBKeys[0] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[0] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Escape").setAttribute("style", "background-color: rgba(" . RGBKeys[1] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[1] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F1").setAttribute("style", "background-color: rgba(" . RGBKeys[2] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[2] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F2").setAttribute("style", "background-color: rgba(" . RGBKeys[3] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[3] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F3").setAttribute("style", "background-color: rgba(" . RGBKeys[4] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[4] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F4").setAttribute("style", "background-color: rgba(" . RGBKeys[5] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[5] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F5").setAttribute("style", "background-color: rgba(" . RGBKeys[6] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[6] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F6").setAttribute("style", "background-color: rgba(" . RGBKeys[7] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[7] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F7").setAttribute("style", "background-color: rgba(" . RGBKeys[8] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[8] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F8").setAttribute("style", "background-color: rgba(" . RGBKeys[9] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[9] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F9").setAttribute("style", "background-color: rgba(" . RGBKeys[10] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[10] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F10").setAttribute("style", "background-color: rgba(" . RGBKeys[11] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[11] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F11").setAttribute("style", "background-color: rgba(" . RGBKeys[12] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[12] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".backtickTilde").setAttribute("style", "background-color: rgba(" . RGBKeys[13] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[13] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".One").setAttribute("style", "background-color: rgba(" . RGBKeys[14] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[14] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Two").setAttribute("style", "background-color: rgba(" . RGBKeys[15] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[15] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Three").setAttribute("style", "background-color: rgba(" . RGBKeys[16] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[16] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Four").setAttribute("style", "background-color: rgba(" . RGBKeys[17] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[17] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Five").setAttribute("style", "background-color: rgba(" . RGBKeys[18] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[18] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Six").setAttribute("style", "background-color: rgba(" . RGBKeys[19] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[19] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Seven").setAttribute("style", "background-color: rgba(" . RGBKeys[20] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[20] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Eight").setAttribute("style", "background-color: rgba(" . RGBKeys[21] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[21] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Nine").setAttribute("style", "background-color: rgba(" . RGBKeys[22] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[22] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Zero").setAttribute("style", "background-color: rgba(" . RGBKeys[23] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[23] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".-_").setAttribute("style", "background-color: rgba(" . RGBKeys[24] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[24] . "," . maxBright[activeBrightness] . ");")
	; neutron.qs(".Backspace").setAttribute("style", "background-color: rgba(" . RGBKeys[26] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[26] . "," . maxBright[activeBrightness] . ");") ;87
	neutron.qs(".Tab").setAttribute("style", "background-color: rgba(" . RGBKeys[25] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[25] . "," . maxBright[activeBrightness] . ");")
	; neutron.qs(".equalsPlus").setAttribute("style", "background-color: rgba(" . RGBKeys[25] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[25] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Q").setAttribute("style", "background-color: rgba(" . RGBKeys[26] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[26] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".W").setAttribute("style", "background-color: rgba(" . RGBKeys[27] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[27] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".E").setAttribute("style", "background-color: rgba(" . RGBKeys[28] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[28] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".R").setAttribute("style", "background-color: rgba(" . RGBKeys[29] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[29] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".T").setAttribute("style", "background-color: rgba(" . RGBKeys[30] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[30] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Y").setAttribute("style", "background-color: rgba(" . RGBKeys[31] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[31] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".U").setAttribute("style", "background-color: rgba(" . RGBKeys[32] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[32] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".I").setAttribute("style", "background-color: rgba(" . RGBKeys[33] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[33] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".O").setAttribute("style", "background-color: rgba(" . RGBKeys[34] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[34] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".P").setAttribute("style", "background-color: rgba(" . RGBKeys[35] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[35] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".openBrackets").setAttribute("style", "background-color: rgba(" . RGBKeys[36] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[36] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".CapsLock").setAttribute("style", "background-color: rgba(" . RGBKeys[37] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[37] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".A").setAttribute("style", "background-color: rgba(" . RGBKeys[38] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[38] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".S").setAttribute("style", "background-color: rgba(" . RGBKeys[39] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[39] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".D").setAttribute("style", "background-color: rgba(" . RGBKeys[40] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[40] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".F").setAttribute("style", "background-color: rgba(" . RGBKeys[41] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[41] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G").setAttribute("style", "background-color: rgba(" . RGBKeys[42] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[42] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".H").setAttribute("style", "background-color: rgba(" . RGBKeys[43] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[43] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".J").setAttribute("style", "background-color: rgba(" . RGBKeys[44] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[44] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".K").setAttribute("style", "background-color: rgba(" . RGBKeys[45] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[45] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".L").setAttribute("style", "background-color: rgba(" . RGBKeys[46] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[46] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Colon").setAttribute("style", "background-color: rgba(" . RGBKeys[47] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[47] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Quote").setAttribute("style", "background-color: rgba(" . RGBKeys[48] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[48] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".LShift").setAttribute("style", "background-color: rgba(" . RGBKeys[49] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[49] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Z").setAttribute("style", "background-color: rgba(" . RGBKeys[51] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[51] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".X").setAttribute("style", "background-color: rgba(" . RGBKeys[52] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[52] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".C").setAttribute("style", "background-color: rgba(" . RGBKeys[53] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[53] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".V").setAttribute("style", "background-color: rgba(" . RGBKeys[54] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[54] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".B").setAttribute("style", "background-color: rgba(" . RGBKeys[55] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[55] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".N").setAttribute("style", "background-color: rgba(" . RGBKeys[56] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[56] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".M").setAttribute("style", "background-color: rgba(" . RGBKeys[57] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[57] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".commaLT").setAttribute("style", "background-color: rgba(" . RGBKeys[58] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[58] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".periodGT").setAttribute("style", "background-color: rgba(" . RGBKeys[59] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[59] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".forwardSlash").setAttribute("style", "background-color: rgba(" . RGBKeys[60] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[60] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".LCtrl").setAttribute("style", "background-color: rgba(" . RGBKeys[61] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[61] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".LWin").setAttribute("style", "background-color: rgba(" . RGBKeys[62] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[62] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".LAlt").setAttribute("style", "background-color: rgba(" . RGBKeys[63] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[63] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Space").setAttribute("style", "background-color: rgba(" . RGBKeys[65] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[65] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".RAlt").setAttribute("style", "background-color: rgba(" . RGBKeys[68] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[68] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".RWin").setAttribute("style", "background-color: rgba(" . RGBKeys[69] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[69] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".AppsKey").setAttribute("style", "background-color: rgba(" . RGBKeys[70] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[70] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Brightness").setAttribute("style", "background-color: rgba(" . RGBKeys[72] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[72] . "," . maxBright[activeBrightness] . ");") ;these dont seem to register properly in current SDK
	neutron.qs(".F12").setAttribute("style", "background-color: rgba(" . RGBKeys[73] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[73] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".PrintScreen").setAttribute("style", "background-color: rgba(" . RGBKeys[74] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[74] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".ScrollLock").setAttribute("style", "background-color: rgba(" . RGBKeys[75] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[75] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".PauseBreak").setAttribute("style", "background-color: rgba(" . RGBKeys[76] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[76] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Insert").setAttribute("style", "background-color: rgba(" . RGBKeys[77] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[77] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Home").setAttribute("style", "background-color: rgba(" . RGBKeys[78] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[78] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".PgUp").setAttribute("style", "background-color: rgba(" . RGBKeys[79] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[79] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".closeBrackets").setAttribute("style", "background-color: rgba(" . RGBKeys[80] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[80] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".backSlashVerticalPipe").setAttribute("style", "background-color: rgba(" . RGBKeys[81] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[81] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Enter").setAttribute("style", "background-color: rgba(" . RGBKeys[83] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[83] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".equalsPlus").setAttribute("style", "background-color: rgba(" . RGBKeys[85] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[85] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Backspace").setAttribute("style", "background-color: rgba(" . RGBKeys[87] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[87] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Delete").setAttribute("style", "background-color: rgba(" . RGBKeys[88] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[88] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".End").setAttribute("style", "background-color: rgba(" . RGBKeys[89] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[89] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".PgDn").setAttribute("style", "background-color: rgba(" . RGBKeys[90] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[90] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".RShift").setAttribute("style", "background-color: rgba(" . RGBKeys[91] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[91] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".RCtrl").setAttribute("style", "background-color: rgba(" . RGBKeys[92] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[92] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Up").setAttribute("style", "background-color: rgba(" . RGBKeys[93] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[93] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Left").setAttribute("style", "background-color: rgba(" . RGBKeys[94] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[94] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Down").setAttribute("style", "background-color: rgba(" . RGBKeys[95] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[95] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Right").setAttribute("style", "background-color: rgba(" . RGBKeys[96] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[96] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".WinLock").setAttribute("style", "background-color: rgba(" . RGBKeys[97] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[97] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Volume_Mute").setAttribute("style", "background-color: rgba(" . RGBKeys[98] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[98] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Media_Stop").setAttribute("style", "background-color: rgba(" . RGBKeys[99] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[99] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Media_PrevTrack").setAttribute("style", "background-color: rgba(" . RGBKeys[100] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[100] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Media_Play_Pause").setAttribute("style", "background-color: rgba(" . RGBKeys[101] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[101] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Media_Next").setAttribute("style", "background-color: rgba(" . RGBKeys[102] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[102] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumLock").setAttribute("style", "background-color: rgba(" . RGBKeys[103] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[103] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPadDiv").setAttribute("style", "background-color: rgba(" . RGBKeys[104] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[104] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPadMul").setAttribute("style", "background-color: rgba(" . RGBKeys[105] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[105] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPadSub").setAttribute("style", "background-color: rgba(" . RGBKeys[106] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[106] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPadAdd").setAttribute("style", "background-color: rgba(" . RGBKeys[107] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[107] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPadEnter").setAttribute("style", "background-color: rgba(" . RGBKeys[108] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[108] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad7").setAttribute("style", "background-color: rgba(" . RGBKeys[109] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[109] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad8").setAttribute("style", "background-color: rgba(" . RGBKeys[110] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[110] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad9").setAttribute("style", "background-color: rgba(" . RGBKeys[111] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[111] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad4").setAttribute("style", "background-color: rgba(" . RGBKeys[113] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[113] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad5").setAttribute("style", "background-color: rgba(" . RGBKeys[114] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[114] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad6").setAttribute("style", "background-color: rgba(" . RGBKeys[115] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[115] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad1").setAttribute("style", "background-color: rgba(" . RGBKeys[116] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[116] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad2").setAttribute("style", "background-color: rgba(" . RGBKeys[117] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[117] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPad3").setAttribute("style", "background-color: rgba(" . RGBKeys[118] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[118] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPadIns").setAttribute("style", "background-color: rgba(" . RGBKeys[119] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[119] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".NumPadDot").setAttribute("style", "background-color: rgba(" . RGBKeys[120] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[120] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G1").setAttribute("style", "background-color: rgba(" . RGBKeys[121] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[121] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G2").setAttribute("style", "background-color: rgba(" . RGBKeys[122] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[122] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G3").setAttribute("style", "background-color: rgba(" . RGBKeys[123] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[123] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G4").setAttribute("style", "background-color: rgba(" . RGBKeys[124] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[124] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G5").setAttribute("style", "background-color: rgba(" . RGBKeys[125] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[125] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G6").setAttribute("style", "background-color: rgba(" . RGBKeys[126] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[126] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".G10").setAttribute("style", "background-color: rgba(" . RGBKeys[130] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[130] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Volume_Up").setAttribute("style", "background-color: rgba(" . RGBKeys[131] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[131] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Volume_Down").setAttribute("style", "background-color: rgba(" . RGBKeys[132] . "," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( " . RGBKeys[132] . "," . maxBright[activeBrightness] . ");")
	neutron.qs(".Profile_Switch").setAttribute("style", "background-color: rgba(255,255,255," . maxBright[activeBrightness] . ");box-shadow:0px 0px 20px rgba( ""," . maxBright[activeBrightness] . ");")
}
MsgMonitor(wParam, lParam)
{
	Loop, 144
	{
		RGB:=NumGet(lParam + ((A_Index - 1) * 4)) ;equal to t[A_Index - 1] in C++ (pretending that A_Index exists, and starts at 1)
		; ; ; ;Then you'd do something like CloakerSmoker did all this magic
		R := (RGB >> 16) & 0xFF
		G := (RGB >> 8) & 0xFF
		B := (RGB) & 0xFF
		RGBKeys[A_Index-13]:=R . "," . G . "," . B
	}
	Return
}
; ^r::reload
^`::
	lastHwndMacro:=WinExist("A") ;this will end up with the neutron windows Hwnd if you hit it to hide, but I think that is ok
	;think we need some test in here to see if user has already stopped the timer before hiding the OSK...
	SetTimer, requestKBUpdate, % (toggle := !toggle) ? 100 : "Off"
	toggle ? neutron.Show() : neutron.Hide()
return
allmaxBright()
{
	; maxBright[activeBrightness]
	; maxBright:=[0.33,0.67,1,0]
	activeBrightness++
	if (activeBrightness = 5)
	{
		activeBrightness:=1
	}
}
sender(a)
{
	R := {"G1":"SC0C1","G2":"SC0C2","G3":"SC0C3","G4":"SC0C4","G5":"SC0C5","G6":"SC0C6","G7":"SC0C7","G8":"SC0C8","G9":"SC0C9","G10":"SC0CA","G11":"SC0CB","G12":"SC0CC","G13":"SC0CD","G14":"SC0CE","G15":"SC0CF","G16":"SC0D0","G17":"SC0D1","G18":"SC0D2","M1":"SC0D3","M2":"SC0D4","M3":"SC0D5","M4":"SC0D6","M5":"SC0D7","M6":"SC0D8","M7":"SC0D9","M8":"SC0DA","M9":"SC0E9","M10":"SC0EA","M11":"SC0EB","M12":"SC0EC","kMR":"F19","kM1":"F20","kM2":"F21","kM3":"F22"}
	cH:={"F1":"F1","F2":"F2","F3":"F3","F4":"F4","F5":"F5","F6":"F6","F7":"F7","F8":"F8","F9":"F9","F10":"F10","F11":"F11","F12":"F12","Enter":"Enter","Escape":"Escape","Space":"Space","Tab":"Tab","Backspace":"Backspace","Delete":"Delete","Insert":"Insert","Up":"Up","Down":"Down","Left":"Left","Right":"Right","Home":"Home","End":"End","PgUp":"PgUp","PgDn":"PgDn","NumpadDot":"NumpadDot","NumPadEnter":"NumPadEnter","NumpadMult":"NumpadMult","NumpadDiv":"NumpadDiv","NumpadAdd":"NumpadAdd","NumpadSub":"NumpadSub","NumpadDel":"NumpadDel","NumPadIns":"NumPadIns","Volume_Mute":"Volume_Mute","Volume_Up":"Volume_Up","Volume_Down":"Volume_Down","Media_Next":"Media_Next","Media_Play_Pause":"Media_Play_Pause","Media_Prev":"Media_Prev","Media_Stop":"Media_Stop","PrintScreen":"PrintScreen","PauseBreak":"Pause","BackTickTilde":"``"}
	modifierKeys:={"LCtrl":"LControl","RCtrl":"RControl","LAlt":"LAlt","RAlt":"RAlt","LShift":"LShift","RShift":"RShift","RWin":"RWin","LWin":"LWin","AppsKey":"AppsKey"}
	lockStates:={"CapsLock":"CapsLock","ScrollLock":"ScrollLock","NumLock":"NumLock"}
	; figure out what to do so that lwin lalt lctrl lshift for example set toggle states irrespective of the physical state
	lettersOnly:={"m":"m","n":"n","b":"b","xV":"v","c":"c","x":"x","z":"z","l":"l","k":"k","j":"j","h":"h","g":"g","f":"f","d":"d","s":"s","a":"a","p":"p","o":"o","i":"i","u":"u","y":"y","t":"t","r":"r","e":"e","w":"w","q":"q"}
	numbersOnly:={"n0":"0","n9":"9","n8":"8","n7":"7","n6":"6","n5":"5","n4":"4","n3":"3","n2":"2","n1":"1","np0":"0","np9":"9","np8":"8","np7":"7","np6":"6","np5":"5","np4":"4","np3":"3","np2":"2","np1":"1"}
	otherSpecial:={"QuestionFWDSlash":"/","GTPeriod":".","LTComma":",","quote":"""","semicolon":";","backslash":"\","CloseBracket":"]","OpenBracket":"["}
	if modifierKeys.HasKey(a)
	{
		switch a {
			case "LAlt","RAlt":
				altStateOSK:=TRUE
			case "LCtrl","RCtrl":
				ctrlStateOSK:=TRUE
			case "LShift","RShift":
				shiftStateOSK:=TRUE
			case "RWin","LWin":
				winStateOSK:=TRUE
		}
		;updated all modifier timers to give us additional time for modifier keypresses
		altStateTicks:=A_Tickcount
		ctrlStateTicks:=A_Tickcount
		shiftStateTicks:=A_Tickcount
		winStateTicks:=A_Tickcount
	}
	if lettersOnly.HasKey(a) || numbersOnly.HasKey(a)
	{
		doWrap:=!doWrap
	}
	for key, value in cH {
		R[key]:=value  ; looped addition per max limit in expression
	}
	for k, v in modifierKeys {
		R[k]:=v  ; looped addition
	}	
	for k, v in lockStates {
		R[k]:=v  ; looped addition
	}
	for k, v in otherSpecial {
		R[k]:=v  ; looped addition
	}
	for k, v in lettersOnly {
		R[k]:=v  ; looped addition
	}	
	for k, v in numbersOnly {
		R[k]:=v  ; looped addition
	}
	for each, item in R
	{
		if a = %each%
		{
			; grab physical modifiers
			ctrlState:=GetKeyState("Ctrl",P)
			altState:=GetKeyState("Alt",P)
			shiftState:=GetKeyState("Shift",P)
			winState:=GetKeyState("LWin",P)
			if doWrap
			{
				e:="{" . item . "}"
			}
			else {
				e:=item
			}
			if (A_Tickcount>ctrlStateTicks+1000)
			{
				ctrlStateOSK:=!ctrlStateOSK
			}
			if (A_Tickcount<altStateTicks+1000)
			{
				altStateTicks:=!altStateTicks
			}
			if (A_Tickcount<shiftStateTicks+1000)
			{
				shiftStateTicks:=!shiftStateTicks
			}
			if (A_Tickcount<winStateTicks+1000)
			{
				winStateTicks:=!winStateTicks
			}
			if ctrlState || ctrlStateOSK
			{
				e:= "^" . e
			}
			if altState || altStateOSK
			{
				e:= "!" . e
			}
			if shiftState || shiftStateOSK
			{
				e:="+" . e
			}
			if winState || winStateOSK
			{
				e:="#" . e
			}
			WinActivate, ahk_id %lastHwndMacro%
			SendLevel 1
			Send %e%
		}
	}
}
z(neutron,event)
{
	switch event
	{
		case "Brightness":
			allmaxBright()
			t(neutron,"test")
		case "WinLock":
			SetTimer, requestKBUpdate, % (toggle := !toggle) ? 100 : "Off"
		case "Profile_Switch":
			SetTimer, requestKBUpdate, Off
			for each, item in RGBKeys
			{
				 Random, r1, 0, 255
				 Random, g1, 0, 255
				 Random, b1, 0, 255 ; MsgBox % Format("{1:#x}", t1)
				 RGBKeys[each]:=r1 . "," . g1 . "," . b1
			}
			t(neutron,"test")
		Default:
			sender(event)
	}
}
; Add lock states colorized (disavow what the current lighting is ... or add to it)
