/***************************************************************************
	framerate.h  -  Framerate independant class and a time correcting function
	
	The Speedfactor is the heart of this class. When it is set by SetSpeedFactor, 
	it becomes a number with that you multiply all your motions. For instance, if the targetfps is 100,
	and the actual fps is 85, the speedfactor will be set to 100/85, or about 1.2.
	You then multiply all your motion is the game, at its lowest level, by this number.
	
	
	copyright					: (C) 2003-2005 by FluXy

	V 2.0
 ***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the LGPL.                                       *
 *                                                                         *
 ***************************************************************************/ 


#ifndef __EP_FRAMERATE_H__
#define __EP_FRAMERATE_H__

class cFramerate
{
public:
	cFramerate( double tfps )
	{
		speedfactor = 1;
		fps = 0;
		Init( tfps );
	}
	
	~cFramerate ( void )
	{
		//
	}
	
	void Init( double tfps )
	{
		targetfps = tfps;
		maxspeedfactor = tfps/5;
		framedelay = SDL_GetTicks();
	}

	void Update( void )
	{
		currentticks = SDL_GetTicks();
		speedfactor = (double)( currentticks - framedelay ) / ( (double)1000/targetfps );

		fps = targetfps/speedfactor;
		
		if( speedfactor <= 0 )
		{
			speedfactor = 1;
		}
		else if( speedfactor > maxspeedfactor ) 
		{
			speedfactor = maxspeedfactor;
		}
		
		framedelay = currentticks;
	}

	void Reset( void )
	{
		framedelay = SDL_GetTicks();
		speedfactor = 0;
	}
	
	void SetMaxSpeedFactor( double maxsf )
	{
		maxspeedfactor = maxsf;
	}

	double targetfps;
	double fps;

	Uint32 currentticks;
	Uint32 framedelay;

	double speedfactor;
	double maxspeedfactor;
};

/* Fixed framerate method */
inline void CorrectFrameTime( unsigned int fps = 32 )
{
	static Uint32 stime = 0;
	
	while( SDL_GetTicks () - stime < 1000 / fps )
	{
		SDL_Delay( 1 );
	}

	stime = SDL_GetTicks ();
}

#endif
