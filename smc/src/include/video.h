/***************************************************************************
			audio.h  -  header for the corresponding cpp file
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

#include "globals.h"

#ifndef __VIDEO_H__
#define __VIDEO_H__


/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// Color handler
struct Color
{
	Color( void );
	Color( Uint8 r, Uint8 g, Uint8 b, Uint8 a = 255 );

	void Parse( Uint32 mapcolor, SDL_PixelFormat *format );
	Uint32 Get( SDL_PixelFormat *format );

	bool Compare( Uint32 mapcolor, SDL_PixelFormat *format );
	bool Compare( const Color c );


	bool operator == ( const Color c ) const;
	bool operator == ( const SDL_Color c ) const;

	Uint8 red, green, blue, alpha;
};

// Toggle fullscreen video mode with windowed.
void Toggle_Fullscreen( void );

/* Loads an image directly and returns a pointer to it.
 * The returned image can be deleted.
 * if rotation is set the image will also get rotated
 */
SDL_Surface* LoadImage( string filename, double rotation = 0 );

/* Checks if the image was already loaded and returns a pointer to it
 * else it will be loaded.
 * The returned image should not be deleted or modified.
 * if rotation is set the image will be rotated and will have the
 * rotation size in the filename e.g image_180.png for 180
 */
SDL_Surface* GetImage( string filename, double rotation = 0 );

/*	Creates a new Surface and sets it to the displayformat
 */ 
SDL_Surface* MakeSurface( unsigned int width, unsigned int height, bool hardware = 0 );

// Gets the Pixel color
Uint32 SDL_GetPixel( SDL_Surface *surface, Sint16 x, Sint16 y );
// Puts a single Pixel with the color
void SDL_PutPixel( SDL_Surface *Surface, Sint16 x, Sint16 y, Uint32 color );
// Replaces all pixels with the search color with the given new color
void SDL_ReplaceColor( SDL_Surface *surface, Uint32 search_color, Uint32 new_color );
// Returns a completely copied surface
SDL_Surface *SDL_Copy( SDL_Surface *surface );

// Locks the given surface
void LockSurface( SDL_Surface *surface );
// Unlocks the given surface
void UnlockSurface( SDL_Surface *surface );

/* Automatically resizes the image if it's bigger as the given size
 * or always resizes if only_downsize is set to false
*/
SDL_Surface *Auto_resize( SDL_Surface *image, Sint16 height, Sint16 width, bool only_downsize = 1 );

// Draws a Shadowed Box
void DrawShadowedBox( SDL_Surface * dst, Sint16 x, Sint16 y, Sint16 w, Sint16 h, Uint8 r, Uint8 g, Uint8 b, Uint8 alpha, Uint8 shadowsize );

// Draws a defined or if effect is RANDOM_EFFECT a random effect will be selected
void DrawEffect( FadeoutEffect effect = RANDOM_EFFECT, double speed = 1 );

#endif
