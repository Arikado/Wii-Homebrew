/***************************************************************************
			globals.h  -  header for the whole programm, included by every cpp file
                             -------------------
    copyright            :	(C) 2003-2004 Artur Hallmann
							(C) 2003-2005 FluXy
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 

#ifndef __GLOBALS_H__
#define __GLOBALS_H__

/* *** *** *** *** *** *** *** *** *** *** */
#include <fat.h>
#include <SDL/SDL.h>

#define CAPTION "Secret Maryo Chronicles"
#if !defined( VERSION ) && !defined( HAVE_CONFIG_H )
#define VERSION "0.97"
#endif

// used for animations and the framerate speedfactor calculation
#define DESIRED_FPS 32

// default files for levels
#define DEFAULT_MUSIC "sd:/apps/smc/data/music/land/land_1.ogg"
#define DEFAULT_BACKGROUND "sd:/apps/smc/data/game/background/wood_1.png"

// Object Directions
typedef enum
{
	DIR_NOTHING	= -1,
	DIR_LEFT	= 0,
	DIR_RIGHT	= 1,
	DIR_UP		= 2,
	DIR_DOWN	= 3,
	DIR_HORIZONTAL	= 10,	// left or right
	DIR_VERTICAL	= 11,	// up or down
	DIR_ALL			= 20,	// all directions
	DIR_FIRST		= 100,	// Overworld first waypoint
	DIR_LAST		= 101	// Overworld last waypoint
} ObjectDirection;

// ### - Special Channels ( For ingame sounds which shouldn't be played twice at the same time )
// 5 an up is buggy ...
// Todo : more channels and research sometime
typedef enum
{
	CHA_MARYO_JUMP		= 1,
	CHA_MARYO_TOCK		= 2,
	CHA_MARYO_POWERDOWN = 3,
	CHA_MARYO_DEATH		= 1,
	CHA_MARYO_FIREBALL	= 2,

	CHA_FIREPLANT		= 3,
	CHA_MUSHROOM		= 3,
	CHA_1UP_MUSHROOM	= 3
} AudioChannel;

// cameraspeed in the Leveleditor
#define CAMERASPEED 35

// for use with the KeyPressed function
typedef enum
{
	KEY_ENTER	= 1,
	KEY_LEFT	= 2,
	KEY_RIGHT	= 3,
	KEY_UP		= 4,
	KEY_DOWN	= 5,
	KEY_ESC		= 6
} KeyDefine;

// The Game Modes
typedef enum
{
	MODE_NOTHING	= 0,
	MODE_LEVEL		= 1,
	MODE_OVERWORLD	= 2,
	MODE_MENU		= 3
} GameMode;

// The Effect definitions
typedef enum
{
	RANDOM_EFFECT,
	BLACK_FADEOUT,
	HORIZONTAL_FADE,
	VERTICAL_FADE,
	WISHY_WASHY_PIXELATION,
	RANDOM_RECTANGLE_PIXELATION,
	TILE_PIXELATION,
	SLIDER_FADE,
	FIXED_RECTANGLE_PIXELATION,
	TOTAL_FADE_EFFECTS
} FadeoutEffect;

/* *** *** *** *** *** *** *** *** *** *** */

#ifdef _DEBUG
	#define _STLP_DEBUG 1
#else
	#undef _STLP_DEBUG
#endif

#ifdef _WIN32
	#define __WIN32__
	#ifdef _DEBUG
		#pragma warning ( disable : 4786 )
	#endif
#endif

#define SAVE_DIR "sd:/apps/smc/data/savegames"
#define OVERWORLD_DIR "sd:/apps/smc/data/world"
#define PIXMAPS_DIR "sd:/apps/smc/data/pixmaps"
#define SOUNDS_DIR "sd:/apps/smc/data/sounds"
#define MUSIC_DIR "sd:/apps/smc/data/music"
#define FONT_DIR "sd:/apps/smc/data/font"


/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <time.h>
#include <math.h>

using std::string;
using std::vector;
using std::flush;
using std::ifstream;
using std::fstream;
using std::ofstream;
using std::stringstream;
using std::ios;
//using std::find_if;

#include <SDL/SDL.h>
#include <SDL/SDL_ttf.h>
#include <SDL/SDL_image.h>
#include <SDL/SDL_mixer.h>


#if defined( __WIN32__ ) && defined( _DEBUG )
	#undef main
#endif

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#include "img_manager.h"
#include "framerate.h"
#include "collision.h"

extern cFramerate Framerate;

#include "video.h"
#include "savegame.h"
#include "audio.h"
#include "animation.h"
#include "joystick.h"
#include "menu.h"
#include "sprite.h"
#include "active.h"
#include "mouse.h"
#include "leveleditor.h"
#include "level.h"
#include "goldpiece.h"
#include "cloud.h"
#include "hud.h"
#include "levelexit.h"
#include "powerup.h"
#include "box.h"
#include "player.h"
#include "enemy.h"
#include "turtle.h"
#include "goomba.h"
#include "jpiranha.h"
#include "banzai_bill.h"
#include "rex.h"
#include "preferences.h"
#include "overworld.h"
#include "dialog.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// The Image Manager
extern cImageManager *pImageManager;
// The HUD Manager
extern cHudManager *pHudManager;
// The Animation Manager
extern cAnimationManager *pAnimationManager;
// The Dialog Manager
extern cDialogManager *pDialogManager;
// The Joystick
extern cJoystick *pJoystick;
// The Sprites
extern vector<cSprite*> MassiveObjects;
extern vector<cSprite*> PassiveObjects;
extern vector<cSprite*> ActiveObjects;
extern vector<cSprite*> EnemyObjects;

// The Player
extern cPlayer *pPlayer;
// The Level
extern cLevel *pLevel;
// The Overworld
extern cOverWorld *pOverWorld;
// The Menu
extern cMainMenu *pMenu;
// The Mouse
extern cMouseCursor *pMouseCursor;
// The HUD
extern cPlayerPoints *pointsdisplay;
extern cDebugDisplay *debugdisplay;
extern cGoldDisplay *golddisplay;
extern cLiveDisplay *livedisplay;
extern cTimeDisplay *timedisplay;
extern cItemBox *Itembox;
// The Leveleditor
extern cLevelEditor *pLeveleditor;
// Audio Handler
extern cAudio *pAudio;
// The Preferences
extern cPreferences *pPreferences;
// The Savegame Handler
extern cSavegame *pSavegame;

extern bool done;
extern SDL_Surface *screen;
extern Uint32 magenta, std_bgcolor, darkblue, lightblue, black, white, grey, green;
extern TTF_Font *font, *font_16;
extern SDL_Color colorBlack, colorWhite, colorBlue, colorDarkBlue, colorGreen ,colorDarkGreen, colorMagenta, colorGrey, colorRed, colorOrange;
// Pressed keys
extern Uint8 *keys;
// Event system
extern SDL_Event event;
/* 0 = disabled
 * 1 = Level Editor
 * 2 = Object Editor
 */
extern int Leveleditor_Mode;
/* 0 = nothing
 * 1 = Level
 * 2 = Overworld
 * 3 = Menu
 */
extern GameMode Game_Mode;
extern bool Game_debug, Overworld_debug;

// The Camera Position
extern double cameraposx, cameraposy;
// Mouse position
extern int mouseX, mouseY, _mouseX, _mouseY;

// Returns true if the number is valid
bool is_valid_number( string num );

// Adds an Active Sprite to the Array
void AddActiveObject( cSprite *obj );
// Adds a Passive Sprite to the Array
void AddPassiveObject( cSprite *obj );
// Adds an Enemy Sprite to the Array
void AddEnemyObject( cSprite *obj );
// Adds a Massive Sprite to the Array
void AddMassiveObject( cSprite *obj );

/* Returns the Copied Object
 * with the given position
 * if no position is given default is 0
 * Returns NULL if a error occured
 */
cSprite *Copy_Object( cSprite *CopyObject, double x = 0, double y = 0 );

// Checks if an key is pressed on the common keys
bool KeyPressed( KeyDefine key ); 

// Returns the current computer time
string Get_current_time( void );

// Clears the complete input event queue
void ClearEvents( void ); 

/* an EditBox
 * default_text = the Default Text
 * auto_no_text = if a key is pressed the default text dissapers
 */
string EditMessageBox( string default_text, string title_text, Uint16 pos_x, Uint16 pos_y, bool auto_no_text = 1 );

/* Preloads the common images
 * into the image manager
 */
void Preload_images( void );

/* Deletes the given file returns 1 on success else 0
 * Use with Caution
*/
bool Delete_file( string filename );

// Checks if the file exists
bool valid_file( string filename );

// Returns the number as a string
string int_to_string( int number );
// Returns the string as a number
int string_to_int( string str );


extern int tecla_up;
extern int tecla_down;
extern int tecla_left;
extern int tecla_right;
extern int tecla_a;
extern int tecla_x;
#endif
