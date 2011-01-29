/***************************************************************************
         main.cpp  -  the nice menu at the beginning of the game
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

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cMenu_Item :: cMenu_Item( void ) : cSprite( NULL, 0, 0 )
{
	active = 0;
	isquit = 0;

	image_default = new cSprite( NULL, 0, 0 );
	image_disabled = new cSprite( NULL, 0, 0 );
	image_menu = new cSprite( NULL, 0, 0 );
}

cMenu_Item :: ~cMenu_Item( void )
{
	if( image_menu )
	{
		delete image_menu;
		image_menu = NULL;
	}
}

void cMenu_Item :: Set_Active( bool nactive /* = 0  */ )
{
	if( nactive && !active )
	{
		SetImage( image_default->image );
	}
	else if( !nactive && active )
	{
		SetImage( image_disabled->image );
	}

	active = nactive;
}

void cMenu_Item :: Draw( void )
{
	cSprite::Draw( screen );

	if( active && image_menu )
	{
		image_menu->Draw( screen );
	}
}

cMenuHandler :: cMenuHandler( string logo_filename, string logo_quit_filename, unsigned int posx, unsigned int posy /* = 10  */ )
{
	items.clear();
	
	active = -1; // nothing is active

	image_logo = NULL;
	image_logo_quit = NULL;

	if( logo_filename.length() )
	{
		image_logo = GetImage( "menu/logo.png" );
	}

	if( logo_quit_filename.length() )
	{
		image_logo_quit = GetImage( "menu/logo_quit.png" );
	}

	logo = new cSprite( image_logo, (double)posx, (double)posy );
}

cMenuHandler :: ~cMenuHandler( void )
{
	Reset();
}

void cMenuHandler :: Add_MenuItem( cMenu_Item *item )
{
	if( !item )
	{
		printf( "Menu item is NULL ( current Menu size : %d )\n", Get_Size() );
		return;
	}

	if( !item->image && item->image_disabled->image )
	{
		item->SetImage( item->image_disabled->image );
	}

	items.push_back( item );

	if( ( active == -1 ) && Get_Size() == 1 )
	{
		Set_Active( 0 );
	}
}

void cMenuHandler :: Reset( void )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( items[i] )
		{
			delete items[i];
			items[i] = NULL;
		}
	}

	items.clear();

	active = -1; // nothing is active
}

void cMenuHandler :: Set_Active( int num )
{
	if( num == (int)active || num >= (int)Get_Size() || ( num >= 0 && !items[num] ) )
	{
		return;
	}

	if( num >= 0 && (unsigned int)active < Get_Size() )
	{
		items[active]->Set_Active( 0 );

		if( items[active]->isquit && !items[num]->isquit )
		{
			logo->SetImage( image_logo );
		}
		if( !items[active]->isquit && items[num]->isquit && image_logo_quit )
		{
			logo->SetImage( image_logo_quit );
		}
	}
	else if( num == -1 )
	{
		items[active]->Set_Active( 0 );
	}

	active = num;

	if( active >= 0 )
	{
		items[active]->Set_Active( 1 );
	}
}

void cMenuHandler :: Update_Mouse( void )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( items[i] && pMouseCursor->CollsionCheck( &items[i]->rect ) )
		{
			Set_Active( i );
		}
	}
}

void cMenuHandler :: Draw( void )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( items[i] )
		{
			items[i]->Draw();
		}
	}
	
	logo->Draw( screen );
}

cMenu_Item *cMenuHandler :: Get_Active_Item( void )
{
	if( active < 0 || (unsigned int)active > Get_Size() )
	{
		return NULL;
	}

	return items[active];
}

unsigned int cMenuHandler :: Get_Size( void )
{
	return items.size();
}

cMainMenu :: cMainMenu( void )
{
	leave = 0;
	action = 0;

	boptions1 = new cSprite( NULL, 0, 0 );
	boptions2 = new cSprite( NULL, 0, 0 );

	bload1 = new cSprite( NULL, 0, 0 );
	bload2 = new cSprite( NULL, 0, 0 );
	bsave1 = new cSprite( NULL, 0, 0 );
	bsave2 = new cSprite( NULL, 0, 0 );
	
	bquit1 = new cSprite( NULL, 0, 0 );
	bquit2 = new cSprite( NULL, 0, 0 );

	bcontrols1 = new cSprite( NULL, 0, 0 );
	bcontrols2 = new cSprite( NULL, 0, 0 );

	baudio1 = new cSprite( NULL, 0, 0 );
	baudio2 = new cSprite( NULL, 0, 0 );
	bvideo1 = new cSprite( NULL, 0, 0 );
	bvideo2 = new cSprite( NULL, 0, 0 );
	
	bon1 = new cSprite( NULL, 0, 0 );
	bon2 = new cSprite( NULL, 0, 0 );
	boff1 = new cSprite( NULL, 0, 0 );
	boff2 = new cSprite( NULL, 0, 0 );

	// Control Items
	// Keyboard
	gamepad = new cSprite( NULL, 0, 0 );
	controls_up = new cSprite( NULL, 0, 0 );
	controls_up_disabled = new cSprite( NULL, 0, 0 );
	controls_up_keyname = new cSprite( NULL, 0, 0 );
	controls_down = new cSprite( NULL, 0, 0 );
	controls_down_disabled = new cSprite( NULL, 0, 0 );
	controls_down_keyname = new cSprite( NULL, 0, 0 );
	controls_left = new cSprite( NULL, 0, 0 );
	controls_left_disabled = new cSprite( NULL, 0, 0 );
	controls_left_keyname = new cSprite( NULL, 0, 0 );
	controls_right = new cSprite( NULL, 0, 0 );
	controls_right_disabled = new cSprite( NULL, 0, 0 );
	controls_right_keyname = new cSprite( NULL, 0, 0 );
	controls_shoot = new cSprite( NULL, 0, 0 );
	controls_shoot_disabled = new cSprite( NULL, 0, 0 );
	controls_shoot_keyname = new cSprite( NULL, 0, 0 );
	// Joystick
	controls_usejoystick = new cSprite( NULL, 0, 0 );
	controls_usejoystick_disabled = new cSprite( NULL, 0, 0 );
	controls_usejoystick_on = new cSprite( NULL, 0, 0 );
	controls_usejoystick_off = new cSprite( NULL, 0, 0 );

	// Video Items
	fullscreen = new cSprite( NULL, 0, 0 );
	video_resolution = new cSprite( NULL, 0, 0 );
	video_resolution_disabled = new cSprite( NULL, 0, 0 );
	video_bpp = new cSprite( NULL, 0, 0 );
	video_bpp_disabled = new cSprite( NULL, 0, 0 );
	video_fullscreen = new cSprite( NULL, 0, 0 );
	video_fullscreen_disabled = new cSprite( NULL, 0, 0 );
	video_resolution_val = new cSprite( NULL, 0, 0 );
	video_bpp_val = new cSprite( NULL, 0, 0 );
	video_fullscreen_val = new cSprite( NULL, 0, 0 );
	video_apply = new cSprite( NULL, 0, 0 );
	video_apply_disabled = new cSprite( NULL, 0, 0 );

	// Audio Items
	music = new cSprite( NULL, 0, 0 );
	sounds = new cSprite( NULL, 0, 0 );
	audio_music = new cSprite( NULL, 0, 0 );
	audio_music_disabled = new cSprite( NULL, 0, 0 );
	audio_sounds = new cSprite( NULL, 0, 0 );
	audio_sounds_disabled = new cSprite( NULL, 0, 0 );
	audio_music_on = new cSprite( NULL, 0, 0 );
	audio_music_off = new cSprite( NULL, 0, 0 );
	audio_sounds_on = new cSprite( NULL, 0, 0 );
	audio_sounds_off = new cSprite( NULL, 0, 0 );

	// The back button
	back1 = new cSprite( NULL, 0, 0 );
	back1_disabled = new cSprite( NULL, 0, 0 );

	// The Pointer
	text_pointer = new cSprite( NULL, 0, 0 );

	// Logo
	logo_sdl = new cSprite( NULL, 0, 0 );
	SMC_Version = new cSprite( NULL, 0, 0 );

	for( unsigned int i = 0; i < 9; i++ )
	{
		savegame_temp[i] = new cSprite( NULL, 0, 0 );
		savegame_temp_disabled[i] = new cSprite( NULL, 0, 0 );
	}

	LoadImages();
}

cMainMenu :: ~cMainMenu( void )
{
	FreeImages();

	if( boptions1 )
	{
		delete boptions1;
		boptions1 = NULL;
	}

	if( boptions2 )
	{
		delete boptions2;
		boptions2 = NULL;
	}

	if( bload1 )
	{
		delete bload1;
		bload1 = NULL;
	}

	if( bload2 )
	{
		delete bload2;
		bload2 = NULL;
	}

	if( bsave1 )
	{
		delete bsave1;
		bsave1 = NULL;
	}

	if( bsave2 )
	{
		delete bsave2;
		bsave2 = NULL;
	}

	if( bquit1 )
	{
		delete bquit1;
		bquit1 = NULL;
	}

	if( bquit2 )
	{
		delete bquit2;
		bquit2 = NULL;
	}

	if( bcontrols1 )
	{
		delete bcontrols1;
		bcontrols1 = NULL;
	}

	if( bcontrols2 )
	{
		delete bcontrols2;
		bcontrols2 = NULL;
	}

	if( baudio1 )
	{
		delete baudio1;
		baudio1 = NULL;
	}

	if( baudio2 )
	{
		delete baudio2;
		baudio2 = NULL;
	}

	if( bvideo1 )
	{
		delete bvideo1;
		bvideo1 = NULL;
	}

	if( bvideo2 )
	{
		delete bvideo2;
		bvideo2 = NULL;
	}

	if( bon1 )
	{
		delete bon1;
		bon1 = NULL;
	}

	if( bon2 )
	{
		delete bon2;
		bon2 = NULL;
	}

	if( boff1 )
	{
		delete boff1;
		boff1 = NULL;
	}

	if( boff2 )
	{
		delete boff2;
		boff2 = NULL;
	}

	// Control items
	// Keyboard
	if( gamepad )
	{
		delete gamepad;
		gamepad = NULL;
	}

	if( controls_up )
	{
		delete controls_up;
		controls_up = NULL;
	}

	if( controls_up_disabled )
	{
		delete controls_up_disabled;
		controls_up_disabled = NULL;
	}

	if( controls_up_keyname )
	{
		delete controls_up_keyname;
		controls_up_keyname = NULL;
	}

	if( controls_down )
	{
		delete controls_down;
		controls_down = NULL;
	}

	if( controls_down_disabled )
	{
		delete controls_down_disabled;
		controls_down_disabled = NULL;
	}

	if( controls_down_keyname )
	{
		delete controls_down_keyname;
		controls_down_keyname = NULL;
	}

	if( controls_left )
	{
		delete controls_left;
		controls_left = NULL;
	}

	if( controls_left_disabled )
	{
		delete controls_left_disabled;
		controls_left_disabled = NULL;
	}

	if( controls_left_keyname )
	{
		delete controls_left_keyname;
		controls_left_keyname = NULL;
	}

	if( controls_right )
	{
		delete controls_right;
		controls_right = NULL;
	}

	if( controls_right_disabled )
	{
		delete controls_right_disabled;
		controls_right_disabled = NULL;
	}

	if( controls_right_keyname )
	{
		delete controls_right_keyname;
		controls_right_keyname = NULL;
	}

	if( controls_shoot )
	{
		delete controls_shoot;
		controls_shoot = NULL;
	}

	if( controls_shoot_disabled )
	{
		delete controls_shoot_disabled;
		controls_shoot_disabled = NULL;
	}

	if( controls_shoot_keyname )
	{
		delete controls_shoot_keyname;
		controls_shoot_keyname = NULL;
	}
	// Joystick
	if( controls_usejoystick )
	{
		delete controls_usejoystick;
		controls_usejoystick = NULL;
	}

	if( controls_usejoystick_disabled )
	{
		delete controls_usejoystick_disabled;
		controls_usejoystick_disabled = NULL;
	}

	if( controls_usejoystick_on )
	{
		delete controls_usejoystick_on;
		controls_usejoystick_on = NULL;
	}

	if( controls_usejoystick_off )
	{
		delete controls_usejoystick_off;
		controls_usejoystick_off = NULL;
	}

	// Video Items
	if( fullscreen )
	{
		delete fullscreen;
		fullscreen = NULL;
	}

	if( video_resolution )
	{
		delete video_resolution;
		video_resolution = NULL;
	}

	if( video_resolution_disabled )
	{
		delete video_resolution_disabled;
		video_resolution_disabled = NULL;
	}

	if( video_bpp )
	{
		delete video_bpp;
		video_bpp = NULL;
	}

	if( video_bpp_disabled )
	{
		delete video_bpp_disabled;
		video_bpp_disabled = NULL;
	}

	if( video_fullscreen )
	{
		delete video_fullscreen;
		video_fullscreen = NULL;
	}

	if( video_fullscreen_disabled )
	{
		delete video_fullscreen_disabled;
		video_fullscreen_disabled = NULL;
	}

	if( video_resolution_val )
	{
		delete video_resolution_val;
		video_resolution_val = NULL;
	}

	if( video_bpp_val )
	{
		delete video_bpp_val;
		video_bpp_val = NULL;
	}

	if( video_fullscreen_val )
	{
		delete video_fullscreen_val;
		video_fullscreen_val = NULL;
	}

	if( video_apply )
	{
		delete video_apply;
		video_apply = NULL;
	}

	if( video_apply_disabled )
	{
		delete video_apply_disabled;
		video_apply_disabled = NULL;
	}

	// Audio Items
	if( music )
	{
		delete music;
		music = NULL;
	}

	if( sounds )
	{
		delete sounds;
		sounds = NULL;
	}

	if( audio_music )
	{
		delete audio_music;
		audio_music = NULL;
	}

	if( audio_music_disabled )
	{
		delete audio_music_disabled;
		audio_music_disabled = NULL;
	}

	if( audio_sounds )
	{
		delete audio_sounds;
		audio_sounds = NULL;
	}

	if( audio_sounds_disabled )
	{
		delete audio_sounds_disabled;
		audio_sounds_disabled = NULL;
	}
	if( audio_music_on )
	{
		delete audio_music_on;
		audio_music_on = NULL;
	}

	if( audio_music_off )
	{
		delete audio_music_off;
		audio_music_off = NULL;
	}

	if( audio_sounds_on )
	{
		delete audio_sounds_on;
		audio_sounds_on = NULL;
	}

	if( audio_sounds_off )
	{
		delete audio_sounds_off;
		audio_sounds_off = NULL;
	}

	// Back Button
	if( back1 )
	{
		delete back1;
		back1 = NULL;
	}

	if( back1_disabled )
	{
		delete back1_disabled;
		back1_disabled = NULL;
	}

	// the Pointer
	if( text_pointer )
	{
		delete text_pointer;
		text_pointer = NULL;
	}

	// SDL Logo
	if( logo_sdl )
	{
		delete logo_sdl;
		logo_sdl = NULL;
	}

	// Version
	if( SMC_Version )
	{
		delete SMC_Version;
		SMC_Version = NULL;
	}
	
	// Savegames
	for( unsigned int i = 0; i < 9; i++ )
	{
		if( savegame_temp[i] )
		{
			delete savegame_temp[i];
			savegame_temp[i] = NULL;
		}

		if( savegame_temp_disabled[i] )
		{
			delete savegame_temp_disabled[i];
			savegame_temp_disabled[i] = NULL;
		}
	}
}

void cMainMenu :: LoadImages( void )
{
	char filename[150];

	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%doptions.png", pPreferences->Screen_W );
	boptions1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%doptions_bw.png", pPreferences->Screen_W );
	boptions2->SetImage( GetImage( filename ), 1 );
	
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dsave.png", pPreferences->Screen_W );
	bsave1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dsave_bw.png", pPreferences->Screen_W );
	bsave2->SetImage( GetImage( filename ), 1 );

	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dload.png", pPreferences->Screen_W );
	bload1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dload_bw.png", pPreferences->Screen_W );
	bload2->SetImage( GetImage( filename ), 1 );
	
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dquit.png", pPreferences->Screen_W );
	bquit1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dquit_bw.png", pPreferences->Screen_W );
	bquit2->SetImage( GetImage( filename ), 1 );
	
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dcontrols.png", pPreferences->Screen_W );
	bcontrols1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dcontrols_bw.png", pPreferences->Screen_W );
	bcontrols2->SetImage( GetImage( filename ), 1 );

	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%daudio.png", pPreferences->Screen_W );
	baudio1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%daudio_bw.png", pPreferences->Screen_W );
	baudio2->SetImage( GetImage( filename ), 1 );

	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dvideo.png", pPreferences->Screen_W );
	bvideo1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%dvideo_bw.png", pPreferences->Screen_W );
	bvideo2->SetImage( GetImage( filename ), 1 );
	
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%don.png", pPreferences->Screen_W );
	bon1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%don_bw.png", pPreferences->Screen_W );
	bon2->SetImage( GetImage( filename ), 1 );

	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%doff.png", pPreferences->Screen_W );
	boff1->SetImage( GetImage( filename ), 1 );
	sprintf( filename, "sd:/apps/smc/data/pixmaps/menu/%doff_bw.png", pPreferences->Screen_W );
	boff2->SetImage( GetImage( filename ), 1 );
	
	// Control Items
	// Keyboard
	gamepad->SetImage( GetImage( "sd:/apps/smc/data/pixmaps/menu/items/gamepad.png" ), 1 );
	controls_up->SetImage( TTF_RenderText_Shaded( font, "Jump", colorOrange, colorWhite ), 1 );
	controls_up_disabled->SetImage( TTF_RenderText_Shaded( font, "Jump", colorBlack, colorWhite ), 1 );
	controls_up_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_up ), colorBlack, colorWhite ), 1 );
	controls_down->SetImage( TTF_RenderText_Shaded( font, "Duck", colorOrange, colorWhite ), 1 );
	controls_down_disabled->SetImage( TTF_RenderText_Shaded( font, "Duck", colorBlack, colorWhite ), 1 );
	controls_down_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_down ), colorBlack, colorWhite ), 1 );
	controls_left->SetImage( TTF_RenderText_Shaded( font, "Left", colorOrange, colorWhite ), 1 );
	controls_left_disabled->SetImage( TTF_RenderText_Shaded( font, "Left", colorBlack, colorWhite ), 1 );
	controls_left_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_left ), colorBlack, colorWhite ), 1 );
	controls_right->SetImage( TTF_RenderText_Shaded( font, "Right", colorOrange, colorWhite ), 1 );
	controls_right_disabled->SetImage( TTF_RenderText_Shaded( font, "Right", colorBlack, colorWhite ), 1 );
	controls_right_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_right ), colorBlack, colorWhite ), 1 );
	controls_shoot->SetImage( TTF_RenderText_Shaded( font, "Shoot", colorOrange, colorWhite ), 1 );
	controls_shoot_disabled->SetImage( TTF_RenderText_Shaded( font, "Shoot", colorBlack, colorWhite ), 1 );
	controls_shoot_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_shoot ), colorBlack, colorWhite ), 1 );
	// joystick
	controls_usejoystick->SetImage(  TTF_RenderText_Shaded( font, "Use Joystick", colorOrange, colorWhite ), 1 );
	controls_usejoystick_disabled->SetImage(  TTF_RenderText_Shaded( font, "Use Joystick", colorBlack, colorWhite ), 1 );
	controls_usejoystick_on->SetImage(  TTF_RenderText_Shaded( font, "Enabled", colorGreen, colorWhite ), 1 );
	controls_usejoystick_off->SetImage(  TTF_RenderText_Shaded( font, "Disabled", colorBlack, colorWhite ), 1 );
	
	// Video
	fullscreen->SetImage( GetImage( "sd:/apps/smc/data/pixmaps/menu/items/fullscreen.png" ), 1 );
	video_resolution->SetImage( TTF_RenderText_Shaded( font, "Resolution", colorOrange, colorWhite ), 1 );
	video_resolution_disabled->SetImage( TTF_RenderText_Shaded( font, "Resolution", colorBlack, colorWhite ), 1 );
	video_bpp->SetImage( TTF_RenderText_Shaded( font, "Bpp", colorOrange, colorWhite ), 1 );
	video_bpp_disabled->SetImage( TTF_RenderText_Shaded( font, "Bpp", colorBlack, colorWhite ), 1 );
	video_fullscreen->SetImage( TTF_RenderText_Shaded( font, "Fullscreen", colorOrange, colorWhite ), 1 );
	video_fullscreen_disabled->SetImage( TTF_RenderText_Shaded( font, "Fullscreen", colorBlack, colorWhite ), 1 );
	video_resolution_val->SetImage( TTF_RenderText_Shaded( font, "Resolution", colorBlack, colorWhite ), 1 );
	video_bpp_val->SetImage( TTF_RenderText_Shaded( font, "Bpp", colorBlack, colorWhite ), 1 );
	video_fullscreen_val->SetImage( TTF_RenderText_Shaded( font, "Fullscreen", colorBlack, colorWhite ), 1 );
	video_apply->SetImage( TTF_RenderText_Shaded( font, "Apply", colorOrange, colorWhite ), 1 );
	video_apply_disabled->SetImage( TTF_RenderText_Shaded( font, "Apply", colorDarkBlue, colorWhite ), 1 );
	
	// Audio
	music->SetImage( GetImage( "sd:/apps/smc/data/pixmaps/menu/items/music.png" ), 1 );
	sounds->SetImage( GetImage( "sd:/apps/smc/data/pixmaps/menu/items/sounds.png" ), 1 );
	audio_music->SetImage( TTF_RenderText_Shaded( font, "Music", colorOrange, colorWhite ), 1 );
	audio_music_disabled->SetImage( TTF_RenderText_Shaded( font, "Music", colorBlack, colorWhite ), 1 );
	audio_sounds->SetImage( TTF_RenderText_Shaded( font, "Sounds", colorOrange, colorWhite ), 1 );
	audio_sounds_disabled->SetImage( TTF_RenderText_Shaded( font, "Sounds", colorBlack, colorWhite ), 1 );
	audio_music_on->SetImage( TTF_RenderText_Shaded( font, "On", colorGreen, colorWhite ), 1 );
	audio_music_off->SetImage( TTF_RenderText_Shaded( font, "Off", colorBlack, colorWhite ), 1 );
	audio_sounds_on->SetImage( TTF_RenderText_Shaded( font, "On", colorGreen, colorWhite ), 1 );
	audio_sounds_off->SetImage( TTF_RenderText_Shaded( font, "Off", colorBlack, colorWhite ), 1 );

	// back button
	back1->SetImage( TTF_RenderText_Shaded( font, "Back", colorOrange, colorWhite ), 1 );
	back1_disabled->SetImage( TTF_RenderText_Shaded( font, "Back", colorDarkGreen, colorWhite ), 1 );

	// The Pointer
	text_pointer->SetImage( TTF_RenderText_Shaded( font, "->", colorBlack, colorWhite ), 1 );

	// SDL Logo
	logo_sdl->SetImage( GetImage( "menu/logo_sdl.png" ), 1 );
	logo_sdl->SetPos( 5, pPreferences->Screen_H - logo_sdl->rect.h - 5 );

	// SMC Version
	SMC_Version->SetImage( TTF_RenderText_Shaded( font_16, "Version " VERSION, colorGreen, colorWhite ), 1 );
	SMC_Version->SetPos( pPreferences->Screen_W - SMC_Version->rect.w - 5, pPreferences->Screen_H - SMC_Version->rect.h - 5 );

	// Savegames
	for( unsigned int i = 0; i < 9; i++ )
	{
		savegame_temp[i]->SetImage( TTF_RenderText_Shaded( font, "Free Save", colorBlack, colorWhite ), 1 );
		savegame_temp_disabled[i]->SetImage( TTF_RenderText_Shaded( font, "Free Save", colorOrange, colorWhite ), 1 );
	}
}

void cMainMenu :: FreeImages( void )
{
	// Control Items
	// Keyboard
	SDL_FreeSurface( controls_up->image );
	controls_up->image = NULL;
	SDL_FreeSurface( controls_up_disabled->image );
	controls_up_disabled->image = NULL;
	SDL_FreeSurface( controls_up_keyname->image );
	controls_up_keyname->image = NULL;
	SDL_FreeSurface( controls_down->image );
	controls_down->image = NULL;
	SDL_FreeSurface( controls_down_disabled->image );
	controls_down_disabled->image = NULL;
	SDL_FreeSurface( controls_down_keyname->image );
	controls_down_keyname->image = NULL;
	SDL_FreeSurface( controls_left->image );
	controls_left->image = NULL;
	SDL_FreeSurface( controls_left_disabled->image );
	controls_left_disabled->image = NULL;
	SDL_FreeSurface( controls_left_keyname->image );
	controls_left_keyname->image = NULL;
	SDL_FreeSurface( controls_right->image );
	controls_right->image = NULL;
	SDL_FreeSurface( controls_right_disabled->image );
	controls_right_disabled->image = NULL;
	SDL_FreeSurface( controls_right_keyname->image );
	controls_right_keyname->image = NULL;
	SDL_FreeSurface( controls_shoot->image );
	controls_shoot->image = NULL;
	SDL_FreeSurface( controls_shoot_disabled->image );
	controls_shoot_disabled->image = NULL;
	SDL_FreeSurface( controls_shoot_keyname->image );
	controls_shoot_keyname->image = NULL;
	// Joystick
	SDL_FreeSurface( controls_usejoystick->image );
	controls_usejoystick->image = NULL;
	SDL_FreeSurface( controls_usejoystick_disabled->image );
	controls_usejoystick_disabled->image = NULL;
	SDL_FreeSurface( controls_usejoystick_on->image );
	controls_usejoystick_on->image = NULL;
	SDL_FreeSurface( controls_usejoystick_off->image );
	controls_usejoystick_off->image = NULL;

	// Video Items
	SDL_FreeSurface( video_resolution->image );
	video_resolution->image = NULL;
	SDL_FreeSurface( video_resolution_disabled->image );
	video_resolution_disabled->image = NULL;
	SDL_FreeSurface( video_bpp->image );
	video_bpp->image = NULL;
	SDL_FreeSurface( video_bpp_disabled->image );
	video_bpp_disabled->image = NULL;
	SDL_FreeSurface( video_fullscreen->image );
	video_fullscreen->image = NULL;
	SDL_FreeSurface( video_fullscreen_disabled->image );
	video_fullscreen_disabled->image = NULL;
	SDL_FreeSurface( video_resolution_val->image );
	video_resolution_val->image = NULL;
	SDL_FreeSurface( video_bpp_val->image );
	video_bpp_val->image = NULL;
	SDL_FreeSurface( video_fullscreen_val->image );
	video_fullscreen_val->image = NULL;
	SDL_FreeSurface( video_apply->image );
	video_apply->image = NULL;
	SDL_FreeSurface( video_apply_disabled->image );
	video_apply_disabled->image = NULL;

	// Audio Items
	SDL_FreeSurface( audio_music->image );
	audio_music->image = NULL;
	SDL_FreeSurface( audio_sounds->image );
	audio_sounds->image = NULL;
	SDL_FreeSurface( audio_music_on->image );
	audio_music_on->image = NULL;
	SDL_FreeSurface( audio_music_off->image );
	audio_music_off->image = NULL;
	SDL_FreeSurface( audio_sounds_on->image );
	audio_sounds_on->image = NULL;
	SDL_FreeSurface( audio_sounds_off->image );
	audio_sounds_off->image = NULL;

	// Back Button
	SDL_FreeSurface( back1->image );
	back1->image = NULL;
	SDL_FreeSurface( back1_disabled->image );
	back1_disabled->image = NULL;

	// The Pointer
	SDL_FreeSurface( text_pointer->image );
	text_pointer->image = NULL;

	// SDL Logo
	SDL_FreeSurface( logo_sdl->image );
	logo_sdl->image = NULL;

	// Version
	SDL_FreeSurface( SMC_Version->image );
	SMC_Version->image = NULL;

	// Savegames
	for( unsigned int i = 0; i < 9; i++ )
	{
		if( savegame_temp[i]->image )
		{
			SDL_FreeSurface( savegame_temp[i]->image );
			savegame_temp[i]->image = NULL;
		}

		if( savegame_temp_disabled[i]->image )
		{
			SDL_FreeSurface( savegame_temp_disabled[i]->image );
			savegame_temp_disabled[i]->image = NULL;
		}
	}
}

void cMainMenu :: UpdateGeneric( cMenuHandler *handler )
{
	keys = SDL_GetKeyState( NULL );

	pMouseCursor->Update_Position();

	while( SDL_PollEvent( &event ) )
	{
		if( event.type == SDL_QUIT )
		{
			done = 1;
			leave = 2;
		}
		else if( KeyPressed( KEY_ESC ) ) // ESC
		{
			leave = 2;
		}
		else if( KeyPressed( KEY_DOWN ) ) // Down
		{
			if( handler->Get_Size() <= (unsigned int)( handler->active + 1 ) )
			{
				handler->Set_Active( 0 );
			}
			else
			{
				handler->Set_Active( handler->active + 1 );
			}
		}
		else if( KeyPressed( KEY_UP ) ) // Up
		{
			if( handler->active == 0 )
			{
				handler->Set_Active( handler->Get_Size() - 1 );
			}
			else
			{
				handler->Set_Active( handler->active - 1 );
			}
		}
		else if( event.type == SDL_MOUSEMOTION )
		{
			handler->Update_Mouse();
		}
		else if( KeyPressed( KEY_ENTER ) || ( event.type == SDL_MOUSEBUTTONUP && pMouseCursor->CollsionCheck( &handler->Get_Active_Item()->rect ) ) ) // Button
		{
			action = 1;
		}
		else if( event.key.keysym.sym == SDLK_l ) 
		{
			KeyDown( SDLK_l );

			if( pLevel->is_Loaded() ) 
			{
				handler->Set_Active( 0 );
				action = 1;
			}
		}
	}

	pAudio->Update();
}

cMenu_Item *cMainMenu :: Auto_Menu( string imagename, string imagefilename_menu, unsigned int ypos /* = 0 */, bool is_quit /* = 0  */ )
{
	string filetemp, full_filename;

	cMenu_Item *temp_item = new cMenu_Item();

	// Menu pixmaps directory
	filetemp.insert( 0, "/menu/" );
	filetemp.insert( 0, PIXMAPS_DIR );

	// The Menu Image
	if( imagefilename_menu.length() > 0 )
	{
		full_filename = filetemp;
		full_filename.insert( full_filename.length(), "items/" );
		full_filename.insert( full_filename.length(), imagefilename_menu );
		temp_item->image_menu->SetImage( GetImage( full_filename ), 1 );
	}


	filetemp.insert( filetemp.length(), int_to_string( screen->w ) );

	// The Active Image
	if( imagename.length() > 0 )
	{
		full_filename = filetemp;
		full_filename.insert( full_filename.length(), imagename );
		temp_item->image_default->SetImage( GetImage( full_filename ), 1 );
	}
	
	// The Disabled image
	if( imagename.length() > 0 )
	{
		full_filename = filetemp;
		full_filename.insert( full_filename.length(), imagename );
		full_filename.insert( full_filename.length() - 4, "_bw" );
		temp_item->image_disabled->SetImage( GetImage( full_filename ), 1 );
	}

	// Position and initialization
	temp_item->SetPos( (double)( screen->w/2 ) - (double)( temp_item->image_disabled->rect.w/2 ), (double)ypos );
	temp_item->isquit = is_quit;

	return temp_item;
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

void cMainMenu :: Menu_Show( void )
{
	cameraposx = 0;
	cameraposy = 0;

	if( done )
	{
		return;
	}

	Game_Mode = MODE_MENU;

	if( !pLevel->valid_music )
	{
		pAudio->FadeOutMusic( 1500 );
		pAudio->PlayMusic( MUSIC_DIR "/game/mainmenu.ogg", -1, 0, 1500 );
	}
	
	leave = 0;

	cMenuHandler *handler = new cMenuHandler( "menu/logo.png", "menu/logo_quit.png", screen->w/2 - 220 );

	cMenu_Item *temp_item = NULL;
	unsigned int item_ypos = (unsigned int)(screen->h/3) + 80;

	// Start
	temp_item = Auto_Menu( "start.png", "start.png", item_ypos );
	temp_item->image_menu->SetPos( temp_item->posx + (double)(temp_item->image_disabled->rect.w + 16), temp_item->posy );
	handler->Add_MenuItem( temp_item );
	// Options
	item_ypos += 60;
	temp_item = Auto_Menu( "options.png", "options.png", item_ypos );
	temp_item->image_menu->SetPos( temp_item->posx - temp_item->image_menu->rect.w - 16, temp_item->posy );
	handler->Add_MenuItem( temp_item );
	// Load
	item_ypos += 60;
	temp_item = Auto_Menu( "load.png", "load.png", item_ypos );
	temp_item->image_menu->SetPos( temp_item->posx + (double)(temp_item->image_disabled->rect.w + 16), temp_item->posy );
	handler->Add_MenuItem( temp_item );
	// Save
	item_ypos += 60;
	temp_item = Auto_Menu( "save.png", "save.png", item_ypos );
	temp_item->image_menu->SetPos( temp_item->posx - temp_item->image_menu->rect.w - 16, temp_item->posy );
	handler->Add_MenuItem( temp_item );
	// Quit
	item_ypos += 60;
	temp_item = Auto_Menu( "quit.png", "", item_ypos, 1 );
	temp_item->image_menu->SetPos( temp_item->posx + temp_item->rect.w + 16, temp_item->posy );
	handler->Add_MenuItem( temp_item );

	logo_sdl->SetPos( 10, (double)( screen->h - logo_sdl->rect.h - 10 ) );
	SMC_Version->SetPos( (double)( screen->w - SMC_Version->rect.w - 10 ), (double)( screen->h - SMC_Version->rect.h - 10 ) );

	while( !leave )
	{
		UpdateGeneric( handler );
		
		Menu_Action( handler );
		Menu_Update( handler );
		
		Framerate.Update();
	}

	if( leave == 2 && !pPlayer->points && !Leveleditor_Mode )	
	{
		done = 1;
	}

	if( pLevel->is_Loaded() )
	{
		pPlayer->Update_Camera( 1 );
		Game_Mode = MODE_LEVEL;
	}

	if( handler )
	{
		delete handler;
		handler = NULL;
	}
}

void cMainMenu :: Menu_Update( cMenuHandler *handler )
{
	SDL_FillRect( screen, NULL, white );

	handler->Draw();
	logo_sdl->Draw( screen );
	SMC_Version->Draw( screen );
	pMouseCursor->Update();

	SDL_Flip( screen );
}


void cMainMenu :: Menu_Action( cMenuHandler *handler )
{
	if( !action )
	{
		return;
	}

	action = 0;

	if( handler->active == 0 ) // Start
	{
		leave = 1;
	}
	else if( handler->active == 1 ) // Options
	{
		SubOptions_Show();
	}
	else if( handler->active == 2 )	// Load
	{
		LoadGames_Show();
	}
	else if( handler->active == 3 ) // Save
	{
		SaveGames_Show();
	}
	else if( handler->active == 4 ) // Quit
	{
		leave = 1;
		done = 1;
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

void cMainMenu :: SubControls_Show( void )
{
	leave = 0;

	cMenuHandler *handler = new cMenuHandler( "menu/logo.png", "", pPreferences->Screen_W/2 - 220 );

	cMenu_Item *temp_item = NULL;
	unsigned int item_ypos = pPreferences->Screen_H/3 + 40;

	temp_item = new cMenu_Item(); // Up
	temp_item->image_default->SetImage( controls_up->image );
	temp_item->image_disabled->SetImage( controls_up_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	controls_up_keyname->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Down
	item_ypos += 30;
	temp_item->image_default->SetImage( controls_down->image );
	temp_item->image_disabled->SetImage( controls_down_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	controls_down_keyname->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Left
	item_ypos += 30;
	temp_item->image_default->SetImage( controls_left->image );
	temp_item->image_disabled->SetImage( controls_left_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	controls_left_keyname->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Right
	item_ypos += 30;
	temp_item->image_default->SetImage( controls_right->image );
	temp_item->image_disabled->SetImage( controls_right_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	controls_right_keyname->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Shoot
	item_ypos += 30;	
	temp_item->image_default->SetImage( controls_shoot->image );
	temp_item->image_disabled->SetImage( controls_shoot_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	controls_shoot_keyname->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // use joystick
	item_ypos += 50;	
	temp_item->image_default->SetImage( controls_usejoystick->image );
	temp_item->image_disabled->SetImage( controls_usejoystick_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	controls_usejoystick_on->SetPos( pPreferences->Screen_W/2, item_ypos );
	controls_usejoystick_off->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // back
	temp_item->image_default->SetImage( back1->image );
	temp_item->image_disabled->SetImage( back1_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/20 + 25, handler->logo->rect.h + bcontrols1->rect.h + 20 );
	temp_item->isquit = 1;
	handler->Add_MenuItem( temp_item );

	bcontrols1->SetPos( pPreferences->Screen_W/20, handler->logo->rect.h + 10 );
	gamepad->SetPos( controls_usejoystick_on->posx + gamepad->rect.w + 50, controls_usejoystick_on->posy - gamepad->rect.h/2 );

	while( !leave )
	{
		UpdateGeneric( handler );

		SubControls_Update( handler );
		SubControls_Action( handler );

		Framerate.Update();
	}

	if( handler )
	{
		delete handler;
		handler = NULL;
	}

	leave = 0;
}

void cMainMenu :: SubControls_Update( cMenuHandler *handler )
{
	SDL_FillRect( screen, NULL, white );

	handler->Draw();
	bcontrols1->Draw( screen );
	controls_up_keyname->Draw( screen );
	controls_down_keyname->Draw( screen );
	controls_left_keyname->Draw( screen );
	controls_right_keyname->Draw( screen );
	controls_shoot_keyname->Draw( screen );

	if( pPreferences->Joy_enabled )
	{
		gamepad->Draw( screen );
		controls_usejoystick_on->Draw( screen );
	}
	else
	{
		controls_usejoystick_off->Draw( screen );
	}

	pMouseCursor->Update();

	SDL_Flip( screen );
}

void cMainMenu :: SubControls_Action( cMenuHandler *handler )
{
	if( !action )
	{
		return;
	}

	action = 0;

	if( handler->active == 5 )
	{
		pPreferences->Joy_enabled = !pPreferences->Joy_enabled;
		return;
	}
	else if( handler->active == 6 )
	{
		leave = 1;
		return;
	}
	else if( handler->active < 0 || handler->active > 6 )
	{
		return;
	}

	// A keyboard key change
	SDL_Rect temp_rect;
	temp_rect.x = (Sint16)(pPreferences->Screen_W/2.5);
	temp_rect.y = pPreferences->Screen_H/2;
	cSprite *temp_sprite = new cSprite( TTF_RenderText_Shaded( font, "Press a key", colorOrange, colorBlack ), (double)temp_rect.x, (double)temp_rect.y );
	temp_rect.x -= 40;
	temp_rect.y -= 10;
	temp_rect.w = temp_sprite->rect.w + 80;
	temp_rect.h = temp_sprite->rect.h + 20;
	SDL_FillRect( screen, &temp_rect, grey );
	temp_rect.x += 5;
	temp_rect.y += 5;
	temp_rect.w -= 10;
	temp_rect.h -= 10;
	SDL_FillRect( screen, &temp_rect, black );
	temp_sprite->Draw( screen );
	SDL_FreeSurface( temp_sprite->image );
	delete temp_sprite;
	
	SDL_Flip( screen );

	bool sub_done = 0;

	while( !sub_done )
	{
		while( SDL_PollEvent( &event ) )
		{
			if( event.type == SDL_KEYDOWN )
			{
				if( event.key.keysym.sym == SDLK_ESCAPE || event.key.keysym.sym == SDLK_BACKSPACE )
				{
					sub_done = 1;
					break;
				}

				switch( handler->active )
				{
				case 0:
				{
					pPreferences->Key_up = event.key.keysym.sym; 
					SDL_FreeSurface( controls_up_keyname->image );
					controls_up_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_up ), colorBlack, colorWhite ) );
					break;
				}
				case 1:
				{
					pPreferences->Key_down = event.key.keysym.sym; 
					SDL_FreeSurface( controls_down_keyname->image );
					controls_down_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_down ), colorBlack, colorWhite ) );
					break;
				}
				case 2:
				{
					pPreferences->Key_left = event.key.keysym.sym; 
					SDL_FreeSurface( controls_left_keyname->image );
					controls_left_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_left ), colorBlack, colorWhite ) );
					break;
				}
				case 3:
				{
					pPreferences->Key_right = event.key.keysym.sym; 
					SDL_FreeSurface( controls_right_keyname->image );
					controls_right_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_right ), colorBlack, colorWhite ) );
					break;
				}
				case 4:
				{
					pPreferences->Key_shoot = event.key.keysym.sym; 
					SDL_FreeSurface( controls_shoot_keyname->image );
					controls_shoot_keyname->SetImage( TTF_RenderText_Shaded( font, SDL_GetKeyName( pPreferences->Key_shoot ), colorBlack, colorWhite ) );
					break;
				}
				default:
				{
					break;
				}
				}

				sub_done = 1;
			}
		}	
	}
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

void cMainMenu :: SubOptions_Action( cMenuHandler *handler )
{
	if( !action )
	{
		return;
	}

	action = 0;

	if( handler->active == 0 ) // Controls
	{
		SubControls_Show();
	}
	else if( handler->active == 1 ) // Audio
	{
		SubAudio_Show();	
	}
	else if( handler->active == 2 ) // Video
	{
		SubVideo_Show();
	}
	else if( handler->active == 3 ) // back
	{
		pPreferences->Save();
		leave = 1;
	}
}

void cMainMenu :: SubOptions_Show( void )
{
	leave = 0;

	cMenuHandler *handler = new cMenuHandler( "menu/logo.png", "", pPreferences->Screen_W/2 - 220 );

	cMenu_Item *temp_item = NULL;
	unsigned int item_ypos = pPreferences->Screen_H/3 + 80;

	temp_item = new cMenu_Item(); // Controls
	temp_item = Auto_Menu( "controls.png", "controls.png", (unsigned int)item_ypos );
	temp_item->image_menu->SetPos( temp_item->posx - temp_item->image_menu->rect.w - 16, temp_item->posy );
	handler->Add_MenuItem( temp_item );
	temp_item = new cMenu_Item(); // Audio
	item_ypos += 70;
	temp_item = Auto_Menu( "audio.png", "audio.png", (unsigned int)item_ypos );
	temp_item->image_menu->SetPos( temp_item->posx + (double)(temp_item->image_disabled->rect.w + 16), temp_item->posy );
	handler->Add_MenuItem( temp_item );
	temp_item = new cMenu_Item(); // Video
	item_ypos += 70;
	temp_item = Auto_Menu( "video.png", "video.png", (unsigned int)item_ypos );
	temp_item->image_menu->SetPos( temp_item->posx - temp_item->image_menu->rect.w - 16, temp_item->posy );
	handler->Add_MenuItem( temp_item );
	temp_item = new cMenu_Item(); // back
	temp_item->image_default->SetImage( back1->image );
	temp_item->image_disabled->SetImage( back1_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/20 + 25, handler->logo->rect.h + boptions1->rect.h + 20 );
	temp_item->isquit = 1;
	handler->Add_MenuItem( temp_item );

	boptions1->SetPos( pPreferences->Screen_W/20, handler->logo->rect.h + 10 );

	while( !leave )
	{
		UpdateGeneric( handler );

		SubOptions_Update( handler );
		SubOptions_Action( handler );

		Framerate.Update();
	}

	if( handler )
	{
		delete handler;
		handler = NULL;
	}

	leave = 0;
}

void cMainMenu :: SubOptions_Update( cMenuHandler *handler )
{
	SDL_FillRect( screen, NULL, white );

	handler->Draw();
	boptions1->Draw( screen );

	pMouseCursor->Update();

	SDL_Flip( screen );
}

void cMainMenu :: LoadGames_Show( void )
{
	leave = 0;

	cMenuHandler *handler = new cMenuHandler( "menu/logo.png", "", pPreferences->Screen_W/2 - 220 );

	cMenu_Item *temp_item = NULL;
	unsigned int item_ypos = pPreferences->Screen_H/3 + 90;

	GetSavedGames();

	// The Savegames
	for( unsigned int i = 0; i < 9; i++ )
	{
		temp_item = new cMenu_Item();
		temp_item->image_default->SetImage( savegame_temp_disabled[i]->image );
		temp_item->image_disabled->SetImage( savegame_temp[i]->image );
		temp_item->SetPos( pPreferences->Screen_W/5, item_ypos );
		handler->Add_MenuItem( temp_item );
		
		item_ypos += temp_item->image_default->rect.h + 6;
	}

	temp_item = new cMenu_Item(); // back
	temp_item->image_default->SetImage( back1->image );
	temp_item->image_disabled->SetImage( back1_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/20 + 25, handler->logo->rect.h + bload1->rect.h + 20 );
	temp_item->isquit = 1;
	handler->Add_MenuItem( temp_item );

	bload1->SetPos( pPreferences->Screen_W/20, handler->logo->rect.h + 10 );

	while( !leave )
	{
		UpdateGeneric( handler );

		LoadGames_Update( handler );
		LoadGames_Action( handler );

		Framerate.Update();
	}

	if( handler )
	{
		delete handler;
		handler = NULL;
	}

	if( leave != 3 )
	{
		leave = 0;
	}
}

void cMainMenu :: LoadGames_Update( cMenuHandler *handler )
{
	SDL_FillRect( screen, NULL, white );

	handler->Draw();
	bload1->Draw( screen );

	pMouseCursor->Update();

	SDL_Flip( screen );
}

void cMainMenu :: LoadGames_Action( cMenuHandler *handler )
{
	if( !action )
	{
		return;
	}

	action = 0;

	if( handler->active == 9 ) // back
	{
		leave = 1;
	}
	else if( pSavegame->is_valid( handler->active + 1 ) )
	{
		pAudio->PauseMusic();
		pAudio->PlaySound( SOUNDS_DIR "/savegame_load.ogg" );
		
		pLevel->Load_Savegame( handler->active + 1 );

		leave = 3;
		return;
	}
}

void cMainMenu :: SaveGames_Show( void )
{
	leave = 0;

	cMenuHandler *handler = new cMenuHandler( "menu/logo.png", "", pPreferences->Screen_W/2 - 220 );

	cMenu_Item *temp_item = NULL;
	unsigned int item_ypos = pPreferences->Screen_H/3 + 90;

	GetSavedGames();

	// The Savegames
	for( unsigned int i = 0; i < 9; i++ )
	{
		temp_item = new cMenu_Item();
		temp_item->image_default->SetImage( savegame_temp_disabled[i]->image );
		temp_item->image_disabled->SetImage( savegame_temp[i]->image );
		temp_item->SetPos( pPreferences->Screen_W/5, item_ypos );
		handler->Add_MenuItem( temp_item );
		
		item_ypos += temp_item->image_default->rect.h + 6;
	}

	temp_item = new cMenu_Item(); // back
	temp_item->image_default->SetImage( back1->image );
	temp_item->image_disabled->SetImage( back1_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/20 + 25, handler->logo->rect.h + bsave1->rect.h + 20 );
	temp_item->isquit = 1;
	handler->Add_MenuItem( temp_item );

	bsave1->SetPos( pPreferences->Screen_W/20, handler->logo->rect.h + 10 );

	while( !leave )
	{
		UpdateGeneric( handler );

		SaveGames_Update( handler );
		SaveGames_Action( handler );

		Framerate.Update();
	}

	if( handler )
	{
		delete handler;
		handler = NULL;
	}

	if( leave != 3 )
	{
		leave = 0;
	}
}

void cMainMenu :: SaveGames_Update( cMenuHandler *handler )
{	
	SDL_FillRect( screen, NULL, white );

	handler->Draw();
	bsave1->Draw( screen );

	pMouseCursor->Update();

	SDL_Flip( screen );
}

void cMainMenu :: SaveGames_Action( cMenuHandler *handler )
{
	if( !action )
	{
		return;
	}

	action = 0;

	if( handler->active == 9 ) // back
	{
		leave = 1;
	}
	else if( pOverWorld->Current_Waypoint >= 0 || pLevel->is_Loaded() ) // A Savegame
	{
		pAudio->PlaySound( SOUNDS_DIR "/beep_1.ogg" );
		string tmp_Descripion = Set_SaveDescription( handler->active + 1 );
		
		Framerate.Reset();

		if( tmp_Descripion.compare( "Not enough Points" ) == 0 ) 
		{
			leave = 1;
			return;
		}
		else if( tmp_Descripion.length() > 0 )
		{
			pAudio->PlaySound( SOUNDS_DIR "/savegame_save.ogg" );
			pLevel->Save_Savegame( handler->active + 1, tmp_Descripion );

#ifndef _DEBUG
			pointsdisplay->SetPoints( pPlayer->points - 3000 );
#endif
			leave = 3;
			return;
		}
	}
}

string cMainMenu :: Set_SaveDescription( unsigned int Save_file )
{
	if( Save_file <= 0 || Save_file >= 10 )
	{
		return "Wrong Savefile";
	}
#ifndef _DEBUG // saving costs no Points in Debug Builds
	if( pPlayer ) 
	{
		if( pLevel->is_Loaded() && pPlayer->points < 3000 )
		{
			SDL_Rect temp_rect;
			temp_rect.x = (Sint16)( pPreferences->Screen_W/2.5 );
			temp_rect.y = pPreferences->Screen_H/2;
			cSprite *temp_sprite = new cSprite( TTF_RenderText_Shaded( font, "Not enough Points [ 3000 needed ]", colorOrange, colorBlack ), (double)temp_rect.x, (double)temp_rect.y );
			temp_rect.x -= 40;
			temp_rect.y -= 10;
			temp_rect.w = temp_sprite->rect.w + 80;
			temp_rect.h = temp_sprite->rect.h + 20;
			SDL_FillRect( screen, &temp_rect, grey );
			temp_rect.x += 5;
			temp_rect.y += 5;
			temp_rect.w -= 10;
			temp_rect.h -= 10;
			SDL_FillRect( screen, &temp_rect, black );
			temp_sprite->Draw( screen );
			SDL_FreeSurface( temp_sprite->image );
			temp_sprite->image = NULL;
			delete temp_sprite;
			temp_sprite = NULL;
			
			SDL_Flip( screen );

			bool sub_done = 0;

			ClearEvents();

			while( !sub_done )
			{
				while( SDL_PollEvent( &event ) )
				{
					if( event.type == SDL_KEYDOWN || event.type == SDL_MOUSEBUTTONDOWN || event.type == SDL_JOYBUTTONDOWN )
					{
						sub_done = 1;
						break;
					}
				}

				SDL_Flip( screen );
			}

			return "Not enough Points";
		}
	}
	else
	{
		return NULL;
	}
#endif
	string Save_Description;

	bool auto_controls = 0;

	if( pSavegame->is_valid( Save_file ) ) // If Savegame exists use old Description
	{
		Save_Description.clear();
		Save_Description = pSavegame->Get_Description( Save_file, 1 ); // Only the Description
	}
	else
	{
		Save_Description = " No Description "; // Standard Description
		auto_controls = 1;
	}

	SDL_Rect temp_rect;
	temp_rect.x = pPreferences->Screen_W/2 - 100;
	temp_rect.y = 10 + pPreferences->Screen_H/2 + 10 + bquit1->rect.h;
	temp_rect.w = 450;
	temp_rect.h = 80;

	temp_rect.x -= 50;
	temp_rect.y -= 40;
	SDL_FillRect( screen, &temp_rect, lightblue );
	temp_rect.x += 50;
	temp_rect.y += 40;

	return  EditMessageBox( Save_Description, "Enter Description", temp_rect.x, temp_rect.y, auto_controls );
}

/* *** *** *** *** *** *** *** *** Sub Audio *** *** *** *** *** *** *** *** *** *** */

void cMainMenu :: SubAudio_Action( cMenuHandler *handler )
{
	if( !action )
	{
		return;
	}

	action = 0;

	if( handler->active == 0 )
	{
		pAudio->ToggleMusic();
	} 
	else if( handler->active == 1 )
	{
		pAudio->ToggleSounds();
	}
	else if( handler->active == 2 )
	{
		leave = 1;
	}
}

void cMainMenu :: SubAudio_Show( void )
{
	leave = 0;

	cMenuHandler *handler = new cMenuHandler( "menu/logo.png", "", pPreferences->Screen_W/2 - 220 );

	cMenu_Item *temp_item = NULL;
	unsigned int item_ypos = pPreferences->Screen_H/3 + 60;

	temp_item = new cMenu_Item(); // Music
	temp_item->image_default->SetImage( audio_music->image );
	temp_item->image_disabled->SetImage( audio_music_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	audio_music_on->SetPos( pPreferences->Screen_W/2, item_ypos );
	audio_music_off->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Sounds
	item_ypos += 50;
	temp_item->image_default->SetImage( audio_sounds->image );
	temp_item->image_disabled->SetImage( audio_sounds_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	audio_sounds_on->SetPos( pPreferences->Screen_W/2, item_ypos );
	audio_sounds_off->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // back
	temp_item->image_default->SetImage( back1->image );
	temp_item->image_disabled->SetImage( back1_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/20 + 25, handler->logo->rect.h + baudio1->rect.h + 20 );
	temp_item->isquit = 1;
	handler->Add_MenuItem( temp_item );

	baudio1->SetPos( pPreferences->Screen_W/20, handler->logo->rect.h + 10 );
	music->SetPos( audio_music_on->posx + music->rect.w + 50, audio_music_on->posy - music->rect.h/2 );
	sounds->SetPos( audio_sounds_on->posx + sounds->rect.w + 50, audio_sounds_on->posy - sounds->rect.h/2 );

	while( !leave )
	{
		UpdateGeneric( handler );

		SubAudio_Update( handler );
		SubAudio_Action( handler );

		Framerate.Update();
	}

	if( handler )
	{
		delete handler;
		handler = NULL;
	}

	leave = 0;
}

void cMainMenu :: SubAudio_Update( cMenuHandler *handler )
{
	SDL_FillRect( screen, NULL, white );

	handler->Draw();
	baudio1->Draw( screen );

	if( pAudio->bMusic )
	{
		audio_music_on->Draw( screen );
		music->Draw( screen );
	}
	else
	{
		audio_music_off->Draw( screen );
	}

	if( pAudio->bSounds )
	{
		audio_sounds_on->Draw( screen );
		sounds->Draw( screen );
	}
	else
	{
		audio_sounds_off->Draw( screen );
	}

	pMouseCursor->Update();

	SDL_Flip( screen );
}

/* *** *** *** *** *** *** *** *** Sub Video *** *** *** *** *** *** *** *** *** *** */

void cMainMenu :: SubVideo_Show( void )
{
	leave = 0;

	cMenuHandler *handler = new cMenuHandler( "menu/logo.png", "", pPreferences->Screen_W/2 - 220 );

	cMenu_Item *temp_item = NULL;
	unsigned int item_ypos = pPreferences->Screen_H/3 + 60;

	temp_item = new cMenu_Item(); // Resolution
	temp_item->image_default->SetImage( video_resolution->image );
	temp_item->image_disabled->SetImage( video_resolution_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	video_resolution_val->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Bpp
	item_ypos += 50;
	temp_item->image_default->SetImage( video_bpp->image );
	temp_item->image_disabled->SetImage( video_bpp_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	video_bpp_val->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Fullscreen
	item_ypos += 50;
	temp_item->image_default->SetImage( video_fullscreen->image );
	temp_item->image_disabled->SetImage( video_fullscreen_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	video_fullscreen_val->SetPos( pPreferences->Screen_W/2, item_ypos );
	temp_item = new cMenu_Item(); // Apply
	item_ypos += 50;
	temp_item->image_default->SetImage( video_apply->image );
	temp_item->image_disabled->SetImage( video_apply_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/3, item_ypos );
	handler->Add_MenuItem( temp_item );
	temp_item = new cMenu_Item(); // back
	temp_item->image_default->SetImage( back1->image );
	temp_item->image_disabled->SetImage( back1_disabled->image );
	temp_item->SetPos( pPreferences->Screen_W/20 + 25, handler->logo->rect.h + bvideo1->rect.h + 20 );
	temp_item->isquit = 1;
	handler->Add_MenuItem( temp_item );

	bvideo1->SetPos( pPreferences->Screen_W/20, handler->logo->rect.h + 10 );
	fullscreen->SetPos( video_fullscreen_val->posx + fullscreen->rect.w + 50, video_fullscreen_val->posy - fullscreen->rect.h/2 );

	// Video Info
	vid_w = pPreferences->Screen_W;
	vid_h = pPreferences->Screen_H;
	vid_bpp = pPreferences->Bpp;
	vid_fullscreen = pPreferences->Fullscreen;
	Set_Videoinfo();
	
	while( !leave )
	{
		UpdateGeneric( handler );

		SubVideo_Update( handler );
		SubVideo_Action( handler );

		Framerate.Update();
	}

	if( handler )
	{
		delete handler;
		handler = NULL;
	}

	leave = 0;
}

void cMainMenu :: SubVideo_Update( cMenuHandler *handler )
{
	SDL_FillRect( screen, NULL, white );

	handler->Draw();
	bvideo1->Draw( screen );

	video_resolution_val->Draw( screen );
	video_bpp_val->Draw( screen );
	video_fullscreen_val->Draw( screen );

	if( vid_fullscreen )
	{
		fullscreen->Draw( screen );
	}

	pMouseCursor->Update();

	SDL_Flip( screen );
}

void cMainMenu :: SubVideo_Action( cMenuHandler *handler )
{
	if( !action )
	{
		return;
	}

	action = 0;

	if( handler->active == 0 )
	{
		if( vid_w == 800 && vid_h == 600 )
		{
			vid_w = 1024;
			vid_h = 768;
		}
		else if( vid_w == 1024 && vid_h == 768 )
		{
			vid_w = 800;
			vid_h = 600;
		}
	}
	else if( handler->active == 1 )
	{
		if( vid_bpp == 16 )
		{
			vid_bpp = 32;
		}
		else if( vid_bpp == 32 ) // does not work correct
		{
			vid_bpp = 16;
		}
	}
	else if( handler->active == 2 )
	{
		if( vid_fullscreen )
		{
			vid_fullscreen = 0;	
		}
		else
		{
			vid_fullscreen = 1;
		}
	}
	else if( handler->active == 3 ) // Apply
	{
		pPreferences->Screen_W = vid_w;
		pPreferences->Screen_H = vid_h;
		pPreferences->Bpp = vid_bpp;
		pPreferences->Fullscreen = vid_fullscreen;

		exit( 1 );

		/*
		pLevel->Unload();
		pHudManager->Unload();
		FreeImages();

		if( screen )
		{
			SDL_FreeSurface( screen );
		}
		
		pPreferences->Screen_W = vid_w;
		pPreferences->Screen_H = vid_h;
		pPreferences->Bpp = vid_bpp;
		pPreferences->Fullscreen = vid_fullscreen;
		
		pImageManager->ReloadImages( 1 );

		if( pPreferences->Fullscreen )
		{
			screen = SDL_SetVideoMode( pPreferences->Screen_W, pPreferences->Screen_H, pPreferences->Bpp, SDL_SWSURFACE | SDL_HWACCEL | SDL_RLEACCEL | SDL_FULLSCREEN );
		}
		else
		{
			screen = SDL_SetVideoMode( pPreferences->Screen_W, pPreferences->Screen_H, pPreferences->Bpp, SDL_SWSURFACE | SDL_HWACCEL | SDL_RLEACCEL | SDL_DOUBLEBUF );
		}

		pImageManager->ReloadImages( 2 );

		pPlayer->LoadImages( 1 );
		pOverWorld->Unload();

		LoadImages();
		pHudManager->Update();
		*/
	}
	else if( handler->active == 4 )
	{
		leave = 1;
		return;
	}

	Set_Videoinfo();
}

// ############################ Menu End ####################################### //

void cMainMenu :: GetSavedGames( void )
{
	for( unsigned int i = 0; i < 9; i++ )
	{
		if( savegame_temp[i]->image )
		{
			SDL_FreeSurface( savegame_temp[i]->image );
			savegame_temp[i]->image = NULL;
		}

		if( savegame_temp_disabled[i]->image )
		{
			SDL_FreeSurface( savegame_temp_disabled[i]->image );
			savegame_temp_disabled[i]->image = NULL;
		}
	}

	for( unsigned int i = 0; i < 9; i++ )
	{
		savegame_temp[i]->SetImage( TTF_RenderText_Shaded( font, pSavegame->Get_Description( i + 1 ).c_str(), colorBlack, colorWhite ) );
		savegame_temp_disabled[i]->SetImage( TTF_RenderText_Shaded( font, pSavegame->Get_Description( i + 1 ).c_str(), colorOrange, colorWhite ) );
	}
}

void cMainMenu :: Set_Videoinfo( void )
{
	if( video_resolution_val->image )
	{
		SDL_FreeSurface( video_resolution_val->image );
		video_resolution_val->image = NULL;
	}

	if( video_bpp_val->image )
	{
		SDL_FreeSurface( video_bpp_val->image );
		video_bpp_val->image = NULL;
	}

	if( video_fullscreen_val->image )
	{
		SDL_FreeSurface( video_fullscreen_val->image );
		video_fullscreen_val->image = NULL;
	}
	
	if( vid_w == 800 && vid_h == 600 )
	{
		video_resolution_val->SetImage( TTF_RenderText_Shaded( font, "800x600 Recommended", colorGreen, colorWhite ), 1 );
	}
	else if( vid_w == 1024 && vid_h == 768 )
	{
		video_resolution_val->SetImage( TTF_RenderText_Shaded( font, "1024x768 Not Recommended", colorRed, colorWhite ), 1 );
	}
	else
	{
		video_resolution_val->SetImage( TTF_RenderText_Shaded( font, "Resolution unknown", colorBlack, colorWhite ), 1 );
	}

	if( vid_bpp == 16 )
	{
		video_bpp_val->SetImage( TTF_RenderText_Shaded( font, "16", colorBlack, colorWhite ), 1 );
	}
	else if( vid_bpp == 32 )
	{
		video_bpp_val->SetImage( TTF_RenderText_Shaded( font, "32", colorGreen, colorWhite ), 1 );
	}
	else
	{
		video_bpp_val->SetImage( TTF_RenderText_Shaded( font, "Bpp unknown", colorBlack, colorWhite ), 1 );
	}

	if( vid_fullscreen )
	{
		video_fullscreen_val->SetImage( TTF_RenderText_Shaded( font, "On", colorGreen, colorWhite ), 1 );	
	}
	else
	{
		video_fullscreen_val->SetImage( TTF_RenderText_Shaded( font, "Off", colorBlack, colorWhite ), 1 );
	}
}
