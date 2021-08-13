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
	RegConsoleCmd("sm_rozmiar", menu1, "Kupno vipa");
	CreateTimer(60.0, reklama1, _, TIMER_REPEAT);
}
public Action: menu1(client,args)
{	
	new String:name[64];
	GetClientName(client, name, sizeof(name));
	
	new Handle:menu = CreateMenu(odw);
	SetMenuTitle(menu, "Rozmiar");
	AddMenuItem(menu, "1", "0.7");
	AddMenuItem(menu, "2", "0.8");
	AddMenuItem(menu, "3", "0.9");
	AddMenuItem(menu, "4", "1.0");
	AddMenuItem(menu, "5", "2.0");
	AddMenuItem(menu, "6", "3.0");

	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, 50);
}
public odw(Handle:menu, MenuAction:action, client, param2)
{	
	if(action == MenuAction_End) CloseHandle(menu);
	
	if(action== MenuAction_Select)
	{
		new String:info[64];
		GetMenuItem(menu, param2, info, sizeof(info));
		
		if(StrEqual(info, "1"))	
		{
			ClientCommand(client, "sm_resize @me 0.7");
		}
		if(StrEqual(info, "2"))	
		{
			ClientCommand(client, "sm_resize @me 0.8");
		}
		if(StrEqual(info, "3"))	
		{
			ClientCommand(client, "sm_resize @me 0.9");
		}
		if(StrEqual(info, "4"))	
		{
			ClientCommand(client, "sm_resize @me 1.0");
		}
		if(StrEqual(info, "5"))	
		{
			ClientCommand(client, "sm_resize @me 2.0");
		}
		if(StrEqual(info, "6"))	
		{
			ClientCommand(client, "sm_resize @me 3.0");
		}
	}
}

public Action: reklama1(Handle timer)
{
	CPrintToChatAll("{lime}Aby zmienić rozmiar wpisz {gold}!rozmiar");
	return Plugin_Continue;
}