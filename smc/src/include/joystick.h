/***************************************************************************
                joystick.h  -  header for the corresponding cpp file
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

#ifndef __JOYSTICK_H__
#define __JOYSTICK_H__

#include "globals.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#define MAX_BUTTONS 15

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cJoystick
{
public:
	cJoystick( void );
	~cJoystick( void );

	// Initialises the Joystick system
	int Init( void );
	// Closes the current Joystick
	void Close( void );

	// Opens the specified Joystick
	bool OpenStick( unsigned int index );
	// Closes the Stick
	void CloseStick( void );

	// Resets all Buttons and modifiers
	void Reset_keys( void );

	// Handles the Joystick events
	void Handle_Events( void );
	// Handles the Joystick Button Events
	void Handle_Button_Event( void );

	// Sets the given button state
	void SetButton( unsigned int button, bool pressed );

	bool Left( int nThreshold = 3000 );
	bool Right( int nThreshold = 3000 );
	bool Up( int nThreshold = 3000 );
	bool Down( int nThreshold = 3000 );


	bool Button( unsigned int button );

	SDL_Joystick *Joystick;

	int Buttons[MAX_BUTTONS];
	
	bool left, right, up, down, shoot, enter;

	int Threshold;
	int cur_stick;
	bool Opened;
	
	int num_buttons;
	int num_axes;
	int num_balls;

	bool Debug;
};


#endif
