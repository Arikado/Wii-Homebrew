/***************************************************************************
    level.cpp  -  class for handling level loading and many other things
                             -------------------
    copyright            : (C) 2003-2004 by Artur Hallmann, (C) 2003-2005 by FluXy
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

#include <stdio.h> // Date & Time
#include <stdlib.h>


cBackground :: cBackground( void )
{
	img_type = BG_IMG_NONE;
	gradient_type = BG_GRADIENT_VER;

	img_file_1.reserve( 120 );
	img_file_2.reserve( 120 );

	img_1 = NULL;
	img_2 = NULL;

	rect.x = 0;
	rect.y = 0;
	rect.w = 0;
	rect.h = 0;
}

cBackground :: ~cBackground( void )
{
	if( img_1 ) 
	{
		img_1 = NULL;
	}

	if( img_2 ) 
	{
		img_2 = NULL;
	}
}

void cBackground :: Set_image_type( BackgroundImageType ntype )
{
	img_type = ntype;
}

void cBackground :: Set_gradient_type( BackgroundGradientType ntype )
{
	gradient_type = ntype;
}

void cBackground :: Set_color_1( const Color &color )
{ 
	color_1 = color; 
}

void cBackground :: Set_color_2( const Color &color )
{
	color_2 = color; 
}

void cBackground :: Set_images( string nimg_file_1, string nimg_file_2 /* = "" */ )
{
	img_file_1 = nimg_file_1;
	img_file_2 = nimg_file_2;

	if( img_file_1.length() > 3 )
	{
		if( img_file_1.find( PIXMAPS_DIR ) != string::npos )
		{
			img_file_1.erase( 0, strlen( PIXMAPS_DIR ) + 1 );
		}

		img_1 = GetImage( img_file_1 );
	}

	if( img_file_2.length() > 3 )
	{
		if( img_file_2.find( PIXMAPS_DIR ) != string::npos )
		{
			img_file_2.erase( 0, strlen( PIXMAPS_DIR ) + 1 );
		}

		img_2 = GetImage( img_file_2 );		
	}
}

void cBackground :: Draw( SDL_Surface *target )
{
	if( gradient_type != BG_GRADIENT_NONE )  // Draw the gradient
	{
		DrawGradient( target );
	}

	if( pPreferences->Backgroundimages_disabled )
	{
		return;
	}

	if( img_type == BG_IMG_LEFTRIGHT && img_1 ) 
	{
		int xpos = -(int)( cameraposx/5 );

		while( xpos < -img_1->w )
		{
			xpos += img_1->w;	
		}
		
		while( xpos < screen->w )
		{
			rect.x = xpos;
			rect.y = (Sint16)( screen->h - img_1->h ) - (Sint16)( cameraposy/3 );

			SDL_BlitSurface( img_1, NULL, target, &rect );

			xpos += img_1->w;
		}
	}
}

void cBackground :: DrawGradient( SDL_Surface *target )
{
	if( color_1 == color_2 ) // no need to draw a gradient if both colors are the same
	{ 
		SDL_FillRect( target, NULL, SDL_MapRGB( target->format, color_1.red, color_1.green, color_1.blue ) );
	}
	else
	{
		/* Calculates the color for each line, based in the generic
		 *	equation for functions: y = mx + b 
		 */
		SDL_Rect rect;
		Uint8 r, g, b;
		unsigned int pos = 0;

		/*if( cameraposy < 0 ) TODO
		{
			y -= (unsigned int)( cameraposy/8 );

			rect.x = 0;
			rect.y = 0;
			rect.w = target->w;
			rect.h = y;

			SDL_FillRect( target, &rect, SDL_MapRGB( target->format, gradient_top_color.red, gradient_top_color.green, gradient_top_color.blue ) );
		}*/

		if( gradient_type == BG_GRADIENT_VER )
		{
			while( pos < (unsigned int)target->h )
			{
				rect.x = 0;
				rect.y = pos;
				rect.w = target->w;
				rect.h = 2;

				r = (Uint8)( ( (float)( color_1.red - color_2.red ) / ( 0 - target->h ) ) * pos + color_1.red );
				g = (Uint8)( ( (float)( color_1.green - color_2.green ) / ( 0 - target->h ) ) * pos + color_1.green );
				b = (Uint8)( ( (float)( color_1.blue - color_2.blue ) / ( 0 - target->h ) ) * pos + color_1.blue );
		
				SDL_FillRect( target, &rect, SDL_MapRGB( target->format, r, g, b ) );

				pos += rect.h;
			}
		}
		else if( gradient_type == BG_GRADIENT_HOR )
		{
			while( pos < (unsigned int)target->w )
			{
				rect.x = pos;
				rect.y = 0;
				rect.w = 4;
				rect.h = target->h;

				r = (Uint8)( ( (float)( color_1.red - color_2.red ) / ( 0 - target->w ) ) * pos + color_1.red );
				g = (Uint8)( ( (float)( color_1.green - color_2.green ) / ( 0 - target->w ) ) * pos + color_1.green );
				b = (Uint8)( ( (float)( color_1.blue - color_2.blue ) / ( 0 - target->w ) ) * pos + color_1.blue );
		
				SDL_FillRect( target, &rect, SDL_MapRGB( target->format, r, g, b ) );
				

				pos += rect.w;
			}
		}

	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cLevel :: cLevel( void )
{
	mod_Camera_up = 0;
	mod_Camera_left = 0;
	mod_Camera_right = 0;

	levelengine_version = -1; // no version

	musicfile = "";
	valid_music = 0;

	levelfile = "";

	musicfile.reserve( 150 );
	levelfile.reserve( 150 );
	
	background = new cBackground();
}

cLevel :: ~cLevel( void )
{
	Unload();

	if( background ) 
	{
		delete background;
		background = NULL;
	}
}

int cLevel :: New( string filename ) // V.1.1
{
	Unload();
	
	if( filename.compare( "null" ) == 0 )
	{
		unsigned int i = 1;

		filename = pPreferences->level_dir;
		filename.insert( filename.length(), "/new_1.txt" );

		FILE *fp = fopen( filename.c_str(), "r" );
		
		while( fp ) 
		{
			char ic[2];

			i++;

			sprintf( ic, "%d", i );
			filename.replace( filename.length() - 5, 1, ic );
			fclose( fp );
			
			fp = fopen( filename.c_str(), "r" );

			if( i > 99 ) 
			{
				break;
			}
		}
	}

	ifstream ifs;
	ifs.open( filename.c_str(), ios :: out );

	if( ifs )	// Level already exists
	{
		printf( "New Level Error : Level already exists ( %s )\n", filename.c_str() );
		return 0; 
	} 
	else // Level does not exists - Succesfull
	{
		ifs.close();
		printf( "Succesfully created a New Level ( %s )\n", filename.c_str() );
		levelfile = filename;
		Save();
		return 1; 
	}

	return 0;
}

bool cLevel :: Load( string szFilename ) // V.2.0
{
	if( szFilename.length() < 3 )
	{
		return 0;
	}

	ifstream ifs( szFilename.c_str(), ios :: in );
	
	if( !ifs )
	{
		printf( "Could not load Level : %s\n", szFilename.c_str() );
		return 0;
	}
	
	Unload();
	
	musicfile = MUSIC_DIR "/" DEFAULT_MUSIC;
	valid_music = valid_file( musicfile );

	
	background->Set_image_type( BG_IMG_NONE );
	background->Set_gradient_type( BG_GRADIENT_VER );
	background->Set_images( DEFAULT_BACKGROUND );

	char contents[500]; // maximal length of a line
	
	levelfile = szFilename;
	
	for( unsigned int i = 0; ifs.getline( contents, sizeof( contents ) ); i++ )
	{
		Parse_Map( contents, i );
	}

	ifs.close();
	
	if( levelengine_version < 0 ) // no Levelengine_version entry found
	{
		levelengine_version = 0;
	}

	// Player info bar reset
	pHudManager->Load();
	Framerate.Reset();

	pAudio->FadeOutMusic( 1000 );
	if( valid_music )
	{
		pAudio->PlayMusic( musicfile, -1, 0, 1000 );
	}

	return 1;
}

void cLevel :: Save( void ) // V 2.5
{
	pAudio->PlaySound( SOUNDS_DIR "/level_saved.ogg" );

	ofstream ofs( levelfile.c_str(), ios::out | ios::trunc );

	string tempname; // Temporary image path
	tempname.reserve( 120 );

	unsigned int i;
	char row[300];

	// Game Version
	sprintf( row, "### Level Saved with %s V.%s ###\n", CAPTION, VERSION );
	ofs.write( row, strlen( row ) );

	//Get_current_time() has a \n in the string
	sprintf( row, "### Level Saved on the %s\n", Get_current_time().c_str() );
	ofs.write( row, strlen( row ) );

	 // The Current Levelengine version
	sprintf( row, "Levelengine_version %d\n\n", 1 );
	ofs.write( row, strlen( row ) );
	
	// Music
	tempname = musicfile;
	tempname.erase( 0, strlen( MUSIC_DIR ) + 1 );
	
	if( tempname.compare( DEFAULT_MUSIC ) != 0 ) // only save if it's not the default music
	{
		sprintf( row, "Music %s\n", tempname.c_str() );
		ofs.write( row, strlen( row ) );
	}

	// Camera Modifications
	sprintf( row, "Mod_Camera %d %d %d\n", mod_Camera_up, mod_Camera_left, mod_Camera_right );
	ofs.write( row, strlen( row ) );

	// Background color 1
	sprintf( row, "Background_color_1 %d %d %d\n", background->color_1.red, background->color_1.green, background->color_1.blue );
	ofs.write( row, strlen( row ) );

	// Background color 2
	sprintf( row, "Background_color_2 %d %d %d\n\n", background->color_2.red, background->color_2.green, background->color_2.blue );
	ofs.write( row, strlen( row ) );

	// only save the Background image informations if needed
	if( background->img_type != BG_IMG_NONE && background->img_file_1.length() > 3 )
	{
		// Background image 1
		sprintf( row, "Background_image_type %d\n", (unsigned int)background->img_type );
		ofs.write( row, strlen( row ) );

		// Background image type
		sprintf( row, "Background_image_1 %s\n\n", background->img_file_1.c_str() );
		ofs.write( row, strlen( row ) );
	}

	// Maryo's start postition
	sprintf( row, "Player %d %d\n\n", (int)pPlayer->startposx, pPreferences->Screen_H - (int)pPlayer->startposy );
	ofs.write( row, strlen( row ) );

	// Massive Objects
	sprintf( row, "### Massive Objects ###\n" );
	ofs.write( row, strlen( row ) );

	for( i = 0; i < MassiveObjects.size(); i++ )
	{
		if( !MassiveObjects[i] )
		{
			continue;
		}

		tempname = pImageManager->Get_Path( MassiveObjects[i]->StartImage );

		if( tempname.find( PIXMAPS_DIR ) == 0 )
		{
			tempname.erase( 0, strlen( PIXMAPS_DIR ) + 1 );
		}

		sprintf( row, "Sprite %s %d %d MASSIVE\n", tempname.c_str(), (int)MassiveObjects[i]->startposx, pPreferences->Screen_H - (int)MassiveObjects[i]->startposy );
		ofs.write( row, strlen( row ) );
	}
	
	// Passive Objects
	sprintf( row, "\n### Passive Objects ###\n" );
	ofs.write( row, strlen( row ) );

	for( i = 0; i < PassiveObjects.size(); i++ )
	{
		if( !PassiveObjects[i] )
		{
			continue;
		}

		tempname = pImageManager->Get_Path( PassiveObjects[i]->StartImage );

		if( tempname.find( PIXMAPS_DIR ) == 0 )
		{
			tempname.erase( 0, strlen( PIXMAPS_DIR ) + 1 );
		}

		sprintf( row, "Sprite %s %d %d PASSIVE\n", tempname.c_str(), (int)PassiveObjects[i]->startposx, pPreferences->Screen_H - (int)PassiveObjects[i]->startposy );

		ofs.write( row, strlen( row ) );
	}
	
	sprintf( row, "\n### Enemy Objects ###\n" );
	ofs.write( row, strlen( row ) );

	// Enemy Objects
	for( i = 0; i < EnemyObjects.size(); i++ )
	{
		if( !EnemyObjects[i] )
		{
			continue;
		}
		
		switch( EnemyObjects[i]->type )
		{
		case TYPE_GOOMBA:
		{
			cGoomba *enemy = (cGoomba*)EnemyObjects[i];

			sprintf( row, "Enemy %s %d %d %d\n", "GOOMBA", (int)EnemyObjects[i]->startposx, pPreferences->Screen_H - (int)EnemyObjects[i]->startposy, enemy->color );
			break;
		}
		case TYPE_TURTLE:
		{
			sprintf( row, "Enemy %s %d %d\n", "TURTLE", (int)EnemyObjects[i]->startposx, pPreferences->Screen_H - (int)EnemyObjects[i]->startposy );
			break;
		}
		case TYPE_JPIRANHA:
		{
			cjPiranha *enemy = (cjPiranha*)EnemyObjects[i];

			sprintf( row, "Enemy %s %d %d %d %d\n", "JPIRANHA", (int)EnemyObjects[i]->startposx, pPreferences->Screen_H - (int)EnemyObjects[i]->startposy, (int)EnemyObjects[i]->direction, enemy->max_distance );
			break;
		}
		case TYPE_BANZAI_BILL:
		{
			sprintf( row, "Enemy %s %d %d %d\n", "BANZAI_BILL", (int)EnemyObjects[i]->startposx, pPreferences->Screen_H - (int)EnemyObjects[i]->startposy, EnemyObjects[i]->direction );
			break;
		}
		case TYPE_REX:
		{
			sprintf( row, "Enemy %s %d %d\n", "REX", (int)EnemyObjects[i]->startposx, pPreferences->Screen_H - (int)EnemyObjects[i]->startposy );
			break;
		}
		default:
		{
			continue;
			break;
		}
		}

		ofs.write( row, strlen( row ) );
	}
	
	// Active Objects
	sprintf( row, "\n### Active Objects ###\n" );
	ofs.write( row, strlen( row ) );

	for( i = 0; i < ActiveObjects.size(); i++ )
	{
		if( !ActiveObjects[i] )
		{
			continue;
		}

		switch( ActiveObjects[i]->type )
		{
		case TYPE_GOLDPIECE:
		{
			if( ActiveObjects[i]->spawned )
			{
				continue;
			}

			sprintf( row, "Goldpiece %d %d\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			
			break;
		}
		case TYPE_MOON:
		{
			if( ActiveObjects[i]->spawned )
			{
				continue;
			}

			sprintf( row, "Moon %d %d\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			
			break;
		}
		case TYPE_HALFMASSIVE:
		{
			tempname = pImageManager->Get_Path( ActiveObjects[i]->StartImage );
			
			if( tempname.find( PIXMAPS_DIR ) == 0 )
			{
				tempname.erase( 0, strlen( PIXMAPS_DIR ) + 1 );
			}

			string type = "Sprite";

			if( ActiveObjects[i]->climbable )
			{
				type.insert( 0, "Climb" );
			}

			sprintf( row, "%s %s %d %d HALFMASSIVE\n", type.c_str(), tempname.c_str(), (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			break;
		}
		case TYPE_CLOUD:
		{
			sprintf( row, "Cloud %d %d\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			break;
		}
		case TYPE_LEVELEXIT:
		{
			cLevelExit *active = (cLevelExit*)ActiveObjects[i];

			sprintf( row, "Levelexit %d %d %d %s\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy, active->levelchange, active->levelname.c_str() );
			break;
		}
		case TYPE_ENEMYSTOPPER:
		{
			sprintf( row, "EnemyStopper %d %d\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			break;
		}
		case TYPE_BONUSBOX_MUSHROOM_FIRE:
		{
			sprintf( row, "BonusBox %d %d AUTO\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			break;
		} 
		case TYPE_BONUSBOX_LIVE:
		{
			sprintf( row, "BonusBox %d %d LIFE\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			break;
		} 
		case TYPE_SPINBOX:
		{
			sprintf( row, "SpinBox %d %d\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			break;
		}
		case TYPE_GOLDBOX:
		{
			sprintf( row, "GoldBox %d %d\n", (int)ActiveObjects[i]->startposx, pPreferences->Screen_H - (int)ActiveObjects[i]->startposy );
			break;
		} 
		default:
		{
			continue;
			break;
		}
		}
		
		ofs.write( row, strlen( row ) );
	}

	ofs.close();

	sprintf( debugdisplay->text, "Level %s saved", Get_Levelfile( 0, 0 ).c_str() );
	debugdisplay->counter = DESIRED_FPS*2.5;
}

void cLevel :: Show_Error( string errortext ) // V 1.5
{
	SDL_Surface* image = TTF_RenderText_Shaded( font, errortext.c_str(), colorBlack, colorWhite );
	cSprite* temp = new cSprite( image, screen->w/2 - image->w/2, screen->h/2 - image->h/2 );

	temp->Draw( screen );
	SDL_Flip( screen );
	SDL_Delay( 4000 ); // todo with pollevent for ESC and a counter
	delete temp;
	SDL_FreeSurface( image );

	exit( 1 );
}

void cLevel :: Draw( LevelDrawType type /* = LVL_UPDATE  */)
{
	if( Leveleditor_Mode )
	{
		type = LVL_DRAW_EDITOR;
		pMouseCursor->Update_Position();
	}

	if( type != LVL_DRAW_NO_BG ) // no background
	{
		pLevel->background->DrawGradient( screen );
		background->Draw( screen );
	}

	if( type == LVL_DRAW_BG ) // only background
	{
		return;
	}
	
	unsigned int i;

	for( i = 0; i < ActiveObjects.size(); i++ )
	{
		if ( !ActiveObjects[i] )
		{
			continue;
		}


		// If Object is out of range ( 2000 for Clouds )
		if( !Leveleditor_Mode && ( ActiveObjects[i]->posx < pPlayer->posx - 2000 || ActiveObjects[i]->posy < pPlayer->posy - 2000 ||
			ActiveObjects[i]->posx > pPlayer->posx + 2000 || ActiveObjects[i]->posy > pPlayer->posy + 2000 ) )
		{
			continue;
		}

		if( type == LVL_UPDATE )
		{
			if( ActiveObjects[i]->type != TYPE_MUSHROOM_DEFAULT && ActiveObjects[i]->type != TYPE_MUSHROOM_LIVE_1 && ActiveObjects[i]->type != TYPE_FIREPLANT &&
				ActiveObjects[i]->type != TYPE_HALFMASSIVE && ActiveObjects[i]->type != TYPE_GOLDBOX &&
				ActiveObjects[i]->type != TYPE_SPINBOX && ActiveObjects[i]->type != TYPE_BONUSBOX_LIVE && 
				ActiveObjects[i]->type != TYPE_BONUSBOX_MUSHROOM_FIRE )
			{
				ActiveObjects[i]->Update();
			}
		}
		else // No Update
		{
			if( ActiveObjects[i]->visible || type == LVL_DRAW_EDITOR )
			{
				if( ActiveObjects[i]->type != TYPE_HALFMASSIVE && ActiveObjects[i]->type != TYPE_GOLDPIECE && ActiveObjects[i]->type != TYPE_MOON && 
					ActiveObjects[i]->type != TYPE_SPINBOX && ActiveObjects[i]->type != TYPE_GOLDBOX && 
					ActiveObjects[i]->type != TYPE_BONUSBOX_MUSHROOM_FIRE && ActiveObjects[i]->type != TYPE_BONUSBOX_LIVE &&
					ActiveObjects[i]->type != TYPE_MUSHROOM_DEFAULT && ActiveObjects[i]->type != TYPE_MUSHROOM_LIVE_1 && 
					ActiveObjects[i]->type != TYPE_FIREPLANT && ActiveObjects[i]->type != TYPE_ENEMYSTOPPER && ActiveObjects[i]->type != TYPE_LEVELEXIT )
				{
					ActiveObjects[i]->Draw( screen );
				}
			}
		}
	}

	// Passive Objects 
	for( i = 0; i < PassiveObjects.size(); i++ )
	{
		if ( !PassiveObjects[i] )
		{
			continue;
		}

		PassiveObjects[i]->Draw( screen );
	}
	
	// only Banzai Bill
	for( i = 0; i < EnemyObjects.size(); i++ )
	{
        if( !EnemyObjects[i] )
		{
			continue;
		}

		if( type == LVL_UPDATE )
		{
			if( EnemyObjects[i]->type == TYPE_BANZAI_BILL )
			{
				EnemyObjects[i]->Update();
			}
		}
		else // No Update
		{
			if( EnemyObjects[i]->type == TYPE_BANZAI_BILL )
			{
				EnemyObjects[i]->Draw( screen );
			}
		}
	}
	
	// Only Halfmassive
	for( i = 0; i < ActiveObjects.size(); i++ )
	{
		if( !ActiveObjects[i] )
		{
			continue;
		}
		
		if( type == LVL_UPDATE )
		{
			if( ActiveObjects[i]->type == TYPE_HALFMASSIVE )
			{
				ActiveObjects[i]->Update();
			}
		}
		else // No Update
		{
			if( ActiveObjects[i]->visible || type == LVL_DRAW_EDITOR )
			{
				if( ActiveObjects[i]->type == TYPE_HALFMASSIVE )
				{
					ActiveObjects[i]->Draw( screen );
				}
			}
		}
	}

	// All the other Active Objects
	for( i = 0; i < ActiveObjects.size(); i++ )
	{
		if( !ActiveObjects[i] )
		{
			continue;
		}

		// If Object is out of range ( 2000 for Mushrooms )
		if( !Leveleditor_Mode && ( ActiveObjects[i]->posx < pPlayer->posx - 2000 || ActiveObjects[i]->posy < pPlayer->posy - 2000 ||
			ActiveObjects[i]->posx > pPlayer->posx + 2000 || ActiveObjects[i]->posy > pPlayer->posy + 2000 ) )
		{
			continue;
		}
		
		if( type == LVL_UPDATE )
		{
			if( ActiveObjects[i]->type == TYPE_MUSHROOM_DEFAULT || ActiveObjects[i]->type == TYPE_MUSHROOM_LIVE_1 || 
				ActiveObjects[i]->type == TYPE_FIREPLANT || ActiveObjects[i]->type == TYPE_GOLDBOX ||
				ActiveObjects[i]->type == TYPE_SPINBOX || ActiveObjects[i]->type == TYPE_BONUSBOX_LIVE || 
				ActiveObjects[i]->type == TYPE_BONUSBOX_MUSHROOM_FIRE )
			{
				ActiveObjects[i]->Update();
			}
		}
		else // No Update
		{
			if( ActiveObjects[i]->visible || type == LVL_DRAW_EDITOR )
			{
				if( ActiveObjects[i]->type == TYPE_GOLDPIECE || ActiveObjects[i]->type == TYPE_MOON ||
					ActiveObjects[i]->type == TYPE_SPINBOX || ActiveObjects[i]->type == TYPE_GOLDBOX ||
					ActiveObjects[i]->type == TYPE_BONUSBOX_MUSHROOM_FIRE || ActiveObjects[i]->type == TYPE_BONUSBOX_LIVE || 
					( type != LVL_DRAW_EDITOR && ( ActiveObjects[i]->type == TYPE_MUSHROOM_DEFAULT || ActiveObjects[i]->type == TYPE_BONUSBOX_MUSHROOM_FIRE || ActiveObjects[i]->type == TYPE_MUSHROOM_LIVE_1 ) ) )
				{
					ActiveObjects[i]->Draw( screen );
				}
			}
		}
	}

	for( i = 0; i < EnemyObjects.size(); i++ )
	{
        if( !EnemyObjects[i] )
		{
			continue;
		}

		if( type == LVL_UPDATE )
		{
			if( EnemyObjects[i]->type == TYPE_JPIRANHA )
			{
				EnemyObjects[i]->Update();
			}
		}
		else
		{
			if( ( EnemyObjects[i]->type != TYPE_JPIRANHA && EnemyObjects[i]->type != TYPE_BANZAI_BILL ) || 
				( type != LVL_DRAW_EDITOR && ( EnemyObjects[i]->type == TYPE_BANZAI_BILL || EnemyObjects[i]->type == TYPE_JPIRANHA ) ) )
			{
				EnemyObjects[i]->Draw( screen );
			}
		}
	}

	pAnimationManager->Update();
	
	for( i = 0; i < MassiveObjects.size(); i++ )
	{
		if( !MassiveObjects[i] )
		{
			continue;
		}

		MassiveObjects[i]->Draw( screen );
	}

	/* default : enemies without jpiranha and banzai bill
	 * leveleditor : only jpiranha and banzai bill
	*/
	for( i = 0; i < EnemyObjects.size(); i++ )
	{
        if ( !EnemyObjects[i] )
		{
			continue;
		}

		if( type == LVL_UPDATE )
		{
			if( EnemyObjects[i]->type != TYPE_JPIRANHA && EnemyObjects[i]->type != TYPE_BANZAI_BILL )
			{
				EnemyObjects[i]->Update();
			}
		}
		else // No Update
		{
			if( type == LVL_DRAW_EDITOR && ( EnemyObjects[i]->type == TYPE_JPIRANHA || EnemyObjects[i]->type == TYPE_BANZAI_BILL ) )
			{
				EnemyObjects[i]->Draw( screen );
			}
		}
	}

	for( i = 0; i < ActiveObjects.size(); i++ ) // leveleditor : only enemystopper and levelexit
	{
		if( !ActiveObjects[i] )
		{
			continue;
		}

		if( type == LVL_UPDATE )
		{
			if( 0 ) // Currently nothing
			{
				ActiveObjects[i]->Update();
			}
		}
		else // No Update
		{
			if( ActiveObjects[i]->visible || type == LVL_DRAW_EDITOR )
			{
				if( ActiveObjects[i]->type == TYPE_ENEMYSTOPPER	|| ActiveObjects[i]->type == TYPE_LEVELEXIT )
				{
					ActiveObjects[i]->Draw( screen );
				}
			}
		}

	}

	pHudManager->Update();

	// Leveleditor mouse update
	if( Leveleditor_Mode )
	{
		pMouseCursor->Leveleditor_Update();
	}
}

void cLevel :: Unload( void )
{
	unsigned int i = 0;
	
	for( i = 0; i < MassiveObjects.size(); i++ ) 
	{
		if( MassiveObjects[i] )
		{
			delete MassiveObjects[i];
			MassiveObjects[i] = NULL;
		}
	}
	MassiveObjects.clear();


	for( i = 0; i < PassiveObjects.size(); i++ ) 
	{
		if( PassiveObjects[i] ) 
		{
			delete PassiveObjects[i];
			PassiveObjects[i] = NULL; 
		} 
	}
	PassiveObjects.clear();


	for( i = 0; i < ActiveObjects.size(); i++ ) 
	{
		if( ActiveObjects[i] ) 
		{
			delete ActiveObjects[i];
			ActiveObjects[i] = NULL; 
		}
	}
	ActiveObjects.clear();


	for( i = 0; i < EnemyObjects.size(); i++ ) 
	{
		if( EnemyObjects[i] ) 
		{
			delete EnemyObjects[i];
			EnemyObjects[i] = NULL; 
		}
	}
	EnemyObjects.clear();


	pDialogManager->DeleteAll();
	pAnimationManager->DeleteAll();

	pHudManager->Update();

	pJoystick->Reset_keys();

	if( timedisplay )
	{
		timedisplay->counter = -1;
	}

	if( pMouseCursor )
	{
		pMouseCursor->CopyObject = NULL;
		pMouseCursor->iCollisionType = 0;
		pMouseCursor->MouseObject = NULL;
	}

	mod_Camera_up = 0;
	mod_Camera_left = 0;
	mod_Camera_right = 0;

	levelengine_version = -1; // no version

	musicfile.clear();
	levelfile.clear();
}

void cLevel :: Set_Musicfile( string filename )
{
	if( filename.length() > 4 ) 
	{
		if( filename.find( MUSIC_DIR ) == string::npos ) 
		{
			filename.insert( 0, "/" );
			filename.insert( 0, MUSIC_DIR );
		}

		musicfile = filename;
	}
}

void cLevel :: Set_Levelfile( string filename )
{
	Delete_file( levelfile );

	levelfile = filename;

	if( levelfile.find( pPreferences->level_dir ) == string::npos ) 
	{
		levelfile.insert( 0, "/" );
		levelfile.insert( 0, pPreferences->level_dir );
	}

	Save();
}

string cLevel :: Get_Levelfile( bool with_dir /* = 1 */, bool with_end /* = 1  */)
{
	string name = levelfile;

	if( !with_dir && name.find( pPreferences->level_dir ) != string::npos ) 
	{
		name.erase( name.find( pPreferences->level_dir ), pPreferences->level_dir.length() + 1 );
	}

	if( !with_end && name.find( ".txt" ) != string::npos ) 
	{
		name.erase( name.find( ".txt"), 4 );
	}

	return name;
}

bool cLevel :: is_Loaded( void )
{
	if( MassiveObjects.size() > 0 || PassiveObjects.size() > 0 || ActiveObjects.size() > 0 || EnemyObjects.size() > 0 || levelfile.length() > 2 )
	{
		return 1;
	}

	return 0;
}

int cLevel :: Load_Savegame( unsigned int Save_file )
{
	Savegame LSavegame = pSavegame->Load( Save_file );

	if( LSavegame.lives < 0 )
	{
		printf( "Error loading Savegame %d\n", Save_file );
		return 0;
	}

	char Full_Level_name[60];
	sprintf( Full_Level_name, "%s/%s", pPreferences->level_dir.c_str(), LSavegame.levelname.c_str() );
	
	Unload();

	if( !pOverWorld->Load( LSavegame.OW_world ) )
	{
		printf( "Error loading Savegame %d : Couldn't load Overworld\n", Save_file );
		return 0;
	}

	if( !LSavegame.OW_save )
	{
		Load( Full_Level_name );
	}
	
	if( LSavegame.version >= 4 )
	{
		pOverWorld->SetProgress( LSavegame.OW_nlevel, LSavegame.OW_slevel );
		pOverWorld->SetMaryoWaypoint( LSavegame.OW_curr_waypoint );
	}
	else // savegames below Version 4 are unsupported
	{
		printf( "Error loading Savegame %d : Versions below 4 are unsupported\n", Save_file );
		return 0;
	}
	
	pPlayer->Reset();
	pPlayer->maryo_type = (Maryo_type)LSavegame.state;
	pPlayer->LoadImages();
	pPlayer->SetPos( (double)LSavegame.posx, (double)( LSavegame.posy - pPreferences->Screen_H ) );
	pointsdisplay->SetPoints( LSavegame.points );
	golddisplay->SetGold( LSavegame.goldpieces );
	livedisplay->SetLives( LSavegame.lives );

	if( LSavegame.version >= 5 ) // Version 5 and higher with Itembox support
	{
		Itembox->Get_Item( LSavegame.itembox_item );	
	}

	cameraposx = 0;
	cameraposy = 0;

	if( !LSavegame.OW_save )
	{
		pPlayer->invincible = DESIRED_FPS;
	}

	pPlayer->Fireball_clear();

	debugdisplay->Update ();
	pointsdisplay->Update();
	pPlayer->Update();
	golddisplay->Update();

	sprintf( debugdisplay->text, "Savegame %d loaded", Save_file );
	debugdisplay->counter = DESIRED_FPS * 1.5;

	if( LSavegame.OW_save ) // Overworld Savegame
	{
		return 2;
	}
	
	return 1; // Level Savegame
}

bool cLevel :: Save_Savegame( unsigned int Save_file, string description )
{
	if( pPlayer->maryo_type == MARYO_DEAD || pPlayer->lives < 0 )
	{
		printf( "Couldn't save Savegame %s\n", description.c_str() );
		return 0;
	}

	Savegame SSavegame;

	// Description
	SSavegame.description = description; 
	// Goldpieces
	SSavegame.goldpieces = pPlayer->goldpieces;
	// Level

	if( is_Loaded() ) // Player is in a Level
	{
		string Level_name;
		
		Level_name = pLevel->levelfile;
		Level_name.erase( 0, pPreferences->level_dir.length() + 1 );
		
		SSavegame.levelname = Level_name;
	}
	else if( pOverWorld->Current_Waypoint < 0 )
	{
		printf( "Couldn't save Savegame %s : No Overworld Waypoint and no level loaded\n", description.c_str() );
		return 0;
	}
	else
	{
		SSavegame.levelname = pOverWorld->Waypoints[pOverWorld->Current_Waypoint]->levelname;
	}
	
	// Lifes
	SSavegame.lives = pPlayer->lives;
	// Points
	SSavegame.points = pPlayer->points;
	// Position
	SSavegame.posx = (int)pPlayer->posx;
	SSavegame.posy = (int)pPlayer->posy + pPreferences->Screen_H - 5;
	// State
	SSavegame.state = pPlayer->maryo_type;
	// Itembox Item
	SSavegame.itembox_item = Itembox->Item_id;

	// OverWorld save
	if( pLevel->is_Loaded() )
	{
		SSavegame.OW_save = 0;
	}
	else
	{
		SSavegame.OW_save = 1;
	}

	// OverWorld normal Levels accessed
	SSavegame.OW_nlevel = pOverWorld->Nlevel;
	// OverWorld secret Levels accessed
	SSavegame.OW_slevel = pOverWorld->Slevel;
	// Current Waypoint
	SSavegame.OW_curr_waypoint = pOverWorld->Current_Waypoint;
	// which OverWorld
	SSavegame.OW_world = pOverWorld->Current_OverWorld;
	// Time
	SSavegame.timestamp = Get_current_time();
	// Version
	SSavegame.version = 5;

	// Save it
	pSavegame->Save( Save_file, SSavegame );

	// Print
	if( debugdisplay )
	{
		sprintf( debugdisplay->text, "Saved to Slot %d", Save_file );
		debugdisplay->counter = DESIRED_FPS*1.5;
	}

	return 1;
}

bool cLevel :: Parse_Map( string command, int line )
{
	if( command.length() <= 5 || command.find_first_of( '#' ) == 0 )
	{
		return 0;
	}


	while( command.find( '\r' ) != string::npos ) // Linux support
	{
		command.erase( command.find( '\r' ), 1 );
	}

	while( command.find( '\t' ) != string::npos ) // No Tabs
	{
		command.replace( command.find( '\t' ), 1, " " );
	}

	while( command.find_last_of( ' ' ) == command.length() - 1  ) // No Spaces at the end
	{
		command.erase( command.find_last_of( ' ' ), 1 );
	}

	while( command.find_first_of( ' ' ) == 0  ) // No Spaces at the start
	{
		command.erase( command.find_first_of( ' ' ), 1 );
	}

	string tempstr = command;
	int count = 1;

	while( tempstr.find( ' ' ) != string::npos  ) // Count Spaces
	{
		tempstr.erase( tempstr.find( ' ' ) , 1 );
		count++;
	}

	tempstr = command;
	
	string *parts = new string[ count + 1];
	
	int len;
	int i = 0;

	while( count > 0 )
	{
		len = tempstr.find_first_of( ' ' );
		parts[i] = tempstr.substr( 0, len );
		tempstr.erase( 0, len + 1 );
		i++;
		count--;
	}

	parts[i] = tempstr;
	
	// Message handler
	bool success = HandleMessage( parts, i, line );

	delete []parts;

	return success;
}

bool cLevel :: HandleMessage( string *parts, unsigned int count, unsigned int line )
{
	if( parts[0].compare( "Sprite" ) == 0 || parts[0].compare( "ClimbSprite" ) == 0 )
	{
		if( count != 5 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 5 parameters" );
			return 0; // error
		}
		
		// check if file exists
		string filename = parts[1];

		while( filename.find( "/" ) == 0 )
		{
			filename.erase( 0, 1 );
		}
		
		if( filename.find( PIXMAPS_DIR ) == string::npos )
		{
			filename.insert( 0, "/" );
			filename.insert( 0, PIXMAPS_DIR );	
		}

		ifstream ifs( filename.c_str(), ios::in );

		if( !ifs )
		{
			// try it with the old_pixmaps

			filename.insert( strlen( PIXMAPS_DIR ), "/old_pixmaps" );
			ifs.open( filename.c_str(), ios::in );
			
			if( !ifs ) // nowhere found = error
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "file not found : %s/%s\n", PIXMAPS_DIR, parts[1].c_str() );
				return 0; // error
			}
		}

		ifs.close();
		
		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		if( !is_valid_number( parts[3] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[3].c_str() );
			return 0; // error
		}
		if( !parts[4].compare( "MASSIVE" ) == 0 && !parts[4].compare( "PASSIVE" ) == 0 && !parts[4].compare( "HALFMASSIVE" ) == 0 )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "parameter five has to be MASSIVE, PASSIVE, or HALFMASSIVE\n" );
			return 0; // error
		}

		string getimage_path = filename;
		getimage_path.erase( 0, strlen( PIXMAPS_DIR ) + 1 );

		if( parts[4].compare( "MASSIVE" ) == 0 )
		{
			SDL_Surface *sTemp = GetImage( getimage_path );
			cSprite *temp = new cSprite( sTemp, string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ) );
			AddMassiveObject( temp );
		}
		else if( parts[4].compare( "PASSIVE" ) == 0 )
		{
			SDL_Surface *sTemp = GetImage( getimage_path );
			cSprite *temp = new cSprite( sTemp, string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ) );
			temp->massive = 0;
			temp->array = ARRAY_PASSIVE;
			AddPassiveObject( temp );
		}
		else if( parts[4].compare( "HALFMASSIVE" ) == 0 )
		{
			SDL_Surface *sTemp = GetImage( getimage_path );
			cSprite *temp = new cSprite( sTemp, string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ) );
			temp->halfmassive = 1;
			temp->massive = 0;
			temp->type = TYPE_HALFMASSIVE;
			temp->array = ARRAY_ACTIVE;
			if( parts[0].compare( "ClimbSprite" ) == 0 ) // Climbing
			{
				temp->climbable = 1;
			}
			AddActiveObject( temp );
		}
	} 
	
	/***************************************************************************/

	else if( parts[0].compare( "Enemy" ) == 0 )
	{
		if( count < 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs more than 2 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		if( !is_valid_number( parts[3] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[3].c_str() );
			return 0; // error
		}
		
		if( parts[1].compare( "GOOMBA" ) == 0 ) // Goomba
		{
			if( !(count == 3 || count == 4 || count == 5) ) // 3 and 4 is for the old description
			{
				printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "Error : %s %s\n", parts[1].c_str(), "needs 5 parameters" );
				return 0; // error
			}

			if( count == 5 )
			{
				if( string_to_int( parts[4] ) == 1 ) // Red
				{
					cGoomba *temp = new cGoomba( string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ), 1 );
					AddEnemyObject( (cSprite*)temp );
				}
				else if( string_to_int( parts[4] ) == 0 ) // Brown
				{
					cGoomba *temp = new cGoomba( string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ), 0 );
					AddEnemyObject( (cSprite*)temp );
				}
				else
				{
					printf( "Error : Goomba Color %d\n", string_to_int( parts[4] ) );
					return 0; // error
				}
			}
			else // Support for older levels ( lower than V.0.8 )
			{
				cGoomba *temp = new cGoomba( string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ) );
				AddEnemyObject( (cSprite*)temp );
			}

		}
		else if( parts[1].compare( "RTURTLE" ) == 0 || parts[1].compare( "TURTLE" ) == 0 ) // "RTURTLE" for older levels
		{
			if( count != 4 )
			{
				printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "Error : %s %s\n", parts[1].c_str(), "needs 4 parameters" );
				return 0; // error
			}

			// 1 for red
			cTurtle *temp = new cTurtle( string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ), 1 );
			AddEnemyObject( (cSprite*)temp );
		}
		else if( parts[1].compare( "JPIRANHA" ) == 0 )
		{
			if( count != 6 && count != 4 )
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "Error : %s %s\n", parts[1].c_str(), "needs 6 parameters" );
				return 0; // error
			}

			ObjectDirection direction = DIR_UP;
			unsigned int max_height = 200;

			if( count == 6 )
			{
				if( !is_valid_number( parts[4] ) )
				{
					printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
					printf( "%s is not a valid integer value\n", parts[4].c_str() );
					return 0; // error
				}
				if( !is_valid_number( parts[5] ) )
				{
					printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
					printf( "%s is not a valid integer value\n", parts[5].c_str() );
					return 0; // error
				}

				direction = (ObjectDirection)string_to_int( parts[4] );
				max_height = string_to_int( parts[5] );
			}

			cjPiranha *temp = new cjPiranha( string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ), direction, max_height );
			AddEnemyObject( (cSprite*)temp );
		}
		else if( parts[1].compare( "BANZAI_BILL" ) == 0 )
		{
			if( count != 5 )
			{
				printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "needs 5 parameters" );
				return 0; // error
			}

			if( string_to_int( parts[4] ) != 1 && string_to_int( parts[4] ) != 0 )
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "Enemy BANZAI_BILL parameter 4 is not 1 or 0\n" );
				return 0; // error
			}

			cbanzai_bill *temp = new cbanzai_bill( string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ), (ObjectDirection)string_to_int( parts[4] ) );
			AddEnemyObject( (cSprite*)temp );
		}
		else if( parts[1].compare( "REX" ) == 0 )
		{
			if( count != 4 )
			{
				printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "needs 4 parameters" );
				return 0; // error
			}

			cRex *temp = new cRex( string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ) );
			AddEnemyObject( (cSprite*)temp );
		}
		else
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "Unknown Enemy type" );
			return 0; // error
		}
	}
	/***************************************************************************/
	else if( parts[0].compare( "Goldpiece" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		
		cGoldPiece *temp = new cGoldPiece( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) );
		AddActiveObject( (cSprite*)temp );
	}
	/***************************************************************************/
	else if( parts[0].compare( "Moon" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		
		cMoon *temp = new cMoon( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) );
		AddActiveObject ( (cSprite*)temp );
	}
	/***************************************************************************/
	else if( parts[0].compare( "Levelexit" ) == 0 )
	{
		if( count < 3 || count > 5 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3-5 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}
		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}

		cLevelExit *temp = NULL;

		if( count == 5 || count == 4 ) // new
		{
			if( !is_valid_number( parts[3] ) )
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "%s is not a valid integer value\n", parts[2].c_str() );
				return 0; // error
			}
			
			string level;

			if( count == 5 ) // with a given level
			{
				level = parts[4];
			}

			temp = new cLevelExit( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ), (Levelchange_type)string_to_int( parts[3] ), level );
		}
		else // older level support
		{
			AddPassiveObject( new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/game/level/door_yellow_1.png" ), string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) ) );

			temp = new cLevelExit( string_to_int( parts[1] ) + 13, pPreferences->Screen_H - string_to_int( parts[2] ) + 60 );
		}

		AddActiveObject ( (cSprite*)temp );
	}
	/***************************************************************************/
	else if( parts[0].compare( "BonusBox" ) == 0 )
	{
		if( !( count == 3 || count == 4 ) )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3-4 parameters" );
			return 0; // error
		}

		if( count == 3 ) // old Level Support
		{
			if( !is_valid_number( parts[1] ) )
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "%s is not a valid integer value\n", parts[1].c_str() );
				return 0; // error
			}
			if( !is_valid_number( parts[2] ) )
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "%s is not a valid integer value\n", parts[2].c_str() );
				return 0; // error
			}
			
			cBonusBox *temp = new cBonusBox( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) );
			AddActiveObject( (cSprite*)temp );
		}
		else if( count == 4 )
		{
			if( !is_valid_number( parts[1] ) )
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "%s is not a valid integer value\n", parts[1].c_str() );
				return 0; // error
			}
			if ( !is_valid_number( parts[2] ) )
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "%s is not a valid integer value\n", parts[2].c_str() );
				return 0; // error
			}

			if( parts[3].compare( "AUTO" ) == 0 ) // Auto Mushroom - Fire Box
			{
				cBonusBox *temp = new cBonusBox( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ),TYPE_BONUSBOX_MUSHROOM_FIRE);
				AddActiveObject ( (cSprite*)temp );
			}
			else if( parts[3].compare( "LIFE" ) == 0 ) // Auto Life Box
			{
				cBonusBox *temp = new cBonusBox( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ),TYPE_BONUSBOX_LIVE );
				AddActiveObject( (cSprite*)temp );
			}
			else // unknown Bonus item
			{
				printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
				printf( "Bonusbox type Error %s\n", parts[3].c_str() );
				return 0; // error
			}
		}
		else
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Bonusbox count Error %d\n", count );
			return 0; // error
		}
	}
	/***************************************************************************/
	else if( parts[0].compare( "GoldBox" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		
		cGoldBox *temp = new cGoldBox( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) );
		AddActiveObject( (cSprite*)temp );
	}
	/***************************************************************************/
	else if( parts[0].compare( "SpinBox" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		
		cSpinBox *temp = new cSpinBox( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) );
		AddActiveObject( (cSprite*)temp );
	}
	/***************************************************************************/
	else if( parts[0].compare( "Cloud" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		
		cCloud *temp = new cCloud( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) );
		AddActiveObject ( (cSprite*)temp );
	}
	/***************************************************************************/
	else if( parts[0].compare( "Player" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3 parameters" );
			return 0; // error
		}
		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}
		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		
		pPlayer->SetPos( (double)string_to_int( parts[1] ), (double)pPreferences->Screen_H - (double)string_to_int( parts[2] ) );

		pPlayer->startposx = (double)string_to_int( parts[1] );
		pPlayer->startposy = (double)pPreferences->Screen_H - (double)string_to_int( parts[2] );
	}
	/***************************************************************************/
	else if( parts[0].compare( "EnemyStopper" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 3 parameters" );
			return 0; // error
		}
		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}
		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}
		
		cEnemyStopper *temp = new cEnemyStopper( string_to_int( parts[1] ), pPreferences->Screen_H - string_to_int( parts[2] ) );
		AddActiveObject( (cSprite*)temp );
	}
	/***************************************************************************/
	else if( parts[0].compare( "Music" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 2 parameters" );
			return 0; // error
		}

		if( parts[1].length() < 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "No valid Music file\n" );
			return 0;  // error
		}
		
		string filename;

		filename.reserve( parts[1].length() + 50 );
		filename = parts[1];

		if( filename.find( MUSIC_DIR ) == string::npos )
		{
			filename.insert( 0, "/" );
			filename.insert( 0, MUSIC_DIR );
		}

		Set_Musicfile( filename );
		valid_music = valid_file( filename );

		if( !valid_music )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Music file not found : %s\n", filename.c_str() );

			return 0; // error
		}
	}
	/***************************************************************************/
	else if( parts[0].compare( "Mod_Camera" ) == 0 )
	{
		if( count != 4 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 4 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[2].c_str() );
			return 0; // error
		}

		if( !is_valid_number( parts[3] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[3].c_str() );
			return 0; // error
		}

		if( string_to_int( parts[1] ) >= 0 && string_to_int( parts[1] ) < 400 )
		{
			mod_Camera_up = string_to_int( parts[1] );
		}
		else
		{
			printf( "Warning : Mod_Camera_up not in a range between 0 - 400\n" );
		}

		if( string_to_int( parts[2] ) > -200 && string_to_int( parts[2] ) < 300 )
		{
			mod_Camera_left = string_to_int( parts[2] );
		}
		else
		{
			printf( "Warning : Mod_Camera_left not in a range between -200 - 400\n" );
		}

		if( string_to_int( parts[3] ) > -200 && string_to_int( parts[3] ) < 300 )
		{
			mod_Camera_right = string_to_int( parts[3] );
		}
		else
		{
			printf( "Warning : Mod_Camera_right not in a range between -200 - 400\n" );
		}
	}
	/***************************************************************************/
	else if( parts[0].compare( "Background_Color" ) == 0 ) // compatibility with old levels
	{
		Color color;

		if( read_color_info( parts, count, line, color ) == 0 )
		{
			return 0;
		}

		background->Set_color_1( color );
		background->Set_color_2( color );
	}
	else if( parts[0].compare( "Background_color_1" ) == 0 ) // the top background color
	{
		Color color;

		if( read_color_info( parts, count, line, color ) == 0 )
		{
			return 0;
		}

		background->Set_color_1( color );
	}
	else if( parts[0].compare( "Background_color_2" ) == 0 ) // the bottom background color
	{
		Color color;

		if( read_color_info( parts, count, line, color ) == 0 )
		{
			return 0;
		}

		background->Set_color_2( color );
	}
	/***************************************************************************/
	else if( parts[0].compare( "Background_image_1" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 2 parameters" );
			return 0; // error
		}

		if( parts[1].length() < 3 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Not a valid Background_image_1 file\n" );
			return 0;  // error
		}
		
		string filename;

		filename.reserve( parts[1].length() + 50 );
		filename = parts[1];

		if( filename.find( PIXMAPS_DIR ) == string::npos )
		{
			filename.insert( 0, "/" );
			filename.insert( 0, PIXMAPS_DIR );
		}

		if( !valid_file( filename ) )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Background_image_1 file not found : %s\n", filename.c_str() );

			return 0; // error
		}
		else
		{
			background->Set_images( parts[1] );
		}
	}
	/***************************************************************************/
	else if( parts[0].compare( "Background_image_type" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 2 parameters" );
			return 0; // error
		}
		
		unsigned int bg_type = string_to_int( parts[1] );

		if( !bg_type || bg_type > 5 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Not a valid Background_image_type number ( %d )\n", bg_type );
			return 0;  // error
		}
		
		background->Set_image_type( (BackgroundImageType)bg_type );
	}
	/***************************************************************************/
	else if( parts[0].compare( "Levelengine_version" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "Error : %s %s\n", parts[0].c_str(), "needs 2 parameters" );
			return 0; // error
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
			printf( "%s is not a valid integer value\n", parts[1].c_str() );
			return 0; // error
		}

		levelengine_version = string_to_int( parts[1] );
	}
	else
	{
		printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
		printf( "Unknown Command : %s\n", parts[0].c_str() );
		return 0; // error
	}

	return 1; // Succesful
}

bool cLevel :: read_color_info( string *parts, unsigned int count, unsigned int line, Color &color )
{
	if( count != 4 )
	{
		printf( "%s : line %d Error : \n", Get_Levelfile( 0, 0 ).c_str(), line );
		printf( "Error : %s %s\n", parts[0].c_str(), "needs 4 parameters" );
		return 0; // error
	}

	if( !is_valid_number( parts[1] ) )
	{
		printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
		printf( "%s is not a valid integer value\n", parts[1].c_str() );
		return 0; // error
	}
	if( !is_valid_number( parts[2] ) )
	{
		printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
		printf( "%s is not a valid integer value\n", parts[2].c_str() );
		return 0; // error
	}
	if( !is_valid_number( parts[3] ) )
	{
		printf( "%s : line %d Error : ", Get_Levelfile( 0, 0 ).c_str(), line );
		printf( "%s is not a valid integer value\n", parts[3].c_str() );
		return 0; // error
	}

	int background_red = string_to_int( parts[1] );
	int background_green = string_to_int( parts[2] );
	int background_blue = string_to_int( parts[3] );

	if( background_red < 0 || background_red > 255 )
	{
		printf( "Warning : Background color red is not between 0 - 255\n" );
		background_red = 0;
	}
	else if( background_green < 0 || background_green > 255 )
	{
		printf( "Warning : Background color green is not between 0 - 255\n" );
		background_green = 0;
	}
	else if( background_blue < 0 || background_blue > 255 )
	{
		printf( "Warning : Background color blue is not between 0 - 255\n" );
		background_blue = 0;
	}

	color.red = background_red;
	color.green = background_green;
	color.blue = background_blue;

	return 1;  // success
}
