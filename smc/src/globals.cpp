/***************************************************************************
    globals.cpp  -  all global used variables, as specified in globals.h
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

#ifndef __WIN32__
#include <algorithm>
#endif

#define GP2X_BUTTON_UP              (0)
#define GP2X_BUTTON_DOWN            (4)
#define GP2X_BUTTON_LEFT            (2)
#define GP2X_BUTTON_RIGHT           (6)
#define GP2X_BUTTON_UPLEFT          (1)
#define GP2X_BUTTON_UPRIGHT         (7)
#define GP2X_BUTTON_DOWNLEFT        (3)
#define GP2X_BUTTON_DOWNRIGHT       (5)
#define GP2X_BUTTON_CLICK           (18)
#define GP2X_BUTTON_A               (12)
#define GP2X_BUTTON_B               (13)
#define GP2X_BUTTON_Y               (14)
#define GP2X_BUTTON_X               (15)
#define GP2X_BUTTON_L               (10)
#define GP2X_BUTTON_R               (11)
#define GP2X_BUTTON_START           (8)
#define GP2X_BUTTON_SELECT          (9)
#define GP2X_BUTTON_VOLUP           (16)
#define GP2X_BUTTON_VOLDOWN         (17)

int tecla_up = 0;
int tecla_down = 0;
int tecla_left = 0;
int tecla_right = 0;
int tecla_a = 0;
int tecla_x = 0;

// ##### The global variables #########

cFramerate Framerate( DESIRED_FPS );

cImageManager *pImageManager = NULL;
cHudManager *pHudManager = NULL;
cAnimationManager *pAnimationManager = NULL;
cDialogManager *pDialogManager = NULL;
cJoystick *pJoystick = NULL;

vector<cSprite*> MassiveObjects;
vector<cSprite*> PassiveObjects;
vector<cSprite*> ActiveObjects;
vector<cSprite*> EnemyObjects;

cPlayer *pPlayer = NULL;
cLevel *pLevel = NULL;
cOverWorld *pOverWorld = NULL;
cMainMenu *pMenu = NULL;

cAudio *pAudio = NULL;
cPreferences *pPreferences = NULL;
cMouseCursor *pMouseCursor = NULL;
cLevelEditor *pLeveleditor = NULL;
cSavegame *pSavegame = NULL;

cPlayerPoints *pointsdisplay = NULL;
cDebugDisplay *debugdisplay = NULL;
cGoldDisplay *golddisplay = NULL;
cLiveDisplay *livedisplay = NULL;
cTimeDisplay *timedisplay = NULL;
cItemBox *Itembox = NULL;

int Leveleditor_Mode;
GameMode Game_Mode;
bool Game_debug, Overworld_debug;

bool done;
SDL_Surface *screen;
SDL_Event event;
Uint32 std_bgcolor, magenta, darkblue, lightblue, black, white, grey, green;
SDL_Color colorBlack, colorWhite, colorBlue, colorDarkBlue, colorGreen, colorDarkGreen, colorMagenta, colorGrey, colorRed, colorOrange;
Uint8 *keys;

double cameraposx, cameraposy;

int mouseX, mouseY, _mouseX, _mouseY;
TTF_Font *font, *font_16;
int UpKeyTime = 0;

// uses the is_valid_number function
class nondigit
{
public:
	bool operator() (char c) { return !isdigit(c); }
};


bool is_valid_number( string num )
{
	if( num.find( '-' ) == 0 ) // Should also accept negative numbers
	{
		num.erase( 0, 1 );
	}

	if( find_if( num.begin(), num.end(), nondigit() ) == num.end() )
	{
		return 1;
	}

	return 0;
}

void AddMassiveObject( cSprite *obj )
{
	if( !obj )
	{
		return;
	}

	MassiveObjects.push_back( obj );
}

void AddEnemyObject( cSprite *obj )
{
	if( !obj )
	{
		return;
	}

	EnemyObjects.push_back( obj );
}

void AddPassiveObject( cSprite *obj )
{
	if( !obj )
	{
		return;
	}

	PassiveObjects.push_back( obj );
}

void AddActiveObject( cSprite *obj )
{
	if( !obj )
	{
		return;
	}

	ActiveObjects.push_back( obj );
}


cSprite *Copy_Object( cSprite *CopyObject, double x, double y )
{
	cSprite *new_sprite = NULL;

	if( CopyObject->type == TYPE_GOLDPIECE )
	{
		new_sprite = (cSprite*)new cGoldPiece( x, y );
	}
	else if( CopyObject->type == TYPE_MOON )
	{
		new_sprite = (cSprite*)new cMoon( x, y );
	}
	else if( CopyObject->type == TYPE_CLOUD )
	{
		new_sprite = (cSprite*)new cCloud( x, y );
	}
	else if( CopyObject->type == TYPE_LEVELEXIT )
	{
		cLevelExit *active = (cLevelExit*)CopyObject;

		new_sprite = (cSprite*)new cLevelExit( x, y, active->levelchange, active->levelname );
	}
	else if( CopyObject->type == TYPE_GOLDBOX )
	{
		new_sprite = (cSprite*) new cGoldBox( x, y );
	}
	else if( CopyObject->type == TYPE_SPINBOX )
	{
		new_sprite = (cSprite*)new cSpinBox( x, y );
	}
	else if( CopyObject->type == TYPE_GOOMBA )
	{
		cGoomba *enemy = (cGoomba*)CopyObject;

		new_sprite = (cSprite*)new cGoomba( x, y, enemy->color );
	}
	else if( CopyObject->type == TYPE_TURTLE )
	{
		new_sprite = (cSprite*)new cTurtle( x, y, 1 );
	}
	else if( CopyObject->type == TYPE_JPIRANHA )
	{
		cjPiranha *enemy = (cjPiranha*)CopyObject;

		new_sprite = (cSprite*)new cjPiranha( x, y, CopyObject->direction, enemy->max_distance );
	} 
	else if( CopyObject->type == TYPE_BANZAI_BILL )
	{
		new_sprite = (cSprite*)new cbanzai_bill( x, y, CopyObject->direction );
	}
	else if( CopyObject->type == TYPE_REX )
	{
		new_sprite = (cSprite*)new cRex( x, y );
	}
	else if( CopyObject->type == TYPE_BONUSBOX_MUSHROOM_FIRE )
	{
		new_sprite = (cSprite*)new cBonusBox( x, y,TYPE_BONUSBOX_MUSHROOM_FIRE );
	}
	else if( CopyObject->type == TYPE_BONUSBOX_LIVE )
	{
		new_sprite = (cSprite*)new cBonusBox( x, y, TYPE_BONUSBOX_LIVE );
	}
	else if( CopyObject->type == TYPE_ENEMYSTOPPER )
	{
		new_sprite = (cSprite*)new cEnemyStopper( x, y );
	}
	else if( CopyObject->type == TYPE_PLAYER )
	{
		// nothing
	}
	else // standard sprite
	{
		new_sprite = new cSprite( GetImage( pImageManager->Get_Path( CopyObject->image ) ), x, y );

		if( !CopyObject->massive && !CopyObject->halfmassive ) // passive
		{
			new_sprite->array = ARRAY_PASSIVE;
		}
		else if( CopyObject->massive && !CopyObject->halfmassive ) // massive
		{
			new_sprite->array = ARRAY_MASSIVE;
		}
		else if( !CopyObject->massive && CopyObject->halfmassive ) // halfmassive
		{
			new_sprite->array = ARRAY_ACTIVE;
			new_sprite->type = TYPE_HALFMASSIVE;
		}
	}

	if( new_sprite )
	{
		new_sprite->massive = CopyObject->massive;
		new_sprite->halfmassive = CopyObject->halfmassive;
		new_sprite->climbable = CopyObject->climbable;
	}

	return new_sprite;
}

bool KeyPressed( KeyDefine key )
{
	if( key == KEY_ENTER )
	{
		if( event.type == SDL_JOYBUTTONDOWN && event.jbutton.button == GP2X_BUTTON_START )
		{
			return 1;
		}
	}
	else if( key == KEY_ESC )
	{
		if( event.type == SDL_JOYBUTTONDOWN && event.jbutton.button == GP2X_BUTTON_L )
		{
			return 1;
		}
	}
	else if( key == KEY_LEFT )
	{
		if( event.type == SDL_JOYBUTTONDOWN && event.jbutton.button == GP2X_BUTTON_LEFT )
		{
			return 1;
		}		
	}
	else if( key == KEY_RIGHT )
	{
		if( event.type == SDL_JOYBUTTONDOWN && event.jbutton.button == GP2X_BUTTON_RIGHT )
		{
			return 1;
		}		
	}
	else if( key == KEY_UP )
	{
		if( event.type == SDL_JOYBUTTONDOWN && event.jbutton.button == GP2X_BUTTON_UP )
		{
			return 1;
		}
	}
	else if( key == KEY_DOWN )
	{
		if( event.type == SDL_JOYBUTTONDOWN && event.jbutton.button == GP2X_BUTTON_DOWN )
		{
			return 1;
		}
	}

	return 0;
}

string Get_current_time( void )
{
   time_t t;
   struct tm *area;

   t = time( NULL );
   area = localtime( &t );
   return asctime( area );
}

void ClearEvents( void )
{
	SDL_Event inEvent;

	while( SDL_PollEvent( &inEvent ) )
	{
		// ignore
	}
}

string EditMessageBox( string default_text, string title_text, Uint16 pos_x, Uint16 pos_y, bool auto_no_text /* = 1  */)
{
	string sDescription = default_text;

	bool Entered = 0;

	SDL_Rect Srect2; // Colored Background Rects
	SDL_Rect Drect,Drect2; // Title and Description Rect
	SDL_Rect Erect; // default text Background Color Rect

	SDL_Surface *Title_Text = TTF_RenderText_Shaded( font, title_text.c_str(), colorBlack, colorWhite );
	SDL_Surface *Entered_Description = TTF_RenderText_Shaded( font, sDescription.c_str() , colorBlack, colorWhite );
	
	SDL_Rect pos_rect;

	pos_rect.x = pos_x;
	pos_rect.y = pos_y;
	pos_rect.w = 350;
	pos_rect.h = Entered_Description->h + 2;

	Srect2 = pos_rect;
	Srect2.x += 1;
	Srect2.y += 1;
	Srect2.h -= 2;
	Srect2.w -= 2;
	
	Drect = Srect2;
	Drect.y -= Srect2.h + 2;
	Drect.x += (pos_rect.w/2) - ( Title_Text->w/2 ) - 5;
	Drect2 = Srect2;

	Erect = Drect;
	Erect.x -= 2;
	Erect.y -= 2;
	Erect.h = Title_Text->h + 4;
	Erect.w = Title_Text->w + 4;

	sDescription.reserve( 30 );
	
	SDL_EnableUNICODE( 1 );

	while( !Entered )
	{
		SDL_FillRect( screen, &pos_rect, green );
		SDL_FillRect( screen, &Srect2, white );

		SDL_FillRect( screen, &Erect, darkblue );
		
		SDL_BlitSurface( Title_Text, NULL ,screen, &Drect );
		SDL_BlitSurface( Entered_Description, NULL, screen, &Drect2 );

		SDL_Flip( screen );

		while( SDL_PollEvent( &event ) )
		{
			keys = SDL_GetKeyState( NULL );

			if( KeyPressed( KEY_ESC) && event.key.keysym.sym != SDLK_BACKSPACE )
			{
				sDescription = "";
				Entered = 1;
			}
			else if ( KeyPressed( KEY_ENTER ) )
			{
				Entered = 1;
			}
			else if( event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_BACKSPACE )
			{
				if( sDescription.length() <= 1 || ( sDescription.compare( default_text ) == 0 && auto_no_text ) )
				{
					sDescription = "";

					if( Entered_Description )
					{
						SDL_FreeSurface( Entered_Description );
						Entered_Description = NULL;
					}

					Entered_Description = TTF_RenderText_Shaded( font, " ", colorBlack, colorWhite );
				}
				else
				{
					sDescription.erase( sDescription.length() - 1, 1 );
					
					if( Entered_Description )
					{
						SDL_FreeSurface( Entered_Description );
						Entered_Description = NULL;
					}
					
					Entered_Description = TTF_RenderText_Shaded( font, sDescription.c_str(), colorBlack, colorWhite );
				}
			}
			else if( event.type == SDL_KEYDOWN && event.key.keysym.sym != SDLK_ESCAPE )
			{
				if( event.key.keysym.unicode && sDescription.length() < 30 )
				{
					if( sDescription.compare( default_text ) == 0 && auto_no_text )
					{
						sDescription = "";
					}
					
					sDescription.insert( sDescription.length(), 1, (char)event.key.keysym.unicode );
					
					if( Entered_Description ) 
					{
						SDL_FreeSurface( Entered_Description );
						Entered_Description = NULL;
					}

					Entered_Description = TTF_RenderText_Shaded( font, sDescription.c_str(), colorBlack, colorWhite );
				}
			}
		}
		
		Framerate.Update();
	}

	SDL_EnableUNICODE( 0 );

	if( Entered_Description )
	{
		SDL_FreeSurface( Entered_Description );
		Entered_Description = NULL;
	}

	if( Title_Text )
	{
		SDL_FreeSurface( Title_Text );
		Title_Text = NULL;
	}

	return sDescription;
}

void Preload_images( void )
{
	// The Mushrooms
	GetImage( "sd:/apps/smc/data/pixmaps/game/items/mushroom_red.png" );
	GetImage( "sd:/apps/smc/data/pixmaps/game/items/mushroom_green.png" );

	// The Box
	GetImage( "sd:/apps/smc/data/pixmaps/game/box/brown1_1.png" );

	// The Flower
	GetImage( "sd:/apps/smc/data/pixmaps/game/items/flower_red_1.png" );
	GetImage( "sd:/apps/smc/data/pixmaps/game/items/flower_red_2.png" );

	// The Goldpiece Animation
	GetImage( "sd:/apps/smc/data/pixmaps/animation/light_1/1.png" );
	GetImage( "sd:/apps/smc/data/pixmaps/animation/light_1/2.png" );
	GetImage( "sd:/apps/smc/data/pixmaps/animation/light_1/3.png" );

	// The Fire Animation
	GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/1.png" );
	GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/2.png" );
	GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/3.png" );
	GetImage( "sd:/apps/smc/data/pixmaps/animation/fire_1/4.png" );
}

bool Delete_file( string filename )
{
	if( remove( filename.c_str() ) == 0 )
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

bool valid_file( string filename )
{
	ifstream ifs( filename.c_str(), ios::in );

	if( ifs ) 
	{
		ifs.close();
		return 1;
	}

	return 0;
}

string int_to_string( int number )
{
	stringstream temp;
	temp << number;

	return temp.str();
}

int string_to_int( string str )
{
	int num;

	stringstream temp( str );
	temp >> num;

	return num;
}
