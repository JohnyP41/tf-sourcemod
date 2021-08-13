#include <sourcemod>
#include <multicolors>

public Plugin myinfo = {
    name = "[TF2] Broń",
    author = "James Bond",
    description = "Broń",
    version = "1.0",
    url = ""
};

public OnPluginStart()
{
	RegAdminCmd("sm_saxxy", me, ADMFLAG_RESERVATION);
	RegAdminCmd("sm_pan", me1, ADMFLAG_RESERVATION); 
	RegAdminCmd("sm_wrench", me2, ADMFLAG_RESERVATION);
}
public Action: me(client,args)
{	
	ServerCommand("sm_givew \"%s\" 423", client);
}
public Action: me1(client,args)
{	
	ServerCommand("sm_givew \"%s\" 1071", client);
}
public Action: me2(client,args)
{	
	ServerCommand("sm_givew \"%s\" 169", client);
}
