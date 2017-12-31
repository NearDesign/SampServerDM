// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Blank Filterscript by your name here");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else


// ------------------------------------------------------------//
//                          Defines
// ----------------------------------------------------------//

#define DIALOG_GET_GUN      1
#define DIALOG_SORT_GUNS    2
#define DIALOG_MEELE_WEAPONS    3
#define DIALOG_HAND_GUNS    4
#define DIALOG_SUBMACHINE_GUNS    5
#define DIALOG_SHOT_GUNS    6
#define DIALOG_ASSAULT_RIFLES    7
#define DIALOG_LONG_RIFLES    8
#define DIALOG_THROWN_WEAPONS    9
#define DIALOG_HEAVY_ARTILLERY    10
#define COLOR_RED		0xAA3333AA
#define COLOR_YELLOW    0xFFFF00AA
#define COLOR_WHITE		0xFFFFFFAA
#define puntoprueba    2486.4773,-1655.4395,13.3354
#define IsPlayerInRangeofPoint    1367.9247,-1279.7701,13.5469


main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}

#endif

//Declaracion de variables
new public Float:playerSpawnX = 1957.0470; //Variable donde se guarda el spawn X
new public Float:playerSpawnY = 1342.9669; //Variable donde se guarda el spawn Y
new public Float:playerSpawnZ = 15.3746; //Variable donde se guarda el spawn Z

new skins[300]; //Skins del juego, el maximo es 311
new nBuyWeapons;

public OnGameModeInit()
{
// Don't use these lines if it's a filterscript
    SetGameModeText("Deathmatch");

    //Loop para no hacer 311 lineas de AddPlayerClass
    for (new modelId; modelId < sizeof(skins); modelId++) {
        if (modelId >= 0) {
            AddPlayerClass(modelId, playerSpawnX, playerSpawnY, playerSpawnZ, 269.1425, 0, 0, 0, 0, 0, 0);
        }
    }
    AddStaticVehicle(411, 2486.4773,-1655.4395,13.3354, 82.2873, 0, 1);
	DisableInteriorEnterExits();
	nBuyWeapons = CreatePickup(1242,1,1367.9247,-1279.7701,13.5469);
	Create3DTextLabel("/buyweapons",COLOR_WHITE, 1367.9247,-1279.7701,13.5469, 60.0, 0, 1);
    return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    //Coordenadas del jugador, la camara y la hora en que se vera el Skin Selector
	SetPlayerPos(playerid,playerSpawnX,playerSpawnY,playerSpawnZ);
  	SetPlayerFacingAngle(playerid, 272.4411);
  	SetPlayerCameraPos(playerid,1961.3558,1342.8634,playerSpawnZ);
  	SetPlayerCameraLookAt(playerid,playerSpawnX,playerSpawnY,playerSpawnZ);
  	SetPlayerTime(playerid, 12, 0);
    return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}


public OnPlayerSpawn(playerid)
{
	SetPlayerPos(playerid,1354.8374,-1283.3063,13.3746);
	SetPlayerFacingAngle(playerid, 87.6629);
}

public OnPlayerDeath(playerid, killerid, reason)
{
    if (killerid != INVALID_PLAYER_ID)
    {
    GivePlayerMoney(killerid, 1000);
    new name[MAX_PLAYER_NAME], string[100];
    GetPlayerName(playerid, name, sizeof(name));
    format(string, sizeof(string), "{FFFFFF}You have received {37DB45}1000 {FFFFFF}for killing {FF0000}%s", name);
    SendClientMessage(killerid, 0x33AA33AA, string);
    }
    return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{

	return 1;
}
public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	
	return 1;
}