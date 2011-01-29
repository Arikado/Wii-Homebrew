/***************************************************************************
    overworld.cpp  -  class for the OverWorld Map
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
#include "include/main.h"
#include "include/SDL_gfxPrimitives.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// class Waypoint

cWaypoint :: cWaypoint( void )
{
	gcolor = 0;
	glim = 1;
	
	access = 0;
	
	ID = 0;

	rect.x = 0;
	rect.y = 0;
	// default dimensions
	rect.w = 20;
	rect.h = 20;

	direction_back = DIR_NOTHING;
	direction_forward = DIR_NOTHING;

	type = WAYPOINT_NORMAL;

	levelname = "";

	arrow_white_l = NULL;
	arrow_white_r = NULL;
	arrow_white_u = NULL;
	arrow_white_d = NULL;

	arrow_blue_l = NULL;
	arrow_blue_r = NULL;
	arrow_blue_u = NULL;
	arrow_blue_d = NULL;

	image = NULL;
}

cWaypoint :: ~cWaypoint( void )
{
	if( levelname.length() > 0 )
	{
		levelname = "";
	}

	arrow_white_l = NULL;
	arrow_white_r = NULL;
	arrow_white_u = NULL;
	arrow_white_d = NULL;

	arrow_blue_l = NULL;
	arrow_blue_r = NULL;
	arrow_blue_u = NULL;
	arrow_blue_d = NULL;

	image = NULL;
}

void cWaypoint :: Init( void )
{
	image = GetImage( "sd:/apps/smc/data/pixmaps/world/Waypoints/default_1.png" );

	arrow_blue_l = GetImage( "sd:/apps/smc/data/pixmaps/world/arrowb_left_small.png" );
	arrow_blue_r = GetImage( "sd:/apps/smc/data/pixmaps/world/arrowb_right_small.png" );
	arrow_blue_u = GetImage( "sd:/apps/smc/data/pixmaps/world/arrowb_up_small.png" );
	arrow_blue_d = GetImage( "sd:/apps/smc/data/pixmaps/world/arrowb_down_small.png" );

	arrow_white_l = GetImage( "sd:/apps/smc/data/pixmaps/world/arrow_left_small.png" );
	arrow_white_r = GetImage( "sd:/apps/smc/data/pixmaps/world/arrow_right_small.png" );
	arrow_white_u = GetImage( "sd:/apps/smc/data/pixmaps/world/arrow_up_small.png" );
	arrow_white_d = GetImage( "sd:/apps/smc/data/pixmaps/world/arrow_down_small.png" );
}

void cWaypoint :: Draw( void )
{
	if( !access && !Overworld_debug )
	{
		return;
	}

	if( !image )// check if the images got initialized
	{
		Init();
	}
	
	if( glim )
	{
		gcolor += Framerate.speedfactor * 3;
	}
	else
	{
		gcolor -= Framerate.speedfactor * 3;
	}

	if( gcolor > 120 )
	{
		glim = 0;
	}
	else if( gcolor < 7 )
	{
		glim = 1;
	}
	
	SDL_Surface *temp = NULL;

	if( Overworld_debug )
	{
		if( type == 2 || type == 1 )
		{
			temp = SDL_Copy( image );
		}
		else
		{
			temp = MakeSurface( 20, 15 );
			SDL_FillRect( temp, NULL, SDL_MapRGB( temp->format, 0, 255, 0 ) );
		}

		SDL_Rect ra;
	
		ra.x = rect.x - (Sint16)cameraposx;
		ra.y = rect.y - (Sint16)cameraposy;
		
		// Direction Back
		if( direction_back == DIR_RIGHT )
		{
			ra.x += temp->w;
			ra.y -= 2;
			SDL_BlitSurface( arrow_blue_r, NULL, screen, &ra );
		}
		else if( direction_back == DIR_LEFT )
		{
			ra.x -= arrow_blue_l->w;
			ra.y -= 4;
			SDL_BlitSurface( arrow_blue_l, NULL, screen, &ra );
		}
		else if( direction_back == DIR_UP )
		{
			ra.y -= arrow_blue_u->h;
			SDL_BlitSurface( arrow_blue_u, NULL, screen, &ra );
		}
		else if( direction_back == DIR_DOWN )
		{
			ra.y += temp->h;
			SDL_BlitSurface( arrow_blue_d, NULL, screen, &ra );
		}

		ra.x = rect.x - (Sint16)cameraposx;
		ra.y = rect.y - (Sint16)cameraposy;

		// Direction Forward
		if( direction_forward == DIR_RIGHT )
		{
			ra.x += temp->w;
			ra.y -= 2;
			SDL_BlitSurface( arrow_white_r, NULL, screen, &ra );
		}
		else if( direction_forward == DIR_LEFT )
		{
			ra.x -= arrow_white_l->w;
			ra.y -= 4;
			SDL_BlitSurface( arrow_white_l, NULL, screen, &ra );
		}
		else if( direction_forward == DIR_UP )
		{
			ra.y -= arrow_white_u->h;
			SDL_BlitSurface( arrow_white_u, NULL, screen, &ra );
		}
		else if( direction_forward == DIR_DOWN )
		{
			ra.y += temp->h;
			SDL_BlitSurface( arrow_white_d, NULL, screen, &ra );
		}	

	}	
	else if( type == 0 )
	{
		// Nothing to draw
	}
	else if( type == 1 || type == 2 )
	{
		temp = SDL_Copy( image );
	}

	if( temp && ( type == 1 || type == 2 || Overworld_debug ) )
	{
		if( !Overworld_debug )
		{
			SDL_ReplaceColor( temp, SDL_MapRGB( temp->format, 0, 255, 0 ), SDL_MapRGB( temp->format, 250, 100 + (Uint8)gcolor, 10 ) );
		}
		else
		{
			SDL_ReplaceColor( temp, SDL_MapRGB( temp->format, 0, 255, 0 ), SDL_MapRGB( temp->format, 20, 100 + (Uint8)gcolor, 10 ) );
		}

		SDL_Rect rect_temp;
		
		rect_temp.x = rect.x - (Sint16)cameraposx;
		rect_temp.y = rect.y - (Sint16)cameraposy;
		rect_temp.w = temp->w;
		rect_temp.h = temp->h;
		
		SDL_BlitSurface( temp, NULL, screen, &rect_temp );

		SDL_FreeSurface( temp );
		temp = NULL;
	}
}

string cWaypoint :: Get_Levelfile( bool with_dir /* = 1 */, bool with_end /* = 1  */ )
{
	string name = levelname;

	if( with_dir && name.find( pPreferences->level_dir ) == string::npos ) 
	{
		name.insert( 0, "/" );
		name.insert( 0, pPreferences->level_dir );
	}

	if( with_end && name.find( ".txt" ) == string::npos ) 
	{
		name.insert( name.length(), ".txt" );
	}
	else if( !with_end && name.find( ".txt" ) != string::npos ) 
	{
		name.erase( name.find( ".txt" ), 4 );
	}

	return name;
}

/* *** *** *** *** *** *** *** *** Layer *** *** *** *** *** *** *** *** *** */

cLayer :: cLayer( void )
{
	image = NULL;

	col_walk = Color( 0, 255, 0 ); // Green
	col_blocked = Color( 0, 0, 0 ); // Black

	x = 0;
	y = 0;
}

void cLayer :: Load( string filename )
{
	image = GetImage( filename );

	if( image )
	{
		//SDL_SetColorKey( image, SDL_SRCCOLORKEY | SDL_RLEACCEL | SDL_SRCALPHA, black );
	}
}

cLayer :: ~cLayer( void )
{
	if( image )
	{
		image = NULL;
	}
}

/* *** *** *** *** *** *** *** *** World Maryo *** *** *** *** *** *** *** *** *** */

cWorld_Maryo :: cWorld_Maryo( void ) : cSprite( NULL, 0, 0 )
{
	images.clear();

	maryo_state = MARYO_SMALL;

	anim_counter = 0;
	anim_speed = 0;
	anim_max = 0;

	fixed_walking = 0;

	path_up = 0;
	path_down = 0;
	path_left = 0;
	path_right = 0;

}

cWorld_Maryo :: ~cWorld_Maryo( void )
{
	UnloadImages();
}

void cWorld_Maryo :: LoadImages( void )
{
	UnloadImages();

	if( maryo_state == MARYO_SMALL )
	{
		if( direction == DIR_DOWN  || ( direction != DIR_DOWN && direction != DIR_UP && direction != DIR_LEFT && direction != DIR_RIGHT ) )
		{
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/down.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/down_1.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/down.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/down_2.png" ) );
			
			anim_max = 4;
			anim_speed = 2;
		}
		else if( direction == DIR_UP )
		{
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/up_1.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/up.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/up_1.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/up_2.png" ) );
			
			anim_max = 4;
			anim_speed = 2;
		}
		else if( direction == DIR_LEFT )
		{
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/left.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/left_1.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/left.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/left_2.png" ) );

			anim_max = 4;
			anim_speed = 1.7;
		}
		else if( direction == DIR_RIGHT )
		{
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/right.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/right_1.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/right.png" ) );
			images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/small/right_2.png" ) );

			anim_max = 4;
			anim_speed = 1.7;
		}
	}
	else if( maryo_state == MARYO_DOG_SMALL )
	{
		// TODO
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/dog/d1.png" ) );
		images.push_back( GetImage( "sd:/apps/smc/data/pixmaps/world/maryo/dog/d2.png" ) );

		anim_max = 2;
		anim_speed = 3;
	}
	else
	{
		printf( "Unsupported Maryo state : %d\n", (unsigned int)maryo_state );
		maryo_state = MARYO_SMALL;
		return;
	}
	
	if( images.size() )
	{
		SetImage( images[0] );	
	}
}

void cWorld_Maryo :: UnloadImages( void )
{
	images.clear();

	anim_counter = 0;
	anim_speed = 0;
	anim_max = 0;
}

void cWorld_Maryo :: Draw( SDL_Surface *target )
{
	anim_counter += Framerate.speedfactor;

	if( maryo_state == MARYO_SMALL )
	{
		for( unsigned int i = 0; i < 5; i++ )
		{
			//printf( "i : %d , Anim Counter : %d , Anim : %d\n", i, Mario_Anim_counter, Mario_Anim_Max/(i + 1) );
			
			if( anim_counter < anim_max * ( ( i + 1 ) * anim_speed ) )
			{
				if( anim_max < i + 1 )
				{
					//printf( "Anim Counter resetted at : %d\n", Mario_Anim_counter );
					anim_counter = 0;
					break;
				}
				else
				{
					//printf( "Setting image : %d\n", i );
					SetImage( images[i] );
					break;
				}
			}
		}
	}
	else
	{
		printf( "Animation state error : %d\n", (unsigned int)maryo_state );
	}

	cSprite::Draw( screen );
}

void cWorld_Maryo :: CheckPath( unsigned int csize /* = 10  */ )
{
	double xpos;
	double ypos;
	GetPosition( &xpos, &ypos );

	// counts the temp length
	unsigned int counter = 0;

	path_up = 0;
	path_down = 0;
	path_left = 0;
	path_right = 0;

	// up
	while( pOverWorld->Compare_LayerPixel( (Sint16)xpos, (Sint16)ypos - counter, pOverWorld->Layer->col_walk ) )
	{
		counter++;
		path_up++;

		if( counter > csize )
		{
			break;
		}
	}

	counter = 0;

	// down
	while( pOverWorld->Compare_LayerPixel( (Sint16)xpos, (Sint16)ypos + counter, pOverWorld->Layer->col_walk ) )
	{
		counter++;
		path_down++;

		if( counter > csize )
		{
			break;
		}
	}		

	counter = 0;

	// left
	while( pOverWorld->Compare_LayerPixel( (Sint16)xpos - counter, (Sint16)ypos, pOverWorld->Layer->col_walk ) )
	{
		counter++;
		path_left++;

		if( counter > csize )
		{
			break;
		}
	}

	counter = 0;

	// right
	while( pOverWorld->Compare_LayerPixel( (Sint16)xpos + counter, (Sint16)ypos, pOverWorld->Layer->col_walk ) )
	{
		counter++;
		path_right++;

		if( counter > csize )
		{
			break;
		}
	}
}

void cWorld_Maryo :: GetPosition( double *xpos, double *ypos )
{
	*xpos = posx + (double)( images[0]->w/2 );
	*ypos = posy + (double)( images[0]->h/1.25 );
}

void cWorld_Maryo :: Auto_correct( double size /* = 1.7 */, unsigned int min_distance /* = 5 */ )
{
	if( pOverWorld->WaypointCollision( &rect ) == -1 )
	{
		CheckPath();

		if( direction == DIR_LEFT || direction == DIR_RIGHT ) // up and down correction
		{
			int y_pos = path_down - path_up;

			if( y_pos > (int)min_distance )
			{
				posy += size * Framerate.speedfactor;
			}
			else if( y_pos < - (int)min_distance )
			{
				posy -= size * Framerate.speedfactor;
			}
		}
		else if( direction == DIR_UP || direction == DIR_DOWN ) // left and right correction
		{
			int x_pos = path_left - path_right;

			if( x_pos > (int)min_distance ) // left
			{
				posx -= size * Framerate.speedfactor;
			}
			else if( x_pos < - (int)min_distance ) // right
			{
				posx += size * Framerate.speedfactor;
			}
		}
	}
}

/* *** *** *** *** *** *** *** *** Overworld handler *** *** *** *** *** *** *** *** *** */

cOverworld_handler :: cOverworld_handler( void )
{
	Load();
}

cOverworld_handler :: ~cOverworld_handler( void )
{
	Unload();
}

void cOverworld_handler :: Load( void )
{
	// Get the Overworld descriptions
	ifstream ifs( OVERWORLD_DIR "/worlds.txt", ios :: in );

	if( !ifs )
	{
		printf( "Error : Couldn't open Overworlds description file : %s/%s\n", OVERWORLD_DIR, "worlds.txt" );
		exit( 2 );
	}

	char contents[500];

	for( unsigned int i = 0; ifs.getline( contents, sizeof( contents ) ); i++ )
	{
		Parse( contents, i );
	}

	ifs.close();
}

void cOverworld_handler :: Unload( void )
{
	for( unsigned int i = 0;i < objects.size();i++ )
	{
		if( objects[i] )
		{
			delete objects[i];
		}
	}
	
	objects.clear();
}

bool cOverworld_handler :: Parse( string command, int line )
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
	
	string *parts = new string[ count + 1 ];
	
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

bool cOverworld_handler :: HandleMessage( string *parts, unsigned int count, unsigned int line )
{
	if( parts[0].compare( "World" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : line %d Error : \n", "worlds.txt", line );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 2 parameters" );
			return 0; // error
		}

		string filename;

		filename.insert( 0, "world.txt" );
		filename.insert( 0, "/" );
		filename.insert( 0, parts[1] );
		filename.insert( 0, "/" );
		filename.insert( 0, OVERWORLD_DIR );

		if( !valid_file( filename ) )
		{
			printf( "%s : line %d Error : \n", "worlds.txt", line );
			printf( "Line %d, error : %s %s\n", line, filename.c_str(), "is not a valid Overworld" );
			return 0; // error
		}

		thandler_item *item = new thandler_item();

		item->filename = filename;
		item->identifier = objects.size();

		objects.push_back( item );
	}
	else
	{
		printf( "%s : line %d Error : ", "worlds.txt", line );
		printf( "Unknown Command : %s\n", parts[0].c_str() );
		return 0; // error
	}

	return 1; // Succesful
}

/* *** *** *** *** *** *** *** *** Overworld *** *** *** *** *** *** *** *** *** */


cOverWorld :: cOverWorld( void )
{
	Nlevel = -1;
	Slevel = 0;

	Overworld_debug = 0;
	showlayer = 0;
	cameramode = 0;

	// images
	debugimage = NULL;
	debugimage_shadow = NULL;
	debug_waypoint = NULL;
	debug_waypoint_shadow = NULL;
	debug_nlevel = NULL;
	debug_nlevel_shadow = NULL;
	
	Current_OverWorld = 0;
	Waypointcount = 0;
	Current_Waypoint = -2;
	
	MapObjects.clear();

	Layer = NULL;

	unsigned int i = 0;

	Maryo = new cWorld_Maryo();

	for( i = 0; i < MAX_WAYPOINTS; i++ )
	{
		Waypoints[i] = new cWaypoint();
	}

	handler = new cOverworld_handler();

	hud_level = new cSprite( NULL, 0, 0 );
}

cOverWorld :: ~cOverWorld( void )
{
	if( debugimage )
	{
		SDL_FreeSurface( debugimage );
		debugimage = NULL;
	}
	if( debugimage_shadow )
	{
		SDL_FreeSurface( debugimage_shadow );
		debugimage_shadow = NULL;
	}

	if( debug_waypoint )
	{
		SDL_FreeSurface( debug_waypoint );
		debug_waypoint = NULL;
	}
	if( debug_waypoint_shadow )
	{
		SDL_FreeSurface( debug_waypoint_shadow );
		debug_waypoint_shadow = NULL;
	}
	
	if( debug_nlevel )
	{
		SDL_FreeSurface( debug_nlevel );
		debug_nlevel = NULL;
	}
	if( debug_nlevel_shadow )
	{
		SDL_FreeSurface( debug_nlevel_shadow );
		debug_nlevel_shadow = NULL;
	}

	Unload();

	for( unsigned int i = 0; i < MAX_WAYPOINTS; i++ )
	{
		delete Waypoints[i];
		Waypoints[i] = NULL;
	}

	delete Maryo;
	Maryo = NULL;

	delete handler;
	handler = NULL;

	SDL_FreeSurface( hud_level->image );
	hud_level->image = NULL;

	delete hud_level;
	hud_level = NULL;
}

void cOverWorld :: Enter( void )
{
	unsigned int Entered = 0;

	if( done )
	{
		return;
	}

	Game_Mode = MODE_OVERWORLD;
	Leveleditor_Mode = 0;

	Maryo->LoadImages();

	pAudio->FadeOutMusic( 1000 );
	pAudio->PlayMusic( MUSIC_DIR "/overworld/land_1.ogg", -1, 0, 1500 );

	if( !MapObjects.size() && !Layer ) // first load
	{
		Load( 0 );
	}
	else // update the hud
	{
		pHudManager->Load();
	}

	cameraposx = 0;
	cameraposy = 0;
	
	while( !Entered )
	{
		// ### Keys

		while( SDL_PollEvent( &event ) && !Entered ) 
		{
			if( event.type == SDL_QUIT )
			{
				pLevel->Unload();
				Entered = 1;
				done = 1;
			}
			else if( KeyPressed( KEY_ESC ) )
			{
				Entered = 2;
			}
			else if( KeyPressed( KEY_ENTER ) )
			{
				if( Current_Waypoint >= 0 && Maryo->direction == -1 )
				{
					pLevel->Load( Waypoints[Current_Waypoint]->Get_Levelfile() );
					
					if( pLevel->is_Loaded() ) // If it's a valid Level
					{
						Entered = 1;
						DrawEffect( FIXED_RECTANGLE_PIXELATION ); // SMW Pixelation
						continue;
					}
					else // If it's not a valid Level just go to the next
					{
						GotoNextLevel();
					}
				}
			}
			else if( event.key.keysym.sym == SDLK_d && ( event.key.keysym.mod & KMOD_LCTRL ) && event.type == SDL_KEYDOWN )
			{
				if( !Overworld_debug )
				{
					if( !debugimage )
					{
						debugimage = TTF_RenderText_Blended( font, "Debug Mode", colorWhite );
						debugimage_shadow = TTF_RenderText_Blended( font, "Debug Mode", colorBlack );
					}
				}

				Overworld_debug = !Overworld_debug;
			}
			else if( event.key.keysym.sym == SDLK_l && event.type == SDL_KEYDOWN )
			{
				if( Overworld_debug ) 
				{
					if( !showlayer )
					{
						showlayer = 1;
						printf( "Overworld : Debug Layer Activated\n" );
					}
					else
					{
						showlayer = 0;
						printf( "Overworld : Debug Layer Deactivated\n" );
					}
				}
				else
				{
					KeyDown( SDLK_l );

					if( pLevel->is_Loaded() ) 
					{
						Entered = 1;
					}
				}
			}
			else if( event.key.keysym.sym == SDLK_c && event.type == SDL_KEYDOWN )
			{
				if( cameramode && Current_Waypoint != -1 )
				{
					cameramode = 0;
				}
				else
				{
					cameramode = 1;
				}
			}
			else if( KeyPressed( KEY_LEFT ) && Maryo->direction != DIR_LEFT && !cameramode )
			{
				SetMaryoDirection( DIR_LEFT );
			}
			else if( KeyPressed( KEY_RIGHT ) && Maryo->direction != DIR_RIGHT && !cameramode )
			{
				SetMaryoDirection( DIR_RIGHT );	
			}
			else if( KeyPressed( KEY_UP ) && Maryo->direction != DIR_UP && !cameramode )
			{
				SetMaryoDirection( DIR_UP );
			}
			else if( KeyPressed( KEY_DOWN ) && Maryo->direction != DIR_DOWN && !cameramode )
			{
				SetMaryoDirection( DIR_DOWN );
			}
		}
		
		// ## Input Keys
		
		keys = SDL_GetKeyState( NULL );
		
		// ## Update

		Update();

		if( Entered )
		{
			continue;
		}
		
		Draw();
		
		// ## Frametime
		Framerate.Update();
	}
	
	if( Entered == 2 )
	{
		pMenu->Menu_Show();
	}
	
	Framerate.Reset();
	Game_Mode = MODE_LEVEL;
	pHudManager->UpdateText();

	ClearEvents();
}

bool cOverWorld :: Load( unsigned int overworld )
{
	Unload();

	ifstream ifs( handler->objects[overworld]->filename.c_str(), ios::in );
	
	if( !ifs )
	{
		printf( "Couldn't load Overworld : %s\n", handler->objects[overworld]->filename.c_str() );
		return 0;
	}
	
	char contents[1000];
	
	for( unsigned int i = 0; ifs.getline( contents, sizeof( contents ) ); i++ )
	{
		Parse( contents, i );
	}
	
	ifs.close();

	// Reloads the Waypoint images
	for( int i = 0; i < Waypointcount; i++ )
	{
		Waypoints[i]->Init();
	}

	Maryo->LoadImages();
	
	pHudManager->Load();

	return 1;
}

void cOverWorld :: Unload( void )
{
	for( unsigned int i = 0;i < MapObjects.size();i++ )
	{
		if( MapObjects[i] )
		{
			delete MapObjects[i];
		}
	}
	
	MapObjects.clear();
	
	if( Layer )
	{
		delete Layer;
		Layer = NULL;
	}
	
	Current_OverWorld = 0;
	
	Waypointcount = 0;
}

bool cOverWorld :: SetMaryoDirection( ObjectDirection direction )
{
	if( !( Current_Waypoint < Nlevel ) && Waypoints[Current_Waypoint]->direction_forward == direction && Maryo->direction == -1 )
	{
		return 0;
	}

	if( !Maryo->images.size() )
	{
		return 0;
	}

	int direcion_old = Maryo->direction;
	int direction_2 = 0;
	int checkx = 0;
	int checky = 0;

	
	if( direction == DIR_LEFT )
	{
		direction_2 = DIR_RIGHT;
		checkx = -25;
	}
	else if( direction == DIR_RIGHT )
	{
		direction_2 = DIR_LEFT;
		checkx = +25;
	}
	else if( direction == DIR_UP )
	{
		direction_2 = DIR_DOWN;
		checky = -25;
	}
	else if( direction == DIR_DOWN )
	{
		direction_2 = DIR_UP;
		checky = +25;
	}
	else
	{
		printf( "SetMaryoDirection : direction is invalid : %d\n", direction );
		return 0;
	}

	if( Maryo->direction != -1 ) // if already walking
	{
		if( Maryo->direction == direction_2 && !Maryo->fixed_walking && WaypointCollision( &Maryo->rect ) == -1 )
		{
			Maryo->direction = direction;
			Maryo->LoadImages();
		}
	}
	else // start walking
	{
		SDL_LockSurface( Layer->image );
		
		double px, py;
		Maryo->GetPosition( &px, &py );
		
		if( Compare_LayerPixel( (int)px + checkx, (int)py + checky, Layer->col_walk ) )
		{
			Maryo->direction = direction;
			Maryo->LoadImages();
		}
		
		SDL_UnlockSurface( Layer->image );
	}
	
	// if maryo is not on his current waypoint collide with every waypoint
	if( Current_Waypoint > -1 && !CollideBoundingBox( &Maryo->rect, &Waypoints[Current_Waypoint]->rect ) )
	{
		Current_Waypoint = -1;
	}
	
	if( direcion_old != Maryo->direction )
	{
		return 1; // return true if maryo is walking into a new direction
	}
	
	return 0;
}

int cOverWorld :: SetMaryoWaypoint( int Waypoint )
{
	if( Waypoint > Waypointcount ) 
	{
		return 0;
	}

	Maryo->SetPos( Waypoints[Waypoint]->rect.x - 15, Waypoints[Waypoint]->rect.y - 35 );
	Current_Waypoint = Waypoint;

	if( Waypoint > Nlevel )
	{
		Nlevel = Waypoint;
	}

	SDL_FreeSurface( hud_level->image );
	hud_level->SetImage( TTF_RenderText_Blended( font, Waypoints[Current_Waypoint]->Get_Levelfile( 0, 0 ).c_str(), colorBlack ) );


	return 1;
}

void cOverWorld :: SetProgress( unsigned int normal_level, unsigned int secret_level )
{
	for( unsigned int i = 0; i < (unsigned int)Waypointcount; i++ )
	{
		if( normal_level >= i && Waypoints[i]->type == WAYPOINT_NORMAL )
		{
			Waypoints[i]->access = 1;
		}
		else if( secret_level >= i && Waypoints[i]->type == WAYPOINT_SECRET )
		{
			Waypoints[i]->access = 1;
		}
		else
		{
			Waypoints[i]->access = 0;
		}
	}

	Nlevel = normal_level;
	Slevel = secret_level;
}

int cOverWorld :: WaypointCollision( SDL_Rect *rect_2 )
{
	for( int i = 0; i < Waypointcount; i++ )
	{
		if( CollideBoundingBox( rect_2, &Waypoints[i]->rect ) )
		{
			return i;
		}
	}
	
	return -1;
}

Color cOverWorld :: Get_LayerPixel( Sint16 x, Sint16 y )
{
	Color color;
	color.Parse( SDL_GetPixel( Layer->image, x, y ), Layer->image->format );

	return color;
}

bool cOverWorld :: Compare_LayerPixel( Sint16 x, Sint16 y, Color color )
{
	return color.Compare( Get_LayerPixel( x - Layer->x, y - Layer->y ) );
}

// ToDo : The Secret Way
int cOverWorld :: GotoNextLevel( bool Secretpath )
{
	//printf("NL Cur_Waypoint : %d ,Nlevel : %d ,Waypointcount : %d , Acces W+1 : %d\n",
	//	Current_Waypoint,Nlevel,Waypointcount,Waypoints[Current_Waypoint + 1]->access);
	
	if( Waypointcount <= 0 )
	{
		return 0;
	}

	if( Current_Waypoint < (int)Waypointcount && Waypoints[Current_Waypoint]->direction_forward > -1 ) // Checks if Waypoint exist and if its not the first
	{
		if( !Waypoints[Current_Waypoint + 1]->access )
		{
			Waypoints[Current_Waypoint + 1]->access = 1;

			Nlevel++;

			SetMaryoDirection( Waypoints[Current_Waypoint]->direction_forward );	

			return 1;
		}
	}

	return  0;
}

void cOverWorld :: LoadMap( void )
{

}

bool cOverWorld :: Parse( string command, int line )
{
	if( command.length() <= 4 || command.find_first_of( '#' ) == 0 )
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
	
	string *parts = new string[ count + 1 ];
	
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

bool cOverWorld :: HandleMessage( string *parts, unsigned int count, unsigned int line )
{
	if( parts[0].compare( "Sprite" ) == 0 )
	{
		// filename, x, y

		if( count != 4 )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 4 parameters" );
			return 0;
		}
		
		char filename[100];

		sprintf( filename, "%s/%s/%s", PIXMAPS_DIR, "world/overworlds", parts[1].c_str() );

		if( !valid_file( filename ) )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "file not found" );
			return 0;
		}
		
		sprintf( filename, "world/overworlds/%s", parts[1].c_str() );

		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[2].c_str(), "is not a valid integer value" );
			return 0;
		}
		if( !is_valid_number( parts[3] ) )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[3].c_str(), "is not a valid integer value" );
			return 0;
		}
		
		cSprite *temp = new cSprite( GetImage( filename ), string_to_int( parts[2] ), pPreferences->Screen_H - string_to_int( parts[3] ) );
		AddMapObject( temp );
	}
	else if( parts[0].compare( "Layer" ) == 0 )
	{
		// filename, x, y

		if( count != 4 )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 4 parameters" );
			return 0;
		}
		
		char filename[120];
		sprintf( filename, "%s/%s/%s", PIXMAPS_DIR, "world/overworlds", parts[1].c_str() );

		if( !valid_file( filename ) )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "file not found" );

			return 0;
		}

		sprintf( filename, "world/overworlds/%s", parts[1].c_str() );


		if( !is_valid_number( parts[2].c_str() ) ) // Position X
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[2].c_str(), "is not a valid integer value" );
			return 0;
		}
		if( !is_valid_number( parts[3].c_str() ) ) // Position Y
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[3].c_str(), "is not a valid integer value" );
			return 0;
		}

		if( Layer )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, filename, "Layer already loaded" );
			return 0;
		}
		else
		{
			Layer = new cLayer();
			Layer->Load( filename );
	
			Layer->x = string_to_int( parts[2] );
			Layer->y = ( pPreferences->Screen_H - 600 ) + string_to_int( parts[3] );
		}
	}
	else if( parts[0].compare( "Waypoint" ) == 0 )
	{
		// x, y, type, Levelname, direction back, direction forward, access

		if( count != 8 )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 8 parameters" );
			return 0;
		}

		if( !is_valid_number( parts[1] ) ) // Position X
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "is not a valid integer value" );
			return 0;
		}
		if( !is_valid_number( parts[2] ) ) // Position Y
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[2].c_str(), "is not a valid integer value" );
			return 0;
		}
		if( !is_valid_number( parts[3] ) ) // Type
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[3].c_str(), "is not a valid integer value" );
			return 0;
		}
		if( !is_valid_number( parts[7] ) ) // Accessable
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[7].c_str(), "is not a valid integer value" );
			return 0;
		}

		if( parts[5].compare( "FIRST" ) != 0 && parts[5].compare( "LAST" ) != 0 && parts[5].compare( "LEFT" ) != 0 && 
			parts[5].compare( "RIGHT" ) != 0 && parts[5].compare( "UP" ) != 0 && parts[5].compare( "DOWN" ) != 0 )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[5].c_str(), "is not a valid direction value" );
			return 0;
		}

		if( parts[6].compare( "FIRST" ) != 0 && parts[6].compare( "LAST" ) != 0 &&  parts[6].compare( "LEFT" ) != 0 && 
			parts[6].compare( "RIGHT" ) != 0 && parts[6].compare( "UP" ) != 0 && parts[6].compare( "DOWN" ) != 0 )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[6].c_str(), "is not a valid direction value" );
			return 0;
		}

		// ToDo : check if levelname exists !

		Waypoints[Waypointcount]->rect.x = string_to_int( parts[1] );
		Waypoints[Waypointcount]->rect.y = pPreferences->Screen_H - string_to_int( parts[2] );
		Waypoints[Waypointcount]->type = (Waypoint_type)string_to_int( parts[3] );

		Waypoints[Waypointcount]->levelname = ".txt";
		Waypoints[Waypointcount]->levelname.insert( 0, parts[4] );

		if( parts[5].compare( "FIRST" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_back = DIR_FIRST;
		}
		else if( parts[5].compare( "LAST" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_back = DIR_LAST;
		}
		else if( parts[5].compare( "LEFT" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_back = DIR_LEFT;
		}
		else if( parts[5].compare( "RIGHT" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_back = DIR_RIGHT; 
		}
		else if( parts[5].compare( "UP" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_back = DIR_UP;
		}
		else if( parts[5].compare( "DOWN" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_back = DIR_DOWN;
		}
		else
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[5].c_str(), "Waypoint backward direction unknown" );
			return 0;
		}

		if( parts[6].compare( "FIRST" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_forward = DIR_FIRST;
		}
		else if( parts[6].compare( "LAST" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_forward = DIR_LAST;
		}
		else if( parts[6].compare( "LEFT" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_forward = DIR_LEFT;
		}
		else if( parts[6].compare( "RIGHT" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_forward = DIR_RIGHT; 
		}
		else if( parts[6].compare( "UP" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_forward = DIR_UP;
		}
		else if( parts[6].compare( "DOWN" ) == 0 )
		{
			Waypoints[Waypointcount]->direction_forward = DIR_DOWN;
		}
		else
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[6].c_str(), "Waypoint forward direction unknown" );
			return 0;
		}


		if( string_to_int( parts[7] ) == 1 || Waypointcount == 0 )
		{
			Waypoints[Waypointcount]->access = 1;
			Nlevel++;
		}

		Waypointcount++;
	}
	else if( parts[0].compare( "Player" ) == 0 )
	{
		// waypoint, state
		if( count != 3 )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 3 parameters" );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "is not a valid integer value" );
			return 0;
		}		
		if( !is_valid_number( parts[2] ) )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[2].c_str(), "is not a valid integer value" );
			return 0;
		}

		int waypoint = string_to_int( parts[1] );

		if( waypoint > Waypointcount )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[1].c_str(), "is bigger as the available Waypoints" );
			return 0;
		}
		
		if( string_to_int( parts[2] ) > 5 )
		{
			printf( "%s : ", handler->objects[Current_OverWorld]->filename.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[2].c_str(), "is not a valid state value" );
			return 0;
		}

		if( Current_Waypoint < 0 )
		{
			SetMaryoWaypoint( waypoint );
		}

		Maryo->maryo_state = (Maryo_type)string_to_int( parts[2] );
	}
	else
	{
		printf( "%s : line %d Error : ", handler->objects[Current_OverWorld]->filename.c_str(), line );
		printf( "Unknown Command : %s\n", parts[0].c_str() );
		return 0; // error
	}

	return 1; // Succesful
}

void cOverWorld :: AddMapObject( cSprite *object )
{
	if( !object )
	{
		return;
	}

	MapObjects.push_back( object );
}

void cOverWorld :: Draw( void )
{
	SDL_FillRect( screen, NULL, darkblue ); // Background color

	DrawMapObjects();
	DrawWaypoints();
	Maryo->Draw( screen );
	DrawHUD();
	DrawDebug();

	SDL_Flip( screen );
}

void cOverWorld :: DrawMapObjects( void )
{
	for( unsigned int i = 0; i < MapObjects.size(); i++ )
	{
		if( !MapObjects[i] )
		{
			continue;
		}

		MapObjects[i]->Draw( screen );
	}
}

void cOverWorld :: DrawWaypoints( void )
{
	for( int i = 0; i < Waypointcount; i++ )
	{
		Waypoints[i]->Draw();
	}
}

void cOverWorld :: DrawHUD( void )
{
	// The Black Background
	boxRGBA( screen, 0, 0, screen->w, 30, 230, 170, 0, 255 );
	boxRGBA( screen, 0, 30, screen->w, 35, 200, 150, 0, 255 );
	
	hud_level->SetPos( 350 + cameraposx, 5 +cameraposy );
	hud_level->Draw( screen );

	if( livedisplay )
	{
		//DrawShadowedBox( screen, (Sint16)livedisplay->posx - 5, (Sint16)livedisplay->posy, livedisplay->rect.w + 10, livedisplay->rect.h, 0, 80, 0, 64, 1 );
		livedisplay->Update();
	}

	if( pointsdisplay )
	{
		//DrawShadowedBox( screen, (Sint16)pointsdisplay->posx - 5, (Sint16)pointsdisplay->posy, pointsdisplay->rect.w + 10, pointsdisplay->rect.h, 0, 0, 0, 64, 1 );
		pointsdisplay->Update();
	}
}

void cOverWorld :: DrawDebug( void )
{
	if( !Overworld_debug )
	{
		return;
	}

	SDL_Rect rl;

	rl.x = 0;
	rl.y = 0;
	
	rl.x = 15;
	rl.y = pPreferences->Screen_H - debugimage->h - 30;
	rl.w = debugimage->w;
	rl.h = debugimage->h;
	
	if( debugimage_shadow )
	{
		SDL_BlitSurface( debugimage_shadow, NULL, screen, &rl );
	}

	rl.x -= 2;
	rl.y -= 2;

	if( debugimage )
	{
		SDL_BlitSurface( debugimage, NULL, screen, &rl );
	}

	// ## Free the Waypoint images
	if( debug_waypoint )
	{
		SDL_FreeSurface( debug_waypoint );
		debug_waypoint = NULL;
	}

	if( debug_waypoint_shadow )
	{
		SDL_FreeSurface( debug_waypoint_shadow );
		debug_waypoint_shadow = NULL;
	}

	// ## Free the Nlevel images
	if( debug_nlevel )
	{
		SDL_FreeSurface( debug_nlevel );
		debug_nlevel = NULL;
	}

	if( debug_nlevel_shadow )
	{
		SDL_FreeSurface( debug_nlevel_shadow );
		debug_nlevel_shadow = NULL;
	}

	// The Waypoint Text
	char dtext[100];
	sprintf( dtext, "Waypoint : %d", Current_Waypoint );

	debug_waypoint = TTF_RenderText_Blended( font, dtext, colorGreen );
	debug_waypoint_shadow = TTF_RenderText_Blended( font, dtext, colorBlack );

	rl.x = rl.w + 40;
	rl.y = pPreferences->Screen_H - debug_waypoint->h - 30;
	rl.w = debug_waypoint->w;
	rl.h = debug_waypoint->h;
	
	SDL_BlitSurface( debug_waypoint_shadow, NULL, screen, &rl );
	
	rl.x -= 2;
	rl.y -= 2;
	
	SDL_BlitSurface( debug_waypoint, NULL, screen, &rl );
	
	// The Nlevel Text
	sprintf( dtext, "N-Level : %d", Nlevel );

	debug_nlevel = TTF_RenderText_Blended( font, dtext, colorBlue );
	debug_nlevel_shadow = TTF_RenderText_Blended( font, dtext, colorBlack );

	rl.x += rl.w + 40;
	rl.w = debug_nlevel->w;
	rl.h = debug_nlevel->h;

	SDL_BlitSurface( debug_nlevel_shadow, NULL, screen, &rl );
	
	rl.x -= 2;
	rl.y -= 2;
	
	SDL_BlitSurface( debug_nlevel, NULL, screen, &rl );

	if( showlayer )
	{
		rl.x = Layer->x - (int)cameraposx;
		rl.y = Layer->y - (int)cameraposy;
		rl.w = Layer->image->w;
		rl.h = Layer->image->h;
		
		SDL_BlitSurface( Layer->image, NULL, screen, &rl );
	}
}

void cOverWorld :: Update( void )
{
	pAudio->Update();

	UpdateCamera();
	UpdateMaryo();
}

void cOverWorld :: UpdateCamera( void )
{
	if( cameramode )
	{
		if( keys[pPreferences->Key_right] || ( pJoystick->right && pPreferences->Joy_enabled ) )
		{
			cameraposx += 10 * Framerate.speedfactor;
		}
		else if( keys[pPreferences->Key_left] || ( pJoystick->left && pPreferences->Joy_enabled ) )
		{
			cameraposx -= 10 * Framerate.speedfactor;
		}
		if( keys[pPreferences->Key_up] || ( ( pJoystick->up || pJoystick->Button( pPreferences->Joy_jump ) ) && pPreferences->Joy_enabled ) )
		{
			cameraposy -= 10 * Framerate.speedfactor;
		}
		else if( keys[pPreferences->Key_down] || ( pJoystick->down && pPreferences->Joy_enabled ) )
		{
			cameraposy += 10 * Framerate.speedfactor;
		}
	}
	else
	{
		if( Maryo->posx - cameraposx - 1> (pPreferences->Screen_W / 4 * 3) ) // Right
		{
			cameraposx = Maryo->posx - ( pPreferences->Screen_W / 4 * 3 );
		}
		else if( cameraposx && Maryo->posx - cameraposx + 1 < (pPreferences->Screen_W / 8 * 2) ) // Left
		{
			cameraposx = Maryo->posx - ( pPreferences->Screen_W / 8 * 2 );
		}
		
		if( Maryo->posy - cameraposy + 1 < (pPreferences->Screen_H / 6) ) // Up
		{
			cameraposy = Maryo->posy - ( pPreferences->Screen_H / 6 );
		}
		else if( cameraposy && Maryo->posy - cameraposy - 1 > (pPreferences->Screen_H / 6 * 2.9) ) // Down
		{
			cameraposy = Maryo->posy - ( pPreferences->Screen_H / 6 * 2.9 );
		}
	}
}

void cOverWorld :: UpdateMaryo( void )
{
	if( Maryo->direction == -1 )
	{
		return;
	}

	LockSurface( Layer->image );

	double xspeed = 0;
	double yspeed = 0;
	
	if( Maryo->direction == DIR_LEFT )
	{
		xspeed = -3;
	}
	else if( Maryo->direction == DIR_RIGHT )
	{
		xspeed = 3;
	}
	else if( Maryo->direction == DIR_UP )
	{
		yspeed = -3;
	}
	else if( Maryo->direction == DIR_DOWN )
	{
		yspeed = 3;
	}

	if( !Maryo->fixed_walking )
	{
		MaryoWalk( xspeed, yspeed );
	}
	else // fixed walking
	{
		WaypointWalk();
	}

	UnlockSurface( Layer->image );
}

void cOverWorld :: WaypointWalk( void )
{
	unsigned int reached = 0;

	if( ( Waypoints[Current_Waypoint]->rect.x + 11 ) > (int)( Maryo->posx + ( Maryo->rect.w/2 ) ) )
	{
		Maryo->posx += 3 * Framerate.speedfactor;
	}
	else if( ( Waypoints[Current_Waypoint]->rect.x + 16 ) < (int)( Maryo->posx + ( Maryo->rect.w/2 ) ) )
	{
		Maryo->posx -= 3 * Framerate.speedfactor;
	}
	else
	{
		reached++;
	}

	if( ( Waypoints[Current_Waypoint]->rect.y + 5 ) > (int)( Maryo->posy + ( Maryo->rect.h * 0.9 ) ) )
	{
		Maryo->posy += 3 * Framerate.speedfactor;
	}
	else if( ( Waypoints[Current_Waypoint]->rect.y + 10 ) < (int)( Maryo->posy + ( Maryo->rect.h * 0.9 ) ) )
	{
		Maryo->posy -= 3 * Framerate.speedfactor;
	}
	else
	{
		reached++;
	}

	if( reached == 2 )
	{
		Maryo->fixed_walking = 0;

		Maryo->direction = DIR_DOWN;
		Maryo->LoadImages();
		Maryo->direction = DIR_NOTHING;
	}
}


void cOverWorld :: MaryoWalk( double xspeed, double yspeed )
{
	double xpos;
	double ypos;
	Maryo->GetPosition( &xpos, &ypos );

	if( Compare_LayerPixel( (Sint16)( xpos + ( xspeed * 2.5 ) ), (Sint16)( ypos + ( yspeed * 2.5 ) ), Layer->col_blocked ) )
	{
		printf( "Collison with direction %d\n", Maryo->direction );

		Current_Waypoint = -1;

		Maryo->CheckPath( 30 );

		if( Maryo->direction == DIR_RIGHT )
		{
			if( ( Maryo->path_up > Maryo->path_down ) && Maryo->path_up > 20 )
			{
				Maryo->direction = DIR_UP;
			}
			else if( ( Maryo->path_down > Maryo->path_up ) && Maryo->path_down > 20 )
			{
				Maryo->direction = DIR_DOWN;
			}
			else
			{
				Maryo->direction = DIR_LEFT;
			}
		}
		else if( Maryo->direction == DIR_LEFT )
		{
			if( ( Maryo->path_up > Maryo->path_down ) && Maryo->path_up > 20 )
			{
				Maryo->direction = DIR_UP;
			}
			else if( ( Maryo->path_down > Maryo->path_up ) && Maryo->path_down > 20 )
			{
				Maryo->direction = DIR_DOWN;
			}
			else
			{
				Maryo->direction = DIR_RIGHT;
			}
		}
		else if( Maryo->direction == DIR_UP )
		{
			if( ( Maryo->path_left > Maryo->path_right ) && Maryo->path_left > 20 )
			{
				Maryo->direction = DIR_LEFT;
			}
			else if( ( Maryo->path_right > Maryo->path_left ) && Maryo->path_right > 20 )
			{
				Maryo->direction = DIR_RIGHT;
			}
			else
			{
				Maryo->direction = DIR_DOWN;
			}
		}
		else if( Maryo->direction == DIR_DOWN )
		{
			if( ( Maryo->path_left > Maryo->path_right ) && Maryo->path_left > 20 )
			{
				Maryo->direction = DIR_LEFT;
			}
			else if( ( Maryo->path_right > Maryo->path_left ) && Maryo->path_right > 20 )
			{
				Maryo->direction = DIR_RIGHT;
			}
			else
			{
				Maryo->direction = DIR_UP;
			}
		}
		else
		{
			printf( "Maryo direction error detected %d\n", Maryo->direction );

			Maryo->direction = DIR_DOWN;
		}
		
		Maryo->LoadImages();
	}
	else
	{
		Maryo->posx += xspeed * Framerate.speedfactor;
		Maryo->posy += yspeed * Framerate.speedfactor;

		Maryo->Auto_correct();
	}


	for( int i = 0; i < Waypointcount; i++ )
	{
		if( i == Current_Waypoint )
		{
			continue;
		}

		if( CollideBoundingBox( &Waypoints[i]->rect, &Maryo->rect ) )
		{
			Maryo->fixed_walking = 1;
			Current_Waypoint = i;

			SDL_FreeSurface( hud_level->image );
			hud_level->SetImage( TTF_RenderText_Blended( font, Waypoints[Current_Waypoint]->Get_Levelfile( 0, 0 ).c_str(), colorBlack ) );

			break;
		}
	}
}
