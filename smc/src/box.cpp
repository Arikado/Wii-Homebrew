/***************************************************************************
           box.cpp  -  classes for some boxes used in the game
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

cGoldBox :: cGoldBox( double x, double y ) : cActiveSprite( x, y )
{
	SetImage( GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow1_1.png" ) );
	movedir = 5;
	used = 0;
	
	type = TYPE_GOLDBOX;
	
	visible = 1;
	massive = 1;
	
	image2 = GetImage( "sd:/apps/smc/data/pixmaps/game/box/brown1_1.png" );
	
	SetPos( x, y );
	
	bgp = NULL; // Bouncing GoldPiece
}

cGoldBox :: ~cGoldBox( void )
{
	if( bgp )
	{
		delete bgp;
		bgp = NULL;
	}

	image2 = NULL;
}

void cGoldBox :: PlayerCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_UP )// if player jumps from below
	{
		if( used == 0 && !bgp )
		{
			pAudio->PlaySound( SOUNDS_DIR "/goldpiece.ogg" );

			if( !PosValid( (int)posx, (int)posy - rect.h, (int)(rect.w*0.8), 5 ) )
			{
				if( iCollisionType == 3 && EnemyObjects[iCollisionNumber]->type != TYPE_JPIRANHA ) // if Enemy
				{
					pAudio->PlaySound( SOUNDS_DIR "/stomp_3.ogg" );
					EnemyObjects[iCollisionNumber]->Die();
				}
				else if( iCollisionType == 2 && ( ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_DEFAULT || ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_LIVE_1 ) ) 
				{
					ActiveObjects[iCollisionNumber]->BoxCollision( DIR_DOWN, &rect );
				}
			}

			SetImage( image2 );

		 	bgp = new cBouncingGoldPiece( posx + 2 , posy );

			movedir = cdirection;
			
			used = 1;
		}
		else
		{
			pAudio->PlaySound( SOUNDS_DIR "/tock.ogg" );
		}
	}
}

void cGoldBox :: EnemyCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_RIGHT || cdirection == DIR_LEFT )
	{
		if( used == 0 && !bgp )
		{
			pAudio->PlaySound( SOUNDS_DIR "/goldpiece.ogg" );
			
			SetImage( image2 );

		 	bgp = new cBouncingGoldPiece( posx + 2 , posy );

			movedir = cdirection;
			used = 1;
		}
		else
		{
			if( Visible_onScreen() )
			{
				pAudio->PlaySound( SOUNDS_DIR "/tock.ogg" );
			}
		}
	}
}

void cGoldBox :: Update( void )
{
	if( bgp && bgp->visible )
	{
		if( bgp->counter < DESIRED_FPS * 0.5 )
		{
			bgp->AddVel( 0, 1.62 );
		}
		else if( bgp->posy < posy - 12.0 )
		{
			pAnimationManager->Add( bgp->posx, bgp->posy, 1, WHITE_BLINKING_POINTS );
			pointsdisplay->AddPoints( 50, (int)bgp->posx + ( bgp->image->w/3 ), (int)bgp->posy - 5 );
			golddisplay->AddGold( 1 );
			bgp->SetPos( bgp->posx, posy );
			bgp->visible = 0;
		}
		else
		{
			bgp->SetPos( bgp->posx, posy );
			bgp->visible = 0;	
		}

		bgp->Update();
	}
	else if( bgp )
	{
		delete bgp;
		bgp = NULL;
	}

	if( movedir == DIR_UP )
	{
		if( posy + 10 > startposy )
		{
			Move( 0, -2.5 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 0, -2.5, 0, 1 );
			}
			else if( iCollisionType )
			{
				movedir = 5;
			}
		}
		else
		{
			movedir = 5;
		}
	}
	else if( movedir == DIR_RIGHT )
	{
		if( posx - 10 < startposx )
		{
			Move( 2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 2.5, 0, 0, 1 );
			}
			else if( iCollisionType )
			{
				movedir = 5;
			}
		}
		else
		{
			movedir = 5;
		}
	}
	else if( movedir == DIR_LEFT )
	{
		if( posx + 10 > startposx )
		{
			Move( -2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( -2.5, 0, 0, 1 );
			}
			else if( iCollisionType )
			{
				movedir = 5;
			}
		}
		else
		{
			movedir = 5;
		}
	}
	else if( posy != startposy || posy != startposx )
	{
		if( posy < startposy )
		{
			Move( 0, 2.5 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 0, 2.5, 0, 1 );
			}

			if( posy > startposy ) 
			{
				posy = startposy;
			}
		}
		else if( posx < startposx )
		{
			Move( 2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 2.5, 0, 0, 1 );
			}

			if( posx > startposx ) 
			{
				posx = startposx;
			}
		}
		else if( posx > startposx )
		{
			Move( -2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( -2.5, 0, 0, 1 );
			}

			if( posx < startposx ) 
			{
				posx = startposx;
			}
		}
		else
		{
			posy = startposy;
			posx = startposx;
		}
	}

	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cBonusBox :: cBonusBox( double x, double y, int stype ) : cActiveSprite( x, y )
{
	counter = 0;
	
	type = stype;

	movedir = 5;
	used = 0;

	visible = 1;
	massive = 1;
	
	if( type == TYPE_BONUSBOX_MUSHROOM_FIRE )
	{
		images[0] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_1.png" );

		SetImage( images[0] );

		images[1] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_anim_1.png" );
		images[2] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_anim_2.png" );
		images[3] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_anim_3.png" );
		images[4] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/brown1_1.png" );
	}
	else if( type == TYPE_BONUSBOX_LIVE )
	{
		images[0] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_1.png" );

		SetImage( images[0] );

		images[1] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_anim_1.png" );
		images[2] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_anim_2.png" );
		images[3] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow3_anim_3.png" );
		images[4] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/brown1_1.png" );
	}
	else
	{
		printf( "Unknown BonusBox type : %d\n", type );
	}

	
	SetPos( x, y );
	
	powerup = NULL;
}

cBonusBox :: ~cBonusBox( void )
{
	if( powerup )
	{
		delete powerup;
		powerup = NULL;
	}
}

void cBonusBox :: PlayerCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_UP )// if player jumps from below
	{
		if( !used )
		{
			if( type == TYPE_BONUSBOX_MUSHROOM_FIRE )
			{
				if( pPlayer->maryo_type == MARYO_SMALL || ( pPlayer->maryo_type == MARYO_FIRE && !Itembox->Item_id ) )
				{
					powerup = (cPowerUp*)new cMushroom( startposx, startposy, TYPE_MUSHROOM_DEFAULT );
				}
				else
				{
					powerup = (cPowerUp*)new cFirePlant( startposx, startposy );
				}
			}
			else if( type == TYPE_BONUSBOX_LIVE )
			{
				powerup = (cPowerUp*)new cMushroom( startposx, startposy, TYPE_MUSHROOM_LIVE_1 );
			}

			pAudio->PlaySound( SOUNDS_DIR "/sprout_1.ogg" );
			SetImage( images[4] );

			movedir = cdirection;
			used = 1;

			if( !PosValid( (int)posx, (int)posy - rect.h, (int)(rect.w*0.8), 5 ) )
			{
				if( iCollisionType == 3 && EnemyObjects[iCollisionNumber]->type != TYPE_JPIRANHA ) // Enemy
				{
					pAudio->PlaySound( SOUNDS_DIR "/stomp_3.ogg" );
					EnemyObjects[iCollisionNumber]->Die();
				}
				else if( iCollisionType == 2 && ( ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_DEFAULT || ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_LIVE_1 ) ) 
				{
					ActiveObjects[iCollisionNumber]->BoxCollision( DIR_DOWN, &rect );
				}
			}
		}
		else
		{
			if( Visible_onScreen() )
			{
				pAudio->PlaySound( SOUNDS_DIR "/tock.ogg" );
			}
		}
	}
}

void cBonusBox :: EnemyCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_RIGHT || cdirection == DIR_LEFT )
	{
		if( !used )
		{
			if( type == TYPE_BONUSBOX_MUSHROOM_FIRE )
			{
				if( pPlayer->maryo_type == MARYO_SMALL || ( pPlayer->maryo_type == MARYO_FIRE && !Itembox->Item_id ) )
				{
					powerup = (cPowerUp*)new cMushroom( startposx, startposy, TYPE_MUSHROOM_DEFAULT );
				}
				else
				{
					powerup = (cPowerUp*)new cFirePlant( startposx, startposy  );
				}
			}
			else if( type == TYPE_BONUSBOX_LIVE )
			{
				powerup = (cPowerUp*)new cMushroom( startposx, startposy, TYPE_MUSHROOM_LIVE_1 );
			}

			pAudio->PlaySound( SOUNDS_DIR "/sprout_1.ogg" );
			SetImage( images[4] );

			movedir = cdirection;
			used = 1;

			if( cdirection == DIR_RIGHT ) 
			{
				if( !PosValid( (int)posx, (int)posy - rect.h, (int)(rect.w*0.8), 5 ) )
				{
					if( iCollisionType == 3 ) // Enemy
					{
						pAudio->PlaySound( SOUNDS_DIR "/stomp_3.ogg" );
						EnemyObjects[iCollisionNumber]->Die();
					}
				}
			}
			else if( cdirection == DIR_LEFT )
			{
				if( !PosValid( (int)posx - 7, (int)posy, (int)(rect.w*0.8), (int)(rect.h*0.9) ) )
				{
					if( iCollisionType == 3 && EnemyObjects[iCollisionNumber]->type != TYPE_JPIRANHA ) // Enemy
					{
						pAudio->PlaySound( SOUNDS_DIR "/stomp_3.ogg" );
						EnemyObjects[iCollisionNumber]->Die();
					}
					else if( iCollisionType == 2 && ( ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_DEFAULT || ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_LIVE_1 ) ) 
					{
						ActiveObjects[iCollisionNumber]->BoxCollision( DIR_DOWN, &rect );
					}
				}
			}
		}
		else
		{
			if( Visible_onScreen() )
			{
				pAudio->PlaySound( SOUNDS_DIR "/tock.ogg" );
			}
		}
	}
}

void cBonusBox :: Update( void )
{
	if( powerup )
	{
		powerup->counter += Framerate.speedfactor;

		powerup->Move( 0, -3.1, 0, 1 );

		if( powerup->posy < posy - powerup->rect.h )
		{
			powerup->posy = startposy - powerup->rect.h;
			powerup->posx = startposx;
			powerup->counter = 0;
			powerup->spawned = 1;
			
			AddActiveObject( powerup );
			powerup = NULL;
		}
		else
		{
 			powerup->Draw( screen );
		}
	}

	if( !used )
	{
		counter += Framerate.speedfactor;

		if( counter < 4)
		{
			SetImage( images[0] );
		}
		else if( counter < 8 )
		{
			SetImage( images[1] );
		}
		else if( counter < 12 )
		{
			SetImage( images[2] );
		}
		else if( counter < 16 )
		{
			SetImage( images[3] );
		}
		else
		{
			counter = 0;
		}
	}

	if( movedir == DIR_UP )
	{
		if( posy + 10 > startposy )
		{
			Move( 0, -2.5 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 0, -2.5, 0, 1 );
			}
			else if( iCollisionType )
			{
				movedir = 5;
			}
		}
		else
		{
			movedir = 5;
		}
	}
	else if( movedir == DIR_RIGHT)
	{
		if( posx - 10 < startposx )
		{
			Move( 2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 2.5, 0, 0, 1 );
			}
			else if( iCollisionType )
			{
				movedir = 5;
			}
		}
		else
		{
			movedir = 5;
		}
	}
	else if( movedir == DIR_LEFT )
	{
		if( posx + 10 > startposx )
		{
			Move( -2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( -2.5, 0, 0, 1 );
			}
			else if( iCollisionType )
			{
				movedir = 5;
			}
		}
		else
		{
			movedir = 5;
		}
	}
	else if( posy != startposy || posy != startposx )
	{
		if(  posy < startposy )
		{
			Move( 0, 2.5 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 0, 2.5, 0, 1 );
			}

			if( posy >= startposy ) 
			{
				posy = startposy;
			}
		}
		else if( posx < startposx )
		{
			Move( 2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 2.5, 0, 0, 1 );
			}

			if( posx > startposx )
			{
				posx = startposx;
			}
		}
		else if( posx > startposx )
		{
			Move( -2.5, 0 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( -2.5, 0, 0, 1 );
			}

			if( posx < startposx )
			{
				posx = startposx;
			}
		}
		else
		{
			posy = startposy;
			posx = startposx;
		}
	}
	
	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cSpinBox :: cSpinBox( double x, double y ) : cActiveSprite( x, y )
{
	counter = 0;
	spin_counter = 0;

	move_up = 0;
	used = 0;

	type = TYPE_SPINBOX;
	
	visible = 1;
	massive = 1;
	
	images[0] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow1_1.png" );

	SetImage( images[0] );

	images[1] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow1_spin_1.png" );
	images[2] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow1_spin_2.png" );
	images[3] = GetImage( "sd:/apps/smc/data/pixmaps/game/box/yellow1_spin_3.png" );
	
	SetPos( x, y );
	
	spin = 0;
}

cSpinBox :: ~cSpinBox( void )
{
	//
}

void cSpinBox :: PlayerCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_UP )	// if player jumps from below
	{
		if( posy == startposy )
		{
			move_up = 1;
			used = 1;

			if( !PosValid( (int)posx, (int)posy - rect.h, (int)(rect.w*0.8), 5 ) )
			{
				if( iCollisionType == 3 && EnemyObjects[iCollisionNumber]->type != TYPE_JPIRANHA ) // Enemy
				{
					pAudio->PlaySound( SOUNDS_DIR "/stomp_3.ogg" );
					EnemyObjects[iCollisionNumber]->Die();
				}
				else if( iCollisionType == 2 && ( ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_DEFAULT || ActiveObjects[iCollisionNumber]->type == TYPE_MUSHROOM_LIVE_1 ) ) 
				{
					ActiveObjects[iCollisionNumber]->BoxCollision( DIR_DOWN, &rect );
				}
			}
		}

		if( !spin )
		{
			spin = 1;
			massive = 0;
		}
	}
}

void cSpinBox :: Update( void )
{
	if( spin )
	{
		counter += Framerate.speedfactor;
		spin_counter += Framerate.speedfactor;

		if( counter < 3.2 )
		{
			//
		}
		else if( counter < DESIRED_FPS * 2 * 0.1 )
		{
			SetImage( images[1] );
		}
		else if(counter < DESIRED_FPS * 3 * 0.1 )
		{
			SetImage( images[2] );
		}
		else if( counter < DESIRED_FPS * 4 * 0.1 )
		{
			SetImage( images[3] );
		}
		else
		{
			SetImage( images[0] );

			if( spin_counter > DESIRED_FPS * 5 )
			{
				if( CollideBoundingBox( &pPlayer->rect, &rect ) )
				{
					spin_counter = 0;
				}
				else
				{
					spin = 0;
					spin_counter = 0;
					massive = 1;
				}
			}
			counter = 0;
		}
	}

	if( move_up == 1 )
	{
		if( posy + 10 > startposy )
		{
			Move( 0, -2.5 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 0, -2.5, 0, 1 );
			}
			else if( iCollisionType )
			{
				move_up = 0;
			}
		}
		else
		{
			move_up = 0;
		}
	}
	else if( posy != startposy )
	{
		if( posy < startposy )
		{
			Move( 0, 2.5 );

			if( iCollisionType == 1 || iCollisionType == 2 ) // force it
			{
				Move( 0, 2.5, 0, 1 );
			}
		}
		else
		{
			posy = startposy;
		}
	}

	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
