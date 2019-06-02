;~ Loop, %0%  ; 对每个参数进行循环:
;~ {
    ;~ str .=  %A_Index% . " "
;~ }
;~ str := SubStr(str, 1, -StrLen(" "))
;~ StringSplit,p,str,&

InputBox,from,全部替换,源
InputBox,to,全部替换,替换为

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