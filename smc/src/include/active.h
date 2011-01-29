/***************************************************************************
			active.h  -  header for the corresponding cpp file
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

#include "globals.h"

#ifndef __ACTIVE_H__
#define __ACTIVE_H__

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cActiveSprite : public cSprite
{
public:
	cActiveSprite( double x, double y );
	virtual ~cActiveSprite( void );

	virtual void PlayerCollision( ObjectDirection direction );
	virtual void EnemyCollision( ObjectDirection direction );
	virtual void BoxCollision( ObjectDirection direction, SDL_Rect *r2 );

	virtual void Update( void );
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cEnemyStopper : public cSprite
{
public:
	cEnemyStopper( double x, double y );
	virtual ~cEnemyStopper( void );
	
	virtual void Draw( SDL_Surface *target );
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
