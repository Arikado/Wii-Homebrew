/***************************************************************************
           sprite.cpp  -  global base sprite class
                             -------------------
    copyright            :	(C) 2003-2004 Artur Hallmann
							(C) 2003-2005 FluXy
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
#include "include/main.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cSprite :: cSprite( SDL_Surface *new_image, double x, double y )
{
	type = TYPE_SPRITE;
	array = ARRAY_MASSIVE;
	
	rect.x = (Sint16)x;
	rect.y = (Sint16)y;
	rect.w = 0;
	rect.h = 0;
	startposx = 0;
	startposy = 0;

	StartImage = NULL;
	image = NULL;
	
	if( new_image )
	{
		SetImage( new_image );
	}

	SetPos( x, y );

	massive = 1;
	halfmassive = 0;
	climbable = 0;
	visible = 1;
	spawned = 0;
	state = STAY;

	velx = 0;
	vely = 0;
	direction = DIR_NOTHING;
	onGround = 0;

	col_dir = DIR_NOTHING;
	col_top = 0;
	col_bottom = 0;
	col_right = 0;
	col_left = 0;
	iCollisionType = 0;
	iCollisionNumber = 0;
	circle_col_test = 0;

	ID = (unsigned int)rand() % ( 600000 ); // Unique Identifier
}

cSprite :: ~cSprite( void )
{
	image = NULL;
	StartImage = NULL;
}

void cSprite :: SetImage( SDL_Surface *new_image, bool new_Startimage )
{
	image = new_image;

	if( new_Startimage )
	{
		StartImage = new_image;
	}

	if( !new_image )
	{
		rect.w = 0;
		rect.h = 0;

		return;
	}

    rect.w = image->w;
	rect.h = image->h;
	
	if( !StartImage )
	{
		StartImage = image;
	}
}

void cSprite :: SetPos( double x, double y )
{
	posx = x;
	posy = y;

	if( startposx == 0 && startposy == 0 )
	{
		startposx = x;
		startposy = y;
	}
}

void cSprite :: Update( void )
{
	Draw( screen );
}

void cSprite :: PlayerCollision( ObjectDirection direction )
{
	// virtual function
}

void cSprite :: EnemyCollision( ObjectDirection direction )
{
	// virtual function
}

void cSprite :: BoxCollision( ObjectDirection direction, SDL_Rect *r2 )
{
	// virtual function
}

void cSprite :: Die( void )
{
	// virtual function
}

ObjectDirection cSprite :: Move( double move_x, double move_y, bool real, bool force )
{
	if( !real )
	{
		move_x *= Framerate.speedfactor;
		move_y *= Framerate.speedfactor;
	}

	if( !force )
	{
		ObjectDirection collision_dir = DIR_NOTHING;
		double posx_old = posx;
		double posy_old = posy;

		Uint16 cwidth = rect.w;
		Uint16 cheight = rect.h;

		if( cwidth == 0 )
		{
			return DIR_NOTHING;
		}

		if( cheight == 0 )
		{
			return DIR_NOTHING;
		}
		
		while( move_x != 0 || move_y != 0 )
		{
			if( move_x != 0 )
			{
				if( PosValid( (int)( posx + ( (move_x > 0) ? (cwidth) : (-cwidth) ) ), (int)posy, 0, 0, (cwidth == 1) ? (0) : (1) ) )
				{
					posx += ( (move_x > 0) ? (cwidth) : (-cwidth) );
					
					if( ( move_x > 0 && posx_old + move_x <= posx ) || ( move_x < 0 && posx_old + move_x >= posx ) )
					{
						posx = posx_old + move_x;
						move_x = 0;
					}
				}
				else
				{
					if( cwidth == 1 ) // final collision
					{
						if( collision_dir == DIR_NOTHING )
						{
							collision_dir = DIR_HORIZONTAL;	// Collision Left/Right
						}
						else
						{
							collision_dir = DIR_ALL;	// Collision Up/Down/Left/Right
						}
						
						move_x = 0;
					}
					else // set to pixel movement
					{
						cwidth = 1;
					}
				}
			}

			if( move_y != 0 )
			{
				if( PosValid( (int)posx, (int)( posy + ( ( move_y > 0 ) ? (cheight) : (-cheight) ) ), 0, 0, (cheight == 1) ? (0) : (1) ) )
				{
					posy += ( ( move_y > 0 ) ? (cheight) : (-cheight) );

					if( ( move_y > 0 && posy_old + move_y <= posy ) || ( move_y < 0 && posy_old + move_y >= posy ) )
					{
						posy = posy_old + move_y;
						move_y = 0;
					}
					
				}
				else
				{
					if( cheight == 1 ) // final collision
					{
						if( collision_dir == DIR_NOTHING ) 
						{
							collision_dir = DIR_VERTICAL;	// Collision Up/Down
						}
						else
						{
							collision_dir = DIR_ALL;	// Collision Up/Down/Left/Right
						}

						move_y = 0;
					}
					else // set to pixel movement
					{
						cheight = 1;
					}
				}
			}
		}

		return collision_dir;
	}
	else
	{
		posx += move_x;
		posy += move_y;
	}

	return DIR_NOTHING;
}

void cSprite :: AddVel( double vel_x, double vel_y, bool real )
{
	if( real ) 
	{
		velx += vel_x;
		vely += vel_y;
	}
	else // correct with speedfactor ?!?
	{
		velx += vel_x * Framerate.speedfactor;
		vely += vel_y * Framerate.speedfactor;
	}

}

void cSprite :: Draw( SDL_Surface *target )
{
	if( !visible && !Leveleditor_Mode )
	{
		return;
	}

	if( !Leveleditor_Mode || Game_Mode != MODE_LEVEL )
	{
		rect.x = (Sint16)posx;
		rect.y = (Sint16)posy;
	}
	else
	{
		rect.x = (Sint16)startposx;
		rect.y = (Sint16)startposy;
	}
	
	if( !Visible_onScreen() ) 
	{
		return;
	}

	SDL_Rect r = rect;
	r.x -= (Sint16)cameraposx;
	r.y -= (Sint16)cameraposy;

	if( image )
	{
		if( !Leveleditor_Mode || Game_Mode != MODE_LEVEL )
		{
			SDL_BlitSurface( image, NULL, target, &r );
		}
		else if( Leveleditor_Mode && StartImage )
		{
			r.w = StartImage->w;
			r.h = StartImage->h;
			SDL_BlitSurface( StartImage, NULL, target, &r );
			r.w = image->w;
			r.h = image->h;
		}
	}
}

bool cSprite :: Visible_onScreen( void )
{
	if( rect.x + rect.w < (Sint16)cameraposx ) // not visible (left)
	{
		return 0;
	}
	else if( rect.x > (Sint16)cameraposx + pPreferences->Screen_W ) // not visible (right)
	{
		return 0;
	}
	else if( rect.y + rect.h < (Sint16)cameraposy ) // not visible (down)
	{
		return 0;
	}
	else if( rect.y > (Sint16)cameraposy + pPreferences->Screen_H ) // not visible (up)
	{
		return 0;
	}

	return 1;
}

ObjectDirection cSprite :: CollideMove( void )
{
	ClearCollisions();
	ObjectDirection cdir = DIR_NOTHING;

	if( velx != 0 || vely != 0 )
	{
		cdir = Move( velx, vely );
	}

	if( posx < 0 && type != TYPE_BANZAI_BILL )
	{
		posx = 0;
		col_dir = DIR_LEFT;
		cdir = DIR_HORIZONTAL; // Collision in Left/Right
	}
	else if( pPlayer->debugmode && type == TYPE_PLAYER && posy > 550 )
	{
		vely = -35;
	}

	return cdir;
}

void cSprite :: ClearCollisions( void )
{
	iCollisionType = 0;
	iCollisionNumber = 0;
	col_dir = DIR_NOTHING;
	col_top = 0;
	col_bottom = 0;
	col_left = 0;
	col_right = 0;
}

void cSprite :: Set_Collision_dir( SDL_Rect *r1, SDL_Rect *r2 )
{
	// if the position is over the object
	col_top = r1->y + 1 >= r2->y + r2->h;
	// if the position is under the object
	col_bottom = r1->y + r1->h - 1 <= r2->y;
	// if the position is on the left of the object
	col_left = r1->x + 1 >= r2->x + r2->w;
	// if the position is on the right of the object
	col_right = r1->x + r1->w - 1 <= r2->x;

	if( col_top )
	{
		col_dir = DIR_UP;
	}
	else if( col_left )
	{
		col_dir = DIR_LEFT;
	}
	else if( col_bottom )
	{
		col_dir = DIR_DOWN;
	}
	else if( col_right )
	{
		col_dir = DIR_RIGHT;
	}
}

SDL_Rect cSprite :: Get_Collision_rect( void )
{
	SDL_Rect crect = { 0, 0, 0, 0 };

	if( iCollisionType == 1 )
	{
		crect = MassiveObjects[iCollisionNumber]->rect;
	}
	else if( iCollisionType == 2 )
	{
		crect = ActiveObjects[iCollisionNumber]->rect;
	}
	else if( iCollisionType == 3 )
	{
		crect = EnemyObjects[iCollisionNumber]->rect;
	}
	else if( iCollisionType == 4 )
	{
		crect = pPlayer->rect;
	}

	return crect;
}

// returns false if the position is not valid
bool cSprite :: PosValid( int x, int y, int w, int h, bool only_check, bool Debug_Draw )
{
	SDL_Rect rect1 = rect;
	SDL_Rect rect2;
	
	rect1.x = x;
	rect1.y = y;

	if( w > 0 )
	{
		rect1.x += ( rect.w - w ) / 2;
		rect1.w = w;
	}

	if( h > 0 )
	{
		rect1.y += ( rect.h - h ) / 2;
		rect1.h = h;
	}
	
	if( Debug_Draw )
	{
		SDL_Rect r3 = rect1;
		r3.x -= (Sint16)cameraposx;
		r3.y -= (Sint16)cameraposy;
		SDL_FillRect( screen, &r3, SDL_MapRGB( screen->format, 0, 120, 0 ) );
	}
	
	unsigned int i;
	
	for( i = 0; i < ActiveObjects.size(); i++ ) // Active
	{
		/*	There is no collision if :
		 *	1. This is an Cloud, Banzaii_Bill,  
		 *	2. This is an Fireball, Mushroom, moving Turtle shell and the colliding Object is an Enemystopper
		 *  3. This is an Enemy and the colliding Object is a Powerup
		 */
		if( !ActiveObjects[i] || ID == ActiveObjects[i]->ID || type == TYPE_BANZAI_BILL || type == TYPE_CLOUD || 
			( ( type == TYPE_FIREBALL || type == TYPE_MUSHROOM_DEFAULT || type == TYPE_MUSHROOM_LIVE_1 ||
			( type == TYPE_TURTLE && state == RUN ) ) && ActiveObjects[i]->type == TYPE_ENEMYSTOPPER ) || 
			( array == ARRAY_ACTIVE && ( ActiveObjects[i]->type == TYPE_GOLDPIECE || ActiveObjects[i]->type == TYPE_BOUNCINGGOLDPIECE ) ) || 
			( array == ARRAY_ENEMY && ( ActiveObjects[i]->type == TYPE_MUSHROOM_DEFAULT || ActiveObjects[i]->type == TYPE_MUSHROOM_LIVE_1 || ActiveObjects[i]->type == TYPE_MOON ) ) )
		{
			continue;
		}
		
		if( ID == pPlayer->ID )
		{
			if( !ActiveObjects[i]->massive && !ActiveObjects[i]->halfmassive ) 
			{
				continue;
			}
		}
		else
		{
			if( !ActiveObjects[i]->massive && !ActiveObjects[i]->halfmassive && ActiveObjects[i]->type != TYPE_ENEMYSTOPPER && 
				ActiveObjects[i]->type != TYPE_MUSHROOM_DEFAULT && ActiveObjects[i]->type != TYPE_MUSHROOM_LIVE_1 ) 
			{
				continue;
			}
			else if( ActiveObjects[i]->type == TYPE_CLOUD ) 
			{
				continue;
			}
		}

		// if true halfmassive
		if( ActiveObjects[i]->halfmassive && !ActiveObjects[i]->climbable )
		{
			// if player is moving upwards
			if( vely < 0 )
			{
				continue;
			}

			// if player is not on top
			if( !( (int)posy + rect.h <= (int)ActiveObjects[i]->posy && posx >= ActiveObjects[i]->posx - rect.w && 
				(int)posx <= (int)ActiveObjects[i]->posx + ActiveObjects[i]->rect.w ) )
			{
				continue;
			}
		}

		// if not the player ignore climbable objects
		if( ActiveObjects[i]->climbable && ID != pPlayer->ID )
		{
			continue;
		}
		
		rect2 = ActiveObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ) )
		{
			if( !only_check ) 
			{
				iCollisionNumber = i;
				iCollisionType = 2; // Active Obj
				Set_Collision_dir( &rect1, &rect2 );
			}

			if( ActiveObjects[i]->climbable )
			{
				if( ID == pPlayer->ID )
				{
					SDL_Rect rect3 = pPlayer->rect;

					rect3.h -= (Uint16)( rect3.h * 0.7 );
					rect3.w -= (Uint16)( rect3.w * 0.8 );
					rect3.x += (Sint16)( rect3.w / 2 );
					rect3.y += (Sint16)( rect3.h / 2 );


					if( CollideBoundingBox( &rect3, &rect2 ) )
					{
						iCollisionNumber = i;
						iCollisionType = 2;

						if( ( keys[pPreferences->Key_up] || pJoystick->up ) || ( keys[pPreferences->Key_down] || pJoystick->down ) )
						{
							pPlayer->Start_climbing();
						}
					}
	
				}

				continue;
			}

			return 0;
		}
	}
	
	for( i = 0; i < MassiveObjects.size(); i++ ) // Massive
	{
		if( !MassiveObjects[i] || ID == MassiveObjects[i]->ID || !MassiveObjects[i]->massive || 
			type == TYPE_BANZAI_BILL || type == TYPE_JPIRANHA )
		{
			continue;
		}

		rect2 = MassiveObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ) )
		{
			if( !only_check ) 
			{
				iCollisionNumber = i;
				iCollisionType = 1; // Massive Obj
				Set_Collision_dir( &rect1, &rect2 );
			}

			return 0;
		}
	}

	for( i = 0; i < EnemyObjects.size(); i++ ) // Enemy
	{
		if( !EnemyObjects[i] || ID == EnemyObjects[i]->ID || !EnemyObjects[i]->massive || !massive || 
			type == TYPE_MUSHROOM_DEFAULT || type == TYPE_MUSHROOM_LIVE_1 || type == TYPE_FIREPLANT || 
			( type != TYPE_PLAYER && EnemyObjects[i]->type == TYPE_BANZAI_BILL ) || ( array == ARRAY_ENEMY && !( type == TYPE_TURTLE && state == RUN ) && EnemyObjects[i]->type == TYPE_JPIRANHA ) )
		{
			continue;
		}

		rect2 = EnemyObjects[i]->rect;

		bool collision = 0;

		if( !circle_col_test && !EnemyObjects[i]->circle_col_test )
		{
			if( type == TYPE_PLAYER )
			{
				rect2.x += (Sint16)( ( rect2.w - ( rect2.w * 0.6 ) ) / 2 );
				rect2.w = (Uint16)( rect2.w * 0.6 );

				rect2.y += (Sint16)( ( rect2.h - ( rect2.h * 0.5 ) ) / 2 );
				rect2.h = (Uint16)( rect2.h * 0.5 );
			}
			else if( array == ARRAY_ENEMY )
			{
				rect2.x += (Sint16)( ( rect2.w - ( rect2.w * 0.8 ) ) / 2 );
				rect2.w = (Uint16)( rect2.w * 0.8 );

				rect2.y += (Sint16)( (rect2.h - ( rect2.h * 0.8 ) ) / 2 );
				rect2.h = (Uint16)( rect2.h * 0.8 );
			}

			collision = CollideBoundingBox( &rect1, &rect2 );
		}
		else
		{
			collision = CollideBoundingCircle( image, &rect1, EnemyObjects[i]->image, &rect2 );

			/*if( collision )
			{
				Set_Collision_dir( &rect1, &rect2 );
				printf( " (%d) ", (int)col_dir );
			}*/
		}


		if( collision )
		{
			if( !only_check ) 
			{
				iCollisionNumber = i;
				iCollisionType = 3; // Enemy Obj
				Set_Collision_dir( &rect1, &rect2 );


				if( ( EnemyObjects[i]->velx >= velx && velx > 0 && col_dir == DIR_LEFT ) || 
					( EnemyObjects[i]->velx <= velx && velx < 0 && col_dir == DIR_RIGHT ) ||
					( EnemyObjects[i]->velx < 0 && velx > 0 ) || ( EnemyObjects[i]->velx > 0 && velx < 0 ) ) 
				{
					EnemyObjects[i]->EnemyCollision( col_dir );
				}
			}

			return 0;
		}
	}

	// Player
	if( massive && type != TYPE_PLAYER && type != TYPE_FIREBALL && type != TYPE_MUSHROOM_DEFAULT && type != TYPE_MUSHROOM_LIVE_1 )
	{
		rect2 = pPlayer->rect;

		bool collision = 0;

		if( !circle_col_test && !pPlayer->circle_col_test )
		{
			if( array == ARRAY_ENEMY )
			{
				rect2.x += (Sint16)( ( rect2.w - rect2.w * 0.6 ) / 2 );
				rect2.w = (Uint16)( rect2.w * 0.6 );

				rect2.y += (Sint16)( ( rect2.h - rect2.h * 0.6 ) / 2 );
				rect2.h = (Uint16)( rect2.h * 0.6 );
			}
			
			collision = CollideBoundingBox( &rect1, &rect2 );
		}
		else
		{
			collision = CollideBoundingCircle( image, &rect1, pPlayer->image, &rect2 );
		}
		
		if( collision )
		{
			if( !only_check ) 
			{
				iCollisionNumber = 0;
				iCollisionType = 4; // Player Obj
				Set_Collision_dir( &rect1, &rect2 );
			}

			return 0;
		}
	}

	return 1;
}

void cSprite :: CheckOnground( void )
{
	if( vely > -0.5 && !PosValid( (int)posx, (int)posy + (rect.h/2) + 1, (int)( rect.w * 0.85 ), 1 ) && ( ( type == TYPE_PLAYER && iCollisionType != 3 ) || ( array == ARRAY_ENEMY && iCollisionType != 4 ) ) )
	{
		if( iCollisionType == 2 && ActiveObjects[iCollisionNumber]->halfmassive )
		{
			onGround = 2;
		}
		else
		{
			onGround = 1;
		}
	}
	else
	{
		onGround = 0;
	}

	ClearCollisions();
}

void cSprite :: Update_antistuck( void )
{
	if( !PosValid( (int)posx, (int)posy ) && iCollisionType != 3 && !( iCollisionType == 2 && ActiveObjects[iCollisionNumber]->halfmassive ) )
	{
		if( PosValid( (int)posx + rect.w / 2, (int)posy ) ) 
		{
			Move( 1, 0, 1 );
		}
		else if( PosValid( (int)posx - rect.w / 2, (int)posy ) ) 
		{
			Move( -1, 0, 1 );
		}
		else if( PosValid( (int)posx , (int)posy + rect.h / 2 ) ) 
		{
			Move( 0, 1, 1 );
		}
		else if( PosValid( (int)posx , (int)posy - rect.h / 2 ) ) 
		{
			Move( 0, -1, 1 );
		}
	}

	ClearCollisions();
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cObjectSprite :: cObjectSprite( double x, double y ) : cSprite( NULL, x, y )
{
	curr_img = -1;

	images.clear();
}

cObjectSprite :: ~cObjectSprite( void )
{
	images.clear();
}

void cObjectSprite :: SetImage( unsigned int num )
{
	if( curr_img == num )
	{
		return;
	}

	curr_img = num;

	if( (unsigned int)curr_img < images.size() )
	{
		cSprite::SetImage( images[curr_img] );
	}
	else if( Game_debug )
	{
		printf( "Warning : Object image number (%d) bigger as the array size (%d)\n", curr_img, images.size() );
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
