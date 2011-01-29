/***************************************************************************
           animation.cpp  -  Animation class
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

cAnimation :: cAnimation( double posx, double posy, double nfading_speed ) : cSprite( NULL, posx, posy )
{
	array = ARRAY_ANIM;
	type = TYPE_ACTIVESPRITE;

	spawned = 1;

	fading_speed = nfading_speed;
	counter = 0;
	massive = 0;
}

cAnimation :: ~cAnimation( void )
{
	images.clear();
}

void cAnimation :: Update( void )
{
	// virtual
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cAnimation_1 :: cAnimation_1( double posx, double posy, double nfading_speed /* = 1 */, unsigned int height /* = 40 */, unsigned int width /* = 20 */ ) : cAnimation( posx, posy, nfading_speed )
{
	animtype = WHITE_BLINKING_POINTS;

	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/light_1/1.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/light_1/2.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/light_1/3.png" ) );

	for( unsigned int i = 0; i < 4; i++ )
	{
		SDL_Rect rect;
		rect.x = (Sint16)rand() % ( width );
		rect.y = (Sint16)rand() % ( height );
		rect.w = 0;
		rect.h = 0;

		rects.push_back( rect );
	}
}

cAnimation_1 :: ~cAnimation_1( void )
{
	rects.clear();
}

void cAnimation_1 :: Update( void )
{
	if( !visible )
	{
		return;
	}

	counter += Framerate.speedfactor * fading_speed;

	// Update the fixed points
	for( unsigned int i = 0; i < 4; i++ )
	{
		switch( i ) 
		{
		case 0:
		{
			if( counter < 3 )
			{
				SetImage( NULL );
			}
			else if( counter < 6 )
			{
				SetImage( images[0] );
			}
			else if( counter < 9 )
			{
				SetImage( images[1] );
			}
			else if( counter < 12 )
			{
				SetImage( images[0] );
			}
			break;
		}
		case 1:
		{
			if( counter < 3 )
			{
				SetImage( images[0] );
			}
			else if( counter < 6 )
			{
				SetImage( images[1] );
			}
			else if( counter < 9 )
			{
				SetImage( images[2] );
			}
			else if( counter < 12 )
			{
				SetImage( images[1] );
			}
			break;
		}
		case 2:
		{
			if( counter < 3 )
			{
				SetImage( images[1] );
			}
			else if( counter < 6 )
			{
				SetImage( images[2] );
			}
			else if( counter < 9 )
			{
				SetImage( images[0] );
			}
			else if( counter < 12 )
			{
				SetImage( NULL );
			}
			break;			
		}
		case 3:
		{
			if( counter < 3 )
			{
				SetImage( images[0] );
			}
			else if( counter < 6 )
			{
				SetImage( images[1] );
			}
			else if( counter < 9 )
			{
				SetImage( images[0] );
			}
			else if( counter < 12 )
			{
				SetImage( images[0] );
			}
			break;
		}
		default:
		{
			break;
		}
		}

		if( image )
		{
			SDL_Rect r = rects[i];

			r.x -= (Sint16)( cameraposx - posx );
			r.y -= (Sint16)( cameraposy - posy );

			r.w = image->w;
			r.h = image->h;
			
			SDL_BlitSurface( image, NULL, screen, &r );	
		}

		if( counter > 11 || counter < 0 )
		{
			visible = 0;
		}
	}
}

cAnimation_2 :: cAnimation_2( double posx, double posy, double nfading_speed /* = 1  */, unsigned int power /* = 5 */ ) : cAnimation( posx, posy, nfading_speed )
{
	animtype = RED_FIRE_EXPLOSION;

	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/4.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/3.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/2.png" ) );
	images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/1.png" ) );

	for( unsigned int i = 0; i < power; i++ )
	{
		tAnimation_2_item temp;

		temp.posx = 0;
		temp.posy = 0;

		temp.speed_x = ( (double)( rand() % ( 50 ) - 25 ) ) / 10;
		temp.speed_y = ( (double)( rand() % ( 50 ) - 25 ) ) / 10;

		temp.counter = 8 + rand() % ( 5 );

		Objects.push_back( temp );
	}
}

cAnimation_2 :: ~cAnimation_2( void )
{
	Objects.clear();
}

void cAnimation_2 :: Update( void )
{
	if( !visible )
	{
		return;
	}

	counter += Framerate.speedfactor * fading_speed;

	for( unsigned int i = 0; i < Objects.size(); i++ )
	{
		Objects[i].posx += Objects[i].speed_x;
		Objects[i].posy += Objects[i].speed_y;

		if( Objects[i].counter > 8 )
		{
			SetImage( images[0] );
		}
		else if( Objects[i].counter > 5 )
		{
			SetImage( images[1] );
		}
		else if( Objects[i].counter > 3 )
		{
			SetImage( images[2] );
		}
		else if( Objects[i].counter > 0 )
		{
			SetImage( images[3] );
		}

		if( image )
		{
			SDL_Rect r;

			r.x = (Sint16)( Objects[i].posx - ( cameraposx - posx ) );
			r.y = (Sint16)( Objects[i].posy - ( cameraposy - posy ) );

			r.w = rect.w;
			r.h = rect.h;

			SDL_BlitSurface( image, NULL, screen, &r );	
		}
		

		Objects[i].counter -= Framerate.speedfactor * fading_speed;
	}

	if( counter > 11 || counter < 0 )
	{
		visible = 0;
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cAnimationManager :: cAnimationManager( void )
{
	Objects.clear();
}

cAnimationManager ::~cAnimationManager( void )
{
	DeleteAll();
}

void cAnimationManager :: Update( void )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( !Objects[i] )
		{
			continue;
		}

		Objects[i]->Update();
	
		if( !Objects[i]->visible ) // if animation has ended delete the animation spite
		{
			Delete( i );
		}
	}
}

void cAnimationManager :: Add( double posx, double posy, double fading_speed /* = 1 */, AnimationEffect animtype /* = WHITE_BLINKING_POINTS */ )
{
	cAnimation *temp = NULL;

	if( animtype == WHITE_BLINKING_POINTS )
	{
		temp = new cAnimation_1( posx, posy, fading_speed );
	}
	else if( animtype == RED_FIRE_EXPLOSION )
	{
		temp = new cAnimation_2( posx, posy, fading_speed );
	}
	else
	{
		printf( "Invalid Animation Type : %d\n", animtype );
		return;
	}
	
	Add( temp );
}

void cAnimationManager :: Add( cAnimation *AnimationObject )
{
	if( !AnimationObject )
	{
		return;
	}

	Objects.push_back( AnimationObject );
}

void cAnimationManager :: Delete( unsigned int num )
{
	if( num > Get_Size() )
	{
		return;
	}

	delete Objects[num];
	Objects[num] = NULL;

	Objects.erase( Objects.begin() + num );
}

void cAnimationManager :: DeleteAll( void )
{
	if( !Get_Size() )
	{
		return;
	}

	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( Objects[i] ) 
		{
			delete Objects[i];
			Objects[i] = NULL;
		}
	}

	Objects.clear();
}

unsigned int cAnimationManager :: Get_Size( void )
{
	return Objects.size();
}
