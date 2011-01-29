/***************************************************************************
                sprite.h  -  header for the corresponding cpp file
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

#ifndef __SPRITE_H__
#define __SPRITE_H__

#include "globals.h"

/* *** *** *** *** *** *** *** ## Movement states ## *** *** *** *** *** *** *** *** *** *** */

typedef enum
{
	STAY	= 0,
	WALK	= 1,
	RUN		= 2,
	FALL	= 3,
	FLY		= 4,
	JUMP	= 5,
	CLIMB	= 6
} Moving_state;

/* *** *** *** *** *** *** *** ## Sprite Types ## *** *** *** *** *** *** *** *** *** *** */

// global
#define TYPE_SPRITE 1
#define TYPE_ENEMY 2
#define TYPE_PLAYER 3
#define TYPE_ACTIVESPRITE 4
#define TYPE_HALFMASSIVE 5

// Level objects
#define TYPE_LEVELEXIT 18
#define TYPE_ENEMYSTOPPER 20
#define TYPE_BONUSBOX_MUSHROOM_FIRE 26
#define TYPE_BONUSBOX_LIVE 31
#define TYPE_GOLDBOX 21
#define TYPE_SPINBOX 27

// other
#define TYPE_FIREBALL 28
#define TYPE_CLOUD 7

// Enemy
#define TYPE_GOOMBA 10
#define TYPE_TURTLE 19
#define TYPE_JPIRANHA 29
#define TYPE_BANZAI_BILL 30
#define TYPE_REX 36

// Items
#define TYPE_POWERUP 23
#define TYPE_MUSHROOM_DEFAULT 25
#define TYPE_MUSHROOM_LIVE_1 35
#define TYPE_FIREPLANT 24
#define TYPE_BOUNCINGGOLDPIECE 22
#define TYPE_GOLDPIECE 8
#define TYPE_MOON 37

// Hud
#define TYPE_STATUSTEXT 9
#define TYPE_POINTDISPLAY 12
#define TYPE_GAMETIMEDISPLAY 13
#define TYPE_DEBUGDISPLAY 14
#define TYPE_LIFEDISPLAY 15
#define TYPE_GOLDDISPLAY 16
#define TYPE_MENUBG 17
#define TYPE_ITEMBOXDISPLAY 32

// ## Array ##
#define ARRAY_MASSIVE 1
#define ARRAY_PASSIVE 2
#define ARRAY_ENEMY 3
#define ARRAY_ACTIVE 4
#define ARRAY_HUD 5
#define ARRAY_ANIM 6

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cSprite
{
public:
	cSprite( SDL_Surface *new_image, double x, double y );
	virtual ~cSprite( void );

	void SetImage( SDL_Surface *new_image, bool new_Startimage = 0 );
	void SetPos( double x, double y );

	// returns the Collision direction if not forced
	ObjectDirection Move( double move_x, double move_y, bool real = 0, bool force = 0 );
	void AddVel( double move_x, double move_y, bool real = 0 );
	
	virtual void Draw( SDL_Surface *target );

	// Checks if the Sprite is Visible on the Screen
	bool Visible_onScreen( void ); 

	// Checks if the given Position is valid
	bool PosValid( int x, int y, int w = 0, int h = 0, bool only_check = 0, bool Debug_Draw = 0 );
	// Checks if the Object is onground and sets the state to onground
	void CheckOnground( void );
	// Corrects the position if the object got stuck
	void Update_antistuck( void );

	// Default Collision Routine
	ObjectDirection CollideMove( void );
	// Clears the Collision informations
	void ClearCollisions( void );

	/* Sets the collision direction into col_dir
	 * r1 is the rect of this sprite
	 * r2 is the colliding rect
	*/
	void Set_Collision_dir( SDL_Rect *r1, SDL_Rect *r2 );
	// Returns the colliding rect
	SDL_Rect Get_Collision_rect( void );

	virtual void Update( void );
	
	virtual void PlayerCollision( ObjectDirection cdirection );
	virtual void EnemyCollision( ObjectDirection cdirection );
	virtual void BoxCollision( ObjectDirection cdirection, SDL_Rect *r2 );

	virtual void Die( void );

	SDL_Surface *image;
	SDL_Surface *StartImage;
	SDL_Rect rect;

	double velx, vely, posx, posy, startposx, startposy;

	// the sprite type
	unsigned int type;
	
	/* Sprite Array type
	 * 1 = ARRAY_MASSIVE
	 * 2 = ARRAY_PASSIVE
	 * 3 = ARRAY_ENEMY
	 * 4 = ARRAY_ACTIVE
	 * 5 = ARRAY_HUD
	 * 6 = ARRAY_ANIM
	 */
	unsigned int array;

	// The current direction
	ObjectDirection direction;

	// 0 : falling , 1 : onground massive , 2 : onground halfmassive	
	int onGround;

	// Collision direction	
	ObjectDirection col_dir;
	// The collision directions
	bool col_top, col_bottom, col_right, col_left;
	/*	The Colliding Object type
	 * 1 : Massive
	 * 2 : Active
	 * 3 : Enemy
	 * 4 : Player
	 * 5 : Passive
	 * 6 : Leveleditor Item Object
	 * 7 : Leveleditor Main Menu Object
	 * 8 : Leveleditor Item Object Scroller
	 * 10 : A Dialog Box
	 */	
	unsigned int iCollisionType;
	// The Colliding Object number	
	int iCollisionNumber;
	// if true the engine will use circle collision testing
	bool circle_col_test;

	// is it halfmassive
	bool halfmassive;
	// is it massive
	bool massive;
	// is it a climbable object
	bool climbable;

	// is it visible
	bool visible;
	// if this Object got spawned it shouldn't be saved
	bool spawned;

	/* the different states
	 * look at the definitions
	 */
	Moving_state state;

	// the unique random ID
	unsigned int ID;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef vector<SDL_Surface*> ObjectImageList;

class cObjectSprite : public cSprite
{
public:
	cObjectSprite( double x, double y );
	virtual ~cObjectSprite( void );
	
	void SetImage( unsigned int num );

	// Current image array number for drawing
	int curr_img;
	// Image list
	ObjectImageList images;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
