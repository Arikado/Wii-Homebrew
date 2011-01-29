/***************************************************************************
                goomba.h  -  headers for the corresponding cpp file
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

#ifndef __GOOMBA_H__
#define __GOOMBA_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cGoomba : public cEnemy 
{
/*	Goomba
 * Also Known As: "Shoe stain", "Brown lump with eyes", "The goomb-man"
 * Looks like: A weird brown trapezoid (or circle) with eyes and feet
 * Associated with: His cousins, which wave wings, are very small, are trapped in bubbles, etc.
 * Kill it by: Just looking at a goomba is known to kill it. Otherwise, jump, fireball, 
 * tail, cape, hit from under, punch, kick, ground pound, watermelon seed, etc.
 * Avoid it by: Uhhh, jump.
 * Secret attacks: Goomba's lull you into a false sense of security so that you will
 * forget to do anything and just stupidly run into them. Don't fall for it! Take them very seriously! Pay attention!
 */

public:
	/* colors
	 * 0 = Brown
	 * 1 = Blue
	 */
	cGoomba( double x, double y, int col = 0 );
	virtual ~cGoomba();

	virtual void Die( void );
	virtual void DieStep( void );
	virtual void Update( void );
	virtual void PlayerCollision( ObjectDirection cdirection );
	virtual void EnemyCollision( ObjectDirection cdirection );

	unsigned int color;
	unsigned int anispeed; // Animation Speed
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
