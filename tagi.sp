#pragma semicolon 1

#define DEBUG

#define PLUGIN_AUTHOR "James Bond"
#define PLUGIN_VERSION "1.00"

#include <sourcemod>
#include <sdktools>
#include <ccc>
#pragma newdecls required

public Plugin myinfo = 
{
	name = "[TF2] Tagi",
	author = PLUGIN_AUTHOR,
	description = "[TF2] Tagi",
	version = PLUGIN_VERSION,
	url = "www.github.com/JohnyP41"
};

public void OnPluginStart()
{
	RegAdminCmd("sm_tag", odw, ADMFLAG_RESERVATION, "Ustawia tag");
}

public Action odw(int client, int args)
{
	if (args < 2)
	{
		PrintToChat(client, "Użycie sm_tag <color> <tag>");
	}
	else
	{
		char color[64];
		char tag[64];
		GetCmdArg(1, color, 64);
		GetCmdArg(2, tag, 64);
		CCC_SetTag(client, tag);
		CCC_SetColor(client, CCC_ColorType, StringToInt(color, 16), false);
	}
}
