#Include getDesktopDir.ahk
getExplorerDir()
{
	WinGetTitle,dir,A
	if(dir = "����")
		return getDesktopDir()
	return dir
}
