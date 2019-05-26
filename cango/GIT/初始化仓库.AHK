Loop, %0%  ; 对每个参数进行循环:
{
    str .=  %A_Index% . " "
    str := SubStr(str, 1, -StrLen(" "))
}

;~ StringSplit,p,str,&
SplitPath,str,n,d,e
Run,cmd.exe /k cd "%d%","%d%"
Sleep,200
SendInput git init{Enter}
