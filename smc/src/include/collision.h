/***************************************************************************
			collision.h  -  header for the corresponding cpp file
                         -------------------
    copyright            : (C) 2005 FluXy
						   (C) 2005 Amir Taaki
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include "globals.h"

#ifndef _COLLISION_H_
#define _COLLISION_H_

/*	
	Bounding box collision test 
	Checks if the first rect intersects with the second
*/
bool CollideBoundingBox( SDL_Surface *surface1, int ax, int ay, SDL_Surface *surface2, int bx, int by );

/*
	Bounding box collision test (SDL_Rect)
	Checks if the first rect intersects with the second
*/
bool CollideBoundingBox( SDL_Rect *a, SDL_Rect *b );

/*
	Bounding box collision test (SDL_Rect)
	Checks if the first rect intersects completely with the second
*/
bool CollideCompleteBoundingBox( SDL_Rect *a, SDL_Rect *b );

/*
	tests whether 2 circles intersect

	circle1 : centre (x1,y1) with radius r1
	circle2 : centre (x2,y2) with radius r2
	
	(allow distance between circles of offset)
*/

bool CollideBoundingCircle( int x1, int y1, int r1, int x2, int y2, int r2, int offset );

/*
	a circle intersection detection algorithm that will use
	the position of the centre of the surface as the centre of
	the circle and approximate the radius using the width and height
	of the surface (for example a rect of 4x6 would have r = 2.5).
*/
bool CollideBoundingCircle( SDL_Surface *surface1, SDL_Rect *a, SDL_Surface *surface2, SDL_Rect *b, int offset = 0 );
bool CollideBoundingCircle( SDL_Surface *a, int x1, int y1, SDL_Surface *b, int x2, int y2, int offset );

#endif
