/***************************************************************************
       powerup.cpp  -  classes for some powerups that can be found
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
 
#include "include/globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cPowerUp :: cPowerUp( double x, double y ) : cActiveSprite( x, y )
{
	counter = 0;
	
	type = TYPE_POWERUP;
	
	visible = 1;
	massive = 0;
	
	SetPos( x, y );
}

cPowerUp :: ~cPowerUp( void )
{
	//
}

void cPowerUp :: Update( void )
{
	Draw( screen );
}

void cPowerUp :: PlayerCollision( ObjectDirection direction )
{
	// virtual
}

void cPowerUp :: BoxCollision( ObjectDirection direction, SDL_Rect *r2 )
{
	// virtual
}
/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cMushroom :: cMushroom( double x, double y, int ntype ) : cPowerUp( x, y )
{
	visible = 1;
	massive = 0;

	if( ntype == TYPE_MUSHROOM_DEFAULT )
	{
		SetImage( GetImage( "sd:/apps/smc/data/pixmaps/game/items/mushroom_red.png" ) );
	}
	else if( ntype == TYPE_MUSHROOM_LIVE_1 ) 
	{
		SetImage( GetImage( "sd:/apps/smc/data/pixmaps/game/items/mushroom_green.png" ) );
	}
	else
	{
		printf( "Warning Unknown Mushroom type : %d\n", ntype );
		visible = 0;
	}

	type = ntype;
	
	SetPos( x, y );
	
	velx = 3;
}

cMushroom :: ~cMushroom( void )
{
	//
}

void cMushroom :: Update( void )
{
	if( !visible )
	{
		return;
	}

	if( CollideBoundingBox( &rect, &pPlayer->rect ) )
	{
		visible = 0;
		pPlayer->Get_Item( type );
		
		if( type == TYPE_MUSHROOM_DEFAULT ) 
		{
			pointsdisplay->AddPoints( 500, (int)posx + image->w/2, (int)posy + 3 );
		}
		else if( type == TYPE_MUSHROOM_LIVE_1 ) 
		{
			pointsdisplay->AddPoints( 1000, (int)posx + image->w/2,(int)posy + 3 );
		}
	}

	onGround = !PosValid( (int)posx, (int)posy + 1 );

	if( !onGround && vely < 50 )
	{
		if( vely > 0 )
		{
			AddVel( 0, 0.5 + vely*0.05 );
		}
		else
		{
			AddVel( 0, 2.5 );
		}
	}
	else
	{
		vely = 0;
	}
	
	if( CollideMove() != DIR_NOTHING )
	{
		SDL_Rect r2 = Get_Collision_rect();
		
		if( ( iCollisionType == 1 || iCollisionType == 2 ) && ( col_dir == DIR_LEFT || col_dir == DIR_RIGHT ) )
		{
			velx *= -1;
			Move( velx, vely );
		}
		else if( posx == 0 && col_dir == DIR_LEFT ) 
		{
			velx *= -1;
			Move( velx, vely );
		}
	}

   	Draw( screen );
}

void cMushroom :: BoxCollision( ObjectDirection cdirection, SDL_Rect *r2 )
{
	if( cdirection == DIR_DOWN )
	{
		if( posx > r2->x && velx < 0 ) // left
		{
			velx *= -1;
		}
		else if( posx < r2->x && velx > 0 ) // right
		{
			velx *= -1;
		}
		
		vely = -30;
		Move( velx, vely, 0, 1 );
		onGround = 0;
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cFirePlant :: cFirePlant( double x, double y ) : cPowerUp( x, y )
{
	type = TYPE_FIREPLANT;
	
	visible = 1;
	massive = 0;
	
	images[0] = GetImage( "sd:/apps/smc/data/pixmaps/game/items/flower_red_1.png" );
	images[1] = GetImage( "sd:/apps/smc/data/pixmaps/game/items/flower_red_2.png" );

	SetImage( images[0] );

	SetPos( x, y );
}

cFirePlant :: ~cFirePlant( void )
{
	images[0] = NULL;
	images[1] = NULL;
}

void cFirePlant :: Update( void )
{
	if( !visible )
	{
		return;
	}

	counter += Framerate.speedfactor;
	
	if( (int)counter < (int)( DESIRED_FPS/2 ) )
	{
		SetImage( images[1] );
	}
	else if( (int)counter < DESIRED_FPS )
	{
		SetImage( images[0] );
	}
	else
	{
		counter = 0;
	}

	if( CollideBoundingBox( &rect, &pPlayer->rect ) )
	{
		visible = 0;
		pPlayer->Get_Item( TYPE_FIREPLANT );

		pointsdisplay->AddPoints( 700, (int)posx + image->w/2,(int)posy );
	}

	Draw( screen );
}



/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cMoon :: cMoon( double x, double y ) : cPowerUp( x, y )
{
	type = TYPE_MOON;
	
	visible = 1;
	massive = 0;

	images[0] = GetImage( "sd:/apps/smc/data/pixmaps/game/items/moon_1.png" );
	images[1] = GetImage( "sd:/apps/smc/data/pixmaps/game/items/moon_2.png" );
	images[2] = GetImage( "sd:/apps/smc/data/pixmaps/game/items/moon_3.png" );

	SetImage(  images[0] );

	SetPos( x, y );
}

cMoon :: ~cMoon( void )
{
	images[0] = NULL;
	images[1] = NULL;
	images[2] = NULL;
}

void cMoon :: Update( void )
{
	if( !visible )
	{
		return;
	}

	counter += Framerate.speedfactor;
	
	if( (int)counter > DESIRED_FPS*3 )
	{
		SetImage( images[2] );
	}
	else if( (int)counter > DESIRED_FPS*2.5 )
	{
		SetImage( images[1] );
	}
	else if( (int)counter > 0 )
	{
		SetImage( images[0] );
	}
	
	if( counter > DESIRED_FPS*3.3 ) 
	{
		counter = 0;
	}

	if( CollideBoundingBox( &rect, &pPlayer->rect ) )
	{
		visible = 0;
		pPlayer->Get_Item( TYPE_MOON );

		pointsdisplay->AddPoints( 4000, (int)posx + image->w/2, (int)posy );
	}

	Draw( screen );
}
