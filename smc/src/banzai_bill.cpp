/***************************************************************************
              banzai_bill.cpp  -  banzai bill,a giant, slow-moving bullet.
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

cbanzai_bill :: cbanzai_bill( double x, double y, ObjectDirection fdirection ) : cEnemy( x, y )
{
	massive = 0;
	direction = fdirection;
	state = FLY;
	type = TYPE_BANZAI_BILL;
	circle_col_test = 1;

	if( direction == DIR_LEFT )
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/banzai_bill/l.png" ) );
	}
	else
	{
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/enemy/banzai_bill/r.png" ) );
	}
	
	SetImage( 0 );
	SetPos( x, y );
}

cbanzai_bill :: ~cbanzai_bill( void )
{
	//
}

void cbanzai_bill :: Die( void )
{
	dead = 1;
	massive = 0;
	
	DieStep();
}

void cbanzai_bill :: DieStep( void )
{
	Move( 0, 17, 0, 1 );

	Draw( screen );
	
	if( posy > 600 )
	{
		visible = 0;
		massive = 0;
	}
}

void cbanzai_bill :: Update( void )
{
	if( dead )
	{
		if( visible )
		{
			DieStep();
		}

		return;
	}
	

	if( !massive )
	{
		if( direction == DIR_LEFT )
		{
			if( pPlayer->posx + 1000 > posx || walk_count )
			{
				AddVel( -6.5, 0, 1 );
			}
			else
			{
				return;
			}
		}
		else
		{
			if( pPlayer->posx - 1000 > posx || walk_count )
			{
				AddVel( 6.5, 0, 1 );
			}
			else
			{
				return;
			}
		}

		pAudio->PlaySound( SOUNDS_DIR "/cannon_1.ogg" );
		
		walk_count = 1;
		massive = 1;
	}

	
	if( massive && CollideMove() != DIR_NOTHING )
	{
		if( iCollisionType == 4 )
		{
			PlayerCollision( col_dir );
		}

		if( EnemyObjects.size() && visible && massive && !dead ) 
		{
			Move( velx, vely, 0, 1 );
		}
	}
	
   	if( EnemyObjects.size() && image && !dead )
	{
		Draw( screen );
	}
}

void cbanzai_bill :: PlayerCollision( ObjectDirection cdirection )
{
	if( cdirection == DIR_DOWN && ( pPlayer->velx != 0 || pPlayer->vely != 0 ) )
	{
		printf( "never happens o.0\n" );
		pointsdisplay->AddPoints( 250, (int)pPlayer->posx + pPlayer->image->w/3, (int)pPlayer->posy - 5 );
		pAudio->PlaySound( SOUNDS_DIR "/stomp_1.ogg" );
		Die();
		pPlayer->start_enemyjump = 1;
	}
	else if( !dead && cdirection != DIR_NOTHING )
	{
		pPlayer->Die();
	}
}
