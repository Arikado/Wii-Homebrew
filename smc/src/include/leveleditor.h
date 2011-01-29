/***************************************************************************
     leveleditor.h  -  header for the corresponding cpp file

			Version : 1.3
                             -------------------

    copyright            : (C) 2004-2005 by FluXy
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 

#ifndef __LEVELEDITOR_H__
#define __LEVELEDITOR_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// The Main Menus
#define MENU_BOX 1
#define MENU_GROUND_GREEN_1 2
#define MENU_PLASTIC_1 15
#define MENU_JUNGLE_1 13
#define MENU_GHOST_1 14
#define MENU_HEDGES_GREEN 3
#define MENU_PIPES 4
#define MENU_HILLS 5
#define MENU_SIGNS 6
#define MENU_BLOCKS 7
#define MENU_CLOUDS 8
#define MENU_ENEMY 10
#define MENU_SPECIAL 11
#define MENU_EXTRA 12

#define MENU_FUNCTION 1000
#define MENU_SPACER 2000

// The Leveleditor types
#define EDITOR_MASSIVE 1001
#define EDITOR_PASSIVE 1002
#define EDITOR_HALFMASSIVE 1003
#define EDITOR_ENEMY 1004

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

struct Menu_Main_Object
{
	// Description
	string name;
	// number
	unsigned int CountId;
	// The default menu id
	unsigned int Item_Menu_Id;
	/* 0 = default
	 * 1 = hovered
	 * 2 = active
	 */
	unsigned int state;
	/* if the menu is a function
	 * this function will be called
	*/ 
	void ( *pfunction )( void );
	
	SDL_Surface *def_img;
	SDL_Surface *hover_img;
	SDL_Surface *shadow_img;
	
	// The collision rect
	SDL_Rect ColRect;

	// The color
	SDL_Color color;

	// The current window position
	int cur_posy;

	// The spacer height
	int spacer_height;
};

struct Menu_Item_Object
{
	SDL_Surface *preview_img;

	SDL_Surface *name_img;
	SDL_Surface *name_img_shadow;
	
	SDL_Surface *size_img;
	SDL_Surface *size_img_shadow;

	// Description
	string name;
	// The image path
	string path;

	// The Sprite
	cSprite *Sprite_type;

	unsigned int CountId;

	// The collision rect
	SDL_Rect ColRect;

	// visible on screen
	bool visible;
};

class cObjectScroller : public cSprite
{
public:
	cObjectScroller( void ) : cSprite( NULL, 0, 0 )
	{
		active = 0;
		image = 0;
		image_default = NULL;
		image_hover = NULL;
	}
	~cObjectScroller( void ) {};

	bool active;

	SDL_Surface *image_default;
	SDL_Surface *image_hover; // if active
};

// The Leveleditor
class cLevelEditor
{
public:
	cLevelEditor( void );
	~cLevelEditor( void );

	// Loads the default Main Menu
	void Load_Default_Menu( void );
	// Unloads the Main Menu
	void Unload_Main_Menu( void );
	
	// Adds an Main Menu Entry
	void Add_Main_Object( string name, unsigned int Item_Menu_link, void ( *nfunction )( void ), Uint8 def_Color_red = 0, 
		Uint8 def_Color_green = 0, Uint8 def_Color_blue = 0 );

	// Gets an Item Object
	Menu_Main_Object *Get_Main_Object( unsigned int nId );

	// Sets the Selectable Objects Position
	void Set_Main_Objects_Pos( void );
	// Set the Main Menu active Object
	void Set_Main_Active( unsigned int object_id );
	
	// Loads an defined Menu
	void Load_Item_Menu( unsigned int menu_id );
	// Unloads the Menu
	void Unload_Item_Menu( void );

	// Draws the Leveleditor Menu
	void Draw( SDL_Surface *target );

	/* Adds an Object to the Item list
	 *	use no_basepath if the image is in an other directory
	 *	than the given basepath directory
	 */
	void Add_Item_Object( cSprite *nSprite_type, string nName = "", SDL_Surface *image = NULL );
	// Gets an Item Object
	Menu_Item_Object *Get_Item_Object( unsigned int nId );
	// Sets the Selectable Objects Position
	void Set_Item_Objects_Pos( void );
	
	// switches the current state of the MouseObject
	void Switch_ObjectState( void );

	// Main Window Position
	SDL_Rect wMain;
	// Item Window Position	
	SDL_Rect wItem;

	// The Item Object Scroller
	cObjectScroller *Item_scroller_left, *Item_scroller_right;

	// The Vertical Scroll Position of the Item Window	
	unsigned int Item_pos;

	// The Horizontal Scroll Position of the Item Objects
	double Item_scoll;

	// The Object Counter	
	unsigned int wItem_Count, wMenu_Count;

	// The Timer until the Menu will be minimized
	double wMain_timer, wItem_timer;
	// The size if the Menu ( for animation )
	double wMain_open, wItem_open;

	// The current y main window position
	int main_cur_posy;
private:
	// The Objects in the Menu
	vector<Menu_Item_Object> wItem_Objects;
	vector<Menu_Main_Object> wMenu_Objects;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// ### The internal Leveleditor Menu functions ###

void LE_Settings( void );
void LE_New( void );
void LE_Load( void );
void LE_Save( void );
void LE_Clear( void );
void LE_Exit( void );
void LE_Enter_Overworld( void );

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
