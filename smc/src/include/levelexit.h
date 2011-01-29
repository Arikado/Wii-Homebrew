/***************************************************************************
                levelexit.h  -  header for the corresponding cpp file
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

#ifndef __LEVELEXIT_H__
#define __LEVELEXIT_H__

#include "globals.h"

/* *** *** *** *** *** *** *** ## Levelchange types ## *** *** *** *** *** *** *** *** *** *** */

typedef enum
{
	LVLCHANGE_BEAM		= 0,	// no animation ( for doors mostly )
	LVLCHANGE_WARP		= 1		// the player slowly moves into the object ( for pipes mostly )
} Levelchange_type;


/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
/* The Levelexit
 * if a filename is given the player changes the level directly
*/
class cLevelExit : public cActiveSprite
{
public:
	cLevelExit( double x, double y, Levelchange_type ntype = LVLCHANGE_BEAM, string nlevelname = "" );
	virtual ~cLevelExit( void );

	virtual void Update( void );
	virtual void Draw( SDL_Surface *target );

	// the Levelchange type
	Levelchange_type levelchange;
	// the levelchange level if not exit
	string levelname;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
