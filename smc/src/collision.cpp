/***************************************************************************
    collison.cpp  -  internal collision functions
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

#include "include/globals.h"


bool CollideBoundingBox( SDL_Surface *a, int ax, int ay, SDL_Surface *b, int bx, int by )
{
	if( bx + b->w <= ax )	return 0;	// just checking if their
	if( bx >= ax + a->w )	return 0;	// bounding boxes even touch

	if( by + b->h <= ay )	return 0;
	if( by >= ay + a->h )	return 0;

	return 1;				//bounding boxes intersect
}

bool CollideBoundingBox( SDL_Rect *a , SDL_Rect *b )
{
	if( b->x + b->w <= a->x )	return 0;	//just checking if their
	if( b->x >= a->x + a->w )	return 0;	//bounding boxes even touch

	if( b->y + b->h <= a->y )	return 0;
	if( b->y >= a->y + a->h )	return 0;

	return 1;				//bounding boxes intersect
}

bool CollideCompleteBoundingBox( SDL_Rect *a, SDL_Rect *b )
{
	if( a->x <= b->x )
	{
		return 0;
	}
	if( a->x + a->w >= b->x + b->w )
	{
		return 0;
	}
	if( a->y <= b->y )
	{
		return 0;
	}
	if( a->y + a->h >= b->y + b->h )
	{
		return 0;
	}

	return 1;
}

// from SDL_collide ( Copyright (C) 2005 Amir Taaki )
bool CollideBoundingCircle( int x1, int y1, int r1, int x2, int y2, int r2, int offset )
{
	int xdiff = x2 - x1;	// x plane difference
	int ydiff = y2 - y1;	// y plane difference
	
	/* distance between the circles centres squared */
	int dcentre_sq = ( ydiff * ydiff ) + ( xdiff * xdiff );
	
	/* calculate sum of radiuses squared */
	int r_sum_sq = r1 + r2;	// square on seperate line, so
	r_sum_sq *= r_sum_sq;	// dont recompute r1 + r2

	return ( dcentre_sq - r_sum_sq <= ( offset * offset ) );
}

bool CollideBoundingCircle( SDL_Surface *surface1, SDL_Rect *a, SDL_Surface *surface2, SDL_Rect *b, int offset )
{
	return CollideBoundingCircle( surface1, a->x, a->y, surface2, b->x, b->y, offset );
}

// from SDL_collide ( Copyright (C) 2005 Amir Taaki )
bool CollideBoundingCircle( SDL_Surface *a, int x1, int y1, SDL_Surface *b, int x2, int y2, int offset )
{
	/* if radius is not specified
	we approximate them using SDL_Surface's
	width and height average and divide by 2*/
	int r1 = ( a->w + a->h ) / 4;	// same as / 2) / 2;
	int r2 = ( b->w + b->h ) / 4;

	x1 += a->w / 2;		// offset x and y
	y1 += a->h / 2;		// co-ordinates into
				// centre of image
	x2 += b->w / 2;
	y2 += b->h / 2;

	return CollideBoundingCircle( x1, y1, r1, x2, y2, r2, offset );
}
