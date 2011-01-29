/***************************************************************************
                main.h  -  header for the corresponding cpp file
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

#ifndef __MAIN_H__
#define __MAIN_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

void StartGame( string file_name = "" );
void ExitGame( void );

void ProcessEvents( void );
void ProcessInput( void );

void UpdateGame( void );

void KeyUp( SDLKey key );
void KeyDown( SDLKey key );
void KeyDown_Level( SDLKey key );

#endif
