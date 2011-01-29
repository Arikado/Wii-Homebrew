/***************************************************************************
                rex.h  -  headers for the corresponding cpp file
                             -------------------
    copyright            : (C) 2004-2005 by FluXy
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 

#ifndef __REX_H__
#define __REX_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef enum
{
	REX_DEAD		= 0,
	REX_WALK		= 1,
	REX_MINI		= 2,

} Rex_state;

class cRex : public cEnemy
{
public:
	cRex( double x, double y );
	virtual ~cRex( void );

	virtual void Update( void );

	virtual void Die( void );
	virtual void DieStep( void );

	virtual void PlayerCollision( ObjectDirection cdirection );
	virtual void EnemyCollision( ObjectDirection cdirection );

	// The rex state
	Rex_state rex_state;

	// The speed
	double speed;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
