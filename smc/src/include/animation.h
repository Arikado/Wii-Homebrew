/***************************************************************************
			animation.h  -  header for the corresponding cpp file

			Version : 2.0

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

#include "globals.h"
#include "sprite.h"

#ifndef __ANIMATION_H__
#define __ANIMATION_H__

// The Animation definitions
typedef enum
{
	WHITE_BLINKING_POINTS,
	RED_FIRE_EXPLOSION,
} AnimationEffect;


typedef vector<SDL_Surface *> AnimationImageList;

// Base Animation class
class cAnimation : public cSprite 
{
public:
	cAnimation( double posx, double posy, double nfading_speed );
	~cAnimation( void );

	virtual void Update( void );

	AnimationImageList images;

	double fading_speed;
	double counter;
	AnimationEffect animtype;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef vector<SDL_Rect> AnimationRectList;

// White Blinking Points
class cAnimation_1 : public cAnimation
{
public:
	cAnimation_1( double posx, double posy, double nfading_speed = 1, unsigned int height = 40, unsigned int width = 20 );
	~cAnimation_1( void );

	virtual void Update( void );

	AnimationRectList rects;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef struct
{
	double posx;
	double posy;
	double speed_y;
	double speed_x;

	double counter;

} tAnimation_2_item;

typedef vector<tAnimation_2_item> Animation_2List;

// Red Fire Explosion
class cAnimation_2 : public cAnimation
{
public:
	cAnimation_2( double posx, double posy, double nfading_speed = 1, unsigned int power = 5 );
	~cAnimation_2( void );

	virtual void Update( void );

	Animation_2List Objects;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef vector<cAnimation*> AnimationList;

class cAnimationManager
{
public:
	cAnimationManager( void );
	~cAnimationManager( void );

	// Adds an Animation Object with the default settings
	void Add( double posx, double posy, double fading_speed = 1, AnimationEffect animtype = WHITE_BLINKING_POINTS );
	// Adds an Animation Object with the given settings
	void Add( cAnimation *AnimationObject );
	// Deletes an Animation Object
	void Delete( unsigned int num );

	// Updates the Objects
	void Update( void );
	
	// Deletes all Animation Objects
	void DeleteAll( void );

	// Returns the current size
	unsigned int Get_Size( void );

	AnimationList Objects;
};

#endif
