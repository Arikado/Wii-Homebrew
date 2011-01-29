/***************************************************************************
              jpiranha.cpp  -  jprinha,jumping piranha plant
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
 
 #include "include/globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cjPiranha :: cjPiranha( double x, double y, ObjectDirection dir /* = DIR_UP */, unsigned int nmax_distance /* = 200 */ ) : cEnemy( x, y )
{
	direction = dir;

	if( direction == DIR_UP )
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c1.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c2.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o1.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o2.png" ) );
	
		vely = -5.8;
	}
	else if( direction == DIR_DOWN )
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c1.png", 180 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c2.png", 180 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o1.png", 180 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o2.png", 180 ) );

		vely = 5.8;
	}
	else if( direction == DIR_LEFT )
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c1.png", 90 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c2.png", 90 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o1.png", 90 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o2.png", 90 ) );

		velx = -5.8;
	}
	else if( direction == DIR_RIGHT )
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c1.png", 270 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/c2.png", 270 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o1.png", 270 ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/jpiranha/o2.png", 270 ) );

		velx = 5.8;
	}
	else
	{
		dead = 1;
		visible = 0;

		printf( "jPiranha direction Error : %d\n", direction );
		return;
	}

	walk_count = rand() % (8);
	state = FLY;
	max_distance = nmax_distance;
	wait_time = rand() % (90);

	type = TYPE_JPIRANHA;


	SetImage( 0 );
	SetPos( x, y );


}

cjPiranha :: ~cjPiranha( void )
{
	//
}

void cjPiranha :: Die( void )
{
	dead = 1;
	massive = 0;
	SetImage( 0 );
}

void cjPiranha :: DieStep( void )
{
	visible = 0;
}

void cjPiranha :: Update( void )
{
	if( dead )
	{
		if( visible )
		{
			DieStep();
		}

		return;
	}

	// update range
	if( posx < pPlayer->posx - 7000 || posy < pPlayer->posy - 7000 || posx > pPlayer->posx + 7000 || posy > pPlayer->posy + 7000 )
	{
		return;
	}

	if( direction == DIR_DOWN )
	{
		startpos = -startposy;
		pos = -posy;
		vel = -vely;
	}
	else if( direction == DIR_RIGHT )
	{
		startpos = -startposx;
		pos = -posx;
		vel = -velx;
	}
	else if( direction == DIR_LEFT )
	{
		startpos = startposx;
		pos = posx;
		vel = velx;
	}
	else // up
	{
		startpos = startposy;
		pos = posy;
		vel = vely;
	}

	if( startpos - pos > ( max_distance / 3 ) && startpos - pos < max_distance && vel < -0.5 )
	{
		vel += ( -vel * 0.04 ) * Framerate.speedfactor;
	}
	else if( startpos - pos > ( max_distance - 10 ) && !wait_time )
	{
		vel = 0.5;
	}
	else if( startpos - pos > ( max_distance / 2 ) && !wait_time )
	{
		vel += 0.025 * Framerate.speedfactor;
	}
	else if( startpos - pos < 0 && vel > 0.3 )
	{
		wait_time = DESIRED_FPS * 3;
		vel = 0;
	}
	else if( wait_time > 0 )
	{
		wait_time -= Framerate.speedfactor;

		if( wait_time < 0 )
		{
			wait_time = 0;
		}
	}
	else if( startpos - pos < 0 )
	{
		SDL_Rect r2 = rect;
		if( direction == DIR_UP )
		{
			r2.y -= 40;
			r2.h += 40;
		}
		else if( direction == DIR_DOWN )
		{
			r2.y += 40;
			r2.h -= 40;
		}
		else if( direction == DIR_RIGHT )
		{
			r2.x += 35;
		}
		else if( direction == DIR_LEFT )
		{
			r2.x -= 35;
		}

		if( CollideBoundingBox( &pPlayer->rect, &r2 ) )
		{
			wait_time = DESIRED_FPS * 2;
		}
		else
		{
			vel = -7;
		}
	}

	// set the position from the internal calculations
	if( direction == DIR_UP )
	{
		startposy = startpos;
		posy = pos;
		vely = vel;
	}
	else if( direction == DIR_DOWN )
	{
		startposy = -startpos;
		posy = -pos;
		vely = -vel;
	}
	else if( direction == DIR_RIGHT )
	{
		startposx = -startpos;
		posx = -pos;
		velx = -vel;
	}
	else if( direction == DIR_LEFT )
	{
		startposx = startpos;
		posx = pos;
		velx = vel;
	}

	walk_count += Framerate.speedfactor;
	
	if( walk_count > 8 )
	{
		walk_count = -8;
	}
	
	if( walk_count < -4 )
	{
		SetImage( 0 );
	}
	else if( walk_count < 0 )
	{
		SetImage( 1 );
	}
	else if( walk_count < 4 )
	{
		SetImage( 2 );
	}
	else
	{
		SetImage( 3 );
	}

	if( CollideMove() != DIR_NOTHING )
	{
		Move( velx, vely, 0, 1 );

		SDL_Rect r2 = Get_Collision_rect();
		
		if( iCollisionType == 4 && massive && visible )
		{
			PlayerCollision( col_dir );
		}
	}

   	if( EnemyObjects.size() && image && !dead )
	{
		Draw( screen );
	}
}

void cjPiranha :: PlayerCollision( ObjectDirection cdirection )
{
	if( cdirection != -1 )
	{
		pPlayer->Die();
	}
}
