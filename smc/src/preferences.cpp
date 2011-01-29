/***************************************************************************
           preferences.cpp  -  Preferences Loader :)
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


// ##################### Public #########################

cPreferences :: cPreferences( void )
{
	Default();
}

cPreferences :: ~cPreferences( void )
{
	//
}

bool cPreferences :: Load( void )
{
	Default();
	
	if( !valid_file( PREF_NAME ) )
	{
		printf( "No Preferences found\n" );
		return 0;
	}

	ifstream ifs( PREF_NAME, ios::in );
	
	if( !ifs )
	{
		printf( "Couldn't open preferences file : %s\n", PREF_NAME );
		return 0;
	}
	else
	{
		char contents[500];

		for( unsigned int i = 0; ifs.getline( contents, sizeof( contents ) ); i++ )
		{
			Parse_Map( contents, i );
		}

		ifs.close();
	}

	return 1;
}

void cPreferences :: Save( void )
{
	Update();

	ofstream ofs( PREF_NAME, ios::out | ios::trunc );

	char row[300];

	sprintf( row, "### Preferences file V.%s from %s V.%s #### \n\n", PREF_VERSION, CAPTION, VERSION );
	ofs.write( row, strlen( row ) );

	// Screen Settings
	sprintf( row, "# Screen : \n" );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Fullscreen %d\n", Fullscreen );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Screen_H %d\n", Screen_H );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Screen_W %d\n", Screen_W );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Bpp %d\n", Bpp );
	ofs.write( row, strlen( row ) );

	sprintf( row, "\n" );
	ofs.write( row, strlen( row ) );

	// Audio Settings
	sprintf( row, "# Audio : \n" );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Music %d\n", Music );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Sounds %d\n", Sounds );
	ofs.write( row, strlen( row ) );

	sprintf( row, "\n" );
	ofs.write( row, strlen( row ) );

	// Keyboard Settings
	sprintf( row, "# Keyboard : \n" );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Key_up %d\n", (int)Key_up );
	ofs.write( row, strlen(row ) );

	sprintf( row, "Key_down %d\n", (int)Key_down );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Key_left %d\n", (int)Key_left );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Key_right %d\n", (int)Key_right );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Key_shoot %d\n", (int)Key_shoot );
	ofs.write( row, strlen( row ) );

	sprintf( row, "\n" );
	ofs.write( row, strlen( row ) );

	// Joystick Settings
	sprintf( row, "# Joystick : \n" );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Joy_enabled %d\n", Joy_enabled );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Joy_jump %d\n", Joy_jump );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Joy_item %d\n", Joy_item );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Joy_shoot %d\n", Joy_shoot );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Joy_exit %d\n", Joy_exit );
	ofs.write( row, strlen( row ) );

	sprintf( row, "\n" );
	ofs.write( row, strlen( row ) );

	// Special Settings
	sprintf( row, "# Special : \n" );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Background_images_disabled %d\n", Backgroundimages_disabled );
	ofs.write( row, strlen( row ) );

	sprintf( row, "\n" );
	ofs.write( row, strlen( row ) );

	// Leveleditor Settings
	sprintf( row, "# Leveleditor : \n" );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Hide_Mousecursor_automatically %d\n", Lvleditor_automousehide );
	ofs.write( row, strlen( row ) );

	sprintf( row, "\n" );
	ofs.write( row, strlen( row ) );

	// Directory settings
	sprintf( row, "# Directories : \n" );
	ofs.write( row, strlen( row ) );

	sprintf( row, "level_dir %s\n", level_dir.c_str() );
	ofs.write( row, strlen( row ) );

	sprintf( row, "\n" );
	ofs.write( row, strlen( row ) );

	ofs.close();
}

void cPreferences :: Default( void )
{
	Fullscreen = 1;

	Screen_H = 600;
	Screen_W = 800;
	
	Bpp = 32;

	Music = 1;
	Sounds = 1;

	Key_up = SDLK_UP;
	Key_down = SDLK_DOWN;
	Key_left = SDLK_LEFT;
	Key_right = SDLK_RIGHT;
	Key_shoot = SDLK_SPACE;

	Joy_enabled = 1;

	Joy_shoot = 1;
	Joy_jump = 0;
	Joy_item = 3;
	Joy_exit = 2;

	Lvleditor_automousehide = 0;
	Backgroundimages_disabled = 0;

	level_dir = "data/levels";
}

void cPreferences :: Update( void )
{
	Music = pAudio->bMusic;
	Sounds = pAudio->bSounds;
}

void cPreferences :: Apply( void )
{
	pAudio->bMusic = Music;
	pAudio->bSounds = Sounds;
}

// ##################### Private #########################

void cPreferences :: Parse_Map( string command, int line ) // V 3.0
{
	if( command.length() < 5 || command.find_first_of( '#' ) == 0 )
	{
		return;
	}


	while( command.find( '\r' ) != string::npos ) // Linux support
	{
		command.erase( command.find( '\r' ), 1 );
	}

	while( command.find( '\t' ) != string::npos ) // No Tabs
	{
		command.replace( command.find( '\t' ), 1, " " );
	}

	while( command.find_last_of( ' ' ) == command.length() - 1  ) // No Spaces at the end
	{
		command.erase( command.find_last_of( ' ' ), 1 );
	}

	string tempstr = command;
	int count = 1;

	while( tempstr.find( ' ' ) != string::npos  ) // Count Spaces
	{
		tempstr.erase( tempstr.find( ' ' ) , 1 );
		count++;
	}

	tempstr = command;
	
	string *parts = new string[ count + 1];
	
	int len;
	int i = 0;

	while( count > 0 )
	{
		len = tempstr.find_first_of( ' ' );
		parts[i] = tempstr.substr( 0, len );
		tempstr.erase( 0, len + 1 );
		i++;
		count--;
	}

	parts[i] = tempstr;
	
	// Message handler
	HandleMessage( parts, i, line );

	delete []parts;
}

int cPreferences :: HandleMessage( string *parts, unsigned int count, unsigned int line )
{
	if( parts[0].compare( "Music" ) == 0 )
	{
		if( string_to_int( parts[1] ) == 0 )
		{
			Music = 0;
		}
		else
		{
			Music = 1;
		}
	}
	else if( parts[0].compare( "Sounds" ) == 0 )
	{
		if( string_to_int( parts[1] ) == 0 )
		{
			Sounds = 0;
		}
		else
		{
			Sounds = 1;
		}
	}
	else if( parts[0].compare( "Fullscreen" ) == 0 )
	{
		if( string_to_int( parts[1] ) == 0 )
		{
			Fullscreen = 0;
		}
		else
		{
			Fullscreen = 1;
		}
	}
	else if( parts[0].compare( "UseJoystick" ) == 0 || parts[0].compare( "Joy_enabled" ) == 0 )
	{
		if( string_to_int( parts[1] ) == 0 )
		{
			Joy_enabled = 0;
		}
		else
		{
			Joy_enabled = 1;
		}
	}
	else if( parts[0].compare( "Screen_H" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 1600 )
		{
			//return 0;
		}
		else
		{
			Screen_H = string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Screen_W") == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 1600 )
		{
			//return 0;
		}
		else
		{
			Screen_W = string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Bpp" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 32 )
		{
			//return 0;
		}
		else
		{
			Bpp = string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Key_up" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 1000 )
		{
			//return 0;
		}
		else
		{
			Key_up = (SDLKey)string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Key_down" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 1000 )
		{
			//return 0;
		}
		else
		{
			Key_down = (SDLKey)string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Key_left" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 1000 )
		{
			//return 0;
		}
		else
		{
			Key_left = (SDLKey)string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Key_right" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 1000 )
		{
			//return 0;
		}
		else
		{
			Key_right = (SDLKey)string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Key_shoot" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 1000 )
		{
			//return 0;
		}
		else
		{
			Key_shoot = (SDLKey)string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Joy_jump" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 50 )
		{
			//return 0;
		}
		else
		{
			Joy_jump = string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Joy_item" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 50 )
		{
			//return 0;
		}
		else
		{
			Joy_item = string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Joy_shoot" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 50 )
		{
			//return 0;
		}
		else
		{
			Joy_shoot = string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Joy_exit" ) == 0 )
	{
		if( string_to_int( parts[1] ) < 0 || string_to_int( parts[1] ) > 50 )
		{
			//return 0;
		}
		else
		{
			Joy_exit = string_to_int( parts[1] );
		}
	}
	else if( parts[0].compare( "Background_images_disabled" ) == 0 )
	{
		if( string_to_int( parts[1] ) == 0 )
		{
			Backgroundimages_disabled = 0;
		}
		else
		{
			Backgroundimages_disabled = 1;
		}
	}
	else if( parts[0].compare( "Hide_Mousecursor_automatically" ) == 0 )
	{
		if( string_to_int( parts[1] ) == 0 )
		{
			Lvleditor_automousehide = 0;
		}
		else
		{
			Lvleditor_automousehide = 1;
		}
	}
	else if( parts[0].compare( "level_dir" ) == 0 )
	{
		if( parts[1].length() > 2 )
		{
			// todo : check if the directory exists
			level_dir = parts[1];
		}
	}
	else
	{
		printf( "%s : line %d Error : ", PREF_NAME, line );
		printf( "%s unknown command\n", parts[1].c_str() );
		return 0; // error
	}

	return 1;
}
