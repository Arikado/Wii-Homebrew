/***************************************************************************
           hud.cpp  -  the User interfaces in the game
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

cHudManager :: cHudManager( void )
{
	Objects.clear();
	loaded = 0;

	Load();
}

cHudManager :: ~cHudManager( void )
{
	Unload();
}

void cHudManager :: Load( void )
{
	if( !loaded && Get_Size() )
	{
		Unload();
	}
	else if( loaded )
	{
		UpdateText();
		return;
	}

	// Menu Background ( Mario Head and the Goldpiece )
	AddObject( (cSprite*)new cMenuBackground( 25.0, 15.0 ) );
	// Point Dsiplay
	pointsdisplay = new cPlayerPoints( 50.0, 18.0 );
	AddObject( (cSprite*)pointsdisplay );
	// Time Display
	timedisplay = new cTimeDisplay( pPreferences->Screen_W - pPreferences->Screen_W/3, 18.0 );
	AddObject( (cSprite*)timedisplay );
	// Debug Display
	debugdisplay = new cDebugDisplay( pPreferences->Screen_W/2 - 100, 80.0 );
	AddObject( (cSprite*)debugdisplay );
	// Live Display
	livedisplay = new cLiveDisplay( pPreferences->Screen_W - pPreferences->Screen_W/10, 18.0 );
	AddObject( (cSprite*)livedisplay );
	// Gold Display
	golddisplay = new cGoldDisplay( 280.0, 18.0 );
	AddObject( (cSprite*)golddisplay );
	// Itembox
	Itembox = new cItemBox( pPreferences->Screen_W/2 - 20, 10 );
	AddObject( (cSprite*)Itembox );

	loaded = 1;
}

void cHudManager :: Unload( void )
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

	livedisplay = NULL;
	golddisplay = NULL;
	pointsdisplay = NULL;
	timedisplay = NULL;
	debugdisplay = NULL;
	Itembox = NULL;
	
	loaded = 0;
}

void cHudManager :: AddObject( cSprite *obj )
{
	Objects.push_back( obj );
}

void cHudManager :: UpdateText( void )
{
	// note : update the lifedisplay before you update the timedisplay !
	
	if( livedisplay )
	{
		livedisplay->AddLives( 0 );
	}

	if( golddisplay )
	{
		golddisplay->AddGold( 0 ); 
	}

	if( pointsdisplay )
	{
		pointsdisplay->AddPoints( 0 ); 
	}

	if( timedisplay )
	{
		timedisplay->Update();
	}

	if( debugdisplay )
	{
		debugdisplay->Update();
	}

	if( Itembox ) 
	{
		Itembox->Update();
	}
}

void cHudManager :: Update( void )
{
	// HUD Objects
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( !Objects[i] )
		{
			continue;
		}

		Objects[i]->Update();
	}
}

unsigned int cHudManager :: Get_Size( void )
{
	return Objects.size();
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cMenuBackground :: cMenuBackground( double x, double y ) : cActiveSprite( x, y )
{
	type = TYPE_MENUBG;
	
	mario_head = GetImage( "sd:/apps/smc/data/pixmaps/game/mario_l.png" );
	goldpiece = GetImage( "sd:/apps/smc/data/pixmaps/game/gold_m.png" );

	array = ARRAY_HUD;
	massive = 0;

	if(	!mario_head || !goldpiece )
	{
		printf( "Menubackground image loading error\n" );
		return;
	}

	// Maryo head Position
	rect_mario_head.x = pPreferences->Screen_W - pPreferences->Screen_W/11 + (int)posx;
	rect_mario_head.y = (int)posy;
	rect_mario_head.w = mario_head->w;
	rect_mario_head.h = mario_head->h;
	// Goldpiece Position
	rect_goldpiece.x = (int)posx + 225;
	rect_goldpiece.y = (int)posy + 5;
	rect_goldpiece.w = goldpiece->w;
	rect_goldpiece.h = goldpiece->h;
}

cMenuBackground :: ~cMenuBackground( void )
{
	mario_head = NULL;
	goldpiece = NULL;
}

void cMenuBackground :: Draw( SDL_Surface *target )
{
	if( mario_head )
	{
		SDL_BlitSurface( mario_head, NULL, screen, &rect_mario_head );
	}
	
	if( goldpiece )
	{
		SDL_BlitSurface( goldpiece, NULL, screen, &rect_goldpiece );
	}
}

void cMenuBackground :: Update( void )
{
	if( Leveleditor_Mode )
	{
		return;
	}

	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cStatusText :: cStatusText( double x, double y ) : cSprite( NULL, x, y )
{
	type = TYPE_STATUSTEXT;
	array = ARRAY_HUD;

	text_shadow = NULL;
}

cStatusText :: ~cStatusText( void )
{
	if( text_shadow )
	{
		SDL_FreeSurface( text_shadow );
		text_shadow = NULL;
	}
}

void cStatusText :: Draw( SDL_Surface *target )
{
	// Draw without camera
	rect.x = (int)posx + 2;
	rect.y = (int)posy + 2;

	if( text_shadow )
	{
		SDL_BlitSurface( text_shadow, NULL, target, &rect );
	}

	rect.x -= 2;
	rect.y -= 2;
	
	SDL_BlitSurface( image, NULL, target, &rect );
}


void cStatusText :: Update( void )
{
	Draw( screen );
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cPlayerPoints :: cPlayerPoints( double x, double y ) : cStatusText( x, y )
{
	array = ARRAY_HUD;
	type = TYPE_POINTDISPLAY;
	
	SetImage( NULL );
	SetPoints( pPlayer->points );
	massive = 0;



	for( int i = 0;i < 50;i++ )
	{
		Pointinfo[i].active = 0;
		Pointinfo[i].vely = 0;
		Pointinfo[i].surface = NULL;
		Pointinfo[i].surface_shadow = NULL;
	}
}

cPlayerPoints :: ~cPlayerPoints( void )
{
	for( unsigned int i = 0;i < 50;i++ )
	{
		if( Pointinfo[i].surface )
		{
			SDL_FreeSurface( Pointinfo[i].surface );
			Pointinfo[i].surface = NULL;
		}

		if( Pointinfo[i].surface_shadow )
		{
			SDL_FreeSurface( Pointinfo[i].surface_shadow );
			Pointinfo[i].surface_shadow = NULL;
		}
	}

	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}
}

void cPlayerPoints :: Update( void )
{
	if( Leveleditor_Mode )
	{
		return;
	}
	
	Draw( screen );

	for( unsigned int i = 0;i < 50;i++ )
	{
		if( Pointinfo[i].active == 1 )
		{
			if( Pointinfo[i].surface )
			{
				Pointinfo[i].vely -= ( Pointinfo[i].vely * 0.01 ) * Framerate.speedfactor;
				Pointinfo[i].y += Pointinfo[i].vely * Framerate.speedfactor;

				SDL_Rect r2;
				r2.x = (int)( Pointinfo[i].x - cameraposx );
				r2.y = (int)( Pointinfo[i].y - cameraposy );


				if( Pointinfo[i].x > pPreferences->Screen_W + cameraposx )
				{
					r2.x = pPreferences->Screen_W - Pointinfo[i].surface->w - 2;
				}

				if( Pointinfo[i].y - cameraposy > pPreferences->Screen_H )
				{
					r2.y = pPreferences->Screen_H - 20;
				}

				SDL_BlitSurface( Pointinfo[i].surface_shadow, NULL, screen, &r2 );

				r2.x -= 1;
				r2.y -= 1;

				SDL_BlitSurface( Pointinfo[i].surface, NULL, screen, &r2 );



				if( Pointinfo[i].vely > -1.0 )
				{
					Pointinfo[i].active = 0;
				}
			}
			else
			{
				Pointinfo[i].active = 0;
			}
		}
	}
}

void cPlayerPoints :: SetPoints( int points )
{
	pPlayer->points = points;
	
	sprintf( text, "Points %08d", (int)pPlayer->points );

	if( !( Game_Mode == MODE_OVERWORLD ) )
	{
		SetPos( 50.0, 18.0 );
	}
	else
	{
		SetPos( 50.0, 4 );
	}

	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}

	SetImage( TTF_RenderText_Blended( font, text, colorWhite ) );

	if( text_shadow )
	{
		SDL_FreeSurface( text_shadow );
		text_shadow = NULL;
	}

	text_shadow = TTF_RenderText_Blended( font, text, colorBlack );
}

void cPlayerPoints :: AddPoints( int aPoints, int x, int y )
{
	if( !pPlayer ) 
	{
		return;
	}
	
	SetPoints( pPlayer->points + aPoints );

	if( x != 0 || y != 0 )
	{
		for( unsigned int i = 0;i < 50;i++ )
		{
			if( Pointinfo[i].active == 0 )
			{
				char cPoints[30];
				sprintf( cPoints, "%d", aPoints );

				if( Pointinfo[i].surface )
				{
					SDL_FreeSurface( Pointinfo[i].surface );
				}

				if( x > ( pPreferences->Screen_W + cameraposx ) || x < cameraposx || 
					y > ( pPreferences->Screen_H + cameraposy ) || y < cameraposy )
				{
					Pointinfo[i].surface = TTF_RenderText_Blended( font_16, cPoints, colorGreen );
				}
				else
				{
					SDL_Color PointColor = colorWhite;

					if( PointColor.b - aPoints/6 > 0 )
					{
						PointColor.b -= aPoints/6;
					}
					else
					{
						PointColor.b = 0;
					}

					Pointinfo[i].surface = TTF_RenderText_Blended( font_16, cPoints, PointColor );

				}

				if( Pointinfo[i].surface_shadow )
				{
					SDL_FreeSurface( Pointinfo[i].surface_shadow );
				}

				Pointinfo[i].surface_shadow = TTF_RenderText_Blended( font_16, cPoints, colorBlack );

				Pointinfo[i].x = x;
				Pointinfo[i].y = y;
				Pointinfo[i].vely = -1.4;
				Pointinfo[i].active = 1;
				break;
			}
		}
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cTimeDisplay :: cTimeDisplay( double x, double y ) : cStatusText( x, y )
{
	array = ARRAY_HUD;
	type = TYPE_GAMETIMEDISPLAY;

	SetImage( NULL );
	massive = 0;
	counter = -1;
}

cTimeDisplay :: ~cTimeDisplay( void )
{
	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}
}

void cTimeDisplay :: Update( void )
{
	if( Leveleditor_Mode )
	{
		return;
	}

	counter += Framerate.speedfactor;

	int time = (int)( counter/DESIRED_FPS );	// time = seconds since start
	int minutes = (int)( time/60 );

	sprintf( text, "Time %02d:%02d", minutes, time - ( minutes*60 ) );

	if( strcmp( text,text_old ) != 0 )
	{
		strcpy( text_old, text );

		if( image )
		{
			SDL_FreeSurface( image );
			image = NULL;
		}

		SetImage( TTF_RenderText_Blended( font, text, colorWhite ) );

		if( text_shadow )
		{
			SDL_FreeSurface( text_shadow );
			text_shadow = NULL;
		}

		text_shadow = TTF_RenderText_Blended( font, text, colorBlack );
	}

	Draw( screen );
}

cItemBox :: cItemBox( double x, double y ) : cStatusText( x, y )
{
	array = ARRAY_HUD;
	type = TYPE_ITEMBOXDISPLAY;

	SetImage( GetImage( "sd:/apps/smc/data/pixmaps/game/itembox.png" ) );
	massive = 0;

	Item_counter = 0; // The alpha
	Item_counter_mod = 0;
	Item_id = 0;
	Item = new cSprite( NULL, 0, 0 );
}

cItemBox :: ~cItemBox( void )
{
	if( Item )
	{
		if( Item->image )
		{
			SDL_FreeSurface( Item->image );
			Item->image = NULL;
		}

		delete Item;
		Item = NULL;
	}

	image = NULL;
}

void cItemBox :: Update( void )
{
	if( Leveleditor_Mode || !pPlayer )
	{
		return;
	}

	if( pPlayer->maryo_type == MARYO_DEAD )
	{
		Item_counter = 50;
	}
	else if( Item_counter )
	{
		Item->posy += Framerate.speedfactor * 4;

		if( Item_counter_mod )
		{
			Item_counter += Framerate.speedfactor * 10;

			if( Item_counter >= 50 )
			{
				Item_counter_mod = 0;
				Item_counter = 50;
			}
		}
		else
		{
			Item_counter -= Framerate.speedfactor * 10;

			if( Item_counter <= 0 )
			{
				Item_counter_mod = 1;
				Item_counter = 1;
			}
		}

		// SDL_SetAlpha( Item->image, SDL_SRCCOLORKEY | SDL_SRCALPHA, (int)Item_counter );

		if( Item->posy > screen->h )
		{
			Item_counter = 0;
			Item_counter_mod = 0;
			Item_id = 0;
		}

		if( !Item->PosValid( (int)Item->posx, (int)Item->posy ) && Item->iCollisionType == 4 ) // If colliding with the Player
		{
			Item_counter = 0;
			Item_counter_mod = 0;

			unsigned int Item_id_temp = Item_id; // player can set the item back
			Item_id = 0;
			pPlayer->Get_Item( Item_id_temp, 1 );

		}
	}

	if( Item_id && Item->image && !Leveleditor_Mode )
	{
		if( !Item_counter ) // Draw it without Camera
		{
			SDL_Rect dr;

			dr.x = (int)Item->posx;
			dr.y = (int)Item->posy;
			dr.w = Item->image->w;
			dr.h = Item->image->h;

			SDL_BlitSurface( Item->image, NULL, screen, &dr );
		}
		else
		{
			if( (int)Item_counter > 15 )
			{
				Item->Draw( screen );
			}
		}
	}

	Draw( screen );
}

void cItemBox :: Get_Item( unsigned int Item_type )
{
	pAudio->PlaySound( SOUNDS_DIR "/itembox_set.ogg" );

	if( Item->image )
	{
		SDL_FreeSurface( Item->image );
		Item->image = NULL;
	}

	Reset();

	// reset the startposition
	Item->startposx = 0;
	Item->startposy = 0;

	if( Item_type == TYPE_MUSHROOM_DEFAULT )
	{
		Item->SetImage( LoadImage( PIXMAPS_DIR "/game/items/mushroom_red.png" ) );
		Item->SetPos( posx + 11, posy + 11 );
	}
	else if( Item_type == TYPE_FIREPLANT )
	{
		Item->SetImage( LoadImage( PIXMAPS_DIR "/game/items/flower_red_1.png" ) );
		Item->SetPos( posx + 12, posy + 17 );
	}

	Item_id = Item_type;
}

void cItemBox :: Request_Item( void )
{
	if( !Item_id || Item_counter ) 
	{
		return;
	}

	pAudio->PlaySound( SOUNDS_DIR "/itembox_get.ogg" );

	Item_counter = 255;

	Item->SetPos( Item->posx + cameraposx, Item->posy + cameraposy );
}

void cItemBox :: Push_back( void )
{
	Item_counter = 0;
	Item_counter_mod = 0;

	Item->posx = Item->startposx;
	Item->posy = Item->startposy;
}

void cItemBox :: Reset( void )
{
	Item_id = 0;
	Item_counter = 0;
	Item_counter_mod = 0;
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cDebugDisplay :: cDebugDisplay( double x, double y ) : cStatusText( x, y )
{
	array = ARRAY_HUD;
	type = TYPE_DEBUGDISPLAY;

	SetImage( NULL );
	text_shadow = NULL;

	dlvltext = NULL;
	dlvltext_shadow = NULL;

	dpasstext = NULL;
	dpasstext_shadow = NULL;
	dmasstext = NULL;
	dmasstext_shadow = NULL;
	denemtext = NULL;
	denemtext_shadow = NULL;

	dactivtext = NULL;
	dactivtext_shadow = NULL;
		dachmasstext = NULL;
		dachmasstext_shadow = NULL;
		daccloudtext = NULL;
		daccloudtext_shadow = NULL;
		dacgoldboxtext = NULL;
		dacgoldboxtext_shadow = NULL;
		dacbonusboxtext = NULL;
		dacbonusboxtext_shadow = NULL;
		dacothertext = NULL;
		dacothertext_shadow = NULL;

	sprintf( lvl_text_old, "empty" );
	sprintf( text, "empty" );
	strcpy( text_old, text );

	passcount = 0;
	masscount = 0;
	enemcount = 0;
	activcount = 0;	
		achmasscount = 0;
		accloudcount = 0;
		acgoldboxcount = 0;
		acbonusboxcount = 0;
		acothercount = 0;

	counter = 0;
	massive = 0;
}

cDebugDisplay :: ~cDebugDisplay( void )
{
	// Level
	if( dlvltext ) 
	{
		SDL_FreeSurface( dlvltext );
		dlvltext = NULL;
	}
	if( dlvltext_shadow ) 
	{
		SDL_FreeSurface( dlvltext_shadow );
		dlvltext_shadow = NULL;
	}

	// Passive
	if( dpasstext ) 
	{
		SDL_FreeSurface( dpasstext );
		dpasstext = NULL;
	}
	if( dpasstext_shadow ) 
	{
		SDL_FreeSurface( dpasstext_shadow );
		dpasstext_shadow = NULL;
	}

	// Massive
	if( dmasstext ) 
	{
		SDL_FreeSurface( dmasstext );
		dmasstext = NULL;
	}
	if( dmasstext_shadow ) 
	{
		SDL_FreeSurface( dmasstext_shadow );
		dmasstext_shadow = NULL;
	}
	
	// Enemy
	if( denemtext ) 
	{
		SDL_FreeSurface( denemtext );
		denemtext = NULL;
	}
	if( denemtext_shadow ) 
	{
		SDL_FreeSurface( denemtext_shadow );
		denemtext_shadow = NULL;
	}

	// Active
	if( dactivtext ) 
	{
		SDL_FreeSurface( dactivtext );
		dactivtext = NULL;
	}
	if( dactivtext_shadow ) 
	{
		SDL_FreeSurface( dactivtext_shadow );
		dactivtext_shadow = NULL;
	}
	
	// Active : Halfmassive
	if( dachmasstext ) 
	{
		SDL_FreeSurface( dachmasstext );
		dachmasstext = NULL;
	}
	if( dachmasstext_shadow ) 
	{
		SDL_FreeSurface( dachmasstext_shadow );
		dachmasstext_shadow = NULL;
	}

	// Active : Cloud
	if( daccloudtext ) 
	{
		SDL_FreeSurface( daccloudtext );
		daccloudtext = NULL;
	}
	if( daccloudtext_shadow ) 
	{
		SDL_FreeSurface( daccloudtext_shadow );
		daccloudtext_shadow = NULL;
	}

	// Active : GoldBox
	if( dacgoldboxtext ) 
	{
		SDL_FreeSurface( dacgoldboxtext );
		dacgoldboxtext = NULL;
	}
	if( dacgoldboxtext_shadow ) 
	{
		SDL_FreeSurface( dacgoldboxtext_shadow );
		dacgoldboxtext_shadow = NULL;
	}

	// Active : BonusBox
	if( dacbonusboxtext ) 
	{
		SDL_FreeSurface( dacbonusboxtext );
		dacbonusboxtext = NULL;
	}
	if( dacbonusboxtext_shadow ) 
	{
		SDL_FreeSurface( dacbonusboxtext_shadow );
		dacbonusboxtext_shadow = NULL;
	}

	// Active : Other
	if( dacothertext ) 
	{
		SDL_FreeSurface( dacothertext );
		dacothertext = NULL;
	}
	if( dacothertext_shadow ) 
	{
		SDL_FreeSurface( dacothertext_shadow );
		dacothertext_shadow = NULL;
	}

	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}
}

void cDebugDisplay :: Update( void )
{
	if( counter <= 0 )
	{
		if( strcmp( text, text_old ) != 0 )
		{
			sprintf( text, "empty" );
			strcpy( text_old, text );

			if( image )
			{
				SDL_FreeSurface( image );
				image = NULL;
			}
			
			if( text_shadow )
			{
				SDL_FreeSurface( text_shadow );
				text_shadow = NULL;
			}
		}

		return;
	}
	else
	{
		counter -= Framerate.speedfactor;
	}
	
	if( strcmp( text_old, text ) != 0 )
	{
		strcpy( text_old, text );
		
		if( image )
		{
			SDL_FreeSurface( image );
			image = NULL;
		}

		SetImage( TTF_RenderText_Blended( font, text, colorWhite ) );

		if( text_shadow )
		{
			SDL_FreeSurface( text_shadow );
			text_shadow = NULL;
		}

		text_shadow = TTF_RenderText_Blended( font, text, colorBlack );
	}

	
	SetPos( (double)( pPreferences->Screen_W/2 - rect.w/2 - 10 ), posy );

	Draw( screen );
}

void cDebugDisplay :: GameDebugDraw( void )
{
	if( !Game_debug || pPlayer->maryo_type == MARYO_DEAD ) 
	{
		return;
	}

	// The Black Background
	boxRGBA( screen, screen->w - 205, screen->h/2 - 255, screen->w - 25, screen->h/2 - 35, 0, 0, 0, 255 );

	// Player debug info
	SDL_Rect dr;
	char dtext[45];

	
	sprintf( dtext, "Player Pos X %d ,Y %d", (int)( pPlayer->posx ), (int)( pPlayer->posy ) );

	SDL_Surface *dpos = TTF_RenderText_Blended( font_16, dtext, colorWhite );
	SDL_Surface *dpos_shadow = TTF_RenderText_Blended( font_16, dtext, colorBlack );


	dr.x = screen->w - 200;
	dr.y = screen->h/2 - 250;
	dr.w = dpos->w;
	dr.h = dpos->h;

	if( dpos_shadow ) 
	{
		SDL_BlitSurface( dpos_shadow, NULL, screen, &dr );

		dr.x -= 1;
		dr.y -= 1;

		SDL_FreeSurface( dpos_shadow );
		dpos_shadow = NULL;
	}

	if( dpos ) 
	{
		SDL_BlitSurface( dpos, NULL, screen, &dr );

		dr.y += dpos->h + 3;
		dr.x += 1;

		SDL_FreeSurface( dpos );
		dpos = NULL;
	}


	// Level Debug info
	if( strcmp( pLevel->levelfile.c_str(), lvl_text_old ) != 0 ) 
	{
		string lvl_text = pLevel->levelfile;
		
		lvl_text.erase( 0, pPreferences->level_dir.length() + 1 );
		lvl_text.insert( 0, "Level : ");
		lvl_text.erase( lvl_text.length() - 4, lvl_text.length() );

		if( dlvltext ) 
		{
			SDL_FreeSurface( dlvltext );
			dlvltext = NULL;
		}

		dlvltext = TTF_RenderText_Blended( font_16, lvl_text.c_str(), colorWhite );

		if( dlvltext_shadow ) 
		{
			SDL_FreeSurface( dlvltext_shadow );
			dlvltext_shadow = NULL;
		}

		dlvltext_shadow = TTF_RenderText_Blended( font_16, lvl_text.c_str(), colorBlack );

		strcpy( lvl_text_old, pLevel->levelfile.c_str() );

		if( dlvltext ) 
		{
			dr.w = dlvltext->w;
			dr.h = dlvltext->h;	
		}


		if( dlvltext_shadow ) 
		{
			SDL_BlitSurface( dlvltext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dlvltext ) 
		{
			SDL_BlitSurface( dlvltext, NULL, screen, &dr );
		}

		dr.y += dlvltext->h + 3;
		dr.x += 2;
	}

	// ### Level Objects
	// # Passive
	if( passcount != (unsigned int)PassiveObjects.size() ) 
	{
		char pass_text[100];
		sprintf( pass_text,"Passive Objects : %d", PassiveObjects.size() );
		
		if( dpasstext ) 
		{
			SDL_FreeSurface( dpasstext );
			dpasstext = NULL;
		}

		dpasstext = TTF_RenderText_Blended( font_16, pass_text, colorWhite );

		if( dpasstext_shadow ) 
		{
			SDL_FreeSurface( dpasstext_shadow );
			dpasstext_shadow = NULL;
		}

		dpasstext_shadow = TTF_RenderText_Blended( font_16, pass_text, colorBlack );
		
		if( dpasstext )
		{
			dr.w = dpasstext->w;
			dr.h = dpasstext->h;
		}

		if( dpasstext_shadow ) 
		{
			SDL_BlitSurface( dpasstext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dpasstext ) 
		{
			SDL_BlitSurface( dpasstext, NULL, screen, &dr );
			dr.y += dpasstext->h + 3;
		}
	}

	
	// # Massive
	if( masscount != (unsigned int)MassiveObjects.size() ) 
	{
		char mass_text[100];
		sprintf( mass_text,"Massive Objects : %d", MassiveObjects.size() );
		
		if( dmasstext ) 
		{
			SDL_FreeSurface( dmasstext );
			dmasstext = NULL;
		}

		dmasstext = TTF_RenderText_Blended( font_16, mass_text, colorWhite );

		if( dmasstext_shadow ) 
		{
			SDL_FreeSurface( dmasstext_shadow );
			dmasstext_shadow = NULL;
		}

		dmasstext_shadow = TTF_RenderText_Blended( font_16, mass_text, colorBlack );

		dr.w = dmasstext->w;
		dr.h = dmasstext->h;

		if( dmasstext_shadow ) 
		{
			SDL_BlitSurface( dmasstext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dmasstext ) 
		{
			SDL_BlitSurface( dmasstext, NULL, screen, &dr );
		}

		dr.y += dmasstext->h + 3;
		dr.x += 2;
	}

	
	// # Enemy
	if( enemcount != (unsigned int)EnemyObjects.size() ) 
	{
		char enem_text[100];
		sprintf( enem_text,"Enemy Objects : %d", EnemyObjects.size() );
		
		if( denemtext ) 
		{
			SDL_FreeSurface( denemtext );
			denemtext = NULL;
		}

		denemtext = TTF_RenderText_Blended( font_16, enem_text, colorWhite );

		dr.w = denemtext->w;
		dr.h = denemtext->h;

		if( denemtext_shadow ) 
		{
			SDL_FreeSurface( denemtext_shadow );
			denemtext_shadow = NULL;
		}

		denemtext_shadow = TTF_RenderText_Blended( font_16, enem_text, colorBlack );

		if( denemtext_shadow ) 
		{
			SDL_BlitSurface( denemtext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( denemtext ) 
		{
			SDL_BlitSurface( denemtext, NULL, screen, &dr );
		}

		dr.y += denemtext->h + 3;
		dr.x += 2;
	}


	// # Active
	if( activcount != (unsigned int)ActiveObjects.size() ) 
	{
		char activ_text[100];
		sprintf( activ_text,"Active Objects : %d", ActiveObjects.size() );
		
		if( dactivtext ) 
		{
			SDL_FreeSurface( dactivtext );
			dactivtext = NULL;
		}

		dactivtext = TTF_RenderText_Blended( font_16, activ_text, colorWhite );

		if( dactivtext_shadow ) 
		{
			SDL_FreeSurface( dactivtext_shadow );
			dactivtext_shadow = NULL;
		}

		dactivtext_shadow = TTF_RenderText_Blended( font_16, activ_text, colorBlack );

		dr.w = dactivtext->w;
		dr.h = dactivtext->h;

		if( dactivtext_shadow ) 
		{
			SDL_BlitSurface( dactivtext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dactivtext ) 
		{
			SDL_BlitSurface( dactivtext, NULL, screen, &dr );
		}

		dr.y += dactivtext->h + 3;
		dr.x += 2;
	}

	// # Active Objects Rectangle



	SDL_Rect r2 = dr;

	r2.x += 3;
	r2.w = 135;
	r2.h = 95;

	r2.h = 1;
	SDL_FillRect( screen,&r2, white );	// Up
	r2.y += 95;
	SDL_FillRect( screen,&r2, white );	// Down
	r2.y += 1;
	SDL_FillRect( screen,&r2, grey );	// Down Shadow
	r2.y -= 96;
	r2.h = 96;
	r2.w = 1;
	SDL_FillRect( screen,&r2, white );	// Left
	r2.x += 135;
	SDL_FillRect( screen,&r2, white );	// Right
	r2.x += 1;
	r2.h += 1;
	SDL_FillRect( screen,&r2, grey );	// Right Shadow

	dr.x += 10;
	dr.y += 5;
	
	// # Active : HalfMassive
	if( achmasscount != (unsigned int)ActiveObjects.size() ) 
	{
		unsigned int HalfmassiveCount = 0;

		for( unsigned int i = 0;i < ActiveObjects.size(); i++ ) 
		{
			if(ActiveObjects[i] && ActiveObjects[i]->halfmassive && ActiveObjects[i]->type == TYPE_HALFMASSIVE) 
			{
				HalfmassiveCount++;
			}
		}
		acothercount += HalfmassiveCount;
		
		char achmass_text[100];
		sprintf( achmass_text,"HalfMassive : %d", HalfmassiveCount );
		
		if( dachmasstext ) 
		{
			SDL_FreeSurface( dachmasstext );
			dachmasstext = NULL;
		}

		dachmasstext = TTF_RenderText_Blended( font_16, achmass_text, colorWhite );

		if( dachmasstext_shadow ) 
		{
			SDL_FreeSurface( dachmasstext_shadow );
			dachmasstext_shadow = NULL;
		}

		dachmasstext_shadow = TTF_RenderText_Blended( font_16, achmass_text, colorBlack );

		dr.w = dachmasstext->w;
		dr.h = dachmasstext->h;

		if( dachmasstext_shadow ) 
		{
			SDL_BlitSurface( dachmasstext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dachmasstext ) 
		{
			SDL_BlitSurface( dachmasstext, NULL, screen, &dr );
		}

		dr.y += dachmasstext->h + 3;
		dr.x += 1;
	}



	// # Active : Cloud
	if( accloudcount != (unsigned int)ActiveObjects.size() ) 
	{
		unsigned int CloudCount = 0;

		for( unsigned int i = 0;i < ActiveObjects.size(); i++ ) 
		{
			if( ActiveObjects[i] && ActiveObjects[i]->type == TYPE_CLOUD ) 
			{
				CloudCount++;
			}
		}
		acothercount += CloudCount;
		
		char accloud_text[100];
		sprintf( accloud_text, "Cloud : %d", CloudCount );
		
		if( daccloudtext ) 
		{
			SDL_FreeSurface( daccloudtext );
			daccloudtext = NULL;
		}

		daccloudtext = TTF_RenderText_Blended( font_16, accloud_text, colorWhite );

		if( daccloudtext_shadow ) 
		{
			SDL_FreeSurface( daccloudtext_shadow );
			daccloudtext_shadow = NULL;
		}

		daccloudtext_shadow = TTF_RenderText_Blended( font_16, accloud_text, colorBlack );
		
		dr.w = daccloudtext->w;
		dr.h = daccloudtext->h;

		if( daccloudtext_shadow ) 
		{
			SDL_BlitSurface( daccloudtext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( daccloudtext ) 
		{
			SDL_BlitSurface( daccloudtext, NULL, screen, &dr );
		}

		dr.y += daccloudtext->h + 3;
		dr.x += 1;
	}

	// # Active : Goldbox
	if( acgoldboxcount != (unsigned int)ActiveObjects.size() ) 
	{
		unsigned int GoldboxCount = 0;

		for( unsigned int i = 0; i < ActiveObjects.size(); i++ ) 
		{
			if(ActiveObjects[i] && ActiveObjects[i]->type == TYPE_GOLDBOX) 
			{
				GoldboxCount++;
			}
		}
		acothercount += GoldboxCount;
		
		char acgoldbox_text[100];
		sprintf( acgoldbox_text,"Goldbox : %d", GoldboxCount );
		
		if( dacgoldboxtext ) 
		{
			SDL_FreeSurface( dacgoldboxtext );
			dacgoldboxtext = NULL;
		}

		dacgoldboxtext = TTF_RenderText_Blended( font_16, acgoldbox_text, colorWhite );

		if( dacgoldboxtext_shadow ) 
		{
			SDL_FreeSurface( dacgoldboxtext_shadow );
			dacgoldboxtext_shadow = NULL;
		}

		dacgoldboxtext_shadow = TTF_RenderText_Blended( font_16, acgoldbox_text, colorBlack );

		dr.w = dacgoldboxtext->w;
		dr.h = dacgoldboxtext->h;

		if( dacgoldboxtext_shadow ) 
		{
			SDL_BlitSurface( dacgoldboxtext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dacgoldboxtext ) 
		{
			SDL_BlitSurface( dacgoldboxtext, NULL, screen, &dr );
		}

		dr.y += dacgoldboxtext->h + 3;
		dr.x += 1;
	}
	

	// # Active : Bonusbox
	if( acbonusboxcount != (unsigned int)ActiveObjects.size() ) 
	{
		unsigned int BonusboxCount = 0;

		for( unsigned int i = 0; i < ActiveObjects.size(); i++ ) 
		{
			if(ActiveObjects[i] && (ActiveObjects[i]->type == TYPE_BONUSBOX_LIVE || ActiveObjects[i]->type == TYPE_BONUSBOX_MUSHROOM_FIRE)) 
			{
				BonusboxCount++;
			}
		}
		acothercount += BonusboxCount;
		
		char acbonusbox_text[100];
		sprintf( acbonusbox_text,"Bonusbox : %d", BonusboxCount );
		
		if( dacbonusboxtext ) 
		{
			SDL_FreeSurface( dacbonusboxtext );
			dacbonusboxtext = NULL;
		}

		dacbonusboxtext = TTF_RenderText_Blended( font_16, acbonusbox_text, colorWhite );

		if( dacbonusboxtext_shadow ) 
		{
			SDL_FreeSurface( dacbonusboxtext_shadow );
			dacbonusboxtext_shadow = NULL;
		}

		dacbonusboxtext_shadow = TTF_RenderText_Blended( font_16, acbonusbox_text, colorBlack );

		dr.w = dacbonusboxtext->w;
		dr.h = dacbonusboxtext->h;

		if( dacbonusboxtext_shadow ) 
		{
			SDL_BlitSurface( dacbonusboxtext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dacbonusboxtext ) 
		{
			SDL_BlitSurface( dacbonusboxtext, NULL, screen, &dr );
		}

		dr.y += dacbonusboxtext->h + 3;
		dr.x += 1;
	}



	// # Active : Other
	if( acothercount != acothercount_old ) 
	{
		char acother_text[100];
		sprintf( acother_text, "Other : %d", ActiveObjects.size() - acothercount );

		acothercount_old = acothercount = 0;

		if( dacothertext ) 
		{
			SDL_FreeSurface( dacothertext );
			dacothertext = NULL;
		}

		dacothertext = TTF_RenderText_Blended( font_16, acother_text, colorWhite );

		if( dacothertext_shadow ) 
		{
			SDL_FreeSurface( dacothertext_shadow );
			dacothertext_shadow = NULL;
		}

		dacothertext_shadow = TTF_RenderText_Blended( font_16, acother_text, colorBlack );

		dr.w = dacothertext->w;
		dr.h = dacothertext->h;

		if( dacothertext_shadow ) 
		{
			SDL_BlitSurface( dacothertext_shadow, NULL, screen, &dr );
		}

		dr.x -= 1;
		dr.y -= 1;

		if( dacothertext ) 
		{
			SDL_BlitSurface( dacothertext, NULL, screen, &dr );

			dr.y += dacothertext->h + 3;
			dr.x += 1;
		}
	}

	/* ### Todo
	- Other Special ( Active ) Objects
	- Music, Sound Volume
	- Level Music
	- Sounds Played
	- Player State
	- Player vely,vely
	- Player onGround
	*/

	// Frames per Second
	char dc[20];

	sprintf( dc , "FPS : %d", (int)Framerate.fps );

	SDL_Surface *dfps = TTF_RenderText_Blended( font_16, dc, colorWhite );
	SDL_Surface *dfps_shadow = TTF_RenderText_Blended( font_16, dc, colorBlack );

	dr.x = 15;
	dr.y = 5;
	dr.w = dfps->w;
	dr.h = dfps->h;

	if( dfps_shadow ) 
	{
		SDL_BlitSurface( dfps_shadow , NULL, screen, &dr );

		SDL_FreeSurface( dfps_shadow );
		dfps_shadow = NULL;
	}

	dr.x -= 1;
	dr.y -= 1;

	if( dfps ) 
	{
		SDL_BlitSurface( dfps , NULL, screen, &dr );

		SDL_FreeSurface( dfps );
		dfps = NULL;
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cGoldDisplay :: cGoldDisplay( double x, double y ) : cStatusText( x, y )
{
	type = TYPE_GOLDDISPLAY;
	SetImage( NULL );
	SetGold( pPlayer->goldpieces );
	massive = 0;

	array = ARRAY_HUD;
}

cGoldDisplay :: ~cGoldDisplay( void )
{
	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}
}

void cGoldDisplay :: Update( void )
{
	if( Leveleditor_Mode ) 
	{
		return;
	}

	Draw( screen );
}

void cGoldDisplay :: SetGold( int gold )
{
	pPlayer->goldpieces = gold;
	
	if( gold >= 100 )
	{
		pPlayer->goldpieces -= 100;
		pAudio->PlaySound( SOUNDS_DIR "/live_up.ogg" );	
		livedisplay->AddLives( 1 );

		for( unsigned int i = 0;i < 50;i++ )
		{
			if( pointsdisplay->Pointinfo[i].active == 0 )
			{
				char Text[30];
				sprintf( Text, "1UP" );

				if( pointsdisplay->Pointinfo[i].surface )
				{
					SDL_FreeSurface( pointsdisplay->Pointinfo[i].surface );
				}

				if( pointsdisplay->Pointinfo[i].surface_shadow )
				{
					SDL_FreeSurface( pointsdisplay->Pointinfo[i].surface_shadow );
				}

				pointsdisplay->Pointinfo[i].surface = TTF_RenderText_Blended( font, Text, colorRed );
				pointsdisplay->Pointinfo[i].surface_shadow = TTF_RenderText_Blended( font, Text, colorBlack );
				pointsdisplay->Pointinfo[i].x = pPlayer->posx + pPlayer->image->w/3;
				pointsdisplay->Pointinfo[i].y = pPlayer->posy + 5;
				pointsdisplay->Pointinfo[i].vely = -1.4;
				pointsdisplay->Pointinfo[i].active = 1;
				break;
			}
		}
	}
	
	sprintf( text, "x%d", pPlayer->goldpieces );

	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}

	SetImage( TTF_RenderText_Blended( font, text, colorWhite ) );

	if( text_shadow )
	{
		SDL_FreeSurface( text_shadow );
		text_shadow = NULL;
	}

	text_shadow = TTF_RenderText_Blended( font, text, colorBlack );
}

void cGoldDisplay :: AddGold( int gold )
{
	if( pPlayer ) 
	{
		SetGold( pPlayer->goldpieces + gold );
	}
}


/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cLiveDisplay :: cLiveDisplay( double x, double y ) : cStatusText( x, y )
{
	type = TYPE_LIFEDISPLAY;

	SetImage( NULL );

	SetLives( pPlayer->lives );
	massive = 0;

	array = ARRAY_HUD;
}

cLiveDisplay :: ~cLiveDisplay( void )
{
	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}
}

void cLiveDisplay :: Update( void )
{
	if( Leveleditor_Mode ) 
	{
		return;
	}

	Draw( screen );
}

void cLiveDisplay :: SetLives( int lives )
{
	pPlayer->lives = lives;
	
	if( lives >= 0 ) 
	{
		if( !( Game_Mode == MODE_OVERWORLD ) ) // if not in OverWorld
		{
			SetPos( pPreferences->Screen_W - pPreferences->Screen_W/10, 18.0 );
			sprintf( text, "%dx", pPlayer->lives );
		}
		else
		{
			SetPos( pPreferences->Screen_W - pPreferences->Screen_W/7.5, 4 );
			sprintf( text, "Lives : %d", pPlayer->lives );
		}
	}

	if( image )
	{
		SDL_FreeSurface( image );
		image = NULL;
	}

	SetImage( TTF_RenderText_Blended( font, text, colorGreen ) );

	if( text_shadow )
	{
		SDL_FreeSurface( text_shadow );
		text_shadow = NULL;
	}

	text_shadow = TTF_RenderText_Blended( font, text, colorBlack );
}

void cLiveDisplay :: AddLives( int lives )
{
	if( pPlayer ) 
	{
		SetLives( pPlayer->lives + lives );
	}
}
