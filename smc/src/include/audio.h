/***************************************************************************
			audio.h  -  header for the corresponding cpp file

			Version : 2.3
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

#include "globals.h"

#ifndef __AUDIO_H__
#define __AUDIO_H__

#define AUDIO_MAX_SOUNDS 15

class cAudio
{
public:
	cAudio( void );
	~cAudio( void );

	// Initializes the Audio Engine
	bool Init( void );
	// De-initializes the Audio Engine
	void Close( void );
	
	// Plays the given sound
	int PlaySound( string filename, int channel = -1, int Volume = -1 );
	// If no forcing it will be played after the current Music file
	int PlayMusic( string filename, int loops = 0, bool force = 1, unsigned int FadeInms = 0 ); 

	// Switches Music on and off
	void ToggleMusic( void );
	// Switches Sounds on and off
	void ToggleSounds( void );

	// Pause Music
	void PauseMusic( void );

	// Resumes halted sounds
	void ResumeSounds( int channel = -1 );
	// Resumes Music
	void ResumeMusic( void );

	// Fades the given Sound channels with the given time out
	void FadeOutSounds( unsigned int ms  = 200, int channel = -1, bool overwrite_fading = 0 );
	// Fades the Music with the given time out
	void FadeOutMusic( unsigned int ms = 500, bool overwrite_fading = 0 );

	// Sets the Music position ( if .ogg in seconds )
	void SetMusicPosition( double position );

	// Returns 1 if the Music is currently fading in and 2 if it's fading out else 0
	int isMusicFading( void );
	// Returns 1 if the Sound is currently fading in and 2 if it's fading out else 0
	int isSoundFading( int SoundChannel );

	// Returns true if the Music is paused
	bool isMusicPaused( void );

	// Returns true if the Music is playing
	bool isMusicPlaying( void );

	// Halts the given sounds
	void HaltSounds( int channel = -1 );
	// halts the Music
	void HaltMusic( void );

	// Stops all sounds
	void StopSounds( void ); 

	// Sets the Sound Volume
	void SetSoundVolume( Uint8 iVolume, int channel = -1 );
	// Sets the Music Volume
	void SetMusicVolume( Uint8 iVolume );

	// Updates the Audio Engine
	void Update( void );
	
	// Current Music pointer
	Mix_Music *Music;

	// The current sounds pointer
	Mix_Chunk *Sound[AUDIO_MAX_SOUNDS];
	
	// Initialization information
	int iHz, iBuffer, iChannels;
	// How much sound and music files got played since class initialization
	unsigned int Sounds_Played, Music_Played;

	// last used Sound pointer Buffer 
	unsigned int SCounter;

	// The current music and sound volumes
	Uint8 Sound_Volume, Music_Volume;

	bool bSounds, bMusic, bDebug;

	bool bInitialised;
};

#endif
