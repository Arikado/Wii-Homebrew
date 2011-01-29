/***************************************************************************
			mouse.h  -  header for the corresponding cpp file
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

#ifndef __MOUSE_H__
#define __MOUSE_H__

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cMouseCursor : public cSprite
{
public:
	cMouseCursor( double x, double y );
	virtual ~cMouseCursor( void );

	// Checks if the Mousecursor is in the Rect
	bool CollsionCheck ( SDL_Rect *rect );

	// Checks for a Collision in the Leveleditor
	bool Leveleditor_CollsionCheck ( double x, double y );

	// Updates the Mousecursor
	virtual void Update( void );
	// Updates the Mouse Position
	void Update_Position( void );
	// Updates the Double Click event
	void Update_Doubleclick( void );
	// Updates the Mouseobject position
	void MouseObject_Update( void );

	// The user double clicked
	void Double_Click( void );

	// Sets the active Object
	void Set_Active( unsigned int type, unsigned int number );
	// Resets the active Object
	void Reset_Active( void );

	// Copies the Object
	void Copy( cSprite *nCopyObject, double x, double y );
	// Deletes the current colliding Object
	void Delete( void );

	// Draws lines around the currently hoverd Object
	void Draw_HoveredObject( void );

	// Updates the Mover Mode
	void Mover_Update( Sint16 move_x, Sint16 move_y );
	// Updates the Leveleditor Mouse
	void Leveleditor_Update( void );
	
	// The image if in mover mode
	SDL_Surface *Mover_mouse;
	
	// The Hoverobject Rect
	SDL_Rect HoveredObject;
	
	// if activated the mouscursor movement moves the screen	
	bool mover_mode;

	// The currently colliding Object
	cSprite *MouseObject;

	// The Object selected for copying
	cSprite *CopyObject;

	// The Additional Mouse Object Position
	int mouse_W, mouse_H;

	// The Pressed Buttons
	bool MousePressed_left, MousePressed_right;

	// fastcopy mode
	bool fastCopyMode;

	// The counter for catching double-clicks
	double clickcounter;

	// The Active Object information
	int active_type, active_number;
};

#endif
