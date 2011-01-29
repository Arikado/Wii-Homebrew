/***************************************************************************
                hud.h  -  header for the corresponding cpp file
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

#ifndef __STATUSTEXT_H__
#define __STATUSTEXT_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef struct
{
	int active;
	SDL_Surface *surface;
	SDL_Surface *surface_shadow;
	double x, y;
	double vely;
	
} tPointinfo;

typedef vector<cSprite*> HudSpriteList;

class cHudManager
{
public:
	cHudManager( void );
	~cHudManager( void );

	// Loads the complete HUD
	void Load( void );
	// Unloads the complete HUD
	void Unload( void );

	// Adds an HUD Object
	void AddObject( cSprite *obj );

	// Updates and reloads the Text Displays
	void UpdateText( void );
	// Updates the Objects
	void Update( void );

	// Returns the current size
	unsigned int Get_Size( void );

	bool loaded;
	HudSpriteList Objects;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cMenuBackground : public cActiveSprite
{
public:
	cMenuBackground( double x, double y );
	~cMenuBackground( void );

	virtual void Draw( SDL_Surface *target );
	virtual void Update( void );	

	SDL_Surface *mario_head, *goldpiece;
	SDL_Rect rect_mario_head, rect_goldpiece;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cStatusText : public cSprite
{
public:
	cStatusText( double x, double y );
	~cStatusText( void );
	
	virtual void Draw( SDL_Surface *target );
	virtual void Update( void );
	
	SDL_Surface *text_shadow;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cPlayerPoints : public cStatusText
{
public:
	cPlayerPoints( double x, double y );
	~cPlayerPoints( void );

	void SetPoints( int points );
	void AddPoints( int points, int x = 0, int y = 0 );

	virtual void Update( void );

	char text[70];

	tPointinfo Pointinfo[50];
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cGoldDisplay : public cStatusText
{
public:
	cGoldDisplay( double x, double y );
	~cGoldDisplay( void );

	void SetGold( int gold );
	void AddGold( int gold );

	virtual void Update(void);

	char text[50];
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cLiveDisplay : public cStatusText
{
public:
	cLiveDisplay( double x, double y );
	~cLiveDisplay( void );

	void SetLives( int lives );
	void AddLives( int lives );

	virtual void Update( void );

	char text[50];
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cTimeDisplay : public cStatusText
{
public:
	cTimeDisplay( double x, double y );
	~cTimeDisplay( void );

	virtual void Update( void );

	char text[50],text_old[50];
	double counter;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cItemBox : public cStatusText
{
public:
	cItemBox( double x, double y );
	~cItemBox( void );

	virtual void Update( void );

	// Sets the Item
	void Get_Item( unsigned int Item_type );
	// Activates the Item in the box
	void Request_Item( void );
	// if the item is active and moving it get put back in the back
	void Push_back( void );
	
	void Reset( void );

	/* The current Item
	 * uses the Item defines
	 */
	unsigned int Item_id;

	double Item_counter;
	bool Item_counter_mod;

	cSprite *Item;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cDebugDisplay : public cStatusText
{
public:
	cDebugDisplay( double x, double y );
	~cDebugDisplay( void );

	virtual void Update( void );
	void GameDebugDraw( void );
	
	char text[500], text_old[500];	// Default Debug Display text
	char lvl_text_old[256];			// Game Debug Level text

	// # Game Debug Object Counts
	unsigned int passcount;			// Passive
	unsigned int masscount;			// Massive
	unsigned int enemcount;			// Enemy
	unsigned int activcount;		// Active

	unsigned int achmasscount;		// Active : HalfMassive
	unsigned int accloudcount;		// Active : Cloud
	unsigned int acgoldboxcount;	// Active : Goldbox
	unsigned int acbonusboxcount;	// Active : Bonusbox
	unsigned int acothercount,acothercount_old;	// Active : Other

	// # Game Debug Text images
	SDL_Surface *dlvltext, *dlvltext_shadow;		// Level

	SDL_Surface *dpasstext, *dpasstext_shadow;	// Passive
	SDL_Surface *dmasstext, *dmasstext_shadow;	// Massive

	SDL_Surface *denemtext, *denemtext_shadow;				// Enemy
	SDL_Surface *dactivtext, *dactivtext_shadow;				// Active	
	SDL_Surface *dachmasstext, *dachmasstext_shadow;			// Active : HalfMassive
	SDL_Surface *daccloudtext, *daccloudtext_shadow;			// Active : Cloud
	SDL_Surface *dacgoldboxtext, *dacgoldboxtext_shadow;		// Active : Goldbox
	SDL_Surface *dacbonusboxtext, *dacbonusboxtext_shadow;	// Active : Bonusbox
	SDL_Surface *dacothertext, *dacothertext_shadow;			// Active : Other

	double counter;		// Default Debug Display Counter
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
