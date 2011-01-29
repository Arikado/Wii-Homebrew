/***************************************************************************
           goldpiece.h  -  header for the corresponding cpp file
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

#ifndef __GOLDPIECE_H__
#define __GOLDPIECE_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cGoldPiece : public cActiveSprite
{
public:
	cGoldPiece( double x, double y );
	virtual ~cGoldPiece( void );
	
	virtual void Update( void );
	
	double counter; // The Goldpiece rotating calculation

	SDL_Surface *images[6];
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cBouncingGoldPiece : public cGoldPiece 
{
public:
	cBouncingGoldPiece( double x, double y );
	virtual ~cBouncingGoldPiece( void );
	
	virtual void Update( void );
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
