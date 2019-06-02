#Include getDesktopDir.ahk
getExplorerDir()
{
	WinGetTitle,dir,A
	if(dir = "×ÀÃæ")
		return getDesktopDir()
	return dir
}
