Loop, %0%  ; ��ÿ����������ѭ��:
{
    str .=  %A_Index% . " "
}
InputBox,sfrom,�滻,Դ
IfEqual,sfrom,
    ExitApp
InputBox,sto,�滻,Ŀ��
loop,Parse,str,`n`r
{
    try
    {
    SplitPath,A_LoopField,,dir,ext,fn
    nfn := RegExReplace(fn,sfrom,sto)
    newfile := dir . "\" . nfn . "." . ext
    ;~ MsgBox % newfile
    FileMove,%A_LoopField%,%newfile%,1
    }
}