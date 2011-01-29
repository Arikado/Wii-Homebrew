/***************************************************************************
              jpiranha.h  -  headers for the corresponding cpp file
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

#ifndef __JPIRANHA_H__
#define __JPIRANHA_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

/* Jumping Piranha
 * No Description.
*/
class cjPiranha : public cEnemy 
{
public:
	cjPiranha( double x, double y, ObjectDirection dir = DIR_UP, unsigned int nmax_distance = 200 );
	virtual ~cjPiranha();

	virtual void Die( void );
	virtual void DieStep( void );
	virtual void Update( void );

	virtual void PlayerCollision( ObjectDirection cdirection );
	
	// internal position calculation for independant direction handling
	double startpos, pos, vel;
	// maximum distance from the startpos
	unsigned int max_distance;
	// time to wait until next approach
	double wait_time;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
