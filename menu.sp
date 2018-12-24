#include <sourcemod>

public Plugin myinfo = {
    name = "[TF2] Menu",
    author = "James Bond",
    description = "Menu",
    version = "1.0",
    url = ""
};

public OnPluginStart()
{
	RegConsoleCmd("sm_menu", menu1, "Menu");
}
public Action: menu1(client,args)
{	
	new Handle:menu = CreateMenu(odw);
	SetMenuTitle(menu, "Menu Gracza");
	AddMenuItem(menu, "arg1", "Włączenie 3-osoby");
	AddMenuItem(menu, "arg5", "Wyłączenie 3-osoby");
	AddMenuItem(menu, "arg2", "Regulamin");
	AddMenuItem(menu, "arg3", "Efekty");
	AddMenuItem(menu, "arg4", "Vip");
	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, 45);
	return Plugin_Handled;
}
public void OnClientPutInServer(client)
{
	new Handle:menu = CreateMenu(odw);
	SetMenuTitle(menu, "Menu Gracza");
	AddMenuItem(menu, "arg1", "Włączenie 3-osoby");
	AddMenuItem(menu, "arg5", "Wyłączenie 3-osoby");
	AddMenuItem(menu, "arg2", "Regulamin");
	AddMenuItem(menu, "arg3", "Efekty");
	AddMenuItem(menu, "arg4", "Vip");
	SetMenuExitBackButton(menu, true);
	DisplayMenu(menu, client, 45);
	return Plugin_Handled;
}
public odw(Handle:menu, MenuAction:action, client, param2)
{
	if(action == MenuAction_End) CloseHandle(menu);
	if(action== MenuAction_Select)
	{
	new String:info[64];
	GetMenuItem(menu, param2, info, sizeof(info));
	if(StrEqual(info,"arg1"))
	{
		ClientCommand(client, "sm_thirdperson");
		ClientCommand(client, "sm_menu");
	}
	if(StrEqual(info,"arg2"))
	{
		ClientCommand(client, "sm_regulamin");
	}
	if(StrEqual(info,"arg3"))
	{
		ClientCommand(client, "sm_efekty");
	}
	if(StrEqual(info,"arg4"))
	{
		ClientCommand(client, "sm_vip");
	}
	if(StrEqual(info,"arg5"))
	{
		ClientCommand(client, "sm_firstperson");
		ClientCommand(client, "sm_menu");
	}
	}
}