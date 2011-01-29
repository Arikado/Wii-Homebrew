/***************************************************************************
                player.h  -  header for the corresponding cpp file
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

#ifndef __PLAYER_H__
#define __PLAYER_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// ### - Maryo type states
typedef enum
{
	// normal
	MARYO_DEAD = 0,
	MARYO_SMALL = 1,
	MARYO_BIG = 2,
	MARYO_FIRE = 3,
	MARYO_FEATHER = 4,

	// todo : with dog
	MARYO_DOG_SMALL = 21,

} Maryo_type;


// The Fireball Effect type definitions
typedef enum
{
	FIREBALL_DEFAULT,
	FIREBALL_EXPLOSION,

} FireballEffect;

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef vector<ImageItem> ImageList;
typedef vector<SDL_Surface*> FireballImageList;

// cFireball class
class cFireball : public cSprite
{
public:
	cFireball( double x, double y, double velocity_x, double velocity_y = 0 );
	virtual ~cFireball( void );

	// Sets the direction angle and speed
	void SetDirection( double angle, double speed );

	virtual void Update( void );

	// The fireball images
	FireballImageList images;

	// The fireball got destroyed
	bool destroy;
	// used for the rotation animation
	double counter;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef vector<cFireball*> FireballList;

// The Player class
class cPlayer : public cObjectSprite
{
public:
	cPlayer( double x, double y );
	virtual ~cPlayer( void );

	// Lets the Player hold in
	void Hold( void );

	// Lets the Player walk in the current direction
	void Walk( double velwalk, double maxvel, double velwrongway );
	// Updates the walking
	void Update_walking( void );
	// Updates the staying
	void Update_staying( void );
	// Updates the flying
	void Update_flying( void );
	// Updates the falling
	void Update_falling();
	// Lets the Player duck
	void Start_ducking( void );
	// Stops the ducking
	void Stop_ducking( void );
	// Updates the ducking
	void Update_ducking( void );
	// Starts climbing
	void Start_climbing( void );
	// Updates the climbing
	void Update_climbing( void );
	// Set up the upkeytime for better jumping detection
	void Start_jump_keytime( void );
	// Starts a jump with the given values
	void Start_jump( double power = 17.0, double accel_up = 4.0, double vel_deaccel = 0.06 );
	// Updates the jump
	void Update_jump( void );

	// Updates the player
	void Update( void );
	// Updates the Camera
	void Update_Camera( bool init = 0 );

	// Draws the current Maryo
	void Draw( void );
	// Draws the player with the given image number
	void Draw_Player( unsigned int imgnr );
	// Draws a animation based on the given item
	void Draw_Animation( unsigned int item_type );
	// Returns the current image number without the direction modifier
	unsigned int Get_Image( void );

	// Loads the images depending on maryo_type
	void LoadImages( bool preload = 0 );
	
	// Dying animation
	void Die( void );

	/* Sets the best position to advance in size
	 * if only_check is set no position changes will be made
	*/
	bool ChangeSize( double x, double y, bool only_check = 0 );

	/*	The Player gets the given Item.
	 *	if force is true the player will use the item immediality
	 *	and it will not be placed in the Itembox
	 */
	void Get_Item( unsigned int item_type, bool force = 0 );
	
	// Adds an Fireball
	void Fireball_add( FireballEffect firetype = FIREBALL_DEFAULT );
	// Destroys all Fireballs
	void Fireball_clear( void );
	
	// Resets the complete game state
	void ResetSave( void );
	// resets only maryo's state
	void Reset( void );

	// Exits the level and walks to the next Overwold waypoint
	void GotoNextLevel( void );
	
	/*	Maryos current type
	 *  look at the definitions
	 */
	Maryo_type maryo_type; 

	// true if player debugging is active	
	bool debugmode;

	// The time maryo gets invincible
	double invincible;
	// The invincible drawing modifier
	double invincible_mod; 

	// for maryo's walking animation
	double walk_count;
	// The lives left
	int lives;

	// Jumping keytime
	double UpKeytime;
	// Enemy jump activator
	bool start_enemyjump;
	// Acceleration if Up key is pressed
	double jump_accel_up; 
	// Vely De Acceleration use 0.05 - 0.08.
	double jump_vel_deaccel; 
	/// the next jump power
	double jump_power;

	// if maryo is ducked
	bool ducked;
	// the current goldpieces collected
	unsigned int goldpieces;
	// the current points collected
	long points;

	// Maryo's Fireballs
	FireballList fireballs; 
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#endif
