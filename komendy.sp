#include <sourcemod>
#include <morecolors>

public Plugin:myinfo = 
{
	name = "[TF2] Komendy Gracza",
	author = "James Bond",
	description = "Komendy Gracza",
	version ="1.0",
	url = "www.xxx.pl"
}
public OnPluginStart()
{
	RegConsoleCmd("sm_komendy", vip, "Komenda gracza");
}

public Action:vip(client, args)
{
		new Handle:menu = CreateMenu(odw);
		SetMenuTitle(menu, "Menu Gracza");
		AddMenuItem(menu, "arg1", "Wyświetl Regulamin");
		AddMenuItem(menu, "arg2", "Włącz tryb trzeciosobowy");
		AddMenuItem(menu, "arg3", "Wyłącz tryb trzeciosobowy");
		AddMenuItem(menu, "arg4", "Wyświetla jak kupić Vipa");
		AddMenuItem(menu, "arg5", "Zmien model");
		AddMenuItem(menu, "arg6", "Informacje o Vipie");
		SetMenuExitBackButton(menu, true);
		SetMenuPagination(menu, 8);
		DisplayMenu(menu, client, 45);
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
		ClientCommand(client, "sm_regulamin");
	}
	if(StrEqual(info,"arg2"))
	{
		ClientCommand(client, "sm_thirdperson");
	}
	if(StrEqual(info,"arg3"))
	{
		ClientCommand(client, "sm_firstperson");
	}
	if(StrEqual(info,"arg4"))
	{
		ClientCommand(client, "sm_kupvipa");
	}
	if(StrEqual(info,"arg5"))
	{
		ClientCommand(client, "tf_models");
	}
	if(StrEqual(info,"arg6"))
	{
		ClientCommand(client, "sm_vip");
	}
	}
}