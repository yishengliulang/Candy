;~ Loop, %0%  ; ��ÿ����������ѭ��:
;~ {
    ;~ str .=  %A_Index% . " "
;~ }
;~ str := SubStr(str, 1, -StrLen(" "))
;~ StringSplit,p,str,&

InputBox,from,ȫ���滻,Դ
InputBox,to,ȫ���滻,�滻Ϊ

IfEqual,from,
    ExitApp
IfEqual,to,
    ExitApp

Clipboard =
SendInput ^c
ClipWait 0.5

StringReplace,a,Clipboard,%from%,%to%,ALL
Clipboard := a
SendInput ^v