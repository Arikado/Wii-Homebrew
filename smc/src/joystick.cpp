/***************************************************************************
           joystick.cpp  -  Joystick class
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
#include "include/main.h"

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
#define GP2X_BUTTON_UP              (0)
#define GP2X_BUTTON_DOWN            (4)
#define GP2X_BUTTON_LEFT            (2)
#define GP2X_BUTTON_RIGHT           (6)
#define GP2X_BUTTON_UPLEFT          (1)
#define GP2X_BUTTON_UPRIGHT         (7)
#define GP2X_BUTTON_DOWNLEFT        (3)
#define GP2X_BUTTON_DOWNRIGHT       (5)
#define GP2X_BUTTON_CLICK           (18)
#define GP2X_BUTTON_A               (12)
#define GP2X_BUTTON_B               (13)
#define GP2X_BUTTON_Y               (14)
#define GP2X_BUTTON_X               (15)
#define GP2X_BUTTON_L               (10)
#define GP2X_BUTTON_R               (11)
#define GP2X_BUTTON_START           (8)
#define GP2X_BUTTON_SELECT          (9)
#define GP2X_BUTTON_VOLUP           (16)
#define GP2X_BUTTON_VOLDOWN         (17)

cJoystick :: cJoystick( void )
{
	Joystick = NULL;

	Opened = 0;
	Threshold = 3000;

	cur_stick = 0;
	num_buttons = 0;
	num_axes = 0;
	num_balls = 0;

	Debug = 1;

	for( int i = 0; i < MAX_BUTTONS;i++ )
	{
		Buttons[i] = 0;
	}
	
	left = 0;
	right = 0;
	up = 0;
	down = 0;
    shoot = 0;
    enter = 0;

	Init();
}

cJoystick :: ~cJoystick( void )
{
	Close();
}

int cJoystick :: Init( void )
{
	int joy = SDL_NumJoysticks();
	
	if( joy <= 0 )
    {
		printf( "No joysticks available\n" );
		pPreferences->Joy_enabled = 0;
		return 0;
    }

	if( Debug )
	{
		printf( "Joysticks found : %d\n\n", joy );
	}

	SDL_JoystickEventState( SDL_ENABLE );
	OpenStick( 0 );

	if( Debug )
	{
		printf( "Joypad System Initialised\n" );
	}

	return 1;
}

void cJoystick :: Close( void )
{
	CloseStick();
}

bool cJoystick :: OpenStick( unsigned int index )
{
	SDL_Joystick *Joystick = SDL_JoystickOpen( index );

	if( !Joystick )
	{
		printf( "Couldn't open joystick %d\n", index );
		Opened = 0;
		return 0;
	}

	cur_stick = index;

	num_buttons = SDL_JoystickNumButtons( Joystick );
	num_axes = SDL_JoystickNumAxes( Joystick );
	num_balls = SDL_JoystickNumBalls( Joystick );

	if( Debug )
	{
		printf( "Opened Joystick %d\n", index );
		printf( "Name: %s\n", SDL_JoystickName( index ) );
		printf( "Number of Axes: %d\n", num_axes );
		printf( "Number of Buttons: %d\n", num_buttons );
		printf( "Number of Balls: %d\n\n", num_balls );
	}

	Opened = 1;

	return 1;
}

void cJoystick :: CloseStick( void )
{
	if( Joystick )
	{
		SDL_JoystickClose( Joystick );
		Joystick = NULL;

		Reset_keys();

		num_buttons = 0;
		num_axes = 0;
		num_balls = 0;

		Opened = 0;

		if( Debug )
		{
			printf( "Joystick %d closed\n", cur_stick );
		}

		cur_stick = 0;
	}
}

void cJoystick :: Reset_keys( void )
{
	for( int i = 0; i < MAX_BUTTONS;i++ )
	{
		Buttons[i] = 0;
	}
	
	left = 0;
	right = 0;
	up = 0;
	down = 0;
}

void cJoystick :: Handle_Events( void )
{
	if( !pPreferences->Joy_enabled ) // Joystick Motion
	{
		return;
	}

	if( !Opened )
	{
		if( Debug )
		{
			printf( "No Joysticks opened : Joypad is now Disabled\n" );
		}

		pPreferences->Joy_enabled = 0;

		return;
	}

	switch( event.jaxis.axis )
	{
		case 1: /* Up/Down */
		{
			if( event.jaxis.value < -Threshold ) // Up
			{
				if( Debug )
				{
					printf( "Joystick : Up Button pressed\n" );
				}

				if( down )
				{
					KeyUp( pPreferences->Key_down );
				}

				if( !up )
				{
					// Key Up
				}
				
				up = 1;
				down = 0;
			}
			else if( event.jaxis.value > Threshold*2 ) // Down ( 2 times More Harder )
			{
				if( Debug )
				{
					printf( "Joystick : Down Button pressed\n" );
				}

				if( !down )
				{
					KeyDown( pPreferences->Key_down );
				}

				up = 0;
				down = 1;
			}
			else // No Down/Left
			{
				if( down )
				{
					KeyUp( pPreferences->Key_down );
				}
				
				if( up )
				{
					//KeyUp(key_up);
				}

				up = 0;
				down = 0;
			}
			break;
		}

		case 0: /* Left/Right */
		{
			if( event.jaxis.value < -Threshold ) // Left
			{
				if( Debug )
				{
					printf( "Joystick : Left Button pressed\n" );
				}

				if( right )
				{
					KeyUp( pPreferences->Key_right );
				}

				if( !left )
				{
					KeyDown( pPreferences->Key_left );
				}
				
				left = 1;
				right = 0; 
			}
			else if( event.jaxis.value > Threshold ) // Right
			{
				if( Debug )
				{
					printf( "Joystick : Right Button pressed\n" );
				}

				if( left )
				{
					KeyUp( pPreferences->Key_left );
				}

				if( !right )
				{
					KeyDown( pPreferences->Key_right );
				}

				left = 0;
				right = 1; 
			}
			else // No Left/Right
			{
				if( left )
				{
					KeyUp( pPreferences->Key_left );
				}
				
				if( right )
				{
					KeyUp( pPreferences->Key_right );
				}
				
				left = 0;
				right = 0; 
			}
			break;
		}

		default:
		{
			break;
		}
	}
}

void cJoystick :: Handle_Button_Event( void )
{
	if( !pPreferences->Joy_enabled || !Opened )
	{
		return;
	}

	switch( event.type ) {
	    case SDL_JOYBUTTONDOWN:

		switch ( event.jbutton.button ) {
            case GP2X_BUTTON_UP:
                KeyDown(pPreferences->Key_up);
                up = 1;
                break;
            case GP2X_BUTTON_DOWN:
                KeyDown(pPreferences->Key_down);
                down = 1;
                break;
            case GP2X_BUTTON_LEFT:
                KeyDown(pPreferences->Key_left);
                left = 1;
                break;
            case GP2X_BUTTON_RIGHT:
                KeyDown(pPreferences->Key_right);
                right = 1;
                break;
            case GP2X_BUTTON_A:
                shoot = 1;
                break;
            case GP2X_BUTTON_L:
				KeyDown( SDLK_ESCAPE );
                break;
            case GP2X_BUTTON_X:
                KeyDown(SDLK_RETURN);
                enter = 1;
                break;
        }
		break;
	    case SDL_JOYBUTTONUP:
		switch ( event.jbutton.button ) {
            case GP2X_BUTTON_UP:
                KeyUp(pPreferences->Key_up);
				up = 0;
                break;
            case GP2X_BUTTON_DOWN:
                KeyUp(pPreferences->Key_down);
				down = 0;
                break;
            case GP2X_BUTTON_LEFT:
                KeyUp(pPreferences->Key_left);
				left = 0;
                break;
            case GP2X_BUTTON_RIGHT:
                KeyUp(pPreferences->Key_right);
                right = 0;
                break;
            case GP2X_BUTTON_A:
                shoot = 0;
                break;
            case GP2X_BUTTON_L:
				KeyUp( SDLK_ESCAPE );
                break;
            case GP2X_BUTTON_X:
                KeyUp(SDLK_RETURN);
                enter = 0;
                break;
        }
		break;
	}
}

void cJoystick :: SetButton( unsigned int num, bool pressed )
{
	if( num > MAX_BUTTONS )
	{
		return;
	}

	if( Debug )
	{
		if( pressed )
		{
			printf( "Joystick %d : Joy Button %d pressed\n", cur_stick, num );
		}
		else
		{
			printf( "Joystick %d : Joy Button %d released\n", cur_stick, num );
		}
	}

	Buttons[num] = pressed;
}

bool cJoystick :: Left( int nThreshold )
{
	if( pPreferences->Joy_enabled && event.type == SDL_JOYAXISMOTION && event.jaxis.value < -nThreshold && 
		event.jaxis.axis == 0 )
	{
		return 1;
	}

	return 0;
}

bool cJoystick :: Right( int nThreshold )
{
	if( pPreferences->Joy_enabled && event.type == SDL_JOYAXISMOTION && event.jaxis.value > nThreshold && 
		event.jaxis.axis == 0 )
	{
		return 1;
	}
	
	return 0;
}

bool cJoystick :: Up( int nThreshold )
{
	if( pPreferences->Joy_enabled && event.type == SDL_JOYAXISMOTION && event.jaxis.value < -nThreshold && 
		event.jaxis.axis == 1 )
	{
		return 1;
	}
	
	return 0;
}

bool cJoystick :: Down( int nThreshold )
{
	if( pPreferences->Joy_enabled && event.type == SDL_JOYAXISMOTION && event.jaxis.value > nThreshold 
			&& event.jaxis.axis == 1 )
	{
		return 1;
	}
	
	return 0;
}

bool cJoystick :: Button( unsigned int num )
{
	if( num < MAX_BUTTONS && Buttons[num] )
	{
		return 1;
	}

	return 0;
}
