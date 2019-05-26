Loop, %0%  ; 对每个参数进行循环:
{
    str .=  %A_Index% . " "
}
str := SubStr(str, 1, -StrLen(" "))

;~ StringSplit,p,str,&
Clipboard = %str%
