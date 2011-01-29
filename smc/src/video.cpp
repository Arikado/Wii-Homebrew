/***************************************************************************
    video.cpp  -  internal video functions
                             -------------------
    copyright            : (C) 2003-2005 FluXy
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
#include "include/SDL_rotozoom.h"
#include "include/SDL_gfxprimitives.h"

Color :: Color( void )
{
	red = 0;
	green = 0;
	blue = 0;
	alpha = 255;
};

Color :: Color( Uint8 r, Uint8 g, Uint8 b, Uint8 a /* = 255 */ )
{
	red = r;
	green = g;
	blue = b;
	alpha = a;
};

void Color :: Parse( Uint32 mapcolor, SDL_PixelFormat *format )
{
	if( !format )
	{
		return;
	}

	SDL_GetRGBA( mapcolor, format, &red, &green, &blue, &alpha );
}

Uint32 Color :: Get( SDL_PixelFormat *format )
{
	if( !format )
	{
		return 0;
	}

	return SDL_MapRGBA( format, red, green, blue, alpha );
}

bool Color :: Compare( Uint32 mapcolor, SDL_PixelFormat *format )
{
	if( !format )
	{
		return 0;
	}

	Color color_2;
	color_2.Parse( mapcolor, format );

	return Compare( color_2 );
}

bool Color :: Compare( const Color c )
{
	return red == c.red && green == c.green && blue == c.blue && alpha == c.alpha;
}

bool Color :: operator == ( const Color c ) const
{
	return red == c.red && green == c.green && blue == c.blue && alpha == c.alpha;
}

bool Color :: operator == ( const SDL_Color c ) const
{
	return red == c.r && green == c.g && blue == c.b;
}

void Toggle_Fullscreen( void )
{
#ifdef WIN32
	Uint32 flags = screen->flags;
	flags ^= SDL_FULLSCREEN;
	Uint8 bpp = screen->format->BitsPerPixel;
	int w = screen->w;
	int h = screen->h;
	SDL_FreeSurface( screen );
	screen = SDL_SetVideoMode( w, h, bpp, flags );
#else
	// unfortunately, this command doesn't work for non-X11 platforms:
	SDL_WM_ToggleFullScreen( screen );
#endif
}

SDL_Surface *LoadImage( string filename, double rotation /* = 0 */ )
{
	string filenametemp;
	
	ifstream ifs( filename.c_str(), ios::in );
	
	if( !ifs )
	{
		filenametemp.insert( 0, filename );
		filenametemp.insert( 0, "/" );
		filenametemp.insert( 0, PIXMAPS_DIR );

		ifs.open( filenametemp.c_str(), ios::in );
		
		if( !ifs )
		{
			printf( "Loading file failed : %s\nAlso not found in : %s\n", filename.c_str(), filenametemp.c_str() );
			return NULL;
		}
		ifs.close();
	}
	else
	{
		filenametemp = filename;
		ifs.close();
	}
	
	SDL_Surface *image, *temp;
	
	temp = IMG_Load( filenametemp.c_str() );
	
	if( !temp )
	{
		printf( "Error loading file : %s\nReason : %s\n", filenametemp.c_str(), SDL_GetError() );
		return NULL;
	}
	
	SDL_SetAlpha( temp, SDL_SRCALPHA | SDL_RLEACCEL, SDL_ALPHA_OPAQUE );
	image = SDL_DisplayFormatAlpha( temp );
		
	if( !image )
	{
		printf( "Error Displayformat returned NULL : %s\nReason : %s\n", filenametemp.c_str(), SDL_GetError() );
		return NULL;
	}

	SDL_FreeSurface( temp );
	
	// if rotation is set
	if( rotation > 0 )
	{
		temp = rotozoomSurface( image, rotation, 1, 0 );

		if( !temp )
		{
			printf( "Error Surface Rotation returned NULL : %s\nReason : %s\n", filenametemp.c_str(), SDL_GetError() );
		}
		else
		{
			SDL_FreeSurface( image );
			image = temp;
		}
	}

	return image;
}

SDL_Surface *GetImage( string filename, double rotation /* = 0 */ )
{
	/*if( filename.find( PIXMAPS_DIR ) == string::npos ) 
	{
		filename.insert( 0, "/" );
		filename.insert( 0, PIXMAPS_DIR );
	}*/

	string filename_final = filename;

	// if rotation is set
	if( rotation > 0 )
	{
		filename_final.insert( filename_final.find_last_of( "." ), "_" );
		filename_final.insert( filename_final.find_last_of( "." ), int_to_string( (int)rotation ) );
	}

	SDL_Surface *image = pImageManager->Get_Pointer( filename_final );

	if( image )
	{
		return image;
	}

	image = LoadImage( filename, rotation );

	pImageManager->Add( image, filename_final );
	
	return image;
}

SDL_Surface *MakeSurface( unsigned int width, unsigned int height, bool hardware )
{
    Uint32 rmask, gmask, bmask, amask;
	
	#if SDL_BYTEORDER == SDL_BIG_ENDIAN
		rmask = 0xff000000;
		gmask = 0x00ff0000;
		bmask = 0x0000ff00;
		amask = 0x000000ff;
	#else
		rmask = 0x000000ff;
		gmask = 0x0000ff00;
		bmask = 0x00ff0000;
		amask = 0xff000000;
	#endif
	
	SDL_Surface *image, *temp;
	
	if( hardware )
	{
		temp = SDL_CreateRGBSurface( SDL_HWSURFACE | SDL_SRCCOLORKEY | SDL_SRCALPHA, width, height, screen->format->BitsPerPixel, rmask, gmask, bmask, amask );
	}
	else
	{
		temp = SDL_CreateRGBSurface( SDL_SWSURFACE | SDL_SRCCOLORKEY | SDL_SRCALPHA, width, height, screen->format->BitsPerPixel, rmask, gmask, bmask, amask );
	}

	if( !temp )
	{
		printf( "Error : Creating image failed\nReason : %s\n", SDL_GetError() );
		return NULL;
	}

	SDL_SetAlpha( temp, SDL_SRCALPHA | SDL_RLEACCEL, SDL_ALPHA_OPAQUE );
	image = SDL_DisplayFormatAlpha( temp );

	if( !image )
	{
		printf( "Error : Displayformat returned NULL\nReason : %s\n", SDL_GetError() );
		return NULL;
	}

	SDL_FreeSurface( temp );
	
	return image;
}

Uint32 SDL_GetPixel( SDL_Surface *surface, Sint16 x, Sint16 y )
{
	if( !surface || x < 0 || x >= surface->w || y < 0 || y >= surface->h )
	{
		return 0;
	}

	switch( surface->format->BytesPerPixel ) 
	{
		case 1: { /* Assuming 8-bpp */
			return *((Uint8 *)surface->pixels + y * surface->pitch + x);
		}
		break;

		case 2: { /* Probably 15-bpp or 16-bpp */
			return *((Uint16 *)surface->pixels + y * surface->pitch/2 + x);
		}
		break;

		case 3: { /* Slow 24-bpp mode, usually not used */
			Uint8 *pix;
			int shift;
			Uint32 color=0;

			pix = (Uint8 *)surface->pixels + y * surface->pitch + x*3;
			shift = surface->format->Rshift;
			color = *(pix+shift/8)<<shift;
			shift = surface->format->Gshift;
			color|= *(pix+shift/8)<<shift;
			shift = surface->format->Bshift;
			color|= *(pix+shift/8)<<shift;
			shift = surface->format->Ashift;
			color|= *(pix+shift/8)<<shift;
			return color;
		}
		break;

		case 4: { /* Probably 32-bpp */
			return *( (Uint32 *)surface->pixels + y * surface->pitch / 4 + x );
		}
		break;
	}
	return 0;
}

void SDL_PutPixel( SDL_Surface *surface, Sint16 x, Sint16 y, Uint32 color )
{
	if( x < 0 || x >= surface->w || y < 0 || y >= surface->h )
	{
		return;
	}

	switch( surface->format->BytesPerPixel ) 
	{
		case 1: { /* Assuming 8-bpp */
			*( (Uint8 *)surface->pixels + y * surface->pitch + x ) = color;
		}
		break;

		case 2: { /* Probably 15-bpp or 16-bpp */
			*( (Uint16 *)surface->pixels + y * surface->pitch/2 + x ) = color;
		}
		break;

		case 3: { /* Slow 24-bpp mode, usually not used */
			Uint8 *pix = (Uint8 *)surface->pixels + y * surface->pitch + x * 3;

  			/* Gack - slow, but endian correct */
			*(pix+surface->format->Rshift/8) = color>>surface->format->Rshift;
  			*(pix+surface->format->Gshift/8) = color>>surface->format->Gshift;
  			*(pix+surface->format->Bshift/8) = color>>surface->format->Bshift;
			*(pix+surface->format->Ashift/8) = color>>surface->format->Ashift;
		}
		break;

		case 4: { /* Probably 32-bpp */
			*( (Uint32 *)surface->pixels + y * surface->pitch / 4 + x ) = color;
		}
		break;
	}
}

void SDL_ReplaceColor( SDL_Surface *surface, Uint32 search_color, Uint32 new_color )
{
	if( !surface )
	{
		return;
	}

	Uint32 color;

	for( int w = 0; w < surface->w; w++ )
	{
		for( int h = 0; h < surface->h; h++ )
		{
			color = SDL_GetPixel( surface, w, h );
			
			if( color == search_color )
			{
				SDL_PutPixel( surface, w, h, new_color );
			}
		}
	}
}

SDL_Surface *SDL_Copy( SDL_Surface *surface )
{
	if( !surface )
	{
		return NULL;
	}

	return SDL_ConvertSurface( surface, surface->format, surface->flags );
}


void LockSurface( SDL_Surface *surface )
{
	if( SDL_MUSTLOCK( surface ) )
	{
		if( SDL_LockSurface( surface ) == -1 )
		{
			printf( "Warning : Couldn't lock Surface\n" );
		}
	}
}

void UnlockSurface( SDL_Surface *surface )
{
	if( SDL_MUSTLOCK( surface ) )
	{
		SDL_UnlockSurface( surface );
	}
}


SDL_Surface *Auto_resize( SDL_Surface *image, Sint16 height, Sint16 width, bool only_downsize /* = 1 */ )
{
	SDL_Surface *final = NULL;

	int img_w = 0;
	int img_h = 0;

	if( image ) 
	{
		img_w = image->w;
		img_h = image->h;

		if( only_downsize && image->h <= height && image->w <= width ) // No Resize
		{
			final = SDL_Copy( image );
		}
		else	// Resize the image
		{
			double zoom = (double)width / (double)image->w;

			if( (double)height / (double)image->h < zoom )
			{
				zoom = (double)height / (double)image->h;
			}

			final = zoomSurface( image, zoom, zoom, 0 );
		}
	}
	else if( Game_debug )
	{
		printf( "Warning : image for resizing is empty\n" );
	}

	return final;
}

void DrawShadowedBox( SDL_Surface *dst, Sint16 x, Sint16 y, Sint16 w, Sint16 h, Uint8 r, Uint8 g, Uint8 b, Uint8 alpha, Uint8 shadowsize )
{
	boxRGBA( dst, x, y, x + w, y + h, r, g, b, alpha );
	
	if( !shadowsize )
	{
		return;
	}

	if( alpha < 255 )
	{
		if( alpha * 2 > 255 )
		{
			alpha = 255;
		}
		else
		{
			alpha *= 2;
		}
	}
	
	boxRGBA( dst, x + w + 1, y + 1, x + w + shadowsize, y + h, r/2, g/2, b/2, alpha );
	boxRGBA( dst, x + 1, y + h + 1, x + w + shadowsize, y + h + shadowsize, 0 + r/2, g/2, b/2, alpha );
}

void DrawEffect( FadeoutEffect effect, double speed )
{
	if( effect == RANDOM_EFFECT )
	{
		effect = (FadeoutEffect)( ( rand() % (TOTAL_FADE_EFFECTS - 1) ) + 1 );
	}

	switch( effect )
	{
	case BLACK_FADEOUT : // Complete Screen gets more and more darker
	{
		SDL_Surface *screen_copy = SDL_Copy( screen );

		if( !screen_copy )
		{
			printf( "Error : could not create screen copy for fading.\nReason : %s\n", SDL_GetError() );
			return;
		}

		SDL_Surface *black_surface = SDL_Copy( screen );

		if( !black_surface )
		{
			printf( "Error : Could not create black surface for fading.\nReason : %s\n", SDL_GetError() );
			return;
		}

		SDL_FillRect( black_surface, NULL, 0 );

		for( double i = 1; i > 0; i -= speed * Framerate.speedfactor/50 )
		{
			SDL_SetAlpha( black_surface, SDL_SRCALPHA, (Uint8)( 255 - (255 * i) ));

			SDL_BlitSurface( screen_copy, NULL, screen, NULL );
			SDL_BlitSurface( black_surface, NULL, screen, NULL );

			SDL_Flip( screen );

			Framerate.Update();
		}

		SDL_FreeSurface( screen_copy );
		SDL_FreeSurface( black_surface );
		break;
	}
	case HORIZONTAL_FADE : // Big black lines from right and left
	{
		SDL_Rect Rct;
		Uint16 pos = 0;
		Rct.x = 0;
		Rct.y = 0;
		Rct.w = 1;
		Rct.h = screen->h;

		while( pos < (unsigned int)( screen->w/2 ) )
		{
			Rct.w = (Uint16)( Framerate.speedfactor*18 );

			if( Rct.w < 1 )
			{
				Rct.w = 1;
			}
			
			Rct.x = pos;
			pos += Rct.w;

			SDL_FillRect( screen, &Rct, 0 );

			Rct.x = screen->w - Rct.x - Rct.w;

			SDL_FillRect( screen, &Rct, 0 );
			SDL_Flip( screen );

			Framerate.Update();
		}
		break;
	}
	case VERTICAL_FADE : // Big black lines from up and down
	{
		SDL_Rect rect;
		Uint16 pos = 0;
		rect.x = 0;
		rect.y = 0;
		rect.w = screen->w;
		rect.h = 1;

		while( pos < (unsigned int)( screen->h/2 ) )
		{
			rect.h = (Uint16)( Framerate.speedfactor*12 );

			if( rect.h < 1 )
			{
				rect.h = 1;
			}
			
			rect.y = pos;
			pos += rect.h;

			SDL_FillRect( screen, &rect, 0 );

			rect.y = screen->h - rect.y - rect.h;

			SDL_FillRect( screen, &rect, 0 );
			SDL_Flip( screen );

			Framerate.Update();
		}
		break;
	}
	case WISHY_WASHY_PIXELATION : // Wishy Washy Pixelation ;)
	{
		int f = 0;
		double i = (double)( screen->w * screen->h );
		int fspeed = (int)( speed * 10000 );

		while( i > ( f * Framerate.speedfactor ) )
		{
			for( int g = 0;g < fspeed;g++ )
			{
				int x = (int)rand() % ( screen->w );
				int y = (int)rand() % ( screen->h );

				LockSurface( screen );
				Uint32 Pixel = SDL_GetPixel( screen, x, y );
				UnlockSurface( screen );
				
				LockSurface( screen );

				SDL_PutPixel( screen, x + 1, y, Pixel );
				SDL_PutPixel( screen, x - 1, y, Pixel );
				
				SDL_PutPixel( screen, x + 1, y + 1, Pixel );
				SDL_PutPixel( screen, x - 1, y - 1, Pixel );

				SDL_PutPixel( screen, x + 1, y - 1, Pixel );
				SDL_PutPixel( screen, x - 1, y + 1, Pixel );

				SDL_PutPixel( screen, x - 1, y + 1, Pixel );
				SDL_PutPixel( screen, x + 1, y - 1, Pixel );

				SDL_PutPixel( screen, x, y + 1, Pixel );
				SDL_PutPixel( screen, x, y - 1, Pixel );

				UnlockSurface( screen );

				f++;
			}

			SDL_Flip( screen );
			
			Framerate.Update();
			CorrectFrameTime( DESIRED_FPS );
		}
		
		break;
	}
	case RANDOM_RECTANGLE_PIXELATION : // Random Rectangle Pixelation
	{
		double f = 0;
		double i = (double)( ( screen->w * screen->h ) / 11000 );
		
		double xwidth = 8;

		SDL_Rect Rct;

		while( i > f )
		{
			xwidth += 1.1 * Framerate.speedfactor;

			for( unsigned int g = 0; g < 2000; g++ )
			{
				Rct.x = (Sint16)rand() % ( screen->w );
				Rct.y = (Sint16)rand() % ( screen->h );
				
				Rct.w = (Uint16)xwidth;
				Rct.h = (Uint16)xwidth;

				LockSurface( screen );
				Uint32 Pixel = SDL_GetPixel( screen, Rct.x, Rct.y );
				UnlockSurface( screen );

				Rct.x -= (Sint16)( xwidth/2 );
				Rct.y -= (Sint16)( xwidth/2 );
				
				SDL_FillRect( screen, &Rct, Pixel );
			}
			
			f += Framerate.speedfactor;

			SDL_Flip( screen );

			Framerate.Update();
		}
		break;
	}
	case TILE_PIXELATION: // tile-like
	{
		// needs speedfcator adjusments and the size in double ( replace rect )
		const unsigned int num_hor = 12;
		const unsigned int num_ver = 9;
		unsigned int num = num_hor * num_ver;

		bool grid[num_ver][num_hor];

		for( unsigned int i = 0; i < num_ver; i++ )
		{
			for( unsigned int j = 0; j < num_hor; j++ )
			{
				grid[i][j] = 1;
			}
		}
		
		unsigned int select_x = 0, select_y = 0;
		unsigned int temp;
		SDL_Rect dest = { 0, 0, screen->w / num_hor, screen->h / num_ver };
		
		for( unsigned int i = 0; i < num; i++ )
		{
			while( grid[select_y][select_x] == 0 )
			{
				temp = rand()%( num );

				select_y = temp / num_hor;
				select_x = temp % num_hor;
			}

			grid[select_y][select_x] = 0;
			dest.x = select_x * dest.w;
			dest.y = select_y * dest.h;
			
			SDL_FillRect( screen, &dest, 0 );
			SDL_Flip( screen );

			Framerate.Update();
		}
		break;
	}
	case SLIDER_FADE: // Slider to the right or downwards
	{

		SDL_Rect temp_rect = { 0, 0, 0, 0 };
		SDL_Rect temp2_rect = { 0, 0, 0, 0 };
		SDL_Rect temp2_src = { 0, 0, 0, 0 };

		SDL_Surface *temp = SDL_Copy( screen );

		if( !temp )
		{
			printf( "Error : could not create screen copy for slider effect.\nReason : %s\n", SDL_GetError() );
			return;
		}

		double xpos = 0;
		double ypos = 0;

		unsigned int direction = (unsigned int)(rand() % (2)) + 1;
		
		temp_rect.w = (Uint16)temp->w;
		temp_rect.h = (Uint16)temp->h;

		if( direction == 1 ) // right
		{
			temp2_rect.x = temp->w;
			temp2_rect.h = temp->h;
			temp2_rect.w = 1;
			temp2_src.x = temp->w - 1;
			temp2_src.w = 1;
			temp2_src.h = temp->h;
		}
		else // down
		{
			temp2_rect.y = temp->h;
			temp2_rect.w = temp->w;
			temp2_rect.h = 1;
			temp2_src.y = temp->h - 1;
			temp2_src.w = temp->w;
			temp2_src.h = 1;
		}

		Framerate.Update();

		while( direction )
		{
			if( direction == 1 ) // right
			{
				xpos -= Framerate.speedfactor*20;

				if( (int)xpos < -screen->w )
				{
					direction = 0;
				}
			}
			else // down
			{
				ypos -= Framerate.speedfactor*20;

				if( (int)ypos < -screen->h )
				{
					direction = 0;
				}
			}

			for( unsigned int i = 0; i < (unsigned int)(Framerate.speedfactor*20); i++ )
			{
				SDL_BlitSurface( temp, &temp2_src, screen, &temp2_rect );

				if( direction == 1 ) // right
				{
					temp2_rect.x--;
				}
				else
				{
					temp2_rect.y--;
				}
			}

			temp_rect.x = (Sint16)xpos;
			temp_rect.y = (Sint16)ypos;

			SDL_BlitSurface( temp, NULL, screen, &temp_rect );

			SDL_Flip( screen );

			Framerate.Update();
		}
	
		SDL_FreeSurface( temp );
		break;
	}
	case FIXED_RECTANGLE_PIXELATION : // Fixed Rectangle Pixelation (SMW style)
	{
		double xsize = 4.5;
		int xtemp = 0;
		Uint16 xpos = 0;
		Uint16 ypos = 0;

		SDL_Rect Rct;
		
		SDL_Surface *temp = SDL_Copy( screen );

		if( !temp )
		{
			printf( "Error : could not create screen copy for rectangle pixelation.\nReason : %s\n", SDL_GetError() );
			return;
		}

		Framerate.Update();

		while( xsize < 45 )
		{
			xsize += Framerate.speedfactor * 2.2;

			if( xtemp < (int)xsize )
			{
				xpos = (Uint16)( rand() % (unsigned int)xsize ) + 1;
				ypos = (Uint16)( rand() % (unsigned int)xsize ) + 1;
				xtemp = (int)xsize + 1;
			}

			for( unsigned int g = xpos; g < (unsigned int)screen->w; g += (unsigned int)xtemp )
			{
				for( unsigned int y = ypos; y < (unsigned int)screen->h; y += (unsigned int)xtemp )
				{
					Rct.x = g;
					Rct.y = y;
					
					Rct.w = (Uint16)xtemp;
					Rct.h = (Uint16)xtemp;

					LockSurface( temp );
					Uint32 Pixel = SDL_GetPixel( temp, Rct.x ,Rct.y );
					UnlockSurface( temp );
					
					Rct.x -= 2 + (Sint16)( xtemp/2 );
					Rct.y -= 2 + (Sint16)( xtemp/2 );
					
					SDL_FillRect( screen, &Rct, Pixel );
				}
			}

			SDL_Flip( screen );

			Framerate.Update();
		}

		SDL_FreeSurface( temp );
		
		
		break;
	}
	case RANDOM_EFFECT:
	case TOTAL_FADE_EFFECTS:
		break;  // just here to keep compiler happy
	}
	
	Framerate.Update();
}
