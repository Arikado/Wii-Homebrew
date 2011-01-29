/***************************************************************************
           main.cpp  -  main routines and infrastructure
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
#include "include/SDL_gfxPrimitives.h"

int main( int argc, char *argv[] )
{
    fatInitDefault();

	if( argc >= 2 )
	{
		if( strcmp( argv[1], "--help" ) == 0 || strcmp( argv[1], "-h" ) == 0 )
		{
			printf( "%s V.%s\n\n", CAPTION, VERSION );
			printf( "Usage: %s [OPTIONS] [LEVELFILE]\n", argv[0] );
			printf( "Where LEVELFILE is the name of the level to play or OPTIONS is one of the following.\n" );
			printf( "-h, --help\tDisplay this message\n" );
			printf( "-v, --version\tShow the version of this binary\n" );
			return 0;
		}
		else if( strcmp( argv[1], "--version" ) == 0 || strcmp( argv[1], "-v" ) == 0 )
		{
			printf( "%s %s\n", CAPTION, VERSION );
			return 0;
		}
		else
		{
			printf( "Unknown argument %s\n", argv[1] );
		}
	}
	
	Leveleditor_Mode = 0;
	Game_debug = 0;
	cameraposx = 0;
	cameraposy = 0;

	MassiveObjects.reserve( 1000 );
	PassiveObjects.reserve( 1000 );
	ActiveObjects.reserve( 500 );
	EnemyObjects.reserve( 500 );
	
	srand( time( NULL ) );
	atexit( ExitGame );

	if( argc == 2 )
	{
		StartGame( argv[1] );
	}
	else
	{
		StartGame();
	}
	
	while( !done )
	{
		ProcessEvents();
		ProcessInput();
		UpdateGame();
		Framerate.Update();
	}

	ExitGame();

	return 0; // Successful
}

void StartGame( string level_name )
{
	pPreferences = new cPreferences;
	pPreferences->Load();

	pImageManager = new cImageManager();
	pOverWorld = new cOverWorld();

	if( SDL_Init( SDL_INIT_VIDEO | SDL_INIT_NOPARACHUTE ) == -1 )
	{
		printf( "Error : SDL initialization failed\nReason : %s\n", SDL_GetError() );
		exit( 0 );
	}
	
	if( SDL_InitSubSystem( SDL_INIT_JOYSTICK ) == -1 )
	{
		printf( "Warning : SDL Joystick initialization failed\nReason : %s\n", SDL_GetError() );
		pPreferences->Joy_enabled = 0;
	}

	if( SDL_InitSubSystem( SDL_INIT_AUDIO ) == -1 )
	{
		printf( "Warning : SDL Audio initialization failed\nReason : %s\n", SDL_GetError() );
		pPreferences->Sounds = 0;
		pPreferences->Music = 0;
	}	
	
	pAudio = new cAudio();
	pPreferences->Apply();
	pAudio->Init();
	
	/*if( pPreferences->Fullscreen )
	{
		screen = SDL_SetVideoMode( pPreferences->Screen_W, pPreferences->Screen_H, pPreferences->Bpp, SDL_SWSURFACE | SDL_HWACCEL | SDL_RLEACCEL | SDL_FULLSCREEN );
	}
	else
	{
		screen = SDL_SetVideoMode( pPreferences->Screen_W, pPreferences->Screen_H, pPreferences->Bpp, SDL_SWSURFACE | SDL_HWACCEL | SDL_RLEACCEL | SDL_DOUBLEBUF );
	}*/
	
	screen = SDL_SetVideoMode( 640, 480, 16, SDL_DOUBLEBUF );

	if( !screen )
	{
		printf( "Error : Screen mode creation failed\nReason : %s\n", SDL_GetError() );
		exit( 0 );
	}

	magenta = SDL_MapRGB( screen->format, 255, 0, 255 );
	std_bgcolor = SDL_MapRGB( screen->format, 150, 200, 225 );
	darkblue = SDL_MapRGB( screen->format, 0, 0, 128 );
	lightblue = SDL_MapRGB( screen->format, 41, 167, 255 );
	black = SDL_MapRGB( screen->format, 0, 0, 0 );
	white = SDL_MapRGB( screen->format, 255, 255, 255 );
	grey = SDL_MapRGB( screen->format, 128, 128, 128 );
	green = SDL_MapRGB( screen->format, 0, 230, 0 );

	colorDarkBlue.r = 0;	colorDarkBlue.g = 0;	colorDarkBlue.b = 128;	// Dark Blue
	colorWhite.r = 255;		colorWhite.g = 255;		colorWhite.b = 255;		// White
	colorBlack.r = 0;		colorBlack.g = 0;		colorBlack.b = 0;		// Black
	colorBlue.r = 150;		colorBlue.g = 200;		colorBlue.b = 225;		// Blue
	colorGreen.r = 0;		colorGreen.g = 230;		colorGreen.b = 0;		// Green
	colorDarkGreen.r = 1;	colorDarkGreen.g = 119;	colorDarkGreen.b = 34;	// Dark Green
	colorMagenta.r = 255;	colorMagenta.g = 0;		colorMagenta.b = 255;	// Magenta
	colorGrey.r = 128;		colorGrey.g = 128;		colorGrey.b = 128;		// Grey
	colorRed.r = 253;		colorRed.g = 22;		colorRed.b = 12;		// Red
	colorOrange.r = 248;	colorOrange.g = 191;	colorOrange.b = 38;		// Orange

	SDL_ShowCursor( SDL_DISABLE );
	SDL_WM_SetCaption( CAPTION, NULL );
	
	pJoystick = new cJoystick();
	
	if( TTF_Init() == -1 ) 
	{
		printf( "Error : SDL_TTF initialisation failed\nReason : %s\n", SDL_GetError() );
		exit( 0 );
	}

	font = TTF_OpenFont( FONT_DIR "/bluebold.ttf", 26 );
	font_16 = TTF_OpenFont( FONT_DIR "/bluebold.ttf", 16 );
	
	if( !font || !font_16 ) 
	{
		printf( "Error : Font loading failed\n" );
		exit( 0 );
	}
	
	pPlayer = new cPlayer( 120, 0 );
	pLevel = new cLevel();
	pHudManager = new cHudManager();
	pAnimationManager = new cAnimationManager();
	pDialogManager = new cDialogManager();
	pMenu = new cMainMenu();
	pMouseCursor = new cMouseCursor( 20, 20 );
	pLeveleditor = new cLevelEditor();
	pSavegame = new cSavegame();

	Preload_images();

	if( !level_name.empty() && pLevel->Load( level_name ) )
	{
		Game_Mode = MODE_LEVEL;
	}
	else
	{
		pMenu->Menu_Show();
	}
}

void ExitGame( void )
{
	if( pPreferences )
	{
		pPreferences->Save();
	}

	if( pAudio )
	{
		delete pAudio;
		pAudio = NULL;
	}
	
	if( pPlayer )
	{
		delete pPlayer;
		pPlayer = NULL;
	}
	if( pLevel )
	{
		delete pLevel;
		pLevel = NULL;
	}

	if( pHudManager ) 
	{
		delete pHudManager;
		pHudManager = NULL;
	}

	if( pImageManager ) 
	{
		delete pImageManager;
		pImageManager = NULL;
	}

	if( pAnimationManager ) 
	{
		delete pAnimationManager;
		pAnimationManager = NULL;
	}

	if( pLeveleditor )
	{
		delete pLeveleditor;
		pLeveleditor = NULL;
	}
	
	if( pDialogManager ) 
	{
		delete pDialogManager;
		pDialogManager = NULL;
	}

	if( pPreferences ) 
	{
		delete pPreferences;
		pPreferences = NULL;
	}

	if( pSavegame ) 
	{
		delete pSavegame;
		pSavegame = NULL;
	}

	if( pMouseCursor ) 
	{
		delete pMouseCursor;
		pMouseCursor = NULL;
	}

	if( pJoystick )
	{
		delete pJoystick;
		pJoystick = NULL;
	}

	if( strlen( SDL_GetError() ) > 0 )
	{
		printf( "Last known Error : %s\n", SDL_GetError() );
	}

	SDL_Quit();
}

void ProcessEvents( void )
{
	SDL_GetMouseState( &mouseX, &mouseY );

	while( SDL_PollEvent( &event ) )
	{
		switch( event.type )
		{
		case SDL_QUIT:
		{
			done = 1;
			break;
		}
		case SDL_JOYBUTTONDOWN:
		{
			pJoystick->Handle_Button_Event();
			break;
		}
		case SDL_JOYBUTTONUP:
		{
			pJoystick->Handle_Button_Event();
			break;
		}
		case SDL_KEYDOWN:
		{
			KeyDown( event.key.keysym.sym );
			break;
		}
		case SDL_KEYUP:
		{
			if( event.key.keysym.sym == SDLK_RETURN && event.key.keysym.mod & KMOD_ALT )
			{
				Toggle_Fullscreen();
			}
			else
			{
				KeyUp( event.key.keysym.sym );
			}

			break;
		}
		case SDL_MOUSEMOTION:
		{
			if( pMouseCursor->MousePressed_left )
			{
				if( Leveleditor_Mode && pMouseCursor->MouseObject ) 
				{
					pMouseCursor->MouseObject_Update();
				}
			}
			else if( Leveleditor_Mode && pMouseCursor->mover_mode ) 
			{
				pMouseCursor->Mover_Update( event.motion.xrel, event.motion.yrel );
			}

			_mouseX = mouseX;
			_mouseY = mouseY;

			break;
		}
		case SDL_MOUSEBUTTONDOWN:
		{
			if( event.button.button == 1 ) // left
			{
				if( Leveleditor_Mode ) 
				{
					pMouseCursor->MousePressed_left = 1;

					if( pMouseCursor->clickcounter ) 
					{
						pMouseCursor->Double_Click();
					}
					else
					{
						pMouseCursor->clickcounter = DESIRED_FPS * 0.9;
					}
				}
			}
			else if( event.button.button == 2 ) // middle
			{
				if( Leveleditor_Mode && pMouseCursor->MouseObject ) // Activates the Fastcopy mode
				{
					pMouseCursor->fastCopyMode = 1;
				}
				else if( Leveleditor_Mode )  // The Mover mode
				{
					if( !pMouseCursor->mover_mode )
					{
						pMouseCursor->mover_mode = 1;
					}
					else
					{
						pMouseCursor->mover_mode = 0;
					}
				}
			}
			else if( event.button.button == 3 ) // right
			{
				if( Leveleditor_Mode && pMouseCursor->MouseObject && !pMouseCursor->MousePressed_left ) 
				{
					pMouseCursor->Delete();
				}

				pMouseCursor->MousePressed_right = 1;
			}

			break;
		}
		case SDL_MOUSEBUTTONUP:
		{
			if( event.button.button == 1 )
			{
				pMouseCursor->MousePressed_left = 0;
			}
			else if( event.button.button == 2 )
			{
				pMouseCursor->fastCopyMode = 0;
			}
			else if( event.button.button == 3 )
			{
				pMouseCursor->MousePressed_right = 0;
			}

			break;
		}
		case SDL_JOYAXISMOTION:
		{
			pJoystick->Handle_Events();
			break;
		}
		}// event.type switch end
	} // Pollevent end
}

void KeyUp( SDLKey key )
{
	keys = SDL_GetKeyState( NULL );
	
	if( key == pPreferences->Key_right || key == pPreferences->Key_left )
	{
		pPlayer->Hold();
	}
	else if( key == pPreferences->Key_down )
	{
		if( pPlayer->ducked )
		{
			pPlayer->Stop_ducking();
		}
	}
}

void Save_Screenshot( void )
{
	char filename[20];

	for( unsigned int i = 1; i < 1000; i++ )
	{
		sprintf( filename, "screenshots/%03d.bmp", i );

		if( !valid_file( filename ) )
		{
			// Todo : save it as png !
			SDL_SaveBMP( screen, filename );

			string snumber;
			snumber = filename;
			snumber.erase( 0, 12 );
			snumber.erase( snumber.length() - 4, 4 );

			sprintf( debugdisplay->text, "Screenshot %d saved\n", i );
			debugdisplay->counter = DESIRED_FPS * 2.5;

			return;
		}
	}
}

void KeyDown( SDLKey key )
{
	keys = SDL_GetKeyState( NULL );

	if( key == SDLK_l )
	{
		boxRGBA( screen, 0, 0, screen->w, screen->h , 0, 0, 0, 64 );

		string levelname = EditMessageBox( "Load a new Level", "Levelname", screen->w/2 - 200, screen->h/2 - 10, 1 );

		if( levelname.length() < 2 )
		{
			return;
		}

		string levelnameout = levelname;

		if( levelname.find( ".txt" ) == string::npos ) 
		{
			levelname.insert( levelname.length(), ".txt" );
		}

		if( levelname.find( pPreferences->level_dir ) == string::npos ) 
		{
			levelname.insert( 0, pPreferences->level_dir );
			levelname.insert( pPreferences->level_dir.length(), "/" );
		}
		
		if( levelnameout.length() > 5 && ( levelnameout.find( ".txt" ) == levelnameout.length() - 4 ) ) 
		{
			levelnameout.erase( levelnameout.length() - 4, levelnameout.length());
		}

		if( levelnameout.find( pPreferences->level_dir ) == 0 )
		{
			levelnameout.erase( 0, pPreferences->level_dir.length() + 1 );
		}

		if( pLevel->Load( levelname ) )
		{
			sprintf( debugdisplay->text, "Loaded %s", levelnameout.c_str() );
			Game_Mode = MODE_LEVEL;
			debugdisplay->counter = DESIRED_FPS * 2;
		}
		else
		{
			sprintf( debugdisplay->text, "Error Loading %s", levelnameout.c_str() );
			pAudio->PlaySound( SOUNDS_DIR "/error.ogg" );
			debugdisplay->counter = DESIRED_FPS * 2;
		}

		return;
	}
	else if( key == SDLK_F10 )
	{
		pAudio->ToggleSounds();

		if( !pAudio->bSounds )
		{
			sprintf( debugdisplay->text, "Sound Disabled" );
		}
		else
		{
			sprintf( debugdisplay->text, "Sound Enabled" );
		}

		debugdisplay->counter = DESIRED_FPS * 2;
		return;
	}
	else if( key == SDLK_F11 )
	{
		pAudio->ToggleMusic();

		if( !pAudio->bMusic )
		{
			sprintf( debugdisplay->text, "Music Disabled" );
		}
		else
		{
			sprintf( debugdisplay->text, "Music Enabled" );
		}

		debugdisplay->counter = DESIRED_FPS * 2;
		return;
	}

	if( key == SDLK_ESCAPE && !( Game_Mode == MODE_MENU ) )
	{
		pMenu->Menu_Show();
		return;
	}

	if( Game_Mode == MODE_LEVEL )
	{
		KeyDown_Level( key );
	}
	else if( Game_Mode == MODE_OVERWORLD )
	{
		// todo
	}
	else if( Game_Mode == MODE_MENU )
	{
		// todo
	}
}

void KeyDown_Level( SDLKey key )
{
	if( key == SDLK_d && ( event.key.keysym.mod & KMOD_LCTRL ) )
	{
		if( Game_debug ) 
		{
			sprintf( debugdisplay->text, "Game debugmode Disabled" );
			debugdisplay->counter = DESIRED_FPS * 2;
			Game_debug = 0;
		}
		else
		{
			sprintf( debugdisplay->text, "Game debugmode Enabled" );
			debugdisplay->counter = DESIRED_FPS * 2;
			Game_debug = 1;
		}
		return;
	}
	// Debug Keys only for some testing ;)
	// use F2 - F4
	else if( key == SDLK_F3 && Game_debug )
	{
		pPlayer->GotoNextLevel();
		return;
	}
	else if( key == SDLK_F4 && Game_debug )
	{
		DrawEffect( FIXED_RECTANGLE_PIXELATION );
		//pPlayer->Fireball_add( FIREBALL_EXPLOSION );
		return;
	}
	else if( key == SDLK_F5 )
	{
		Save_Screenshot();
		return;
	}
	else if( pJoystick->shoot && !Leveleditor_Mode )
	{
		pPlayer->Fireball_add();
		return;
	}
	else if( pJoystick->enter && !Leveleditor_Mode )
	{
		Itembox->Request_Item();
		return;
	}
	else if( key == SDLK_s && Leveleditor_Mode )
	{
		pLevel->Save();
		return;
	}
	else if( key == SDLK_F8 )
	{
		Leveleditor_Mode = !Leveleditor_Mode;
		
		if( Leveleditor_Mode )
		{
			if( !pLeveleditor->wMenu_Count ) 
			{
				pLeveleditor->Load_Default_Menu();
			}

			sprintf( debugdisplay->text, "Editor Mode enabled" );
		}
		else
		{
			sprintf( debugdisplay->text, "Editor Mode disabled" );
			cameraposy = pPlayer->posy - (double)( screen->h/2 );
			cameraposx = pPlayer->posx + (double)( screen->w/2 );

			pMouseCursor->mover_mode = 0;
			pMouseCursor->fastCopyMode = 0;
		}

		debugdisplay->counter = DESIRED_FPS * 2;
		pAudio->PlaySound( SOUNDS_DIR "/leveleditor.ogg" );
		
		return;
	}
	else if( keys[SDLK_g] && keys[SDLK_o] && keys[SDLK_d] && !Leveleditor_Mode )
	{
		if( pPlayer->debugmode )
		{
			pPlayer->debugmode = 0;
			sprintf( debugdisplay->text, "Funky Godmode disabled" );
		}
		else
		{
			pPlayer->debugmode = 1;
			sprintf( debugdisplay->text, "Funky Godmode enabled" );
		}
		
		debugdisplay->counter = DESIRED_FPS * 2;

		return;
	}

	else if( key == pPreferences->Key_up )
	{
		pPlayer->Start_jump_keytime();
		return;
	}
	else if( SDLK_j && pPlayer->debugmode )
	{
		pPlayer->Start_jump();
		return;
	}
	else if( key == pPreferences->Key_down && !Leveleditor_Mode )
	{
		pPlayer->Start_ducking();
		return;
	}
	else if( Leveleditor_Mode ) // Additional EditMode Keys
	{
		if ( key == SDLK_F1 ) 
		{
			// Todo : a leveditor help screen
		}
		else if( key == SDLK_HOME ) // new
		{
			cameraposx = 0;
			cameraposy = 0;
		}
		else if( key == SDLK_END ) // new
		{
			double new_cameraposx = 0;
			double new_cameraposy = 0;
			
			for( unsigned int i = 0; i < ActiveObjects.size(); i++ )
			{
				if( !ActiveObjects[i] )
				{
					continue;
				}

				if( ActiveObjects[i]->type == TYPE_LEVELEXIT && new_cameraposx < ActiveObjects[i]->posx )
				{
					new_cameraposx = ActiveObjects[i]->posx;
					new_cameraposy = ActiveObjects[i]->posy;
				}
			}

			if( new_cameraposx != 0 || new_cameraposy != 0 ) 
			{
				cameraposx = new_cameraposx - ( pPreferences->Screen_W/2 );
				cameraposy = new_cameraposy - ( pPreferences->Screen_H/2 );
			}
		}
		else if( key == SDLK_n )
		{
			cameraposx += pPreferences->Screen_W;
		}
		else if( key == SDLK_p )
		{
			cameraposx -= pPreferences->Screen_W;
		}
		// Precise Pixel-Positioning
		else if( key == SDLK_KP2 && pMouseCursor->MouseObject )
		{
			if( pMouseCursor->fastCopyMode )
			{
				if( pMouseCursor->MouseObject->StartImage ) 
				{
					pMouseCursor->Copy( pMouseCursor->MouseObject, pMouseCursor->MouseObject->posx, pMouseCursor->MouseObject->posy + pMouseCursor->MouseObject->StartImage->h );
					cameraposy += pMouseCursor->MouseObject->StartImage->h;
				}
				
			}
			else
			{
				cameraposy++;
			}
		}
		else if( key == SDLK_KP4 && pMouseCursor->MouseObject )
		{
			if( pMouseCursor->fastCopyMode )
			{
				if( pMouseCursor->MouseObject->StartImage ) 
				{
					pMouseCursor->Copy( pMouseCursor->MouseObject, pMouseCursor->MouseObject->posx - pMouseCursor->MouseObject->StartImage->w, pMouseCursor->MouseObject->posy );
					cameraposx -= pMouseCursor->MouseObject->StartImage->w;	
				}
			}
			else
			{
				cameraposx--;
			}
		}
		else if( key == SDLK_KP6 && pMouseCursor->MouseObject )
		{
			if( pMouseCursor->fastCopyMode )
			{
				if( pMouseCursor->MouseObject->StartImage ) 
				{
					pMouseCursor->Copy( pMouseCursor->MouseObject, pMouseCursor->MouseObject->posx + pMouseCursor->MouseObject->StartImage->w, pMouseCursor->MouseObject->posy );
					cameraposx += pMouseCursor->MouseObject->StartImage->w;
				}
			}
			else
			{
				cameraposx++;
			}
		}
		else if( key == SDLK_KP8 && pMouseCursor->MouseObject )
		{
			if( pMouseCursor->fastCopyMode )
			{
				if( pMouseCursor->MouseObject->StartImage ) 
				{
					pMouseCursor->Copy( pMouseCursor->MouseObject, pMouseCursor->MouseObject->posx, pMouseCursor->MouseObject->posy - pMouseCursor->MouseObject->StartImage->h );
					cameraposy -= pMouseCursor->MouseObject->StartImage->h;
				}
			}
			else
			{
				cameraposy--;
			}
		}
		else if( key == SDLK_m && pMouseCursor->MouseObject )
		{
			// modify Passive/Massive/Halfmassive/Climbable
			pLeveleditor->Switch_ObjectState();
			return;
		}
		else if( key == SDLK_c && ( event.key.keysym.mod & KMOD_LCTRL ) && Leveleditor_Mode ) // Copy an Sprite
		{
			if( pMouseCursor->MouseObject )
			{
				pMouseCursor->CopyObject = pMouseCursor->MouseObject;
			}
		}
		else if( key == SDLK_v && ( event.key.keysym.mod & KMOD_LCTRL ) && Leveleditor_Mode ) // Paste an Sprite
		{
			if( pMouseCursor->CopyObject )
			{
				pMouseCursor->Copy( pMouseCursor->CopyObject, pMouseCursor->posx, pMouseCursor->posy );
				pMouseCursor->mouse_H = pMouseCursor->CopyObject->rect.h/2;
				pMouseCursor->mouse_W = pMouseCursor->CopyObject->rect.w/2;
			}
		}
	}
}

void ProcessInput( void )
{
	keys = SDL_GetKeyState( NULL );
	
	// Drag Delete
	if( ( keys[SDLK_RCTRL] || keys[SDLK_LCTRL] ) && pMouseCursor->MousePressed_right && !pMouseCursor->Leveleditor_CollsionCheck( pMouseCursor->posx, pMouseCursor->posy ) ) 
	{
		pMouseCursor->Delete();
	}

	// Camera Movement
	if( keys[pPreferences->Key_right] || pJoystick->right )
	{
		if( !Leveleditor_Mode )
		{
			pPlayer->direction = DIR_RIGHT;
		}
		else
		{
			cameraposx += CAMERASPEED * Framerate.speedfactor;
		}
	}
	else if( keys[pPreferences->Key_left] || pJoystick->left )
	{
		if( !Leveleditor_Mode )
		{
			pPlayer->direction = DIR_LEFT;
		}
		else
		{
			cameraposx -= CAMERASPEED * Framerate.speedfactor;
		}
	}

	if( keys[pPreferences->Key_up] || ( pJoystick->up || pJoystick->Button( pPreferences->Joy_jump ) ) )
	{
		if( Leveleditor_Mode )
		{
			cameraposy -= CAMERASPEED * Framerate.speedfactor;
		}
	}

	if( keys[pPreferences->Key_down] || pJoystick->down )
	{
		if( !Leveleditor_Mode )
		{
			if( pPlayer->onGround == 1 ) 
			{
				pPlayer->Start_ducking();
			}
			else if( pPlayer->onGround == 2 )
			{
				pPlayer->state = FALL;
				pPlayer->posy += 1;
			}
		}
		else
		{
			cameraposy += CAMERASPEED * Framerate.speedfactor;
		}
	}

	if( Leveleditor_Mode && ( ( keys[pPreferences->Key_down] || keys[pPreferences->Key_up] || keys[pPreferences->Key_left] || 
		keys[pPreferences->Key_right] ) || ( pJoystick->down || pJoystick->up || pJoystick->left || pJoystick->right ) ) )
	{
		if( pMouseCursor->MousePressed_left && pMouseCursor->MouseObject )
		{
			pMouseCursor->MouseObject->startposx = (int)pMouseCursor->posx - pMouseCursor->mouse_W;
			pMouseCursor->MouseObject->startposy = (int)pMouseCursor->posy - pMouseCursor->mouse_H;
			
			if( pMouseCursor->MouseObject->type != TYPE_PLAYER ) 
			{
				pMouseCursor->MouseObject->posx = (int)pMouseCursor->posx - pMouseCursor->mouse_W;
				pMouseCursor->MouseObject->posy = (int)pMouseCursor->posy - pMouseCursor->mouse_H;
			}
		}
	}
}

void UpdateGame( void )
{
	if( !pLevel->is_Loaded() ) // If a Level is not loaded enter the Overworld
	{
		pOverWorld->Enter();
	}

	pAudio->ResumeMusic();
	pAudio->Update();

	pLevel->Draw();
	pPlayer->Update();
	pDialogManager->Update();

	debugdisplay->GameDebugDraw();
	pMouseCursor->Update_Doubleclick();

	if( Leveleditor_Mode )
	{
		pLeveleditor->Draw( screen );

		pMouseCursor->Update_Position();
		pMouseCursor->MouseObject_Update();
		pMouseCursor->Update();
	}

	SDL_Flip( screen );	// Double Buffering
}
