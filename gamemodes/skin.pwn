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
// ------------------------Defines----------------------------//

#define DIALOG_GET_GUN      100
#define COLOR_RED		0xAA3333AA


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

		//Carro a LS
		 AddStaticVehicle(520,2505.5752,-1665.0111,13.3911,82.2873, 0, 1);
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
	SetPlayerPos(playerid,2496.3918,-1664.9485,13.3438);
	SetPlayerFacingAngle(playerid, 87.6629);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
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
	if (strcmp("/armas", cmdtext, true, 10) == 0)
	{
		// Do something here
		ShowPlayerDialog(playerid, DIALOG_GET_GUN, DIALOG_STYLE_LIST, "Lista de armas", "M4\nDeagle\nGrenade", "Elegir arma", "Cancel");
		return 1;
	}
	
	if(strcmp("/ls", cmdtext, true, 10) ==0) // Comando para hacia los santos (/ls)
	{
	    SetPlayerPos(playerid,2496.3918,-1664.9485,13.343803); //Indica a que posicion en el que el usuario va estar cuando se teletransporte SetPlayerPos(playerid,x,y,z);
	    SendClientMessage(playerid,COLOR_RED,"Te has teletransportado hacia Los Santos"); // El cliente le va enviar un mensaje al jugador diciendo hacia donde se ha teletransportado.
	    return 1;
	}
	if(strcmp("/sf", cmdtext, true, 10) ==0)
	
	{
	    SetPlayerPos(playerid,-1985.6855,132.3887,27.6875);//Indica a que posicion en el que el usuario va estar cuando se teletransporte SetPlayerPos(playerid,x,y,z);
	    SendClientMessage(playerid,COLOR_RED,"Te has teletransportado hacia San Fierro");
	    return 1;
	}

	if(strcmp("/lv", cmdtext, true, 10) ==0)
	{
	    SetPlayerPos(playerid,2025.3314,1342.4624,10.8203);//Indica a que posicion en el que el usuario va estar cuando se teletransporte SetPlayerPos(playerid,x,y,z);
	    SendClientMessage(playerid,COLOR_RED,"Te has teletransportado hacia Las Venturas");
	    return 1;
	}
	
	// SendClientMessage(playerid, color, "Mensaje");    - El color lo puedes definir dentro de la funcion main como el ejemplo de arriba (COLOR_RED)
	
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
	if(dialogid == DIALOG_GET_GUN)
	{
		{
		    switch(listitem)
		    {
		        case 0:
		        {
		            GivePlayerWeapon(playerid, 31, 100);
				}
				case 1:
				{
				    GivePlayerWeapon(playerid, 24, 100);
				}
				case 2:
				{
				    GivePlayerWeapon(playerid, 16, 100);
				}
			}
		}
	}
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}