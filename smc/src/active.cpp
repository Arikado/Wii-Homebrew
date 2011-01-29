/***************************************************************************
           active.cpp  -  global base sprite class
                             -------------------
    copyright            :	(C) 2003-2005 by FluXy
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 

#include "include/globals.h"
#include "include/SDL_gfxPrimitives.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cActiveSprite :: cActiveSprite( double x, double y ) : cSprite( NULL, x, y )
{
	type = TYPE_ACTIVESPRITE;
	massive = 1;
	array = ARRAY_ACTIVE;
	SetPos( x, y );
}

cActiveSprite :: ~cActiveSprite( void )
{
	// empty
}

void cActiveSprite :: PlayerCollision( ObjectDirection cdirection )
{
	// virtual function
}

void cActiveSprite :: EnemyCollision( ObjectDirection cdirection )
{
	// virtual function
}

void cActiveSprite :: BoxCollision( ObjectDirection cdirection, SDL_Rect *r2 )
{
	// virtual function
}

void cActiveSprite :: Update( void )
{
	// virtual function
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cEnemyStopper :: cEnemyStopper( double x, double y ) : cSprite( NULL, x, y )
{
	type = TYPE_ENEMYSTOPPER;
	array = ARRAY_ACTIVE;
	massive = 0;

	rect.w = 15;
	rect.h = 15;
	SetPos( x, y );
}

cEnemyStopper :: ~cEnemyStopper( void )
{
	// nothing
}

void cEnemyStopper :: Draw( SDL_Surface *target )
{
	if( !Leveleditor_Mode )
	{
		rect.x = (Sint16)startposx;
		rect.y = (Sint16)startposy;
		
		return;
	}
	
	rect.x = (Sint16)startposx;
	rect.y = (Sint16)startposy;

	if( !Visible_onScreen() ) 
	{
		return;
	}
	
	SDL_Rect r = rect;
	r.x -= (Sint16)cameraposx;
	r.y -= (Sint16)cameraposy;
	r.w = rect.w;
	r.h = rect.h;

	boxRGBA( target, r.x, r.y, r.x + r.w, r.y + r.h, 0, 0, 255, 126 ); 
}