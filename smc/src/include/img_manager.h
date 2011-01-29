/***************************************************************************
                img_manager.h  -  header for the corresponding cpp file
                             -------------------
    copyright            :  (C) 2003-2005 by FluXy

	version				 : 1.8
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 


#ifndef __IMG_MANAGER_H__
#define __IMG_MANAGER_H__

#include "globals.h"


/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

// The Imageitem Structure
struct ImageItem 
{
	SDL_Surface *Item;
	string Path;
	unsigned int CountId;
};

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

typedef vector<ImageItem> ImageList;

class cImageManager
{
public:	
	cImageManager( void );
	~cImageManager( void );

	// Returns the Surface
	SDL_Surface *Get_Pointer( string nPath );
	SDL_Surface *Get_Pointer( unsigned int identifier );
	SDL_Surface *Get_Pointer_array( unsigned int identifier );

	// Returns the copied image
	SDL_Surface *Copy( string nPath );

	// Returns the image Path in a string
	string Get_Path( SDL_Surface *nItem );
	string Get_Path( unsigned int identifier );

	// Returns the image Path in a char*
	const char *Get_PathC( SDL_Surface *nItem );
	// Returns the image Path in a char*
	const char *Get_PathC( unsigned int identifier );

	/*	
	 *	Returns the Current Size/Count of the Items
	 */
	unsigned int Get_Size( void );

	/*	Adds an Image
	 *	Should always have a Path
	 */
	void Add( SDL_Surface *nItem, string nPath );

	SDL_Surface *operator [] ( unsigned int identifier )
	{
		return Get_Pointer( identifier );
	}
	
	SDL_Surface *operator [] ( string nPath )
	{
		return Get_Pointer( nPath );
	}
	
	string operator [] ( SDL_Surface *nItem )
	{
		return Get_Path( nItem );
	}

	/**
	* Call this function to reload all images.
	*
	* step: 0 = complete reload
	*       1 = only delete bitmap surfaces
	*       2 = only load the bitmap surfaces
	*/
	void ReloadImages( unsigned int step = 0 );

	/**
	* Frees all bitmap surfaces, but keep ImageItems vector entries
	*/
	void DeleteImages( void );

	/**
	* Deletes all ImageItems completely.
	*/
	void DeleteAll( void );

private:
	// The images loaded since initialization
	unsigned int load_count;
	// The ImageItems Array
	ImageList ImageItems;
};

#endif
