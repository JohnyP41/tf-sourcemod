#include <sourcemod>
#include <multicolors>

public Plugin myinfo = {
    name = "[TF2] Reklamy",
    author = "James Bond",
    description = "Reklamy na serwerze.",
    version = "1.0",
    url = ""
};

public OnPluginStart()
{
	CreateTimer(100.0, reklama1, _, TIMER_REPEAT);
	CreateTimer(200.0, reklama2, _, TIMER_REPEAT);
	CreateTimer(300.0, reklama3, _, TIMER_REPEAT);
	CreateTimer(400.0, reklama4, _, TIMER_REPEAT);
}

public Action: reklama1(Handle timer)
{
	CPrintToChatAll("{orange}1");
	return Plugin_Continue;
}

public Action: reklama2(Handle timer)
{
	CPrintToChatAll("{orange}2");
	return Plugin_Continue;
}

public Action: reklama3(Handle timer)
{
	CPrintToChatAll("{orange}3");
	return Plugin_Continue;
}

public Action: reklama4(Handle timer)
{
	CPrintToChatAll("{orange}4");
	return Plugin_Continue;
}