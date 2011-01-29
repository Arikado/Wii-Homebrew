/***************************************************************************
           turtle.cpp  -  turtle enemy class
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

cTurtle :: cTurtle( double x, double y, unsigned int color ) : cEnemy( x, y )
{
	velx = 4;
	direction = DIR_RIGHT;
	state = WALK;
	turtle_state = TURTLE_WALK;	// Normal Walking

	type = TYPE_TURTLE;
	playercounter = 0;

	speed = 15;

	/*	Turtle Colors
	 *	
	 *	1 = Red
	 *	2 = Green
	 *	3 = Yellow
	 *	4 = Blue
	 */
	if( color == 1 ) // Red
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/shell_m1r.png" ) );	// Red Shell Standard
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/shell_m2r.png" ) );	// Red Shell Blinks
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/turtle_l1r.png" ) );	// Red Turtle walking left 1
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/turtle_l2r.png" ) );	// Red Turtle walking left 2
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/turtle_r1r.png" ) );	// Red Turtle walking right 1
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/turtle_r2r.png" ) );	// Red Turtle walking right 2
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/shell_m3r.png" ) );	// Red Shell Back
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/turtle_m1r.png" ) );	// Red Shell Standard
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/turtle_m2r.png" ) );	// Red Shell Blinks
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/shell_lr.png" ) );	// Red Shell moving right
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/shell_rr.png" ) );	// Red Shell moving left
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/turtle/red/shell_d.png" ) );		// Red Shell dead
	}
	else // unsupported/invalid color
	{
		dead = 1;
		visible = 0;

		printf( "Error : Invalid Turtle color : %d\n", color );
		return;
	}
	
	SetImage( 4 ); // Red Turtle walking right 1
	SetPos( x, y );
}

cTurtle :: ~cTurtle( void )
{
	//
}

void cTurtle :: Die( void )
{
	dead = 1;
	massive = 0;

	SetImage( 11 );

	counter = 0;
}

void cTurtle :: DieStep( void )
{
	counter += Framerate.speedfactor;

	if( counter < 5 )
	{
		Move( 0, -5, 0, 1 );
	}
	else if( posy < pPreferences->Screen_H + rect.h )
	{
		Move( 0, 20, 0, 1 );
	}
	else
	{
		visible = 0;
		state = STAY;
		turtle_state = TURTLE_DEAD;
	}

	Draw( screen );
}

void cTurtle :: Update( void )
{
	if( dead )
	{
		if( visible )
		{
			DieStep();
		}

		return;
	}

	// 4000 for walking and staying
	// 10000 for the fast shell
	if( ( turtle_state != TURTLE_SHELL && ( posx < pPlayer->posx - 4000 || posy < pPlayer->posy - 4000 || posx > pPlayer->posx + 4000 || posy > pPlayer->posy + 4000 ) ) || 
		( posx < pPlayer->posx - 10000 || posy < pPlayer->posy - 10000 || posx > pPlayer->posx + 10000 || posy > pPlayer->posy + 10000 ) )
	{
		return;
	}

	if( turtle_state == TURTLE_STAND ) // shell standing
	{
		counter += Framerate.speedfactor;
		
		if( (int)counter < DESIRED_FPS * 5 )
		{
			SetImage( 0 ); // Red Shell Standard
		}
		else
		{
			if( (int)counter < DESIRED_FPS * 6 )
			{
				if( (int)counter % 5 == 1 )
				{
					SetImage( 1 );

				}
				else
				{
					SetImage( 0 ); // Red Shell Standard
				}
			}
			else
			{
				counter = 0;
				turtle_state = TURTLE_WALK;
				state = WALK;
				
				if( curr_img != 2 )
				{
					Move( 0, -( images[2]->h - images[0]->h ) - 1, 1, 1 );
				}

				SetImage( 2 );
			}
		}
		
		
		if( velx != 0 )
		{
			AddVel( -velx * 0.2, 0 );

			if( velx < 0.3 && velx > -0.3 ) 
			{
				velx = 0;
			}
		}

		CheckOnground();

		if( !onGround && vely < 25 )
		{
			AddVel( 0, 1.2 + vely * 0.1 );
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
				if( iCollisionType != 4 )
				{
					velx *= -1;
					Move( velx, vely );
				}
			}
			
			if( iCollisionType == 4 )
			{
				PlayerCollision( col_dir );

				if( EnemyObjects.size() && image && !dead ) 
				{
					velx *= -1;

					Move( velx, vely );
					Draw( screen );
				}
				
				return;
			}
		}

		Draw( screen );
	}
	else if( turtle_state == TURTLE_SHELL ) // fast moving shell
	{
		if( velx != speed && velx != -speed )
		{
			if( (double)( pPlayer->rect.w / 2 ) + pPlayer->posx < (double)( rect.w / 2 ) + posx )
			{
				velx = speed;
			}
			else 
			{
				velx = -speed;
			}
		}

		counter += Framerate.speedfactor;

		if( playercounter > 0 )
		{
			playercounter -= Framerate.speedfactor;
			
			if( playercounter < 0 )
			{
				playercounter = 0;
			}
		}
		
		// Todo : Change to a global
		unsigned int anispeed = 15;

		if( (unsigned int)counter > DESIRED_FPS/anispeed * 4 )
		{
			counter = 0;
		}

		if( velx > 0 )
		{
			if( (unsigned int)counter < DESIRED_FPS/anispeed )
			{
				SetImage( 10 ); // rr
			}
			else if( (unsigned int)counter < DESIRED_FPS/anispeed*2 )
			{

				SetImage( 0 ); // Red Shell Standard
			}
			else if( (unsigned int)counter < DESIRED_FPS/anispeed*3 )
			{
				SetImage( 9 ); // lr
			}
			else
			{
				SetImage( 6 ); // m3r
			}
		} 
		else
		{
			if( (unsigned int)counter < DESIRED_FPS/anispeed*1 )
			{
				SetImage( 9 ); // lr
			}
			else if( (unsigned int)counter < DESIRED_FPS/anispeed*2 )
			{
				SetImage( 0 ); // Red Shell Standard
			}
			else if( (unsigned int)counter < DESIRED_FPS/anispeed*3 )
			{
				SetImage( 10 ); // rr
			}
			else 
			{
				SetImage( 6 ); // m3r
			}
		}
		
		CheckOnground();

		if( !onGround && vely < 25 )
		{
			AddVel( 0, 1.5 + vely*0.1 );
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
				if( iCollisionType && iCollisionType != 3 && iCollisionType != 4 )
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
			
			if( iCollisionType == 2 && ( col_dir == DIR_LEFT || col_dir == DIR_RIGHT ) ) // Active Object Collision
			{
				ActiveObjects[iCollisionNumber]->EnemyCollision( col_dir );
			}
			else if( iCollisionType == 3 ) // killed an enemy
			{
				pAudio->PlaySound( SOUNDS_DIR "/stomp_3.ogg" );
				pointsdisplay->AddPoints( 35, (int)posx + image->w/3, (int)posy - 5 );
				EnemyObjects[iCollisionNumber]->Die();

				Move( velx, vely );
			}
			else if( iCollisionType == 4 ) // Player
			{
				if( playercounter == 0 && !pPlayer->invincible ) // collision
				{
					PlayerCollision( col_dir );
					
					if( EnemyObjects.size() && !dead && image ) 
					{
						if( col_left ) 
						{
							velx = speed;
						}
						else if( col_right ) 
						{
							velx = -speed;
						}

						Move( velx, vely );
					}
				}
				else // go through mario
				{
					type = TYPE_PLAYER; // a collision detection hack
					Move( velx, vely );
					type = TYPE_TURTLE;
				}
			}
		}

		if( EnemyObjects.size() && !dead && image )
		{
			Draw( screen );
		}
	}
	else if( turtle_state == TURTLE_WALK ) // normal walking
	{
		if( velx > 0 )
		{
			velx = 4;
		}
		else if( velx < 0 )
		{
			velx = -4;
		}
		else
		{
			velx = 4;
		}
		
		if( counter )
		{
			counter -= Framerate.speedfactor;
		}

		walk_count += Framerate.speedfactor;
		
		if( walk_count > 16 )
		{
			walk_count = 1;
		}
		
		if( walk_count > 8 )
		{
			if( counter < 1 )
			{
				if( velx < 0 )
				{
					SetImage( 2 );
				}
				else
				{
					SetImage( 4 );
				}
			}
		} 
		else
		{
			if( counter < 1 )
			{
				if( velx < 0 )
				{
					SetImage( 3 );
				}
				else
				{
					SetImage( 5 );
				}
			}
		}
				
		CheckOnground();
		
		if( !onGround && vely < 25 )
		{
			AddVel( 0, 2.0 + vely*0.1 );
		}
		else if( onGround && vely != 0 )
		{
			vely = 0;
		}
				
		if( CollideMove() != DIR_NOTHING )
		{
			SDL_Rect r2 = Get_Collision_rect();
			
			if( iCollisionType && iCollisionType != 4 && !col_bottom )
			{
				if( col_dir == DIR_RIGHT || col_dir == DIR_LEFT )
				{
					if( velx > 0 )
					{
						SetImage( 8 );
					}
					else
					{
						SetImage( 7 );
					}

					counter = (int)( DESIRED_FPS/5 );

					velx *= -1;
					Move( velx, vely );
				}

			}
			else if( posx < 1 )
			{
				if( velx > 0 )
				{
					SetImage( 8 );
				}
				else
				{
					SetImage( 7 );
				}

				counter = (int)( DESIRED_FPS/5 );
				
				velx *= -1;
				Move( velx, vely );
			}

			if( iCollisionType == 4 )
			{
				PlayerCollision( col_dir );

				if( EnemyObjects.size() && !dead && image ) 
				{
					velx *= -1;
					Draw( screen );
				}
				
				return;
			}
		}

		Draw( screen );
	}
}

void cTurtle :: PlayerCollision( ObjectDirection cdirection )
{
	if( ( turtle_state == TURTLE_SHELL && playercounter ) || dead ) 
	{
		return;
	}

	if( cdirection == DIR_DOWN )
	{
		if( turtle_state == TURTLE_WALK )
		{
			pointsdisplay->AddPoints( 25, (int)pPlayer->posx, (int)pPlayer->posy );
		}
		else if( turtle_state == TURTLE_STAND )
		{
			pointsdisplay->AddPoints( 10, (int)pPlayer->posx, (int)pPlayer->posy );
		}
		else if( turtle_state == TURTLE_SHELL )
		{
			pointsdisplay->AddPoints( 5, (int)pPlayer->posx, (int)pPlayer->posy );
		}
		else
		{
			printf( "Turtle state error : %d\n", state );
		}
		
		if( turtle_state == TURTLE_WALK )  // normal walking
		{
			counter = 0;
			state = STAY;
			turtle_state = TURTLE_STAND;

			Move( 0, ( images[2]->h - images[0]->h ) - 5, 1, 1 );
		}
		else if( turtle_state == TURTLE_STAND ) // to running
		{
			counter = 0;
			state = RUN;
			turtle_state = TURTLE_SHELL;
		}
		else if( turtle_state == TURTLE_SHELL ) // to standing
		{
			counter = 0;
			state = STAY;
			turtle_state = TURTLE_STAND;
		}

		pAudio->PlaySound( SOUNDS_DIR "/stomp_1.ogg" );

		massive = 1;
		pPlayer->start_enemyjump = 1;
		
	}
	else if( turtle_state == TURTLE_STAND )
	{
		if( cdirection == DIR_LEFT || cdirection == DIR_RIGHT || cdirection == DIR_UP )
		{
			if( cdirection == DIR_LEFT )
			{
				Move( -5, 0, 1 );
			}
			else
			{
				Move( 5, 0, 1 );
			}
			
			playercounter = DESIRED_FPS * 0.13;

			state = RUN;
			turtle_state = TURTLE_SHELL;
		}
		else if( cdirection == DIR_DOWN )
		{
			Die();
		}
	} 
	else if( cdirection == DIR_LEFT || cdirection == DIR_RIGHT || cdirection == DIR_DOWN )
	{
		pPlayer->Die();
	}
}

void cTurtle :: EnemyCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_LEFT && velx > 0 && state != RUN ) 
	{
		velx *= -1;
	}
	else if( cdirection == DIR_RIGHT && velx < 0 && state != RUN ) 
	{
		velx *= -1;
	}
}
