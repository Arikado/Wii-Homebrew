/***************************************************************************
           player.cpp  -  player class, very important
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
#include "include/main.h"

cPlayer :: cPlayer ( double x, double y ) : cObjectSprite( x, y )
{
	type = TYPE_PLAYER;
	state = FALL;
	maryo_type = MARYO_SMALL;

	images.reserve( 20 );

	ducked = 0;

	invincible = 0;
	invincible_mod = 0;

	direction = DIR_RIGHT;
	walk_count = 0;

	debugmode = 0;

	lives = 3;		// Starting with 3 lives 
	goldpieces = 0;
	points = 0;

	// jump data
	UpKeytime = 0;
	start_enemyjump = 0;
	jump_accel_up = 4.5;
	jump_vel_deaccel = 0.06;

	LoadImages( 1 ); // preload all images
	SetImage( 1 ); // Default Image = Maryo small right
	SetPos( x, y );
}

cPlayer :: ~cPlayer( void )
{
	Fireball_clear();
}

void cPlayer :: LoadImages( bool preload )
{
	if( preload )
	{
		Maryo_type old_maryo_type = maryo_type;
		
		maryo_type = MARYO_SMALL;	// small
		LoadImages();
		maryo_type = MARYO_BIG;		// big
		LoadImages();
		maryo_type = MARYO_FIRE;	// fire
		LoadImages();

		maryo_type = old_maryo_type;
	}

	images.clear();
	curr_img = -1;

	if( maryo_type == MARYO_SMALL )
	{
		/********************* Small **************************/
		// standing
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_right.png" ) );
		// running
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_run_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_run_right.png" ) );
		// falling
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_fall_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_fall_right.png" ) );
		// jumping
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_jump_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_jump_right.png" ) );
		// dead
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_dead_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_dead_right.png" ) );
		// ducked
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_duck_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_duck_right.png" ) );
		// running 2
		images.push_back( NULL );
		images.push_back( NULL );
		// climbing
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_climb_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_climb_right.png" ) );
		/****************************************************/
	}
	else if( maryo_type == MARYO_BIG )
	{
		/********************* Big ****************************/
		// standing
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_right.png" ) );
		// running
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_run_left_1.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_run_right_1.png" ) );
		// falling
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_fall_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_fall_right.png" ) );
		// jumping
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_jump_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_jump_right.png" ) );
		// dead
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_dead_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_dead_right.png" ) );
		// ducked
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_duck_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_duck_right.png" ) );
		// running 2
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_run_left_2.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_run_right_2.png" ) );
		// climbing
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_climb_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/big_climb_right.png" ) );
		/****************************************************/
	}
	else if( maryo_type == MARYO_FIRE )
	{
		/********************* Fire **************************/
		// standing
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_right.png" ) );
		// running
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_run_left_1.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_run_right_1.png" ) );
		// falling
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_fall_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_fall_right.png" ) );
		// jumping
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_jump_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_fall_right.png" ) );
		// dead
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_dead_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/small_dead_right.png" ) );
		// ducked
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_duck_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_duck_right.png" ) );
		// running 2
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_run_left_2.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_run_right_2.png" ) );
		// climbing
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_climb_left.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/maryo/fire_climb_right.png" ) );
		/****************************************************/
	}
}

void cPlayer :: Hold( void )
{
	if( state == JUMP || state == FALL || state == STAY || state == CLIMB )
	{
		return;
	}
	
	state = STAY;
}

void cPlayer :: Walk( double velwalk, double maxvel, double velwrongway )
{
	if( state != JUMP && state != FALL && state != CLIMB )
	{
		state = WALK;
	}

	if( direction == DIR_RIGHT )
	{
		if( velx > 0 )
		{
			AddVel( velwalk, 0 );

			if( velx > maxvel )
			{
				velx = maxvel;
			}
		}
		else
		{
			AddVel( velwrongway, 0 );	// slow down
		}

	}
	else if( direction == DIR_LEFT )
	{
		if( velx < 0 )
		{
			AddVel( -velwalk, 0 );

			if( velx < -maxvel )
			{
				velx = -maxvel;
			}
		}
		else
		{
			AddVel( -velwrongway, 0 );	// slow down
		}
	}
}

void cPlayer :: Update_walking( void )
{
	if( ducked || state == CLIMB )
	{
		return;
	}

	if( keys[pPreferences->Key_left] || keys[pPreferences->Key_right] || pJoystick->left || pJoystick->right )
	{
		double velwalk = 1.0; // 1.5
		double maxvel = 13;
		double velwrongway = 1.8; // 2.0
		double factor = 0.5;
	
		if( onGround )
		{
			Walk( velwalk, maxvel, velwrongway );
		}
		else if( !col_left && !col_right )
		{
			Walk( velwalk * factor, maxvel, velwrongway );
		}
	}
}

void cPlayer :: Update_staying( void )
{
	if( !onGround || ducked ) // only if player is onground
	{
		return;
	}

	if( !keys[pPreferences->Key_left] && !keys[pPreferences->Key_right] && !pJoystick->left && !pJoystick->right )
	{
		// slow down the player
		if( velx > 0 )
		{
			AddVel( -1.1, 0 );

			if( velx < 0 )
			{
				velx = 0;
			}
		}
		else if( velx < 0 )
		{
			AddVel( 1.1, 0 );

			if( velx > 0 )
			{
				velx = 0;
			}
		}
	}

	// if staying do not move up or down
	if( vely != 0 )
	{
		vely = 0;
	}
}

void cPlayer :: Update_flying( void )
{
	if( onGround || state == CLIMB ) // only if not onground
	{
		return;
	}

	if( !keys[pPreferences->Key_left] && !keys[pPreferences->Key_right] && !pJoystick->left && !pJoystick->right )
	{
		// slow down the player
		if( velx > 0 )
		{
			AddVel( -0.05, 0 );

			if( velx < 0 )
			{
				velx = 0;
			}
		}
		else if( velx < 0 )
		{
			AddVel( 0.05, 0 );

			if( velx > 0 )
			{
				velx = 0;
			}
		}
	}
}

void cPlayer :: Update_falling( void )
{
	if( onGround || state == CLIMB ) // only if not onground
	{
		return;
	}

	// Add Gravitation
	if( vely < 25.0 )
	{
		AddVel( 0, 2.8 );
	}

	if( state != JUMP && state != FALL )
	{
		state = FALL;
	}
}

void cPlayer :: Start_ducking( void )
{
	if( ( state != STAY && state != WALK ) || state == CLIMB || onGround != 1 || ducked ) // only if onground
	{
		return;
	}

	rect.h = images[10]->h;
	rect.w = images[10]->w;

	Move( 0, (double)( images[0]->h - images[10]->h ), 1 );

	ducked = 1;
	state = STAY;
	vely = 0;
}

void cPlayer :: Stop_ducking( void )
{
	if( !ducked )
	{
		return;
	}

	rect.h = images[0]->h;
	rect.w = images[0]->w;

	Move( 0, -(double)( images[0]->h - images[10]->h ), 1, 1 );
	state = STAY;
	ducked = 0;
}

void cPlayer :: Update_ducking( void )
{
	if( !ducked || !onGround )
	{
		return;
	}

	if( velx > 0 )
	{
		AddVel( -1.3, 0 );

		if( velx < 0 )
		{
			velx = 0;
		}
	}
	else if( velx < 0 )
	{
		AddVel( 1.3, 0 );

		if( velx > 0 )
		{
			velx = 0;
		}
	}
}

void cPlayer :: Start_climbing( void )
{
	if( ducked || state == CLIMB )
	{
		return;
	}

	onGround = 0;
	state = CLIMB;
	velx = 0;
	vely = 0;
}

void cPlayer :: Update_climbing( void )
{
	if( state != CLIMB )
	{
		return;
	}

	// ## Motion
	velx = 0;
	vely = 0;

	if( keys[pPreferences->Key_left] )
	{
		velx = -2;
	}
	else if( keys[pPreferences->Key_right] )
	{
		velx = 2;
	}

	if( keys[pPreferences->Key_up] )
	{
		vely = -6;
	}
	else if( keys[pPreferences->Key_down] )
	{
		vely = 6;
	}

	// ## Collision testing
	PosValid( (int)posx, (int)posy, (int)( rect.w * 0.85 ), (int)( rect.h * 0.7 ) );

	if( !( iCollisionType == 2 && ActiveObjects[iCollisionNumber]->climbable ) ) // lost contact
	{
		state = FALL;
	}
	else if( vely < 0 ) // in contact
	{
		ClearCollisions();
		PosValid( (int)posx, (int)( posy + ( vely * Framerate.speedfactor ) - 1 ), (int)( rect.w * 0.85 ), (int)( rect.h * 0.7 ) );

		// do not climb further upwards if maryo will loose contact
		if( !( iCollisionType == 2 && ActiveObjects[iCollisionNumber]->climbable ) )
		{
			vely = 0;
		}
	}

	ClearCollisions();
}

void cPlayer :: Start_jump_keytime( void )
{
	if( !Leveleditor_Mode && !ducked && ( state == STAY || state == WALK || state == RUN || state == FALL ) )
	{
		UpKeytime = DESIRED_FPS / 4;
	}
}

void cPlayer :: Start_jump( double power /* = 17.0 */, double accel_up /* = 4.0 */, double vel_deaccel /* = 0.06 */ )
{
	jump_accel_up = accel_up;
	jump_vel_deaccel = vel_deaccel;

	if( keys[pPreferences->Key_up] || pJoystick->up || pJoystick->Button( pPreferences->Joy_jump ) )
	{
		jump_power = 10;
	}
	else
	{
		jump_power = 2;
	}

	if( !start_enemyjump )
	{
		if( maryo_type == MARYO_SMALL )
		{
			pAudio->PlaySound( SOUNDS_DIR "/jump_small.ogg", CHA_MARYO_JUMP );
		}
		else
		{
			pAudio->PlaySound( SOUNDS_DIR "/jump.ogg", CHA_MARYO_JUMP );
		}
	}

	UpKeytime = 0;
	start_enemyjump = 0;


	state = JUMP;
	vely = -power;
}

void cPlayer :: Update_jump( void )
{
	// jumping keytime
	if( UpKeytime )
	{
		UpKeytime -= Framerate.speedfactor;

		if( UpKeytime < 0 )
		{
			UpKeytime = 0;
		}
	}

	// jumping
	if( state != JUMP )
	{
		return;
	}

	if( keys[pPreferences->Key_up] || pJoystick->up || pJoystick->Button( pPreferences->Joy_jump ) )
	{
		jump_power -= Framerate.speedfactor;
		AddVel( 0, -( jump_accel_up + ( vely * jump_vel_deaccel ) ) );
	}	
	else
	{
		AddVel( 0, 1 );
		jump_power -= 6 * Framerate.speedfactor;
	}

	if( jump_power <= 0 )
	{
		state = FALL;
	}
}

void cPlayer :: Die( void )
{
	if( debugmode || invincible )
	{
		return;
	}

	if( maryo_type != MARYO_SMALL )
	{
		maryo_type = MARYO_SMALL;
		LoadImages();

		if( !( posy - cameraposy > ( pPreferences->Screen_H - rect.h ) ) ) // if not dead because of falling down
		{
			pAudio->PlaySound( SOUNDS_DIR "/powerdown.ogg", CHA_MARYO_POWERDOWN );

			invincible = DESIRED_FPS * 2.5;
			invincible_mod = 0;

			Itembox->Request_Item();
			
			return;
		}
	}

	maryo_type = MARYO_DEAD;

	pAudio->FadeOutMusic( 1700 );

	string death_file;
	death_file = SOUNDS_DIR;
	death_file.insert( death_file.length(), "/dead_.ogg" );
	death_file.insert( death_file.length() - 4, int_to_string( rand() % 2 ) );
	pAudio->PlaySound( death_file, CHA_MARYO_DEATH );

	Fireball_clear();

	if( livedisplay )
	{
		livedisplay->AddLives( -1 );
	}

	if( debugdisplay )
	{
		sprintf( debugdisplay->text, "You Died!" );
		debugdisplay->counter = DESIRED_FPS;
		debugdisplay->Update();
	}
	
	// Maryo's dying animation

	pLevel->Draw( LVL_DRAW ); // no Level updates
	Draw_Player( 9 );
	SDL_Flip( screen );	// Draw
	SDL_Delay( 500 );
	Framerate.Reset();
	
	double i;

	for( i = 0; i < 7; i += Framerate.speedfactor )
	{
		Move( 0, -13, 0, 1 );
		pLevel->Draw( LVL_DRAW );
		Draw_Player( 8 );
		SDL_Flip( screen );	// Draw
		Framerate.Update();
	}

	SDL_Delay( 300 );

	Framerate.Reset();
	walk_count = 0;
	
	for( i = 0; posy < pPreferences->Screen_H + cameraposy +  rect.h; i++ )
	{
		walk_count += Framerate.speedfactor;

		if( walk_count > 4 )
		{
			walk_count = 0;
		}

		Move( 0, 14, 0, 1 );
		pLevel->Draw( LVL_DRAW );	// no Level updates

		if( walk_count > 2 )
		{
			Draw_Player( 8 );
		}
		else
		{
			Draw_Player( 9 );
		}

		SDL_Flip( screen ); // Draw
		
		Framerate.Update();
	}

	if( lives >= 0 )
	{
		pLevel->Unload();
		Reset();
		DrawEffect();
	}
	else
	{
		if( debugdisplay )
		{
			sprintf( debugdisplay->text, "Game Over!" );
			debugdisplay->counter = DESIRED_FPS;
			debugdisplay->Update();
		}
		
		pLevel->Draw( LVL_DRAW );	// no Level updates
		Draw_Player( 9 );
		SDL_Flip( screen ); // Draw

		pLevel->Unload();
		DrawEffect();
		ResetSave();
	}
	
	Framerate.Reset( );

	ClearEvents();
	
	maryo_type = MARYO_SMALL;
}

bool cPlayer :: ChangeSize( double x, double y, bool only_check /* = 0 */ )
{
	if( PosValid( (int)( posx + x ), (int)( posy + y ) ) )
	{
		if( !only_check )
		{
			Move( x, y, 1, 1 );
		}

		return 1;
	}
	else if( PosValid( (int)( posx - x ), (int)( posy - y ) ) )
	{
		if( !only_check )
		{
			Move( -x, -y, 1 );
		}

		return 1;
	}

	return 0;
}

void cPlayer :: ResetSave( void )
{
	pOverWorld->Current_Waypoint = -2;
	pOverWorld->Current_OverWorld = 0;
	
	pOverWorld->SetMaryoWaypoint( 0 );

	pOverWorld->Nlevel = -1;
	pOverWorld->Slevel = 0;
	
	for( unsigned int i = 0; i < MAX_WAYPOINTS; i++ )
	{
		pOverWorld->Waypoints[i]->access = 0;
	}

	pLevel->Unload();
	Reset();

	lives = 3;
	goldpieces = 0;
	points = 0;

	timedisplay->counter = 0;

	maryo_type = MARYO_SMALL;
	LoadImages();

	Itembox->Reset();
	pOverWorld->Load( 0 );
	pMenu->Menu_Show();
}

void cPlayer :: Reset( void )
{
	SetPos( startposx, startposy );
	direction = DIR_RIGHT;
	ducked = 0;
	state = FALL;
	jump_power = 0;
	start_enemyjump = 0;
	jump_accel_up = 0;
	jump_vel_deaccel = 0;
	UpKeytime = 0;
	velx = 0;
	vely = 0;
	ClearCollisions();
	walk_count = 0;
	cameraposx = 0;
	cameraposy = 0;
	onGround = 0;
	invincible = 0;
	invincible_mod = 0;
	Itembox->Push_back();
}

void cPlayer :: GotoNextLevel( void )
{
	pLevel->Draw( LVL_DRAW );
	
	DrawEffect();

	pLevel->Unload();
	pOverWorld->GotoNextLevel();
	Reset();
	pOverWorld->Enter();
}

void cPlayer :: Update( void )
{
	if( Leveleditor_Mode )
	{
		// no update
		cSprite::Draw( screen );
		return;
	}

	if( UpKeytime && onGround )
	{
		Start_jump();
	}
	else if( start_enemyjump )
	{
		Start_jump( 23.0, 3.2 );
	}
	

	/************************
	**  Collision control	**
	*************************/

	ClearCollisions();

	// set onground
	CheckOnground();

	if( onGround )
	{
		state = STAY;
	}

	// Check if Maryo got stuck
	if( !ducked )
	{
		Update_antistuck();
	}

	// Jumping
	Update_jump();
	// Climbing
	Update_climbing();
	// Falling
	Update_falling();
	// Walking
	Update_walking();
	// Ducking
	Update_ducking();
	// Staying
	Update_staying();
	// in the air
	Update_flying();

	
	ObjectDirection Col_dir = CollideMove();

	if( Col_dir != DIR_NOTHING && !( iCollisionType == 2 && ActiveObjects[iCollisionNumber]->halfmassive ) )
	{
		if( iCollisionType != 3 ) 
		{
			if( Col_dir == DIR_ALL && !ducked ) // rare
			{
				CheckOnground(); // check here again because vely turns
				vely = -( vely / 6 );
				velx = -( velx / 10 );
				UpKeytime = 0;
				jump_power = 0;
			}
			else if( Col_dir == DIR_VERTICAL && vely < 1 && state != CLIMB ) // Up
			{
				if( iCollisionType == 1 ) // Massive
				{
					pAudio->PlaySound( SOUNDS_DIR "/tock.ogg", CHA_MARYO_TOCK );
				}

				vely = -( vely / 6 );
				UpKeytime = 0;
			}
		}

		SDL_Rect r2 = Get_Collision_rect();

		// printf( "col_dir : %d,  CollisionType : %d,  OnGround : %d,  Velx : %d,  Vely : %d\n", col_dir, iCollisionType, onGround, (int)velx, (int)vely );
		
		if( iCollisionType == 2 ) // Active
		{
			ActiveObjects[iCollisionNumber]->PlayerCollision( col_dir );
		}
		else if( iCollisionType == 3 ) // Enemy
		{
			EnemyObjects[iCollisionNumber]->PlayerCollision( col_dir );
		}

		if( state == JUMP && col_top )
		{
			state = FALL;
		}

		if( iCollisionType != 3 )
		{
			// Most of these Collision tests are very rarely true
			if( col_right && velx > 0 && !PosValid( (int)posx + 10, (int)posy, (int)( rect.w * 0.9 ), (int)( rect.h * 0.6 ), 1 ) )
			{
				velx = 0;
			}
			else if( col_left && velx < 0 && !PosValid( (int)posx - 10, (int)posy, (int)( rect.w * 0.9 ), (int)( rect.h * 0.6 ), 1) )
			{
				velx = 0;
			}
			if( col_bottom && vely > 0 && !PosValid( (int)posx, (int)posy + 10, (int)( rect.w * 0.6 ), (int)( rect.h * 0.9 ), 1 ) )
			{
				vely = 0;
			}
			else if( col_top && vely < 0 && !PosValid( (int)posx, (int)posy - 10, (int)( rect.w * 0.6 ), (int)( rect.h * 0.9 ), 1 ) )
			{
				vely = 0;
			}
		}
		
		if( ( state == FALL || state == JUMP || state == CLIMB ) && col_bottom && !PosValid( (int)posx, (int)posy + 2, (int)( rect.w / 0.95 ), 0, 1 ) )
		{
			state = STAY;
		}
	}

	/*************************
	** Drawing			   **
	*************************/

	rect.x = (Sint16)posx;
	rect.y = (Sint16)posy;

	if( state == CLIMB )
	{
		if( vely != 0 || velx != 0 )
		{
			walk_count += Framerate.speedfactor * 0.7;
		}
	}
	else
	{
		walk_count += Framerate.speedfactor;
	}

	if( velx != 0 ) 
	{
		if( velx > 0 ) 
		{
			walk_count += ( velx * 0.05 ) * Framerate.speedfactor;
		}
		else
		{
			walk_count += ( -velx * 0.05 ) * Framerate.speedfactor;
		}
	}

	if( walk_count > 8 )
	{
		walk_count = 1;
	}

	Draw();
	

	/*****************
	** Camera		**
	*****************/
	Update_Camera();
	
	
	/*************************
	**  Fireball			**
	*************************/
	
	for( unsigned int i = 0; i < fireballs.size(); i++ )
	{
		if( fireballs[i]->destroy )
		{
			pAnimationManager->Add( fireballs[i]->posx + fireballs[i]->rect.w/2, fireballs[i]->posy + fireballs[i]->rect.h/2, 1, RED_FIRE_EXPLOSION );

			delete fireballs[i];
			fireballs[i] = NULL;

			fireballs.erase( fireballs.begin() + i );
		}
		else
		{
			fireballs[i]->Update();
		}
	}

	/*************************
	**  Other				**
	*************************/
	// if players dead because of falling down
	if( posy - cameraposy > ( pPreferences->Screen_H - rect.h ) )
	{
		invincible = 0;
		Die();
	}

	if( invincible > 0 )
	{
		invincible -= Framerate.speedfactor;

		if( invincible < 0 ) 
		{
			invincible = 0;
		}
	}
}

void cPlayer :: Update_Camera( bool init /* = 0  */ )
{
	if( init )
	{
		cameraposy = posy - ( pPreferences->Screen_H/2 );
	}

	// todo : a camera which goes further into the player direction when moving
	if( posx - cameraposx > ( pPreferences->Screen_W / 6 * 3 ) + pLevel->mod_Camera_right ) //  scrolling right
	{
		cameraposx = posx - (double)( pPreferences->Screen_W / 6 * 3 ) - (double)pLevel->mod_Camera_right;
	}
	else if( cameraposx && posx - cameraposx < ( pPreferences->Screen_W / 6 * 2 ) + pLevel->mod_Camera_left ) //  scrolling left
	{
		cameraposx = posx - (double)( pPreferences->Screen_W / 6 * 2 ) - (double)pLevel->mod_Camera_left;
	}

	if( cameraposx < 0 )
	{
		cameraposx = 0;
	}

	// y camera ( up & down )
	if( posy - cameraposy < ( pPreferences->Screen_H / 6 ) + pLevel->mod_Camera_up ) // scrolling up
	{
		cameraposy += ( ( posy - cameraposy - (double)( pPreferences->Screen_H / 6 * 3 ) ) / 27 ) * Framerate.speedfactor;
	}
	else if( cameraposy && !( posy - cameraposy < 0 ) && posy - cameraposy > ( pPreferences->Screen_H / 6 * 2.8 ) + pLevel->mod_Camera_up ) // scrolling right
	{
		cameraposy += ( ( posy - cameraposy - (double)( pPreferences->Screen_H / 6 * 3 ) ) / 4.8 ) * Framerate.speedfactor;
	}

	if( cameraposy > 0 )
	{
		cameraposy = 0;
	}
}

void cPlayer :: Draw( void )
{
	if( state != CLIMB )
	{
		Draw_Player( Get_Image() + direction );
	}
	else
	{
		Draw_Player( Get_Image() );
	}
}

void cPlayer :: Draw_Player( unsigned int imgnr )
{
	SetImage( imgnr );

	if( invincible <= 0 )
	{
		cSprite::Draw( screen );
	}
	else
	{
		if( invincible > 0 )
		{
			if( (int)invincible % 2 == 0 && invincible_mod < 0 )
			{
				cSprite::Draw( screen );

				invincible_mod = invincible/15;

				if( invincible_mod > 15 ) 
				{
					invincible_mod = 15;
				}
			}

			invincible_mod -= Framerate.speedfactor;
		}
	}

}

void cPlayer :: Draw_Animation( unsigned int item_type )
{
	Maryo_type maryo_type_old = maryo_type;

	for( unsigned int i = 0; i < 6; i++ )
	{
		if( i % 2 )
		{
			if( item_type == TYPE_MUSHROOM_DEFAULT )
			{
				maryo_type = MARYO_BIG;
			}
			else if( item_type == TYPE_FIREPLANT )
			{
				maryo_type = MARYO_FIRE;
			}
			else
			{
				printf( "Unknown Player Animation item id : %d\n", item_type );
				return;
			}
			
			LoadImages();
			maryo_type = maryo_type_old;
			
			if( maryo_type_old == MARYO_SMALL )
			{
				Move( 0, -20, 1, 1 );
			}
		}
		else
		{
			LoadImages();
		}

		pLevel->Draw( LVL_DRAW );
		Draw();
		SDL_Flip( screen );

		if( i % 2 )
		{
			if( maryo_type_old == MARYO_SMALL )
			{
				Move( 0, 20, 1, 1 );
			}
		}

		SDL_Delay( 150 );
	}

	Framerate.Reset();
}

unsigned int cPlayer :: Get_Image( void )
{
	if( state == FALL )
	{
		if( !ducked )
		{
			return 4;
		}
		else
		{
			return 10;
		}
	}
	else if( state == STAY && !velx )
	{
		if( !ducked )
		{
			return 0;
		}
		else
		{
			return 10;
		}
	}
	else if( state == JUMP )
	{
		return 6;
	}
	else if( state == CLIMB )
	{
		if( walk_count > 4 )
		{
			return 14;
		}
		else
		{
			return 15;
		}
	}
	else
	{
		if ( !ducked )
		{
			if( ( velx < 12 && velx > -12 ) || maryo_type == MARYO_SMALL )
			{
				if( walk_count > 4 )
				{
					return 0;
				}
				else
				{
					return 2;
				}
			}
			else
			{
				if( walk_count > 6 )
				{
					return 0;
				}
				else if( walk_count > 4 )
				{
					return 2;
				}
				else if( walk_count > 2 )
				{
					return 12;	
				}
				else
				{
					return 2;
				}
			}
		}
		else
		{
			return 10;
		}
	}

	return 0;
}

void cPlayer :: Get_Item( unsigned int item_type, bool force )
{
	if( item_type == TYPE_MUSHROOM_DEFAULT ) 
	{
		if( ( maryo_type == MARYO_SMALL || force ) && ChangeSize( 0, -20, 1 ) ) 
		{
			if( maryo_type != MARYO_BIG )
			{
				pAudio->PlaySound( SOUNDS_DIR "/mushroom.ogg", CHA_MUSHROOM );
				Draw_Animation( item_type );
			}

			if( maryo_type == MARYO_SMALL ) 
			{
				ChangeSize( 0, -20 );
				
				maryo_type = MARYO_BIG;
				LoadImages();
			}
			else if( maryo_type == MARYO_BIG ) 
			{
				Itembox->Get_Item( TYPE_MUSHROOM_DEFAULT );
			}
			else if( maryo_type == MARYO_FIRE ) 
			{
				maryo_type = MARYO_BIG;
				Itembox->Get_Item( TYPE_FIREPLANT );
				LoadImages();
			}
		}
		else
		{
			Itembox->Get_Item( TYPE_MUSHROOM_DEFAULT );
		}
	}
	else if( item_type == TYPE_FIREPLANT ) 
	{
		if( ( ( maryo_type == MARYO_SMALL || force ) && PosValid( (int)posx, (int)posy - 20 ) ) || 
			( ( maryo_type == MARYO_BIG || force ) ) )
		{
			if( maryo_type == MARYO_SMALL ) 
			{
				Move( 0, -20 , 1 );
			}
			else if( maryo_type == MARYO_FIRE ) 
			{
				Itembox->Get_Item( TYPE_FIREPLANT );
			}
			
			if( maryo_type != MARYO_FIRE )
			{
				pAudio->PlaySound( SOUNDS_DIR "/fireplant.ogg", CHA_MUSHROOM );
				Draw_Animation( item_type );
			}

			maryo_type = MARYO_FIRE;
			LoadImages();
		}
		else if( Itembox->Item_id == TYPE_FIREPLANT )
		{
			Fireball_add( FIREBALL_EXPLOSION );
			pointsdisplay->AddPoints( 1000, (int)posx + (int)( rect.w / 2 ), (int)posy + 2 );	
		}
		else
		{
			Itembox->Get_Item( TYPE_FIREPLANT );
		}
	}
	else if( item_type == TYPE_MUSHROOM_LIVE_1 ) 
	{
		pAudio->PlaySound( SOUNDS_DIR "/live_up.ogg", CHA_1UP_MUSHROOM );
		livedisplay->AddLives( 1 );
	}
	else if( item_type == TYPE_MOON ) 
	{
		pAudio->PlaySound( SOUNDS_DIR "/live_up.ogg", CHA_1UP_MUSHROOM );
		livedisplay->AddLives( 3 );
	}
}

void cPlayer :: Fireball_add( FireballEffect firetype )
{
	if( maryo_type != MARYO_FIRE || ducked )
	{
		return;
	}

	if( firetype == FIREBALL_DEFAULT )
	{
		if( fireballs.size() < 2 )
		{
			cFireball *temp = new cFireball( (direction == 1) ? (posx + 20) : (posx + 8), posy + 45, (direction == 1) ? (+17) : (-17) );
			fireballs.push_back( temp );

			pAudio->PlaySound( SOUNDS_DIR "/fireball_1.ogg", CHA_MARYO_FIREBALL );
		}
	}
	else if( firetype == FIREBALL_EXPLOSION )
	{
		if( fireballs.size() < 10 )
		{
			double fire_angle = -180;

			for( unsigned int i = 0; i < 10; i++ )
			{
				fire_angle += 18; // 10 * 18 = 180 degrees

				cFireball *temp = new cFireball( posx + rect.w/2, posy + rect.h/2, 0 );
				temp->SetDirection( fire_angle, 15 );
				temp->Move( temp->velx * 6, temp->vely + 6, 1 );

				fireballs.push_back( temp );
			}

			cAnimation *temp = new cAnimation_2( posx + (double)(rect.w/2), posy + (double)(rect.h/3), 0.3, 10 );
			pAnimationManager->Add( temp );

			pAudio->PlaySound( SOUNDS_DIR "/fireball_2.ogg", CHA_MARYO_FIREBALL );
		}
	}
}

void cPlayer :: Fireball_clear( void )
{
	for( unsigned int i = 0; i < fireballs.size(); i++ )
	{
		if( fireballs[i] )
		{
			delete fireballs[i];
			fireballs[i] = NULL;

			fireballs.erase( fireballs.begin() + i );
		}
	}

	fireballs.clear();
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cFireball :: cFireball( double x, double y, double velocity_x, double velocity_y ) : cSprite ( NULL, x, y )
{
	array = ARRAY_ACTIVE;
	type = TYPE_FIREBALL;

	posx = x;
	posy = y;
	velx = velocity_x;
	vely = velocity_y;
	counter = 0;
	destroy = 0;

	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fireball_1/1.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fireball_1/2.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fireball_1/3.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fireball_1/4.png" ) );

	SetImage( images[0] );
}

cFireball :: ~cFireball()
{
	images.clear();
}

void cFireball :: SetDirection( double angle, double speed )
{
	velx = (double)cos( angle * 0.017453292519943295 ) * speed;
	vely = (double)sin( angle * 0.017453292519943295 ) * speed;
}

void cFireball :: Update( void )
{
	counter += Framerate.speedfactor;

	if( counter < 3 )
	{
		SetImage( images[0] );
	}
	else if( counter < 5 )
	{
		SetImage( images[1] );
	}
	else if( counter < 7 )
	{
		SetImage( images[2] );
	}
	else
	{
		SetImage( images[3] );
		counter = 0;
	}

	if( posx <= 10 )
	{
		destroy = 1;
	}
	
	if( vely < 30 )
	{
		AddVel( 0, 1.0 );
	}

	// move the fireball
	if( CollideMove() != DIR_NOTHING )
	{
		SDL_Rect r2 = Get_Collision_rect();
		
		Set_Collision_dir( &rect, &r2 );

		if( iCollisionType && iCollisionType != 4 ) // no Player
		{
			if( iCollisionType == 3 ) // Enemy 
			{
				if( EnemyObjects[iCollisionNumber]->type != TYPE_BANZAI_BILL ) 
				{
					pointsdisplay->AddPoints( 30, (int)posx, (int)posy );

					cSprite *tmp;
					
					if( EnemyObjects[iCollisionNumber]->PosValid( (int)EnemyObjects[iCollisionNumber]->posx, (int)EnemyObjects[iCollisionNumber]->posy ) )
					{
						tmp = new cGoldPiece( EnemyObjects[iCollisionNumber]->posx, EnemyObjects[iCollisionNumber]->posy );
					}
					else
					{
						tmp = new cGoldPiece( EnemyObjects[iCollisionNumber]->posx + EnemyObjects[iCollisionNumber]->rect.w/2, EnemyObjects[iCollisionNumber]->posy + EnemyObjects[iCollisionNumber]->rect.h/2 );
					}

					tmp->spawned = 1;
					AddActiveObject( (cSprite*)tmp );

					EnemyObjects[iCollisionNumber]->visible = 0;
					EnemyObjects[iCollisionNumber]->Die();
					
					destroy = 1;				
				}
				else
				{
					pAudio->PlaySound( SOUNDS_DIR "/tock.ogg" );
					destroy = 1;
				}
			}
			else if( vely < 1.0 && iCollisionType == 2 && ActiveObjects[iCollisionNumber]->type == TYPE_HALFMASSIVE )
			{
				Move( velx, vely, 0, 1 );
			}
			else if( !col_bottom && ( iCollisionType == 1 || iCollisionType == 2 ) )
			{
				destroy = 1;
			}
			else if( col_dir == DIR_DOWN && ( iCollisionType == 1 || iCollisionType == 2 ) )
			{
				if( velx < 0.1 && velx > -0.1 ) // if directly hitting the ground
				{
					destroy = 1;
				}

				vely = -10;
			}
			else
			{
				destroy = 1;
			}
			
		}
		else
		{
			Move( velx, vely, 0, 1 );
		}
	}

	// If the Fireball is out of Range
	if( pPlayer->posx + 2000 < posx || pPlayer->posx - 2000 > posx || pPlayer->posy + 2000 < posy || pPlayer->posy - 2000 > posy )
	{
		destroy = 1;
	}

	Draw( screen );
}
