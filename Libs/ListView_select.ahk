#Include auto_it.ahk
ListView_select(listid,caption,title = "",text = "")
{
	global auto_it
	idx := auto_it.ControlListView(title,text,listid,"FindItem",caption,0)
	auto_it.ControlListView(title,text,listid,"Select",idx,"")
}
