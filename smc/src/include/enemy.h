/***************************************************************************
                enemy.h  -  headers for the corresponding cpp file
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

#ifndef __ENEMY_H__
#define __ENEMY_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cEnemy : public cObjectSprite
{
public:
	cEnemy( double x, double y ); 
	virtual ~cEnemy( void );

	virtual void DieStep( void );

	// true if dead :O
	bool dead;

	// counter for the walking animation
	double walk_count;
	// default counter for animations
	double counter;
};

#endif
