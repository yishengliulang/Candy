Loop, %0%  ; 对每个参数进行循环:
{
    str .=  %A_Index% . " "
}
str := SubStr(str, 1, -StrLen(" "))

StringSplit,p,str,&
SplitPath,p1,n,d,e
Run,cmd.exe /k cd "%d%","%d%"
Sleep,200

SendInput git add -A{Enter}git commit -m "%p2%"{Enter}git push origin master{Enter}