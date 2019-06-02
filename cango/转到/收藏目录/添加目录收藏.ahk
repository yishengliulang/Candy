Loop, %0%  ; 对每个参数进行循环:
{
    str .=  %A_Index% . " "
}
str := SubStr(str, 1, -StrLen(" "))

StringSplit,p,str,&
FileIsDir(fn)
{
    FileGetAttrib,attr,% fn
    IfInString,attr,D
        return true
    return false
}
FileDir(fn)
{
    SplitPath,fn,fname,dir,ext
    return dir
}
if not (FileIsDir(p1))
    p1 := FileDir(p1)
inifile = E:\TOOLS\Candy 2.0.0.6\ini\candy_菜单1\收藏目录.ini
IniWrite,Run|%p1%,%inifile%,menu,%p2%

