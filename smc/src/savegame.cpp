/***************************************************************************
           savegame.cpp  -  Savegame Engine
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


cSavegame :: cSavegame( void )
{
	//
}

cSavegame :: ~cSavegame( void )
{
	//
}

Savegame cSavegame :: Load( unsigned int Save_file )
{
	loaded_save_info.levelname = "yuki_1.txt";
	loaded_save_info.description.clear();
	loaded_save_info.timestamp.clear();
	loaded_save_info.version = 0;
	loaded_save_info.lives = 0;
	loaded_save_info.points = 0;
	loaded_save_info.goldpieces = 0;
	loaded_save_info.posx = 0;
	loaded_save_info.posy = 0;
	loaded_save_info.state = 0;
	loaded_save_info.OW_save = 0;
	loaded_save_info.OW_nlevel = 0;
	loaded_save_info.OW_slevel = 0;
	loaded_save_info.OW_curr_waypoint = 0;
	loaded_save_info.OW_world = 0;
	loaded_save_info.itembox_item = 0;
	
	char Full_Save_Name[40];
	sprintf( Full_Save_Name, "%s/%d.sav", SAVE_DIR, Save_file );

	ifstream ifs( Full_Save_Name, ios::in );

	if( !ifs )
	{
		printf( "Savegame_Load : No Savegame found at Slot : %s\n", Full_Save_Name );
		return loaded_save_info;
	}

	char contents[1000];

	for( unsigned int i = 0; ifs.getline( contents, 1000 ); i++ )
	{
		if( !Parse_Map( contents, i ) )
		{
			printf( "Savegame Error at Slot : %d\n", Save_file );
			loaded_save_info.description.insert( 0, "Unsupported : " );
		}
	}

	ifs.close();

	if( !loaded_save_info.description.length() )
	{
		loaded_save_info.description = "No Description";
	}

	return loaded_save_info;
}

int cSavegame :: Save( unsigned int Save_file, Savegame Save_info )
{
	char Full_Save_Name[45];
	sprintf( Full_Save_Name, "%s/%d.sav", SAVE_DIR, Save_file );

	ifstream ifs( Full_Save_Name, ios::in );

	if( ifs )
	{
		ifs.close();
		ifs.open( Full_Save_Name, ios::trunc ); // Delete existing
	}
	
	ifs.close();
	
	// Finds all the " " in Save_info.Description and replaces them with "_"
	int pos = -1;
	
	while( Save_info.description.find( " " ) >= 0 )
	{
		pos = Save_info.description.find( " " );
		
		if( pos >= 0 )
		{
			Save_info.description.replace( pos, 1, "_" );
		}
		else
		{
			break;
		}
	}

	ofstream ofs( Full_Save_Name, ios::out );

	char row[500];

	sprintf( row, "## Savegame File at Slot %d with Savegame V.%s ,Game V.%s ##\n\n", Save_file, SAVEGAME_VERSION, VERSION );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Save_Time_Stamp %s", Save_info.timestamp.c_str() ); // in .Time_Stamp is a \n
	ofs.write( row, strlen( row ) );

	sprintf( row, "Save_Description %s\n", Save_info.description.c_str() );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Save_Version %d\n", Save_info.version );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Level_name %s\n", Save_info.levelname.c_str() );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Lives %d\n", Save_info.lives );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Points %d\n", Save_info.points );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Goldpieces %d\n", Save_info.goldpieces );
	ofs.write( row, strlen( row ) );
	
	sprintf( row, "Position %d %d\n", Save_info.posx, Save_info.posy );
	ofs.write( row, strlen( row ) );

	sprintf( row, "State %d\n", Save_info.state );
	ofs.write( row, strlen( row ) );

	sprintf( row, "Itembox_Item %d\n", Save_info.itembox_item );
	ofs.write( row, strlen( row ) );

	// Overworld info
	sprintf( row, "\n## OverWorld Data ##\n\n" );
	ofs.write( row, strlen(row) );

	sprintf( row, "OWsave %d\n", Save_info.OW_save );
	ofs.write( row, strlen( row ) );

	sprintf( row, "OWNlevel %d\n", Save_info.OW_nlevel );
	ofs.write( row, strlen( row ) );

	sprintf( row, "OWSlevel %d\n", Save_info.OW_slevel );
	ofs.write( row, strlen( row ) );

	sprintf( row, "OWCurr_WP %d\n", Save_info.OW_curr_waypoint );
	ofs.write( row, strlen( row ) );

	sprintf( row, "OverWorld %d\n", Save_info.OW_world );
	ofs.write( row, strlen( row ) );

	ofs.close();
	
	if( Game_debug )
	{
		printf( "Saved to : %s\n", Full_Save_Name );
	}
	
	return 1;
}

string cSavegame :: Get_Description( unsigned int Save_file, bool Only_Description )
{
	string Full_Save_Name, desc;
	char buffer[10];
	char desc_tmp[150];

	Full_Save_Name = SAVE_DIR "/.sav";
	
	sprintf( buffer, "%d", Save_file );
	Full_Save_Name.insert( strlen( SAVE_DIR ) + 1, buffer );

	if( !valid_file( Full_Save_Name ) )
	{
		sprintf( desc_tmp, "%d. %s", Save_file, "Free Save" );
		desc = desc_tmp;
		return desc;
	}
	
	Savegame Temp_Savegame = Load( Save_file );

	if( Temp_Savegame.lives < 0 )
	{
		sprintf( desc_tmp, "%d. %s", Save_file, "Broken Save" );
		desc = desc_tmp;
		return desc;
	}

	// Finds all the "_" in Temp_Savegame.Description and replaces them with " "
	int pos = -1;
	
	while( Temp_Savegame.description.find( "_" ) >= 0 )
	{
		pos = Temp_Savegame.description.find( "_" );

		if( pos >= 0 )
		{
			Temp_Savegame.description.replace( pos, 1, " " );
		}
		else
		{
			break;
		}
	}

	if( !Only_Description ) // Full Description
	{
		sprintf( desc_tmp, "%d. %s      Level : %s  Date : %s", Save_file, Temp_Savegame.description.c_str(),
			Temp_Savegame.levelname.c_str(), Temp_Savegame.timestamp.c_str() );
	}
	else // Only the User Description
	{
		return Temp_Savegame.description;
	}

	desc = desc_tmp;
	return desc;
}

bool cSavegame :: is_valid( unsigned int Save_file )
{
	char savename[50];

	sprintf( savename, "%s/%d.sav", SAVE_DIR, Save_file );

	return valid_file( savename );
}

bool cSavegame :: Parse_Map( string command, int line )
{
	if( command.length() <= 5 || command.find_first_of( '#' ) == 0 )
	{
		return 1;
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

	while( command.find_first_of( ' ' ) == 0  ) // No Spaces at the start
	{
		command.erase( command.find_first_of( ' ' ), 1 );
	}

	string tempstr = command;
	int count = 1;

	while( tempstr.find( ' ' ) != string::npos  ) // Count Spaces
	{
		tempstr.erase( tempstr.find( ' ' ) , 1 );
		count++;
	}

	tempstr = command;
	
	string *parts = new string[ count + 1 ];
	
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
	bool success = HandleMessage( parts, i, line );

	delete []parts;

	return success;
}

bool cSavegame :: HandleMessage( string *parts, unsigned int count, unsigned int line )
{
	if( parts[0].compare( "Level_name" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}
		
		char *filename = new char[60];
		sprintf( filename, "%s/%s", pPreferences->level_dir.c_str(), parts[1].c_str() );

		FILE* fp = fopen( filename, "r" );

		if( !fp )
		{
			printf( "Savegame Error : line %d, Level not found : %s\n", line, filename );
			return 0;
		}
		
		delete filename;
		loaded_save_info.levelname = parts[1] ;

	}
	else if( parts[0].compare( "Lifes" ) == 0 || parts[0].compare( "Lives" ) == 0  ) // Lifes for older savegame support
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d : %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) || string_to_int( parts[1] ) < 0 )
		{
			printf( "Savegame Error : line %d : Lives is not a valid number\n", line );
			return 0;
		}

		loaded_save_info.lives = string_to_int( parts[1] );

	}
	else if( parts[0].compare( "Position" ) == 0 )
	{
		if( count != 3 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d : %s needs 3 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : X Position is not a number\n", line );
			return 0;
		}
		
		if( !is_valid_number( parts[2] ) )
		{
			printf( "Savegame Error : line %d : Y Position is not a number\n", line );
			return 0;
		}

		loaded_save_info.posx = string_to_int( parts[1] );
		loaded_save_info.posy = string_to_int( parts[2] );
	}
	else if( parts[0].compare( "Points" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 2 parameters" );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : Points is not a number\n", line );
			return 0;
		}

		loaded_save_info.points = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "Goldpieces" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}
		
		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : Goldpieces is not a number\n", line );
			return 0;
		}

		loaded_save_info.goldpieces = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "State" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : State is not a number\n", line );
			return 0;
		}

		loaded_save_info.state = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "Itembox_Item" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Line %d, error : %s %s\n", line, parts[0].c_str(), "needs 2 parameters" );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : Itembox_item is not a number\n", line );
			return 0;
		}

		loaded_save_info.itembox_item = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "Save_Description" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !loaded_save_info.description.length() )
		{
			loaded_save_info.description = parts[1];
		}

	}
	else if( parts[0].compare( "Save_Version" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : Save_Version is not a number\n", line );
			return 0;
		}

		loaded_save_info.version = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "Save_Time_Stamp" ) == 0 )
	{
		if( count != 6 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, %s needs 6 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		char Date[40];
		/* Date part info
		 * parts[1] = Day (Mon,Tue,Wed,Thu,Fri,...)
		 * parts[2] = Month
		 * parts[3] = Day (1,2,3,4,...)
		 * parts[4] = Day Time (22:52:30)
		 * parts[5] = Year
		*/
		sprintf( Date, "%s %s.%s %s", parts[4].c_str(), parts[3].c_str(), parts[2].c_str(), parts[5].c_str() );

		loaded_save_info.timestamp = Date;
	}
	else if( parts[0].compare( "OWsave" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : OWsave is not a number\n", line );
			return 0;
		}

		loaded_save_info.OW_save = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "OWNlevel" ) == 0 ) // Overworld Normal Level
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, error : %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : OWNlevel is not a number\n", line );
			return 0;
		}

		loaded_save_info.OW_nlevel = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "OWSlevel" ) == 0 ) // Overworld Secret Level
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, error : %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : OWSlevel is not a number\n", line );
			return 0;
		}

		loaded_save_info.OW_slevel = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "OWCurr_WP" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, error : %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : OWCurr_WP is not a number\n", line );
			return 0;
		}

		loaded_save_info.OW_curr_waypoint = string_to_int( parts[1] );
	}
	else if( parts[0].compare( "OverWorld" ) == 0 )
	{
		if( count != 2 )
		{
			printf( "%s : ", loaded_save_info.description.c_str() );
			printf( "Savegame Error : line %d, error : %s needs 2 parameters\n", line, parts[0].c_str() );
			return 0;
		}

		if( !is_valid_number( parts[1] ) )
		{
			printf( "Savegame Error : line %d : OverWorld is not a number\n", line );
			return 0;
		}

		loaded_save_info.OW_world = string_to_int( parts[1] );
	}
	else
	{
		printf( "Savegame Error : %s : line %d, ", loaded_save_info.description.c_str(), line );
		printf( "Unknown Command : %s\n", parts[0].c_str() );
		return 0; // error
	}

	return 1;
}

void cSavegame :: Debug_Print( Savegame TSavegame )
{
	printf( "\nSavegame Debug Print : \n\nLevel_Name %s\nLifes : %d\nPos x : %d\nPos y : %d\nPoints : %d\nGoldpieces : %d\nState : %d\nOverWorld Save : %d\nOverWorld Normal Level : %d\nOverWorld Secret Level : %d\nOverWorld : %d\n",
		TSavegame.levelname.c_str(), TSavegame.lives, TSavegame.posx, TSavegame.posy, TSavegame.points, TSavegame.goldpieces, TSavegame.state, TSavegame.OW_save, TSavegame.OW_nlevel, TSavegame.OW_slevel, TSavegame.OW_world );
}
