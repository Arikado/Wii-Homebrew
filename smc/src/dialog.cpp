/***************************************************************************
           dialog.cpp  -  Dialog class
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
#include "include/SDL_gfxPrimitives.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cDialog :: cDialog( double nposx, double nposy, string nidentifier, string ntext, DialogType dialogtype, Uint8 nmax_length /* = 20  */, unsigned int nmin_width )
: cSprite( NULL, nposx, nposy )
{
	stext = NULL;
	
	if( is_valid_number( ntext.c_str() ) ) 
	{
		text_number = string_to_int( ntext );
	}
	else
	{
		text_number = 0;
	}

	identifier.reserve( nidentifier.length() );
	identifier = nidentifier;
	text = ntext;
	
	type = dialogtype;

	boarder_in = 2;
	boarder_out = 2;
	text_area = 1;

	min_width = nmin_width;
	
	if( type != DIALOG_ONLY_NUMBERS )
	{
		if( nmax_length < ntext.length() ) 
		{
			max_length = ntext.length();
		}
		else
		{
			max_length = nmax_length;
		}

		text.reserve( max_length );
	}
	else
	{
		if( nmax_length < text_number ) 
		{
			max_length = text_number;
		}
		else
		{
			max_length = nmax_length;
		}

		text.reserve( 20 );
	}
	
	SetColors( colorDarkBlue, colorBlue, colorWhite, colorBlack );
	Update_Boarders();
	Update_Text();
}

cDialog :: ~cDialog( void )
{
	if( stext ) 
	{
		SDL_FreeSurface( stext );
		stext = NULL;
	}
}

void cDialog :: Update( void )
{
	if( !visible && stext ) 
	{
		return;
	}
	
	boxRGBA( screen, rect_boarder_out.x - (int)cameraposx, rect_boarder_out.y - (int)cameraposy, rect_boarder_out.x + rect_boarder_out.w - (int)cameraposx, rect_boarder_out.y + rect_boarder_out.h - (int)cameraposy, boarder_out_color.r, boarder_out_color.g, boarder_out_color.b, 255 );
	boxRGBA( screen, rect_boarder_in.x - (int)cameraposx, rect_boarder_in.y - (int)cameraposy, rect_boarder_in.x + rect_boarder_in.w - (int)cameraposx, rect_boarder_in.y + rect_boarder_in.h - (int)cameraposy, boarder_in_color.r, boarder_in_color.g, boarder_in_color.b, 255 );
	boxRGBA( screen, rect_text_area.x - (int)cameraposx, rect_text_area.y - (int)cameraposy, rect_text_area.x + rect_text_area.w - (int)cameraposx, rect_text_area.y + rect_text_area.h - (int)cameraposy, text_area_color.r, text_area_color.g, text_area_color.b, 255 );

	Draw( screen );
}

bool cDialog :: gotChanged( void )
{
	return changed;
}

int cDialog :: Get_Value_int( bool reset_changed )
{
	if( reset_changed ) 
	{
		changed = 0;
	}
	
	return text_number;
}

string cDialog :: Get_Value_string( bool reset_changed )
{
	if( reset_changed ) 
	{
		changed = 0;
	}
	
	return text;
}

void cDialog :: Get_Focus( void )
{
	bool focus = 1;
	string text_old = text;

	int minwidth_old = min_width;

	pDialogManager->Update();
	
	boxRGBA( screen, 0, 0, screen->w, screen->h , 0, 0, 0, 32 );

	SDL_EnableUNICODE( 1 );
	SDL_EnableKeyRepeat( SDL_DEFAULT_REPEAT_DELAY, 50 );

	while( focus )
	{
		Update();

		if( rect.w < min_width ) 
		{
			rect.w = min_width;
		}
		else if( rect.w > min_width ) 
		{
			min_width = rect.w;
		}	

		SDL_Flip( screen );

		while( SDL_PollEvent( &event ) )
		{
			keys = SDL_GetKeyState( NULL );

			if( KeyPressed( KEY_ESC) && event.key.keysym.sym != SDLK_BACKSPACE )
			{
				text = text_old;

				focus = 0;
			}
			else if ( KeyPressed( KEY_ENTER ) )
			{
				focus = 0;
			}
			else if( event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_BACKSPACE )
			{
				if( text.length() && type != DIALOG_ONLY_NUMBERS )
				{
					text.erase( text.length() - 1, 1 );
					
					Update_Text();
				}
			}
			else if( event.type == SDL_KEYDOWN && event.key.keysym.sym != SDLK_ESCAPE )
			{
				if( type != DIALOG_ONLY_NUMBERS ) 
				{
					if( event.key.keysym.unicode && text.length() < max_length )
					{
						if( type == DIALOG_ONLY_LETTERS )
						{
							string s;
							s.insert( (string::size_type)0, (string::size_type)1, (char)event.key.keysym.unicode );

							if( !is_valid_number( s ) )
							{
								text.insert( text.length(), s );
							}
						}
						else
						{
							text.insert( text.length(), 1, (char)event.key.keysym.unicode );
						}

						Update_Text();
					}
				}
				else
				{
					 if( KeyPressed( KEY_UP ) )
					 {
						text_number += 1;
					 }
					 else if( KeyPressed( KEY_DOWN ) )
					 {
						text_number -= 1;
					 }
					 else if( KeyPressed( KEY_LEFT ) )
					 {
						text_number -= 10;
					 }
					 else if( KeyPressed( KEY_RIGHT ) )
					 {
						text_number += 10;
					 }
					 else if( event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_PLUS )
					 {
						text_number += 1;
					 }
					 else if( event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_MINUS )
					 {
						text_number -= 1;
					 }
					 else if( event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_PAGEUP )
					 {
						text_number += 10;
					 }
					 else if( event.type == SDL_KEYDOWN && event.key.keysym.sym == SDLK_PAGEDOWN )
					 {
						text_number -= 10;
					 }

					 if( text_number > max_length )
					 {
						text_number = max_length;
					 }
					 else if( text_number < 0 )
					 {
						text_number = 0;
					 }

					 Update_Text();
				}
			}
		}
		
		Framerate.Update();
	}

	SDL_EnableUNICODE( 0 );
	SDL_EnableKeyRepeat( 0, 0 );

	if( text.compare( text_old ) != 0 ) 
	{
		changed = 1;
	}

	min_width = minwidth_old;
	
	Update_Text();

	Framerate.Reset();
}

void cDialog :: Set_Boardersize_out( Uint8 size )
{
	boarder_out = size;

	Update_Boarders();
}

void cDialog :: Set_Boardersize_in( Uint8 size )
{
	boarder_in = size;

	Update_Boarders();
}

void cDialog :: Additional_Textareasize( Uint8 size )
{
	text_area = size;

	Update_Boarders();
}

void cDialog :: SetColors( SDL_Color outer, SDL_Color inner, SDL_Color text_area, SDL_Color text  )
{
	boarder_out_color = outer;
	boarder_in_color = inner;
	text_area_color = text_area;
	text_color = text;

	Update_Text();
}

void cDialog :: Update_Boarders( void )
{
	unsigned int fwidth = rect.w;
	unsigned int fheight = rect.h;

	if( fheight < 26 )
	{
		fheight = 26;
	}

	if( fwidth < min_width )
	{
		fwidth = min_width;
	}


	rect_text_area.x = (Sint16)posx - text_area;
	rect_text_area.y = (Sint16)posy - text_area;
	rect_text_area.w = fwidth + text_area;
	rect_text_area.h = fheight + text_area;

	rect_boarder_in.x = rect_text_area.x - boarder_in;
	rect_boarder_in.y = rect_text_area.y - boarder_in;
	rect_boarder_in.w = rect_text_area.w + ( boarder_in * 2 );
	rect_boarder_in.h = rect_text_area.h + ( boarder_in * 2 );

	rect_boarder_out.x = rect_boarder_in.x - boarder_out;
	rect_boarder_out.y = rect_boarder_in.y - boarder_out;
	rect_boarder_out.w = rect_boarder_in.w + ( boarder_out * 2 );
	rect_boarder_out.h = rect_boarder_in.h + ( boarder_out * 2 );
}

void cDialog :: Update_Text( void )
{
	if( stext ) 
	{
		SDL_FreeSurface( stext );
		stext = NULL;
	}

	if( type == DIALOG_ONLY_NUMBERS ) 
	{
		char num_text[15];

		sprintf( num_text, "%d", text_number );
		text = num_text;
	}

	stext = TTF_RenderText_Shaded( font, text.c_str(), text_color, text_area_color );

	SetImage( stext, 1 );

	Update_Boarders();
}

SDL_Rect cDialog :: Get_Rect( void )
{
	SDL_Rect crect;
	
	unsigned int fwidth = rect.w;
	unsigned int fheight = rect.h;

	if( fheight < 26 )
	{
		fheight = 26;
	}

	if( fwidth < min_width )
	{
		fwidth = min_width;
	}

	crect.x = (int)posx - ( text_area + boarder_in + boarder_out );
	crect.y = (int)posy - ( text_area + boarder_in + boarder_out );
	crect.h = fheight + ( ( text_area + boarder_in + boarder_out ) * 2 );
	crect.w = fwidth + ( ( text_area + boarder_in + boarder_out ) * 2 );

	return crect;
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

cDialogManager :: cDialogManager( void )
{
	Objects.clear();
}

cDialogManager :: ~cDialogManager( void )
{
	DeleteAll();
}

void cDialogManager :: Add( double posx, double posy, string identifier, string ntext, DialogType dialogtype, int max_length, unsigned int min_width )
{
	cDialog *temp = new cDialog( posx, posy, identifier, ntext, dialogtype, max_length, min_width );
	
	Objects.push_back( temp );
}

void cDialogManager :: Delete( unsigned int num )
{
	if( num > Get_Size() )
	{
		return;
	}

	delete Objects[num];
	Objects[num] = NULL;

	Objects.erase( Objects.begin() + num );
}

bool cDialogManager :: Delete( string tidentifier )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( !Objects[i] )
		{
			continue;
		}
		
		if( Objects[i]->identifier.compare( tidentifier ) == 0 )
		{
			Delete( i );
			return 1;
		}
	}

	return 0;
}

int cDialogManager :: Get( string tidentifier )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( !Objects[i] )
		{
			continue;
		}
		
		if( Objects[i]->identifier.compare( tidentifier ) == 0 )
		{
			return i;
		}
	}

	return -1;
}

void cDialogManager :: Update( void )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( !Objects[i] )
		{
			continue;
		}

		Objects[i]->Update();
	
		if( !Objects[i]->visible ) // if Dialog has ended delete it
		{
			Delete( i );
		}
	}
}

void cDialogManager :: DeleteAll( void )
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

int cDialogManager :: Get_Collision( int x, int y )
{
	for( unsigned int i = 0; i < Get_Size(); i++ )
	{
		if( !Objects[i] )
		{
			continue;
		}
		
		if( Objects[i]->visible ) 
		{
			SDL_Rect rect1, rect2;

			rect1 = Objects[i]->Get_Rect();

			rect2.x = x;
			rect2.y = y;
			rect2.w = 1;
			rect2.h = 1;

			if( CollideBoundingBox( &rect1, &rect2 ) ) 
			{
				return i;
			}
		}
	}

	return -1;
}

unsigned int cDialogManager :: Get_Size( void )
{
	return Objects.size();
}
