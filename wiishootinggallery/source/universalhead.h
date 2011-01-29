//Library Includes
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
#include <gccore.h>
#include <wiiuse/wpad.h>
#include <fat.h>
#include <cstdlib>
#include <ctime>
#include <asndlib.h>
#include <mp3player.h> //Inlcude mp3 functions
#include <wiisprite.h> // The main libwiisprite header
#include <hbmenuhead.h>//Main Header for The HOMEbrew Menu Standard Library
#include "ftimage.h"
#include "font_ttf.h" //Font being used


using namespace wsp; //Libwiisprites namespace
	
	//Prototypes
	void DrawHealth(Sprite *Health, int health);
	void doPadPowerOff( s32 chan );
	int hogansnewalley(Sprite *Aim, Sprite *Health, Sprite *Background, int rumble, int maxtime, int anim, GameWindow *gwd);
	int shooter(Sprite *Aim, Sprite *Health, Sprite *Background, int rumble, int maxtime, int anim, GameWindow *gwd);
	void Music();//Keeps the background music going
	void InMenu(GameWindow * gwd, bool end, int &healthpass, int &scorepass);//In-Game Menu

    static bool shutdown = false;
	static bool quitcheck = false;
	static bool dontcheck = false; //Saves us from in game menu -> game agony
