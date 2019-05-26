Loop, %0%  ; 对每个参数进行循环:
{
    str .=  %A_Index% . " "
    str := SubStr(str, 1, -StrLen(" "))
}

StringSplit,p,str,&

Run,cmd.exe /k cd "%p1%","%p1%"
Sleep,200
SendInput echo "# README" >> README.md{Enter}
SendInput git init{Enter}
SendInput git add -A{Enter}
SendInput git commit -m "first commit"{Enter}
SendInput git remote add origin %p2%{Enter}
SendInput git push -u origin master{Enter}