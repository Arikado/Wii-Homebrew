/***************************************************************************
           savegame.h  -  Savegame Engine Header
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

#ifndef __SAVEGAME_H__
#define __SAVEGAME_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#define SAVEGAME_VERSION "2.1"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

struct Savegame
{
	string description;			// Level Description
	int version;				// Level Savegame Version
	string levelname;			// Level Name
	string timestamp;			// Time

	// Player Information
	unsigned int lives;
	unsigned int points;
	unsigned int goldpieces;
	unsigned int state;			// 1 = small, 2 = big, 3 = Fire ...
	unsigned int itembox_item;	// The Item in the Itembox
	int posx, posy;			// Position

	// OverWorld information
	unsigned int OW_save;			// is this an OverWorld save
	unsigned int OW_nlevel;			// accessed OverWorld normal levels
	unsigned int OW_slevel;			// accessed OverWorld secret levels
	unsigned int OW_curr_waypoint;	// Current Waypoint
	unsigned int OW_world;			// Current OverWorld
};


class cSavegame
{
public:
	cSavegame( void );
	~cSavegame( void );

	// Loads the Savegame
	Savegame Load( unsigned int Save_file );
	// Saves the Savegame
	int Save( unsigned int Save_file, Savegame Save_info );

	// Returns the Savegame Description
	string Get_Description( unsigned int Save_file, bool Only_Description = 0 );
	// Prints Savegame Debug information
	void Debug_Print( Savegame TSavegame );

	// Returns true if the Savegame is valid
	bool is_valid( unsigned int Save_file );

private:
	// Parses the command parts
	bool Parse_Map( string command, int line );
	// Handles the command
	bool HandleMessage( string *parts, unsigned int count, unsigned int line );

	Savegame loaded_save_info; // for Savegame loading
};
#endif
