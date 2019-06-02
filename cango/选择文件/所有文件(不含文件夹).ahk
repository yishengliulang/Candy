;~ Loop, %0%  ; 对每个参数进行循环:
;~ {
    ;~ str .=  %A_Index% . " "
;~ }
;~ str := SubStr(str, 1, -StrLen(" "))
;~ StringSplit,p,str,&
;~ WinGetTitle,dir,A

#Include %A_ScriptDir%\..\..\Libs
#Include getExplorerDir.ahk
#Include ListView_select.ahk
dir := getExplorerDir()

pattern := dir . "\*.*"
SendInput ^a!ei
Sleep 100
loop,Files,%pattern%,F
    ListView_select("SysListView321",A_LoopFileName)
