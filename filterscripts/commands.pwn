// This is a comment
// uncomment the line below if you want to write a filterscript
#define FILTERSCRIPT

#include <a_samp>

#if defined FILTERSCRIPT

#define DIALOG_SORT_GUNS    2
#define COLOR_RED		0xAA3333AA
#define COLOR_YELLOW    0xFFFF00AA
#define COLOR_WHITE		0xFFFFFFAA
#define COLOR_GREEN	0x33AA33AA

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

main()
{
	print("\n----------------------------------");
	print(" Comandos cargados xdxd");
	print("----------------------------------\n");
}

#endif

public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript

	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{

	if(strcmp("/ls", cmdtext, true, 10) ==0) // Comando para hacia los santos (/ls)
	{
	    SetPlayerPos(playerid,2496.3918,-1664.9485,13.343803); //Indica a que posicion en el que el usuario va estar cuando se teletransporte SetPlayerPos(playerid,x,y,z);
	    SendClientMessage(playerid,COLOR_YELLOW,"You have been teleported to Las Santos"); // El cliente le va enviar un mensaje al jugador diciendo hacia donde se ha teletransportado.
	    return 1;
	}

	if(strcmp("/sf", cmdtext, true, 10) ==0)
	{
	    SetPlayerPos(playerid,-1985.6855,132.3887,27.6875);//Indica a que posicion en el que el usuario va estar cuando se teletransporte SetPlayerPos(playerid,x,y,z);
	    SendClientMessage(playerid,COLOR_YELLOW,"You have been teleported to San Fierro");
	    return 1;
	}

	if(strcmp("/lv", cmdtext, true, 10) ==0)
	{
	    SetPlayerPos(playerid,2025.3314,1342.4624,10.8203);//Indica a que posicion en el que el usuario va estar cuando se teletransporte SetPlayerPos(playerid,x,y,z);
	    SendClientMessage(playerid,COLOR_YELLOW,"You have been teleported to Las Venturas");
	    return 1;
	}

	if(strcmp("/dinero", cmdtext, true, 10) ==0)
	{
	    GivePlayerMoney(playerid, 3000);
	    return 1;
	}

	if(strcmp("/buyweapons", cmdtext, true, 10) ==0)
	{
	    if(IsPlayerInRangeOfPoint(playerid,2.0,1367.9247,-1279.7701,13.5469))
	    {
	        ShowPlayerDialog(playerid,DIALOG_SORT_GUNS,DIALOG_STYLE_LIST, "Buy Weapons", "Meele Weapons\nHandguns\nSubmachine Guns\nShotguns\nAssault Rifles\nLong Rifles\nThrown Weapons\nHeavy Artillery", "Select", "Cancel");
	    }
	    return 1;
	}

	// SendClientMessage(playerid, color, "Mensaje");    - El color lo puedes definir dentro de la funcion main como el ejemplo de arriba (COLOR_RED)


	return 0;
}