Loop, %0%  ; 对每个参数进行循环:
{
    param := param . " " . %A_Index%
}
Clipboard = %param%
