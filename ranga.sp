#include <sourcemod>

public Plugin myinfo = {
    name = "Ranga",
    author = "James Bond",
    description = "Ranga",
    version = "1.0",
    url = ""
};

public OnPluginStart()
{
	RegConsoleCmd("sm_ustawtag", ustawtag, "Ustawia Tag przed nickiem");
}

public Action: ustawtag(client,args)
{
	if(args<1)
	{
		PrintToChat(client, "sm_ustawtag <nazwa_rangi>");
	}
	GetCmdArg(1, ranga, sizeof(ranga));
	PrintToChat(client, "Twój tag to:%s",ranga);
	new String:message[64];
	AddCommandListener(odw, "say");
}
public Action: odw(client, const char[] command, int argc)
{
	PrintToChatAll("%s", command);
}
