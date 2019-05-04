#include <sourcemod>
#include <multicolors>

public Plugin myinfo = {
    name = "[TF2]Cennik",
    author = "James Bond",
    description = "Cennik",
    version = "1.0",
    url = ""
};

public OnPluginStart()
{
	RegConsoleCmd("sm_cennik", menu1, "Kupno vipa");
	CreateTimer(60.0, reklama1, _, TIMER_REPEAT);
}
public Action: menu1(client,args)
{	
	new String:name[64];
	GetClientName(client, name, sizeof(name));
	CPrintToChatAll("{lime}Gracz {gold}%s {legendary}jest zainteresowany kupnem Vipa.",name);
	
	new Handle:menu = CreateMenu(odw);
	SetMenuTitle(menu, "Cennik");
	AddMenuItem(menu, "1", "VIP Na tydzeiń - 2 refy",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "2", "VIP na Miesiąc - 8 Refy",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "3", "VIP na Zawsze - 20 Ref",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "4", "Junior Admin na Tydzien - 25 Ref",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "5", "Junior Admin na Miesiąc - 1,5 Klucza",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "6", "Junior Admin na Zawsze - 3 Klucze",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "7", "Admin na tydzień - 40 Ref",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "8", "Admin na miesiąc - 2,5 Klucza",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "9", "Admin na Zawsze  - 5 Kluczy",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "10", "Head Admin na tydzień - 2 Klucze",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "11", "Head Admin na miesiąc - 6 Kluczy",ITEMDRAW_DISABLED);
	AddMenuItem(menu, "12", "Head admin na Zawsze - 10 Kluczy",ITEMDRAW_DISABLED);

	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, 50);
}
public odw(Handle:menu, MenuAction:action, client, param2)
{	
	if(action == MenuAction_End) CloseHandle(menu);
	
	if(action== MenuAction_Select)
	{
		CloseHandle(menu);	
	}
}

public Action: reklama1(Handle timer)
{
	CPrintToChatAll("{lime}Aby dowiedzieć się jak kupić vipa wpisz {gold}!cennik");
	return Plugin_Continue;
}