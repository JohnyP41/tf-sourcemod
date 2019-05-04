#include <sourcemod>
#include <ccc>

public Plugin:myinfo = 
{
	name = "[TF2] Kolorowy czat Vipa",
	author = "James Bond",
	description = "Kolorowy czat Vipa",
	version ="1.0",
	url = "www.xxx.pl"
}
public OnPluginStart()
{
	RegAdminCmd("sm_kolor", vip, ADMFLAG_RESERVATION, "Komenda vipa");
}

public Action:vip(client, args)
{
		new Handle:menu = CreateMenu(odw);
		SetMenuTitle(menu, "Kolory tekstu na czacie VIPa");
		AddMenuItem(menu, "00FF00", "Zielony");
		AddMenuItem(menu, "0000FF", "Niebieski");
		AddMenuItem(menu, "B803FF", "Fioletowy");
		AddMenuItem(menu, "000000", "Czarny");
		AddMenuItem(menu, "FF0000", "Czerwony");
		AddMenuItem(menu, "FF00FF", "Różowy");
		AddMenuItem(menu, "FFA500", "Pomarańczowy");
		AddMenuItem(menu, "906030", "Brązowy");
		AddMenuItem(menu, "FFFF00", "Żółty");
		AddMenuItem(menu, "808080", "Szary");
		SetMenuExitBackButton(menu, true);
		DisplayMenu(menu, client, 45);
}

public odw(Handle:menu, MenuAction:action, client, param2)
{
	if(action == MenuAction_End) 
	{
		CloseHandle(menu);		
	}
	
	if(action== MenuAction_Select)
	{
	new String:info[64];
	GetMenuItem(menu, param2, info, sizeof(info));
	if(StrEqual(info,"00FF00"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"0000FF"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"B803FF"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"000000"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"FF0000"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"FF00FF"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"FFA500"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"906030"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"FFFF00"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	if(StrEqual(info,"808080"))
	{
		CCC_SetColor(client, CCC_ChatColor, StringToInt(info, 16), false);
	}
	}
}