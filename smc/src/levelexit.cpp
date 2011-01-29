/***************************************************************************
     levelexit.cpp  -  class for a little door to enter the next level
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
#include "include/SDL_gfxPrimitives.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cLevelExit :: cLevelExit( double x, double y, Levelchange_type ntype /* = LVLCHANGE_EXIT */, string nlevelname /* = "" */ ) : cActiveSprite( x, y )
{
	type = TYPE_LEVELEXIT;
	levelchange = ntype;
	levelname = nlevelname;

	visible = 1;
	massive = 0;
	
	rect.w = 20;
	rect.h = 20;

	SetPos( x, y );
}

cLevelExit :: ~cLevelExit( void )
{

}

void cLevelExit :: Update( void )
{
	if( ( levelchange == LVLCHANGE_BEAM && ( keys[pPreferences->Key_up] || pJoystick->Button( pPreferences->Joy_jump ) ) && CollideBoundingBox( &pPlayer->rect, &rect ) && pPlayer->onGround ) ||
		( levelchange == LVLCHANGE_WARP && ( keys[pPreferences->Key_down] || pJoystick->down ) && ( (int)pPlayer->posy + pPlayer->rect.h == (int)posy && pPlayer->posx >= posx - pPlayer->rect.w && (int)pPlayer->posx <= (int)posx + rect.w ) ) )
	{
		pAudio->FadeOutMusic( 500 );
		pAudio->PlaySound( MUSIC_DIR "/game/victory_3.ogg" );
		
		if( levelchange == LVLCHANGE_WARP )
		{
			if( pPlayer->ducked )
			{
				pPlayer->Stop_ducking();
			}

			for( double i = 0; i < DESIRED_FPS; i += Framerate.speedfactor )
			{
				pPlayer->Move( 0, 2, 0, 1 );
				pLevel->Draw( LVL_DRAW_BG );
				pPlayer->Draw_Player( 0 + pPlayer->direction );
				pLevel->Draw( LVL_DRAW_NO_BG );

				SDL_Flip( screen );
				Framerate.Update();
			}
		}

		if( levelname.length() )
		{
			pLevel->Load( levelname );
		}
		else
		{
			pPlayer->GotoNextLevel();
		}
	}
	else
	{
		Draw( screen );
	}
}

void cLevelExit :: Draw( SDL_Surface *target )
{
	if( !Leveleditor_Mode )
	{
		rect.x = (Sint16)startposx;
		rect.y = (Sint16)startposy;
		
		return;
	}
	
	rect.x = (Sint16)startposx;
	rect.y = (Sint16)startposy;

	if( !Visible_onScreen() ) 
	{
		return;
	}
	
	SDL_Rect r = rect;
	r.x -= (Sint16)cameraposx;
	r.y -= (Sint16)cameraposy;
	r.w = rect.w;
	r.h = rect.h;

	if( levelname.empty() ) // red for levelexit
	{
		boxRGBA( target, r.x, r.y, r.x + r.w, r.y + r.h, 255, 0, 0, 126 ); 
	}
	else // lila for levelchange
	{
		boxRGBA( target, r.x, r.y, r.x + r.w, r.y + r.h, 200, 0, 255, 126 ); 
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
