/***************************************************************************
                overworld.h  -  header for the corresponding cpp file

				Version : 1.3

                             -------------------
    copyright            : (C) 2003-2005 by FluXy
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 

#ifndef __OVERWORLD_H__
#define __OVERWORLD_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// Maximum Waypoints per Overworld map
#define MAX_WAYPOINTS 200
#define MAX_OVERWORLDS 32

// Waypoint types
typedef enum
{
	WAYPOINT_NORMAL = 1,
	WAYPOINT_SPECIAL = 2, // Bonus Map
	WAYPOINT_SECRET = 3, // Extra Path if maryo found the key

} Waypoint_type;

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// The Waypoint class
class cWaypoint
{
public:
	cWaypoint( void );
	~cWaypoint( void );
	
	// initializes the images
	void Init( void );
	// Draws the Waypoint
	void Draw( void );

	// Returns the Levelfile
	string Get_Levelfile( bool with_dir = 1, bool with_end = 1 );

	SDL_Rect rect;

	/*back and forward direction
	 * 100 = First
	 * 101 = Last
	 */ 
	ObjectDirection direction_back, direction_forward;


	// white arrow
	SDL_Surface *arrow_white_l, *arrow_white_r, *arrow_white_u, *arrow_white_d;
	// blue arrow
	SDL_Surface *arrow_blue_l, *arrow_blue_r, *arrow_blue_u, *arrow_blue_d;
	// The waypoint image
	SDL_Surface *image;

	/* The Waypoint type
	 * look at the definitions
	*/
	Waypoint_type type;
	// The Levelname
	string levelname;

	// if Mario has the access to this waypoint
	bool access;

	// identifier
	unsigned int ID;

	// color for the glim effect
	double gcolor;
	// glim effect type switch
	bool glim;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// The Layer class
class cLayer
{
public:
	cLayer( void );
	~cLayer( void );

	void Load( string filename );

	Sint16 x, y;
	SDL_Surface *image;

	// Color definitions
	Color col_walk, col_blocked;
};

/* *** *** *** *** *** *** *** World Maryo *** *** *** *** *** *** *** *** *** *** */

typedef vector<SDL_Surface *> MaryoImageList;

class cWorld_Maryo : public cSprite
{
public:
	cWorld_Maryo( void );
	~cWorld_Maryo( void );

	// Loads the Images
	void LoadImages( void );
	// Unloads all Images
	void UnloadImages( void );

	// Draws Maryo
	void Draw( SDL_Surface *target );

	/* Checks how much Mary can walk into every direction
	 * and sets the size into the path directions
	*/
	void CheckPath( unsigned int csize = 25 );

	// Returns the foot pixel Position for Walking Checks
	void GetPosition( double *xpos, double *ypos );

	/* Automatically corrects Maryos position to the Layer walkable Area
	 * with the given size and the minimal distance to unwalkable area
	*/
	void Auto_correct( double size = 1.7, unsigned int min_distance = 5 );

	// Maryo images
	MaryoImageList images;

	// current state
	Maryo_type maryo_state;

	// Animation counter
	double anim_counter;
	// Animation Speed
	double anim_speed;
	// last image available for the animation
	unsigned int anim_max;

	// if Maryo touches a Waypoint use fixed walking
	bool fixed_walking;

	// the path detection valid size in pixels
	unsigned int path_up, path_down, path_left, path_right;
};

/* *** *** *** *** *** *** *** *** Overworld handler *** *** *** *** *** *** *** *** *** */

typedef struct
{
	unsigned int identifier;
	string filename;

} thandler_item;

typedef vector<thandler_item*> Overworld_handlerList;

class cOverworld_handler
{
public:
	cOverworld_handler( void );
	~cOverworld_handler( void );

	void Load( void );
	void Unload( void );

	Overworld_handlerList objects;

private:
	// Parses the command parts
	bool Parse( string command, int line );
	// Handles the command
	bool HandleMessage( string *parts, unsigned int count, unsigned int line );
};

/* *** *** *** *** *** *** *** *** OverWorld *** *** *** *** *** *** *** *** *** */


typedef vector<cSprite*> MapObjectList;

class cOverWorld
{
public:
	cOverWorld( void );
	~cOverWorld( void );

	 // Enters the Overworld
	void Enter( void );

	 // Loads an Overworld
	bool Load( unsigned int overworld );
	// Unloads the Overworld
	void Unload( void );
	// Todo : Loads a map from the current OverWorld
	void LoadMap( void );

	// Draws the Overworld
	void Draw( void );
	// Draws all Map Objects
	void DrawMapObjects( void );
	// Draw all Waypoints
	void DrawWaypoints( void );
	// Draws the HUD
	void DrawHUD( void );
	// Draws the Debug Stuff ( if Debugmode )
	void DrawDebug( void );

	// Updates the Overworld
	void Update( void );
	// Updates the Camera
	void UpdateCamera( void );
	// Updates Maryo
	void UpdateMaryo( void );

	// Sets the Maryo direction returns 0 if the next level is not accessable or not available
	bool SetMaryoDirection( ObjectDirection direction );
	// Sets Maryo's Position on the given Waypoint
	int SetMaryoWaypoint( int Waypoint );

	// Sets the current Map progress
	void SetProgress( unsigned int normal_level, unsigned int secret_level );

	// Checks if the rect collides with a waypoint returns -1 if no collisions
	int WaypointCollision( SDL_Rect *rect_2 );
	// Returns the given pixel position from the Layer as a color
	Color Get_LayerPixel( Sint16 x, Sint16 y );
	// Compares the pixel color on the Layer with the given color
	bool Compare_LayerPixel( Sint16 x, Sint16 y, Color color );

	// Enable the Next Level and walk into the forward direction ( ToDo : The Secret Way )
	int GotoNextLevel( bool Secretpath = 0 );

	// Settings
	int Nlevel; // The last Normal level Waypoint of the Map which the Player can access
	unsigned int Slevel; // Todo : Secret Waypoint
	
	unsigned int Map; // Current Overworld Map
	unsigned int last_Map; // The last Map of this OverWorld

	bool showlayer; // Draws the Layer if in Debugmode
	bool cameramode; // if User wants to scroll in the map
	
	// Waypoints
	cWaypoint *Waypoints[MAX_WAYPOINTS]; // Max WayPoints on the current map
	int Current_Waypoint; // The Current Waypoint of the Player
	int Waypointcount;    // The last Waypoint of the current Map
	
	// Current OverWorld
	int Current_OverWorld;
	// Overworld information handler
	cOverworld_handler *handler;

	// The Map Objects
	MapObjectList MapObjects;

	// The Current Color Layer for collision checking
	cLayer *Layer;
	// Maryo
	cWorld_Maryo *Maryo;
	// HUD
	cSprite *hud_level;

private:
	// Parses the command parts
	bool Parse( string command, int line );
	// Handles the command
	bool HandleMessage( string *parts, unsigned int count, unsigned int line );
	// Adds a Sprite Map Object
	void AddMapObject( cSprite *object );

	// Fixed walking into the Waypoint
	void WaypointWalk( void );
	// Maryo Walking
	void MaryoWalk( double xspeed, double yspeed );
 
	// Debug Texts
	SDL_Surface *debugimage;
	SDL_Surface *debugimage_shadow;
	SDL_Surface *debug_waypoint;
	SDL_Surface *debug_waypoint_shadow;
	SDL_Surface *debug_nlevel;
	SDL_Surface *debug_nlevel_shadow;
};

#endif
