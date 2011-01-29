/***************************************************************************
           preferences.h  -  Preference Engine Header
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

#ifndef __PREFERENCES_H__
#define __PREFERENCES_H__

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

#define PREF_VERSION "1.2"

#define PREF_NAME "preferences.ini"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

class cPreferences
{
public:
	cPreferences( void );
	~cPreferences( void );
	
	bool Load( void );
	void Save( void );
	void Default( void );
	 // Gets the settings from Current in-game Settings
	void Update( void );
	// Sets the settings to Current in-game Settings
	void Apply( void );

	bool Music, Sounds, Fullscreen, Joy_enabled;
	bool Lvleditor_automousehide, Backgroundimages_disabled;

	Uint16 Screen_W, Screen_H;
	Uint8 Bpp;

	// Keyboard key definitions
	SDLKey Key_up, Key_down, Key_left, Key_right, Key_shoot;
	// Joypad key definitions
	int Joy_shoot, Joy_jump, Joy_exit, Joy_item;

	string level_dir;

private:
	// Parses the command parts
	void Parse_Map( string command, int line );
	// Handles the command
	int HandleMessage( string *parts, unsigned int count, unsigned int line );
};

#endif
