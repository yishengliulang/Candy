;~ Loop, %0%  ; ��ÿ����������ѭ��:
;~ {
    ;~ str .=  %A_Index% . " "
;~ }
;~ str := SubStr(str, 1, -StrLen(" "))
;~ StringSplit,p,str,&
;~ WinGetTitle,dir,A
InputBox,flag,�Զ���ѡ��,�����ַ�

IfEqual,flag,
    ExitApp


#Include %A_ScriptDir%\..\..\Libs
#Include getExplorerDir.ahk
#Include ListView_select.ahk
dir := getExplorerDir()

pattern := dir . "\*.*"
SendInput ^a!ei
Sleep 100
loop,Files,%pattern%,F
    IfInString,A_LoopFileName,%flag%
        ListView_select("SysListView321",A_LoopFileName)
