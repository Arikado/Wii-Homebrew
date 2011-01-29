/***************************************************************************
           rex.cpp  -  the little dinosaur
                             -------------------
    copyright            : (C) 2004-2005 by FluXy
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

cRex :: cRex( double x, double y ) : cEnemy( x, y )
{
	velx = 2.5;
	direction = DIR_RIGHT;

	// walking
	state = WALK;
	rex_state = REX_WALK;
	
	type = TYPE_REX;

	speed = 6;

	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/l1.png" ) );		// Walking left 1
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/l2.png" ) );		// Walking left 2
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/l3.png" ) );		// small Walking left 1
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/l4.png" ) );		// small Walking left 2
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/ld.png" ) );		// dead left
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/r1.png" ) );		// Walking right 1
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/r2.png" ) );		// Walking right 2
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/r3.png" ) );		// small Walking right 1
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/r4.png" ) );		// small Walking right 2
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/rex/rd.png" ) );		// dead right
	
	SetImage( 5 ); // walking right 1
	SetPos( x, y );
}

cRex :: ~cRex( void )
{
	//
}

void cRex :: Die( void )
{
	massive = 0;

	if( rex_state == REX_WALK ) 
	{
		Move( 0, images[1]->h - images[4]->h, 1, 1 );
	}
	else if( rex_state == REX_MINI )
	{
		Move( 0, images[3]->h - images[4]->h, 1, 1 );
	}

	dead = 1;
	rex_state = REX_DEAD;
	state = STAY;

	if( direction == DIR_RIGHT )
	{
		SetImage( 9 );
	}
	else
	{
		SetImage( 4 );
	}

	counter = 0;
}

void cRex :: DieStep( void )
{
	counter += Framerate.speedfactor;

	if( counter > DESIRED_FPS * 2 )
	{
		visible = 0;
	}

	Draw( screen );
}

void cRex :: Update( void )
{
	if( dead )
	{
		if( visible )
		{
			DieStep();
		}

		return;
	}

	if( ( posx < pPlayer->posx - 4000 || posy < pPlayer->posy - 4000 || posx > pPlayer->posx + 4000 || posy > pPlayer->posy + 4000 ) )
	{
		return;
	}

	counter += Framerate.speedfactor;
	
	if( rex_state == REX_WALK ) 
	{
		if( counter > (double)( DESIRED_FPS/7 * 2 ) )
		{
			counter = 0;
		}
	}
	else
	{
		if( counter > (double)( DESIRED_FPS/10 * 2 ) )
		{
			counter = 0;
		}
	}


	if( velx < 0 )
	{
		if( rex_state == REX_WALK )
		{
			if( counter < (double)( DESIRED_FPS/7 ) )
			{
				SetImage( 0 ); // walking left 1
			}
			else
			{
				SetImage( 1 ); // walking left 2
			}
		}
		else
		{
			if( counter < (double)( DESIRED_FPS/10 ) )
			{
				SetImage( 2 ); // small walking left 1
			}
			else
			{
				SetImage( 3 ); // small walking left 2
			}
		}
	}
	else
	{
		if( rex_state == REX_WALK )
		{
			if( counter < (double)( DESIRED_FPS/7 ) )
			{
				SetImage( 5 ); // walking right 1
			}
			else 
			{
				SetImage( 6 ); // walking right 2
			}
		}
		else
		{
			if( counter < (double)( DESIRED_FPS/10 ) )
			{
				SetImage( 7 ); // small walking right 1
			}
			else
			{
				SetImage( 8 ); // small walking right 2
			}
		}
	}
	
	CheckOnground();

	if( !onGround && vely < 25 )
	{
		AddVel( 0, 1.5 + vely * 0.1 );
	}
	else if( onGround && vely != 0 )
	{
		vely = 0;
	}
	
	if( CollideMove() != DIR_NOTHING )
	{
		SDL_Rect r2 = Get_Collision_rect();
		
		if( col_dir == DIR_RIGHT || col_dir == DIR_LEFT )
		{
			velx *= -1;

			Move( velx, vely );
		}
		else if( posx < 1 )
		{
			velx *= -1;

			Move( velx, vely );
		}
		

		if( iCollisionType == 4 )
		{
			PlayerCollision( col_dir );
			
			if( EnemyObjects.size() && !dead && visible ) 
			{
				Move( velx, vely );
			}
		}
	}

	if( EnemyObjects.size() && !dead && image ) 
	{
		Draw( screen );
	}
}

void cRex :: PlayerCollision( ObjectDirection cdirection )
{
	if( dead )
	{
		return;
	}

	if( cdirection == DIR_DOWN )
	{
		if( rex_state == REX_WALK )
		{
			pointsdisplay->AddPoints( 20, (int)pPlayer->posx, (int)pPlayer->posy );
		}
		else if( rex_state == REX_MINI )
		{
			pointsdisplay->AddPoints( 40, (int)pPlayer->posx, (int)pPlayer->posy );
		}
		else
		{
			printf( "Rex state error : %d\n", state );
		}
		
		if( rex_state == REX_WALK )
		{
			counter = 0;
			rex_state = REX_MINI; // small walking
			state = RUN;

			if( velx < 0 ) 
			{
				velx = -speed;
				Move( 0, images[1]->h - images[2]->h - 1, 1, 1 );
			}
			else
			{
				velx = speed;
				Move( 0, images[6]->h - images[7]->h - 1, 1, 1 );
			}
		}
		else if( rex_state == REX_MINI )
		{
			Die();
		}

		pAudio->PlaySound( SOUNDS_DIR "/stomp_1.ogg" );

		pPlayer->start_enemyjump = 1;
	}
	else if( cdirection == DIR_LEFT || cdirection == DIR_RIGHT || cdirection == DIR_DOWN )
	{
		pPlayer->Die();
	}
}

void cRex :: EnemyCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_LEFT && velx > 0 ) 
	{
		velx *= -1;
	}
	else if( cdirection == DIR_RIGHT && velx < 0 ) 
	{
		velx *= -1;
	}
}
