#include <sourcemod>

public Plugin myinfo = {
    name = "[TF2] Zmienna nazwa",
    author = "James Bond",
    description = "Zmienna nazwa",
    version = "1.0",
    url = ""
};

public OnPluginStart()
{
	CreateTimer(2.0, reklama, _, TIMER_REPEAT);
	CreateTimer(4.0, reklama1, _, TIMER_REPEAT);
	CreateTimer(6.0, reklama3, _, TIMER_REPEAT);
	CreateTimer(8.0, reklama4, _, TIMER_REPEAT);
	HookEvent("player_activate", mama, EventHookMode_Post);
}
public Action: reklama(Handle timer)
{
	ServerCommand("hostname [PL] Polski");
	return Plugin_Continue;
}
public Action: reklama1(Handle timer)
{
	ServerCommand("hostname [PL] Polski Serwer");
	return Plugin_Continue;
}
public Action: reklama3(Handle timer)
{
	ServerCommand("hostname [PL] Polski Serwer Hidden!");
	return Plugin_Continue;
}
public Action: reklama4(Handle timer)
{
	ServerCommand("hostname [PL] Zapraszamy!");
	return Plugin_Continue;
}