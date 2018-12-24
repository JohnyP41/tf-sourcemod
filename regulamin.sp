#include <sourcemod>
#include <multicolors>

public Plugin myinfo = {
    name = "[TF2] Regulamin",
    author = "James Bond",
    description = "Regulamin na serwer",
    version = "1.0",
    url = ""
};

public OnPluginStart()
{
	RegConsoleCmd("sm_regulamin", vip, "Wyświetla regulamin serwera");
	CreateTimer(100.0, reklamav, _, TIMER_REPEAT);
}

public Action:vip(client, args)
{
		new Handle:menu = CreateMenu(odw);
		SetMenuTitle(menu, "Regulamin serwera");
		AddMenuItem(menu, "arg1", "Słuchaj się administracji.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg2", "Zakaz oszukiwania w grze.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg3", "Nieznajomość regulaminu nie zwalnia z przestrzegania go.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg4", "Właściciel ma zawsze rację.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg5", "Zakaz obrażania ludzi.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg6", "Zakaz wykorzystywania bugów gry.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg7", "Jeżeli chcesz złożyć skargę pisz do właściciela serwera.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg8", "Zakaz nadużywania wulgaryzmów.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg9", "Zakaz przedłużania rundy.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg10", "Zakaz proszenia adminów o różne rzeczy, typu zmniejszanie itp.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg11", "Zakaz kampienia w armory, chyba że jest tylko jeden strażnik.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg12", "3FK równa się 1h ban na blu, a kolejne fk równa się już jako perm ban.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg13", "Tylko Admini mogą wywołać zabawe w Holocaus.", ITEMDRAW_DISABLED);
		AddMenuItem(menu, "arg14", "Za zakup czegokolwiek nie ma zwrotów.", ITEMDRAW_DISABLED);
		SetMenuExitBackButton(menu, true);
		DisplayMenu(menu, client, 40);
}
public odw(Handle:menu, MenuAction:action, Client, param2)
{
	if(action == MenuAction_End) 
	{ 
		CloseHandle(menu); 
	}
}
public Action: reklamav(Handle timer)
{
	CPrintToChatAll("{lime}[REGULAMIN]{legendary} Jeśli nie znasz regulaminu serwera wpisz {gold}!regulamin {legendary}aby go poznać.");
	return Plugin_Continue;
}
