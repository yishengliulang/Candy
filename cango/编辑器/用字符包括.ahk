Loop, %0%  ; ��ÿ����������ѭ��:
{
    str .=  %A_Index% . " "
}
str := SubStr(str, 1, -StrLen(" "))
StringSplit,p,str,&

if((p1="") or (p2=""))
{
    InputBox,p1,���ַ��������滻,ǰ
    InputBox,p2,���ַ�����,��
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