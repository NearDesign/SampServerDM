// This is a comment
// uncomment the line below if you want to write a filterscript
#define FILTERSCRIPT

#include <a_samp>

#if defined FILTERSCRIPT

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
	print(" /buyguns cargado");
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


public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_SORT_GUNS)
	{
		if (response ==  1)
		{
			switch(listitem)
			{
				case 0:
				{
					ShowPlayerDialog(playerid, DIALOG_MEELE_WEAPONS,DIALOG_STYLE_TABLIST_HEADERS,"Buy Weapons","Name of the Weapon\tPrice\tAmmo\nKnife\t$1000\t1\nBrass Knuckles\t$1000\t1\nGolf Club\t$1000\t1\nNightStick\t$1000\t1\nBaseball Bat\t$1000\t1\nShovel\t$1000\t1\nKatana\t$1000\t1\nChainsaw\t$1000\t1\nPurple Dildo\t$1000\t1\nBack", "Select", "Back" );
				}

				case 1:
				{
					ShowPlayerDialog(playerid, DIALOG_HAND_GUNS, DIALOG_STYLE_TABLIST_HEADERS, "Buy Weapons","Name of the Weapon\tPrice\tAmmo\n9mm\t$1000\t100\nSilenced 9mm\t$1000\t100\nDesert Eagle\t$1000\t100", "Select", "Back");
				}

				case 2:
				{
					ShowPlayerDialog(playerid, DIALOG_SUBMACHINE_GUNS, DIALOG_STYLE_TABLIST_HEADERS, "Buy Weapons","Name of the Weapon\tPrice\tAmmo\nTec-9\t$1000\t100\nMircro SMG\t$1000\t100", "Select", "Back");
				}

				case 3:
				{
					ShowPlayerDialog(playerid, DIALOG_SHOT_GUNS, DIALOG_STYLE_TABLIST_HEADERS, "Buy Weapons","Name of the Weapon\tPrice\tAmmo\nShotgun\t$1000\t100\nSawnoff Shotgun\t$1000\t100\nCombat Shotgun\t$1000\t100", "Select", "Back");
				}

				case 4:
				{
					ShowPlayerDialog(playerid, DIALOG_ASSAULT_RIFLES, DIALOG_STYLE_TABLIST_HEADERS, "Buy Weapons","Name of the Weapon\tPrice\tAmmo\nM4\t$1000\t100\nAK-47\t$1000\t100", "Select", "Back");
				}

				case 5:
				{
					ShowPlayerDialog(playerid, DIALOG_LONG_RIFLES, DIALOG_STYLE_TABLIST_HEADERS, "Buy Weapons","Name of the Weapon\tPrice\tAmmo\nRifle\t$1000\t100\nSniper Rifle\t$1000\t100", "Select", "Back");
				}

				case 6:
				{
					ShowPlayerDialog(playerid, DIALOG_THROWN_WEAPONS, DIALOG_STYLE_TABLIST_HEADERS, "Buy Weapons","Name of the Weapon\tPrice\tAmmo\nMolotov Cocktail\t$1000\t100\nGrenade\t$1000\t100\nTear Gas\t$1000\t100", "Select", "Back");
				}
				
				case 7:
				{
					ShowPlayerDialog(playerid, DIALOG_HEAVY_ARTILLERY, DIALOG_STYLE_TABLIST_HEADERS, "Buy Weapons","Name of the Weapon\tPrice\tAmmo\nRocket Launcher\t$1000\t100", "Select", "Back");
				}
			}
		}
	}

	if (dialogid == DIALOG_MEELE_WEAPONS)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 4,1);
			}

			case 1:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 1,1);
			}

			case 2:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 2,1);
			}

			case 3:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 3,1);
			}

			case 4:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 5,1);
			}

			case 5:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 6,1);
			}

			case 6:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 8,1);
			}

			case 7:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 9,1);
			}

			case 8:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 10,1);
			}	
		}
	}
  

	if(dialogid == DIALOG_HAND_GUNS)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 22, 100);
			}

			case 1:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,23,100);
			}

			case 2:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,24,100);
			}

		}
	}


	if(dialogid == DIALOG_SUBMACHINE_GUNS)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 32, 100);
			}

			case 1:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,28, 100);
			}
			
		}
	}

	if(dialogid == DIALOG_SHOT_GUNS)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 25, 100);
			}

			case 1:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 26, 100);
			}

			case 2:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 27, 100);
			}

		}
	}

	if(dialogid == DIALOG_ASSAULT_RIFLES)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem, 31, 100);
			}
			
			case 1:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,30, 100);
			}
			
		}
	}

	if(dialogid == DIALOG_LONG_RIFLES)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,33,100);
			}

			case 1:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,34,100);				
			}

		}
	}

	if(dialogid == DIALOG_THROWN_WEAPONS)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,18,100);
			}

			case 1:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,16,100);
			}

			case 2:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,17,100);
			}

		}
	}

	if(dialogid == DIALOG_HEAVY_ARTILLERY)
	{
		switch(listitem)
		{
			case 0:
			{
				nBuysWeapons(playerid, dialogid, response, listitem,35,100);
			}
      
		}
	}
	return 1;
}



forward nBuysWeapons(playerid, dialogid, response, listitem, gunID, ammoGUN);

public  nBuysWeapons(playerid, dialogid, response, listitem, gunID, ammoGUN)
{
	if (response == 1)
		{
			switch(listitem)
			{
				case 0:
				{
					if(GetPlayerMoney(playerid) >= 1000)
					{
						GivePlayerWeapon(playerid, gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}

				}
				
				case 1:
				{
					if(GetPlayerMoney(playerid) >= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				}

				case 2:
				{
					if(GetPlayerMoney(playerid)>= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				}

				case 3:
				{
					if(GetPlayerMoney(playerid)>= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				}

				case 4:
				{
					if(GetPlayerMoney(playerid)>= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				}

				case 5:
				{
					if(GetPlayerMoney(playerid)>= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				}

				case 6:
				{
					if(GetPlayerMoney(playerid)>= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				}
				case 7:
				{
					if(GetPlayerMoney(playerid)>= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				}
				case 8:
				{
					if(GetPlayerMoney(playerid)>= 1000)
					{
						GivePlayerWeapon(playerid,gunID, ammoGUN);
						GivePlayerMoney(playerid, -1000);
					}
					else
					{
						SendClientMessage(playerid,COLOR_RED,"You don't have enough money to buy this weapon.");
					}
				
				}
			}
		}
    else {
      ShowPlayerDialog(playerid,DIALOG_SORT_GUNS,DIALOG_STYLE_LIST, "Buy Weapons", "Meele Weapons\nHandguns\nSubmachine Guns\nShotguns\nAssault Rifles", "Select", "Cancel");
    }
}