#include <sourcemod>
#include <multicolors>

public Plugin:myinfo = 
{
	name = "[TF2] Vip",
	author = "James Bond",
	description = "Plugin dla Vipa",
	version ="1.0",
	url = "www.xxx.pl"
}
public OnPluginStart()
{
	RegConsoleCmd("sm_vip", vip, "Komenda vipa");
	CreateTimer(45.0, reklamav, _, TIMER_REPEAT);
}

public Action:vip(client, args)
{
	if(GetUserFlagBits(client) && ADMFLAG_RESERVATION)
	{
		new Handle:menu = CreateMenu(odw);
		SetMenuTitle(menu, "Menu Vipa");
		AddMenuItem(menu, "arg1", "Bądź robotem");
		AddMenuItem(menu, "arg2", "Badź szkieletem");
		AddMenuItem(menu, "arg5", "Wyświetl drwiny");
		AddMenuItem(menu, "arg6", "Wyświetl ślady");
		AddMenuItem(menu, "arg7", "Zmiana klasy");
		AddMenuItem(menu, "arg8", "Broń saxxy");
		AddMenuItem(menu, "arg9", "Efekty na czapki");
		AddMenuItem(menu, "arg11", "Złota Patelnia");
		AddMenuItem(menu, "arg14", "Szlaczki dla VIP!");
		SetMenuExitBackButton(menu, true);
		SetMenuPagination(menu, 8);
		DisplayMenu(menu, client, 45);
	}
	else
	{
		new Handle:menu1 = CreateMenu(odw1);
		SetMenuTitle(menu1, "Menu Vipa");
		AddMenuItem(menu1, "arg1", "Możliwość bycia robotem.", ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg2", "Możliwość bycia szkieletem.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg5", "Najnowsze drwiny.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg6", "Efekty przy chodzeniu.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg7", "Zmiana klasy podczas rundy.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg8", "Saxxy,Złota patelnia dla vipa.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg9", "Efekty na czapki.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg10", "Możliwość zmiany koloru czatu.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg11", "Komenda !tag na zmianę tagu i jego koloru.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg13", "Slady dla VIPA.",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg14", "Szlaczki dla VIP",ITEMDRAW_DISABLED);
		AddMenuItem(menu1, "arg15", "Aby kupić Vip wpisz !kupvipa.",ITEMDRAW_DISABLED);
		SetMenuExitBackButton(menu1, true);
		SetMenuPagination(menu1, 8);
		DisplayMenu(menu1, client, 45);
	}
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
		ClientCommand(client, "sm_robot");
		ClientCommand(client, "sm_vip");
	}
	if(StrEqual(info,"arg2"))
	{
		ClientCommand(client, "sm_skeleton");
		ClientCommand(client, "sm_vip");
	}
	if(StrEqual(info,"arg5"))
	{
		ClientCommand(client, "sm_taunts");
	}
	if(StrEqual(info,"arg6"))
	{
		ClientCommand(client, "sm_footprints");
	}
	if(StrEqual(info,"arg7"))
	{
		ClientCommand(client, "sm_klasy");
	}
	if(StrEqual(info,"arg8"))
	{
		ClientCommand(client, "sm_saxxy");
	}
	if(StrEqual(info,"arg9"))
	{
		ClientCommand(client, "sm_unusuals");
	}
	if(StrEqual(info,"arg11"))
	{
		ClientCommand(client, "sm_gold");
	}
	if(StrEqual(info,"arg13"))
	{
		ClientCommand(client, "sm_slad");
	}
	if(StrEqual(info,"arg14"))
	{
		ClientCommand(client, "sm_trails");
	}
	if(StrEqual(info,"arg15"))
	{
		ClientCommand(client, "sm_australium");
	}
	if(StrEqual(info,"arg16"))
	{
		ClientCommand(client, "sm_killstreaks");
	}
	}
}
public odw1(Handle:menu1, MenuAction:action, client, param2)
{
	if(action == MenuAction_End) CloseHandle(menu1);
}
public Action: reklamav(Handle timer)
{
	CPrintToChatAll("{lime}[VIP]{legendary} Wpisz {gold}!vip {legendary}aby dowiedzieć się więcej.");
	return Plugin_Continue;
}