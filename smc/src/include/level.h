/***************************************************************************
                level.h  -  header for the corresponding cpp file
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

#ifndef __LEVEL_H__
#define __LEVEL_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// Background Image Type definitions
typedef enum 
{
	BG_IMG_NONE = 0,		// no background image
	BG_IMG_LEFTRIGHT = 1,	// only to the horizontal
	BG_IMG_ALL = 2,			// into all directions
	BG_IMG_DOUBLE = 3,		// 2 images
} BackgroundImageType;

// Background Gradient Type definitions
typedef enum 
{
	BG_GRADIENT_NONE = 0,	// nothing
	BG_GRADIENT_VER = 1,	// Gradient Vertical
	BG_GRADIENT_HOR = 2,	// Gradient Horizontal
} BackgroundGradientType;

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cBackground
{
public:
	cBackground( void );
	~cBackground( void );

	// Sets the type of Background
	void Set_image_type( BackgroundImageType ntype );
	void Set_gradient_type( BackgroundGradientType ntype );

	// Sets the background color
	void Set_color_1( const Color &color );
	void Set_color_2( const Color &color );

	// Sets the Background images
	void Set_images( string nimg_file_1, string nimg_file_2 = "" );

	void Draw( SDL_Surface *target );
	void DrawGradient( SDL_Surface *target );

	// The types
	BackgroundImageType img_type;
	BackgroundGradientType gradient_type;

	// The image filenames
	string img_file_1, img_file_2;

	// The images
	SDL_Surface *img_1, *img_2;

	// The rect
	SDL_Rect rect;

	// The colors
	Color color_1, color_2;

};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// Level drawing Type definitions
typedef enum 
{
	LVL_UPDATE		= 1,	// updates and draws
	LVL_DRAW		= 0,	// only draw
	LVL_DRAW_EDITOR = 2,	// only draw but in the leveleditor order
	LVL_DRAW_NO_BG	= 3,	// only draws and without background gradient and image
	LVL_DRAW_BG		= 4		// only draws the backround gradient and image
} LevelDrawType;

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cLevel
{
public:
	cLevel( void );
	~cLevel( void );

	// Creates a new level
	int New( string filename = "null" );
	// Loads a Level
	bool Load( string filename );
	// Unloads the current Level
	void Unload( void );
	// Saves the current Level
	void Save( void );

	// Draws all Level Objects ( Sprites, Enemies, Hud )
	// and updates them if update is true
	void Draw( LevelDrawType type = LVL_UPDATE );

	// Shows a big Text with the string and exits
	void Show_Error( string text );

	// Sets the Musicfile
	void Set_Musicfile( string filename );
	// Sets a new Levelfile name and automatically resaves the level
	void Set_Levelfile( string filename );

	// Returns the Levelfile
	string Get_Levelfile( bool with_dir = 1, bool with_end = 1 );
	// Returns true if a level is loaded
	bool is_Loaded( void );

	// Music filename
	string musicfile;
	bool valid_music;

	// Level file
	string levelfile;

	// Camera Modification settings
	int mod_Camera_up, mod_Camera_left, mod_Camera_right;

	// the Levelenine version from the loaded Level
	int levelengine_version;

	// The background
	cBackground *background;

	// Returns 0 if failed , 1 if Ingame save, 2 if OverWorld save
	int Load_Savegame( unsigned int Save_file );
	// saves the game with the given description
	bool Save_Savegame( unsigned int Save_file, string description );


private:
	// Parses the command parts
	bool Parse_Map( string command, int line );
	// Handles the command
	bool HandleMessage( string *parts, unsigned int count, unsigned int line );
	bool read_color_info(string *parts, unsigned int count, unsigned int line, Color &read_color );
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
