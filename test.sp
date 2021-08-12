#pragma semicolon 1

#define DEBUG

#define PLUGIN_AUTHOR "Johny"
#define PLUGIN_VERSION "01.00"

#include <sourcemod>
#include <sdktools>
#include <tf2>
#include <tf2_stocks>
//#include <sdkhooks>

public Plugin myinfo = 
{
	name = "Testowy",
	author = PLUGIN_AUTHOR,
	description = "testowy plugin",
	version = PLUGIN_VERSION,
	url = ""
};

public void OnPluginStart()
{
	RegConsoleCmd("sm_efekt", vip, "xddd");
}

public Action:vip(client, args)
{
	
bool enabled = true;
TF2_SetPlayerPowerPlay(client, enabled);

}
