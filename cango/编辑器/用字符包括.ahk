Loop, %0%  ; 对每个参数进行循环:
{
    str .=  %A_Index% . " "
}
str := SubStr(str, 1, -StrLen(" "))
StringSplit,p,str,&

if((p1="") or (p2=""))
{
    InputBox,p1,用字符包括部替换,前
    InputBox,p2,用字符包括,后
}    

IfEqual,p1,
    ExitApp
IfEqual,p2,
    ExitApp

Clipboard =
SendInput ^c
ClipWait 0.5
Clipboard = %p1%%Clipboard%%p2%
SendInput ^v