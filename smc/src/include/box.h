/***************************************************************************
                box.h  -  header for the corresponding cpp file
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

#ifndef __BOX_H__
#define __BOX_H__

#include "globals.h"

class cGoldBox : public cActiveSprite
{
public:
	cGoldBox( double x, double y );
	virtual ~cGoldBox( void );
	
	virtual void PlayerCollision( ObjectDirection direction );
	virtual void EnemyCollision( ObjectDirection direction );
	virtual void Update( void );
	
	int movedir; // moving direction when activated
	bool used; // already activated ?

	SDL_Surface *image2;
	cBouncingGoldPiece *bgp;
};

class cBonusBox : public cActiveSprite
{
public:
	cBonusBox( double x, double y,int stype = TYPE_BONUSBOX_MUSHROOM_FIRE );
	virtual ~cBonusBox( void );

	virtual void PlayerCollision( ObjectDirection direction );
	virtual void EnemyCollision( ObjectDirection direction );
	virtual void Update( void );

	int movedir; // moving direction when activated
	bool used; // already activated ?

	double counter;
	SDL_Surface *images[5];
	cPowerUp *powerup;
};

class cSpinBox : public cActiveSprite
{
public:
	cSpinBox( double x, double y );
	virtual ~cSpinBox( void );

	virtual void PlayerCollision( ObjectDirection direction );
	virtual void Update( void );

	bool move_up,used;

	SDL_Surface *images[4];
	
	double counter,spin_counter;
	bool spin;
};

#endif
