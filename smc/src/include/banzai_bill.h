/***************************************************************************
              banzai_bill.h  -  headers for the corresponding cpp file
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

#ifndef __BANZAI_BILL_H__
#define __BANZAI_BILL_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

/*	A giant, slow-moving bullet
	Needs more Description.
 */
class cbanzai_bill : public cEnemy 
{
public:
	cbanzai_bill( double x, double y, ObjectDirection fdirection = DIR_LEFT );
	virtual ~cbanzai_bill( void );

	virtual void Die( void );
	virtual void DieStep( void );
	virtual void Update( void );

	virtual void PlayerCollision( ObjectDirection cdirection );
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
