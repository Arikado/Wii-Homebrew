/***************************************************************************
                menu.h  -  header for the corresponding cpp file
                             -------------------
    copyright            :	(C) 2003-2004 by Artur Hallmann
							(C) 2003-2005 by FluXy
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 

#ifndef __MENU_H__
#define __MENU_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// The Menu Item
class cMenu_Item : public cSprite
{
public:
	cMenu_Item( void );
	~cMenu_Item( void );

	// Sets the Active Modifier
	void Set_Active( bool nactive = 0 );
	// Draws the Menu Item
	void Draw( void );

	// The menu images
	cSprite *image_default;
	cSprite *image_disabled;
	// The additional Menu Graphic
	cSprite *image_menu;
	
	// if this item quits the menu
	bool isquit;
private:
	// Is this Item active
	bool active;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

/* The Menu Handler
* Can load at anytime new Menu-Items
*/
class cMenuHandler
{
public:
	cMenuHandler( string logo_filename, string logo_quit_filename, unsigned int posx, unsigned int posy = 10 );
	~cMenuHandler( void );

	// Adds a Menu
	void Add_MenuItem( cMenu_Item *item );
	// Unloads all items
	void Reset( void );

	/* Sets the Active Menu Item
	* if set to -1 nothing is active
	*/
	void Set_Active( int num );

	// Updates the Menu Mouse Collision detection
	void Update_Mouse( void );
	// Draws the Menu
	void Draw( void );

	// Returns the currently active Menu Item
	cMenu_Item *Get_Active_Item( void );
	// Returns the number of loaded Menus
	unsigned int Get_Size( void );

	// The Logo images
	SDL_Surface *image_logo;
	SDL_Surface *image_logo_quit;
	// The Logo Sprite
	cSprite *logo;
	
	/* The Currently Active Menu Item
	* if set to -1 nothing is active
	*/
	int active;
private:
	typedef vector<cMenu_Item*> MenuList;
	MenuList items;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cMainMenu
{
public:
	cMainMenu( void );
	~cMainMenu( void );
	
	void LoadImages( void );
	void FreeImages( void );

	// Generic Menu Input handler
	void UpdateGeneric( cMenuHandler *handler );

	// Returns a Menu with the common image filenames
	cMenu_Item *Auto_Menu( string imagename, string imagename_menu, unsigned int ypos = 0, bool is_quit = 0 );

	// Main menu
	void Menu_Show( void );
	void Menu_Update( cMenuHandler *handler );
	void Menu_Action( cMenuHandler *handler );

	// Options Submenu
	void SubOptions_Show( void );
	void SubOptions_Update( cMenuHandler *handler );
	void SubOptions_Action( cMenuHandler *handler );

	// Controls Submenu
	void SubControls_Show( void );
	void SubControls_Update( cMenuHandler *handler );
	void SubControls_Action( cMenuHandler *handler );

	// Audio Submenu
	void SubAudio_Show( void );
	void SubAudio_Update( cMenuHandler *handler );
	void SubAudio_Action( cMenuHandler *handler );
	
	// Video Submenu
	void SubVideo_Show( void );
	void SubVideo_Update( cMenuHandler *handler );
	void SubVideo_Action( cMenuHandler *handler );

	// Savegame Load Submenu
	void LoadGames_Show( void );
	void LoadGames_Update( cMenuHandler *handler );
	void LoadGames_Action( cMenuHandler *handler );

	// Savegame Save Submenu
	void SaveGames_Show( void );
	void SaveGames_Update( cMenuHandler *handler );
	void SaveGames_Action( cMenuHandler *handler );

	// Sets the Savegame Description
	string Set_SaveDescription( unsigned int Save_file );
	// Updates all the Savegame Descriptions
	void GetSavedGames( void );

	// Sets the video info
	void Set_Videoinfo( void );

	/* For leaving the current menu
	 * 1 = default leaving
	 * 2 = The user pressed ESC
	 * 3 = A Savegame was loaded or saved
	*/
	int leave;
	// If the UpdateGeneric detected an Action
	bool action;

	cSprite *boptions1;
	cSprite *boptions2;

	cSprite *bload1;
	cSprite *bload2;
	cSprite *bsave1;
	cSprite *bsave2;
	
	cSprite *bquit1;
	cSprite *bquit2;

	cSprite *bcontrols1;
	cSprite *bcontrols2;

	cSprite *baudio1;
	cSprite *baudio2;
	cSprite *bvideo1;
	cSprite *bvideo2;
	
	cSprite *bon1;
	cSprite *bon2;
	cSprite *boff1;
	cSprite *boff2;

	// Control Items
	cSprite *gamepad;
	// keyboard
	cSprite *controls_up;
	cSprite *controls_up_disabled;
	cSprite *controls_up_keyname;
	cSprite *controls_down;
	cSprite *controls_down_disabled;
	cSprite *controls_down_keyname;
	cSprite *controls_left;
	cSprite *controls_left_disabled;
	cSprite *controls_left_keyname;
	cSprite *controls_right;
	cSprite *controls_right_disabled;
	cSprite *controls_right_keyname;
	cSprite *controls_shoot;
	cSprite *controls_shoot_disabled;
	cSprite *controls_shoot_keyname;
	// joystick
	cSprite *controls_usejoystick;
	cSprite *controls_usejoystick_disabled;
	cSprite *controls_usejoystick_on;
	cSprite *controls_usejoystick_off;

	// Video Items
	cSprite *fullscreen;
	cSprite *video_resolution;
	cSprite *video_resolution_disabled;
	cSprite *video_bpp;
	cSprite *video_bpp_disabled;
	cSprite *video_fullscreen;
	cSprite *video_fullscreen_disabled;
	cSprite *video_resolution_val;
	cSprite *video_bpp_val;
	cSprite *video_fullscreen_val;
	cSprite *video_apply;
	cSprite *video_apply_disabled;

	// Audio Items
	cSprite *music;
	cSprite *sounds;
	cSprite *audio_music;
	cSprite *audio_music_disabled;
	cSprite *audio_sounds;
	cSprite *audio_sounds_disabled;
	cSprite *audio_music_on;
	cSprite *audio_music_off;
	cSprite *audio_sounds_on;
	cSprite *audio_sounds_off;

	// The back button
	cSprite *back1;
	cSprite *back1_disabled;

	// The ">" Pointer
	cSprite *text_pointer;

	// The SDL Logo
	cSprite *logo_sdl;
	// Version image in the Main Menu
	cSprite *SMC_Version;

private:
	// temporary Video info
	unsigned int vid_w;
	unsigned int vid_h;
	unsigned int vid_bpp;
	bool vid_fullscreen;

	// Savegame temporary images
	cSprite *savegame_temp[9];
	cSprite *savegame_temp_disabled[9];
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
