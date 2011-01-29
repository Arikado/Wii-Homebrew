/***************************************************************************
           cloud.cpp  -  clouds, flying around in the game
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

cCloud :: cCloud( double x, double y ) : cActiveSprite( x, y )
{
	images[0] = GetImage( "sd:/apps/smc/data/pixmaps/clouds/default_1/1_left.png" );
	images[1] = GetImage( "sd:/apps/smc/data/pixmaps/clouds/default_1/1_right.png" );
	images[2] = GetImage( "sd:/apps/smc/data/pixmaps/clouds/default_1/1_middle.png" );
	
	SetImage( images[1] );
	counter = rand()%( DESIRED_FPS * 4 );
	
	type = TYPE_CLOUD;
	
	visible = 1;
	massive = 0;
	halfmassive = 1;
	
	velx = rand()% 5 + 4;
	
	if( (int)velx % 2 )
	{
		velx *= -1;
	}
	
	vely = 0;
	
	SetPos( x, y );

	moving = 0;
}

cCloud :: ~cCloud( void )
{
	for( unsigned int i = 0;i < 3;i++ )
	{
		images[i] = NULL;
	}
}

void cCloud :: Update( void )
{
	if( !visible )
	{
		return;
	}

	counter += Framerate.speedfactor;

	if( (int)counter > DESIRED_FPS * 2 )
	{
		if( (int)counter < DESIRED_FPS * 4 )
		{
			if( !moving )
			{
				if( velx > 0 )
				{
					SetImage( images[1] );
				}
				else
				{
					SetImage( images[0] );
				}
				
				moving = 1;
			}
		

			Move( velx, vely, 0, 1 );

			if( ( pPlayer->posx >= (int)posx - pPlayer->rect.w && (int)pPlayer->posx <= (int)posx + rect.w && 
				(int)pPlayer->posy + pPlayer->rect.h == (int)posy ) && 
				pPlayer->PosValid( (int)( pPlayer->posx + (velx * Framerate.speedfactor) ), (int)( pPlayer->posy + (vely *Framerate.speedfactor) ) ) )
			{
				pPlayer->SetPos( pPlayer->posx + (velx * Framerate.speedfactor), pPlayer->posy + (vely * Framerate.speedfactor) );
			}
		}
		else
		{
			if( rand() % 2 != 1 )
			{
				velx *= -1;
			}

			SetImage( images[2] );
			
			counter = 0;
			moving = 0;
		}
	}

	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
