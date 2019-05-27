FormatTime,flag,,yyyyMMddHHmmss
Run,cmd.exe /k cd "E:\TOOLS\Candy 2.0.0.6","E:\TOOLS\Candy 2.0.0.6"
Sleep,200
SendInput git add -A{Enter}git commit -m "%flag%"{Enter}git push origin master{Enter}
Run,cmd.exe /k cd "Z:\Development\Autohotkey112601\Projects\ModeKeys","Z:\Development\Autohotkey112601\Projects\ModeKeys"
Sleep,200
SendInput git add -A{Enter}git commit -m "%flag%"{Enter}git push origin master{Enter}

