/***************************************************************************
                powerup.h  -  header for the corresponding cpp file
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

#ifndef __POWERUP_H__
#define __POWERUP_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cPowerUp : public cActiveSprite
{
public:
	cPowerUp( double x, double y );
	virtual ~cPowerUp( void );
	
	virtual void Update( void );

	virtual void PlayerCollision( ObjectDirection cdirection );
	virtual void BoxCollision( ObjectDirection direction, SDL_Rect *r2 );	

	double counter;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cMushroom : public cPowerUp
{
public:
	cMushroom( double x, double y, int ntype = TYPE_MUSHROOM_DEFAULT );
	virtual ~cMushroom( void );

	virtual void Update( void );	

	virtual void BoxCollision( ObjectDirection cdirection, SDL_Rect *r2 );
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cFirePlant : public cPowerUp
{
public:
	cFirePlant( double x, double y );
	virtual ~cFirePlant( void );

	virtual void Update( void );

	SDL_Surface* images[2];
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cMoon : public cPowerUp
{
public:
	cMoon( double x, double y );
	virtual ~cMoon( void );

	virtual void Update( void );

	SDL_Surface* images[3];
};

#endif
