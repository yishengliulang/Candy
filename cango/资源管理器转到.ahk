Loop, %0%  ; 对每个参数进行循环:
{
    param := param . " " . %A_Index%
}
Send !d
SendInput %param%{Enter}

