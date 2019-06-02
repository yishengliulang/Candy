getDesktopDir()
{
	RegRead,desktopdir,HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders,Desktop	
	return desktopdir
}
