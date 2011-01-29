/***************************************************************************
              goomba.cpp  -  goomba, little moving around enemy
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

cGoomba :: cGoomba( double x, double y, int col /* = 0 */ ) : cEnemy( x, y )
{
	color = col;
	type = TYPE_GOOMBA;

	if( color == 0 ) // Brown
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/goomba/brown/r.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/goomba/brown/l.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/goomba/brown/dead.png" ) );
		velx = 2.7;
		anispeed = 16;

	}
	else if( color == 1 ) // Blue
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/goomba/blue/r.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/goomba/blue/l.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/goomba/blue/dead.png" ) );
		velx = 4.5;
		anispeed = 12;
	}
	else
	{
		velx = 0;
		anispeed = 0;
		dead = 1;
		visible = 0;

		printf( "Goomba Color Error : %d\n", color );
		return;
	}

	
	SetImage( 0 );
	SetPos( x, y );
}

cGoomba :: ~cGoomba( void )
{
	//
}

void cGoomba :: Die( void )
{
	dead = 1;
	massive = 0;

	SetImage( 2 );
	Move( 0, images[1]->h - images[2]->h, 1 );
}

void cGoomba :: DieStep( void )
{
	counter += Framerate.speedfactor;

	if ( counter > DESIRED_FPS )
	{
		visible = 0;	
	}

	Draw( screen );
}

void cGoomba :: Update( void )
{
	if( dead )
	{
		if( visible )
		{
			DieStep();
		}

		return;
	}

	walk_count += Framerate.speedfactor;
	
	if( walk_count > anispeed )
	{
		walk_count = 1;
	}
	
	if( walk_count > anispeed/2 )
	{
		SetImage( 0 );
	}
	else
	{
		SetImage( 1 );
	}
	
	CheckOnground();

	if( !onGround && vely < 25 )
	{
		AddVel( 0,2 + ( vely * 0.05 ) );
	}
	else if( onGround && vely > 0 )
	{
		vely = 0;
	}
	
	if( CollideMove() != DIR_NOTHING )
	{
		SDL_Rect r2 = Get_Collision_rect();
		
		if( iCollisionType && iCollisionType != 4 )
		{
			if( col_dir == DIR_RIGHT || col_dir == DIR_LEFT )
			{
				velx *= -1;
				Move( velx, vely );
			}
		}
		else if( posx < 1 )
		{
			velx *= -1;
			Move( velx, vely );
		}

		if( iCollisionType == 4 && massive )
		{
			PlayerCollision( col_dir );

   			if( EnemyObjects.size() && !dead && image )
			{
				if( col_dir != -1 ) 
				{
					velx *= -1;
				}

				Move( velx, vely );
			}
		}
	}

   	if( EnemyObjects.size() && !dead && image )
	{
		Draw( screen );
	}
}

void cGoomba :: PlayerCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_DOWN )
	{
		pAudio->PlaySound( SOUNDS_DIR "/stomp_2.ogg" );

		Die();
		pPlayer->start_enemyjump = 1;

		if( color == 0 ) // Brown
		{
			pointsdisplay->AddPoints( 10, (int)pPlayer->posx, (int)pPlayer->posy );
		}
		else if( color == 1 ) // Blue
		{
			pointsdisplay->AddPoints( 50, (int)pPlayer->posx, (int)pPlayer->posy );
		}
		else
		{
			printf( "Error : Goomba type : %d\n", type );
		}
	}
	else if( !dead && ( cdirection == DIR_LEFT || cdirection == DIR_RIGHT || cdirection == DIR_UP ) )
	{
		pPlayer->Die();
	}
}
void cGoomba :: EnemyCollision( ObjectDirection cdirection )
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

