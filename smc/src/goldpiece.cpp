/***************************************************************************
         goldpiece.cpp  -  goldpiece class for getting player rich =)
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

cGoldPiece :: cGoldPiece( double x, double y ) : cActiveSprite( x, y )
{
	images[0] = GetImage( "sd:/apps/smc/data/pixmaps/animation/goldpiece_1/1.png" );
	images[1] = GetImage( "sd:/apps/smc/data/pixmaps/animation/goldpiece_1/2.png" );
	images[2] = GetImage( "sd:/apps/smc/data/pixmaps/animation/goldpiece_1/3.png" );
	images[3] = GetImage( "sd:/apps/smc/data/pixmaps/animation/goldpiece_1/4.png" );
	
	type = TYPE_GOLDPIECE;

	SetImage( images[0] );
	counter = (int)rand() % (3);
	
	SetPos( x, y );

	visible = 1;
	massive = 0;
}

cGoldPiece :: ~cGoldPiece( void )
{
	for( unsigned int i = 0; i < 5; i++ )
	{
		images[i] = NULL;
	}
}

void cGoldPiece :: Update( void )
{
	if( !visible )
	{
		return;
	}

	if( posx + rect.w < cameraposx )
	{
		return;
	}
	if( posx > cameraposx + pPreferences->Screen_W )
	{
		return;
	}
	

	if( CollideBoundingBox( &rect, &pPlayer->rect ) )
	{
		visible = 0;
		pointsdisplay->AddPoints( 5, (int)posx + rect.w/2, (int)posy + 2 );
		pAnimationManager->Add( posx + (double)( rect.w/3 ), posy + 5, 1, WHITE_BLINKING_POINTS );
		golddisplay->AddGold( 1 );

		pAudio->PlaySound( SOUNDS_DIR "/goldpiece.ogg", 1 );
		return;
	}

	counter += Framerate.speedfactor;

	if ( (int)counter > ( 4 * 4 - 1 ) )
	{
		counter = 0;
	}
	
	SetImage( images[(int)(counter/4)] );
	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cBouncingGoldPiece :: cBouncingGoldPiece( double x, double y ) : cGoldPiece( x + 5 , y )
{
	type = TYPE_BOUNCINGGOLDPIECE;
	
	counter = rand()%4+1;
	visible = 1;
	massive = 0;
	
	SetPos( x, y );
	
	vely = -18;
}

cBouncingGoldPiece :: ~cBouncingGoldPiece( void )
{
	// empty
}

void cBouncingGoldPiece :: Update( void )
{
	if ( !visible )
	{
		return;
	}

	Move( velx, vely , 0 , 1 );

	counter += Framerate.speedfactor;

	int piece = (int)counter % ( 4 * 2 )/2;

	SetImage( images[piece] );
	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
