Loop, %0%  ; 对每个参数进行循环:
{
    str .=  %A_Index% . " "
}
InputBox,sfrom,替换,源
IfEqual,sfrom,
    ExitApp
InputBox,sto,替换,目标
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