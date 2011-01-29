/***************************************************************************
			img_manager.cpp  -  Image Handler/Manager
                              -------------------
    copyright            :	(C) 2003-2005 by FluXy
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

cImageManager :: cImageManager( void )
{
	load_count = 0;
}

cImageManager :: ~cImageManager( void )
{
	DeleteAll();
}

SDL_Surface *cImageManager :: Get_Pointer( string nPath )
{
	for( unsigned int i = 0; i < ImageItems.size(); i++ )
	{
		if( ImageItems[i].Path.compare( nPath ) == 0 )
		{
			return ImageItems[i].Item;	// the first found
		}
	}

	return NULL; // not found
}

SDL_Surface *cImageManager :: Get_Pointer( unsigned int identifier )
{
	if( load_count > identifier ) 
	{
		for( unsigned int i = 0; i < ImageItems.size(); i++ )
		{
			if( ImageItems[i].CountId == identifier ) 
			{
				return ImageItems[i].Item;
			}
		}
	}

	return NULL; // not found
}

SDL_Surface *cImageManager :: Get_Pointer_array( unsigned int nId )
{
	if( Get_Size() > nId && ImageItems[nId].Item )
	{
		return ImageItems[nId].Item;
	}

	return NULL; // not found
}

SDL_Surface *cImageManager :: Copy( string nPath )
{
	for( unsigned int i = 0; i < ImageItems.size(); i++ )
	{
		if( ImageItems[i].Path.compare( nPath ) == 0 )	// The first match
		{
			return SDL_Copy( ImageItems[i].Item );
		}
	}

	return NULL; // not found
}

string cImageManager :: Get_Path( SDL_Surface *nItem )
{
	for( unsigned int i = 0; i < ImageItems.size(); i++ )
	{
		if( ImageItems[i].Item == nItem )
		{
			return ImageItems[i].Path; // the first found
		}
	}

	return ""; // not found
}

string cImageManager :: Get_Path( unsigned int identifier )
{
	if( load_count >= identifier ) 
	{
		for( unsigned int i = 0; i < ImageItems.size(); i++ )
		{
			if( ImageItems[i].CountId == identifier ) 
			{
				return ImageItems[i].Path;
			}
		}
	}

	return ""; // not found
}

const char *cImageManager :: Get_PathC( SDL_Surface *nItem )
{
	for( unsigned int i = 0; i < ImageItems.size(); i++ )
	{
		if( ImageItems[i].Item == nItem )
		{
			return ImageItems[i].Path.c_str(); // the first found
		}
	}

	return NULL; // not found
}

const char *cImageManager :: Get_PathC( unsigned int identifier )
{
	if( load_count > identifier ) 
	{
		for( unsigned int i = 0; i < ImageItems.size(); i++ )
		{
			if( ImageItems[i].CountId == identifier ) 
			{
				return ImageItems[i].Path.c_str();
			}
		}
	}

	return NULL; // not found
}

unsigned int cImageManager :: Get_Size( void )
{
	return ImageItems.size();
}

void cImageManager :: Add( SDL_Surface *nimage, string nfilename )
{
	load_count++;

	ImageItem nitem;
	nitem.Item = nimage;
	nitem.Path = nfilename;
	nitem.CountId = load_count;

	ImageItems.push_back( nitem );
}

void cImageManager :: ReloadImages( unsigned int step )
{
	if( step == 1 ) // only delete
	{
		DeleteImages();
		return;
	}

	if( step == 2 ) // Loads the images
	{
		for( unsigned int i = 0; i < ImageItems.size(); i++ )
		{
			if( !ImageItems[i].Item && ImageItems[i].Path.length() > 4 ) 
			{
				ImageItems[i].Item = LoadImage( ImageItems[i].Path );

				if( !ImageItems[i].Item  )
				{
					printf( "Error loading file : %s\n", ImageItems[i].Path.c_str() );
				}
			}
		}

		return;
	}

	if( !step ) // Complete Reload
	{
		ReloadImages( 1 );
		ReloadImages( 2 );
	}
}



void cImageManager :: DeleteImages( void )
{
	for( unsigned int i = 0; i < ImageItems.size(); i++ )
	{
		if( ImageItems[i].Item ) 
		{
			SDL_FreeSurface( ImageItems[i].Item );
			ImageItems[i].Item = NULL;
		}
	}
}



void cImageManager :: DeleteAll( void )
{
	DeleteImages();

	ImageItems.clear();
}

