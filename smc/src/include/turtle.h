/***************************************************************************
                turtle.h  -  headers for the corresponding cpp file
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

#ifndef __TURTLE_H__
#define __TURTLE_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef enum
{
	TURTLE_DEAD		= 0,
	TURTLE_WALK		= 1,
	TURTLE_STAND	= 2,
	TURTLE_SHELL	= 3,
	TURTLE_FLY		= 4, // todo

} Turtle_state;

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cTurtle : public cEnemy
{
public:
	cTurtle( double x, double y, unsigned int color = 1 );
	virtual ~cTurtle( void );

	virtual void Update( void );

	virtual void Die( void );
	virtual void DieStep( void );

	virtual void PlayerCollision( ObjectDirection cdirection );
	virtual void EnemyCollision( ObjectDirection cdirection );

	// The turtle state
	Turtle_state turtle_state;

	// The speed
	double speed;

	/* If the player kicked the shell
	 * this counter starts
	 * if this counter is higher than 0
	 * mario cannot get killed by the shell
	 */
	double playercounter;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
