/***************************************************************************
                cloud.h  -  header for the corresponding cpp file
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

#ifndef __CLOUD_H__
#define __CLOUD_H__

#include "globals.h"

class cCloud : public cActiveSprite
{
public:
	cCloud( double x, double y );
	~cCloud( void );
	
	virtual void Update( void );
	
	double counter;
	SDL_Surface *images[3];

	// if the cloud is currently moving
	bool moving;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
