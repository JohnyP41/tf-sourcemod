#include <sourcemod>
#include <tf2attributes>

public Plugin:myinfo = 
{
	name = "[TF2] Efekty",
	author = "James Bond",
	description = "Efekty",
	version ="1.0",
	url = "www.xxx.pl"
}
public OnPluginStart()
{
	RegAdminCmd("sm_efekty",vip,ADMFLAG_RESERVATION, "dostajesz Efekty");
}

public Action:vip(int client,int args)
{
		new Handle:menu = CreateMenu(odw);
		SetMenuTitle(menu, "Efekty:");
		AddMenuItem(menu, "arg0", "Usuń efekty");
		AddMenuItem(menu, "arg1", "Flying Bits");
		AddMenuItem(menu, "arg2", "Holy Glow");
		AddMenuItem(menu, "arg3", "Green Confetti");
		AddMenuItem(menu, "arg4", "Purple Confetti");
		AddMenuItem(menu, "arg5", "Hunted Ghosts");
		AddMenuItem(menu, "arg6", "Green Energy");
		AddMenuItem(menu, "arg7", "Purple Energy");
		AddMenuItem(menu, "arg8", "Circling TF2 logo");
		AddMenuItem(menu, "arg9", "Massed Flies");
		AddMenuItem(menu, "arg10", "Burning Flames");
		AddMenuItem(menu, "arg11", "Scorching Flames");
		AddMenuItem(menu, "arg12", "Searing Plasma");
		AddMenuItem(menu, "arg13", "Vivid Plasma");
		AddMenuItem(menu, "arg14", "Sunbeams");
		AddMenuItem(menu, "arg15", "Circling Peace Sign");
		AddMenuItem(menu, "arg16", "Circling Heart");
		AddMenuItem(menu, "arg17", "Map Stamps");
		AddMenuItem(menu, "arg18", "Genteel Smoke");
		AddMenuItem(menu, "arg19", "Stormy Storm");
		AddMenuItem(menu, "arg20", "Blizzardy Storm");
		AddMenuItem(menu, "arg21", "Nuts n' Bolts");
		AddMenuItem(menu, "arg22", "Orbiting Planets");
		AddMenuItem(menu, "arg23", "Orbiting Fire");
		AddMenuItem(menu, "arg24", "Bubbling");
		AddMenuItem(menu, "arg25", "Smoking");
		AddMenuItem(menu, "arg26", "Steaming");
		AddMenuItem(menu, "arg27", "Flaming Lantern");
		AddMenuItem(menu, "arg28", "Cloudy Moon");
		AddMenuItem(menu, "arg29", "Cauldron Bubbles");
		AddMenuItem(menu, "arg30", "Eerie Orbiting Fire");
		AddMenuItem(menu, "arg31", "Knifestorm");
		AddMenuItem(menu, "arg32", "Misty Skull");
		AddMenuItem(menu, "arg33", "Harvest Moon");
		AddMenuItem(menu, "arg34", "It's A Secret To Everybody");
		AddMenuItem(menu, "arg35", "Stormy 13th Hour");
		SetMenuExitBackButton(menu, true);
		DisplayMenu(menu, client, 45);
}
public odw(Handle:menu, MenuAction:action, client, param2)
{
	if(action == MenuAction_End) CloseHandle(menu);
	if(action== MenuAction_Select)
	{
	new String:info[64];
	GetMenuItem(menu, param2, info, sizeof(info));
	if(StrEqual(info,"arg0"))
	{
		TF2Attrib_RemoveByDefIndex(client, 134);
	}
	if(StrEqual(info,"arg1"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 2.0);
	}
	if(StrEqual(info,"arg2"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 5.0);
	}
	if(StrEqual(info,"arg3"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 6.0);
	}
	if(StrEqual(info,"arg4"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 7.0);
	}
	if(StrEqual(info,"arg5"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 8.0);
	}
	if(StrEqual(info,"arg6"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 9.0);
	}
	if(StrEqual(info,"arg7"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 10.0);
	}
	if(StrEqual(info,"arg8"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 11.0);
	}
	if(StrEqual(info,"arg9"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 12.0);
	}
	if(StrEqual(info,"arg10"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 13.0);
	}
	if(StrEqual(info,"arg11"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 14.0);
	}
	if(StrEqual(info,"arg12"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 15.0);
	}
	if(StrEqual(info,"arg13"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 16.0);
	}
	if(StrEqual(info,"arg14"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 17.0);
	}
	if(StrEqual(info,"arg15"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 18.0);
	}
	if(StrEqual(info,"arg16"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 19.0);
	}
	if(StrEqual(info,"arg17"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 20.0);
	}
	if(StrEqual(info,"arg18"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 28.0);
	}
	if(StrEqual(info,"arg19"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 29.0);
	}
	if(StrEqual(info,"arg20"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 30.0);
	}
	if(StrEqual(info,"arg21"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 31.0);
	}
	if(StrEqual(info,"arg22"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 32.0);
	}
	if(StrEqual(info,"arg23"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 33.0);
	}
	if(StrEqual(info,"arg24"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 34.0);
	}
	if(StrEqual(info,"arg25"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 35.0);
	}
	if(StrEqual(info,"arg26"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 36.0);
	}
	if(StrEqual(info,"arg27"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 37.0);
	}
	if(StrEqual(info,"arg28"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 38.0);
	}
	if(StrEqual(info,"arg29"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 39.0);
	}
	if(StrEqual(info,"arg30"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 40.0);
	}
	if(StrEqual(info,"arg31"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 43.0);
	}
	if(StrEqual(info,"arg32"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 44.0);
	}
	if(StrEqual(info,"arg33"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 45.0);
	}
	if(StrEqual(info,"arg34"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 46.0);
	}
	if(StrEqual(info,"arg35"))
	{
		TF2Attrib_SetByDefIndex(client, 134, 47.0);
	}
	}
}