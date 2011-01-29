/***************************************************************************
           audio.cpp  -  Audio Engine
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

#include "include/audio.h"

cAudio :: cAudio( void )
{
	for( unsigned int i = 0; i < AUDIO_MAX_SOUNDS; i++ )
	{
		Sound[i] = NULL;
	}
	
	Music = NULL;
	
	Sound_Volume = 110;
	Music_Volume = 128;
	Sounds_Played = 0; 
	Music_Played = 0;
	bSounds = 0;
	bMusic = 0;
	bDebug = 0;
	bInitialised = 0;

	SCounter = 0;

	iHz = 44800; // Ogg Samples ( never change this )
	iBuffer = 4096; // ( < 2000 is choppy )
	iChannels = MIX_DEFAULT_CHANNELS; // 1 = Mono , 2 = Stereo
}

cAudio :: ~cAudio( void )
{
	Close();
}

bool cAudio :: Init( void )
{
	if( bInitialised || ( !bMusic && !bSounds ) )
	{
		return 0;
	}

	if( bDebug )
	{
		printf( "Initialising Audio System ,Buffer (%i), Frequenzy (%i)\n", iBuffer, iHz );
	}

	/*	Initialising prefered Audio System specs with Mixer Standard format (Stereo)
	*
	*	format		: Output sample format.
	*	channels	: Number of sound channels in output.
	*	Set this to 2 for stereo, 1 for mono.
	*	chunksize	: Bytes used per output sample.
	*/

	if( Mix_OpenAudio( iHz, MIX_DEFAULT_FORMAT , iChannels, iBuffer ) < 0 ) 
	{
		printf( "Warning : Could not init 16-bit Audio\n- Reason : %s\n", SDL_GetError() );
		return 0;
	}

	bInitialised = 1;
	SetMusicVolume( Music_Volume );
	SetSoundVolume( Sound_Volume );

	return 1;
}

void cAudio :: Close( void )
{
	if( bInitialised )
	{
		if( bSounds )
		{
			StopSounds();

			for( unsigned int i = 0; i < AUDIO_MAX_SOUNDS; i++ )
			{
				Sound[i] = NULL;
			}
		}

		if( bMusic )
		{
			Mix_FreeMusic( Music );
			Music = NULL;
		}

		Mix_CloseAudio();

		bInitialised = 0;
	}
}

int cAudio :: PlaySound( string filename, int channel /* = -1 */, int Volume /* = -1  */ )
{
	if( !bSounds || !bInitialised )
	{
		return 0;
	}

	if( channel > 128 ) // new
	{
		printf( "PlaySound channel is out of range : %d\n", channel );
		return 0;
	}

	if( !valid_file( filename ) )
	{
		printf( "Couldn't find sound file : %s\n", filename.c_str() );
		return 0;
	}

	SCounter++;
	
	if( SCounter == AUDIO_MAX_SOUNDS )
	{
		SCounter = 0;
	}
	
	if( Sound[SCounter] )
	{
		Mix_FreeChunk( Sound[SCounter] );
		Sound[SCounter] = NULL;
	}

	Sound[SCounter] = Mix_LoadWAV( filename.c_str() );

	int channel_used = Mix_PlayChannel( channel, Sound[SCounter], 0 );

	if( channel_used == -1 )
	{
		if( bDebug ) 
		{
			printf( "Couldn't play sound file : %s\n", filename.c_str() );
		}

		return 0;
	}
	else
	{
		Sounds_Played++;

		if( Volume != -1 ) // new
		{
			if( Volume > 128 || Volume < 0 )
			{
				printf( "PlaySound Volume out is of range : %d\n", Volume );
				Volume =  Sound_Volume;
			}

			Mix_Volume( channel_used, Volume );
		}
		else
		{
			Mix_Volume( channel_used, Sound_Volume );
		}
	}

	return 1;
}

int cAudio :: PlayMusic( string filename, int loops, bool force, unsigned int FadeInms )
{
	if( !bMusic || !bInitialised )
	{
		return 0;
	}

	if( !valid_file( filename ) )
	{
		printf( "Couldn't find music file : %s\n", filename.c_str() );
		return 0;
	}

	ResumeMusic();

	if( !isMusicPlaying() || force ) 
	{
		if( Music )
		{
			if( force )
			{
				HaltMusic();
			}

			Mix_FreeMusic( Music );
			Music = NULL;
		}

		Music = Mix_LoadMUS( filename.c_str() );

		if( Music )
		{
			Music_Played++;
			
			if( !FadeInms ) // No Fading
			{
				Mix_PlayMusic( Music, loops );
			}
			else // Fade the Music in
			{
				Mix_FadeInMusic( Music, loops, FadeInms );
			}

		}
		else 
		{
			if( bDebug )
			{
				printf( "PlayMusic couldn't play music file : %s\n", filename.c_str() );
			}

			return 0;
		}
	}
	else
	{
		Music = Mix_LoadMUS( filename.c_str() );
	}
	
	return 1;
}


void cAudio :: ToggleMusic( void )
{
	bMusic = !bMusic;

	if( !bMusic )
	{
		HaltMusic();
	}
	else
	{
		Init();
		
		if( !pLevel->valid_music )
		{
			PlayMusic( MUSIC_DIR "/game/mainmenu.ogg", -1, 1, 2000 );
		}
		else
		{
			PlayMusic( pLevel->musicfile, -1, 1, 2000 );
		}
	}
}

void cAudio :: ToggleSounds( void )
{
	bSounds = !bSounds;

	if( !bSounds )
	{
		StopSounds();
	}
	else
	{
		Init();
		PlaySound( SOUNDS_DIR "/audio_on.ogg" );
	}
}

void cAudio :: PauseMusic( void )
{
	if( !bMusic || !bInitialised )
	{
		return;
	}

	if( Mix_PlayingMusic() )// Check if music is currently playing
	{
		Mix_PauseMusic();
	}
}

void cAudio :: ResumeSounds( int channel /* = -1  */ )
{
	if( !bSounds || !bInitialised )
	{
		return;
	}

	// resume playback on all previously active channels
	Mix_Resume( channel );
}

void cAudio :: ResumeMusic( void )
{
	if( !bMusic || !bInitialised )
	{
		return;
	}

	if( Mix_PausedMusic() ) // Check if music is currently paused
	{
		Mix_ResumeMusic();
	}
}

void cAudio :: FadeOutSounds( unsigned int ms /* = 200 */, int channel /* = -1 */, bool overwrite_fading /* = 0  */ )
{
	if( !bSounds || !bInitialised )
	{
		return;
	}

	if( Mix_Playing( channel ) ) // Check the Channels
	{
		if( !overwrite_fading && isSoundFading( - 1 ) == 2 )
		{
			return; // Do not fade the Sound out again
		}

		Mix_FadeOutChannel( channel, ms );
	}
}

void cAudio :: FadeOutMusic( unsigned int ms, bool overwrite_fading )
{
	if( !bMusic || !bInitialised )
	{
		return;
	}

	if( Mix_PlayingMusic() ) // Check if music is currently playing
	{
		int status = isMusicFading();

		if( !overwrite_fading && status == 2 )
		{
			return; // Do not fade the Music out again
		}
		else if( status == 1 )
		{
			HaltMusic(); // Can't stop fading in with SDL_Mixer and Fadeout is ignored when fading in
		}

		Mix_FadeOutMusic( ms );
	}
}

void cAudio :: SetMusicPosition( double position )
{	
	if( !bMusic || !bInitialised || isMusicFading() == 2 )
	{
		return;
	}

	Mix_SetMusicPosition( position );
}

int cAudio :: isMusicFading( void )
{
	if( !bMusic || !bInitialised )
	{
		return 0;
	}

	Mix_Fading status = Mix_FadingMusic();

	if( status == MIX_NO_FADING )
	{
		return 0;
	}
	else if( status == MIX_FADING_IN )
	{
		return 1;
	}
	else if( status == MIX_FADING_OUT )
	{
		return 2;
	}

	return 0;
}

int cAudio :: isSoundFading( int SoundChannel )
{
	if( !bSounds || !bInitialised )
	{
		return 0;
	}

	Mix_Fading status = Mix_FadingChannel( SoundChannel );

	if( status == MIX_NO_FADING )
	{
		return 0;
	}
	else if( status == MIX_FADING_IN )
	{
		return 1;
	}
	else if( status == MIX_FADING_OUT )
	{
		return 2;
	}

	return 0;
}

bool cAudio :: isMusicPaused( void )
{
	if( !bMusic || !bInitialised )
	{
		return 0;
	}
	
	if( Mix_PausedMusic() )
	{
		return 1;
	}
	
	return 0;
}

bool cAudio :: isMusicPlaying( void )
{
	if( !bMusic || !bInitialised )
	{
		return 0;
	}
	
	if( Mix_PlayingMusic() )
	{
		return 1;
	}
	
	return 0;
}

void cAudio :: HaltSounds( int channel /* = -1  */ )
{
	if( !bSounds || !bInitialised )
	{
		return;
	}

	if( Mix_Playing( channel ) ) // Check all Channels
	{
		Mix_HaltChannel( channel );
	}
}

void cAudio :: HaltMusic( void )
{
	if( !bInitialised )
	{
		return;
	}

	if( Mix_PlayingMusic() ) // Checks if music is playing
	{
		Mix_HaltMusic();
	}
}

void cAudio :: StopSounds( void )
{
	if( !bInitialised )
	{
		return;
	}

	if( Mix_Playing( -1 ) ) // Check all Channels
	{
		Mix_HaltChannel( -1 );

		if( Sounds_Played > 0 )
		{
			for( unsigned int i = 0;i < AUDIO_MAX_SOUNDS;i++ )
			{
				if( Sound[i] )
				{
					Mix_FreeChunk( Sound[i] ); // Can be buggy
					Sound[i] = NULL;
					// should only be stopped not freed
				}
			}
		}
	}
}

void cAudio :: SetSoundVolume( Uint8 iVolume, int channel /* = -1  */ )
{
	if( ( iVolume > 128 ) || !bSounds || !bInitialised )
	{
		return;
	}

	Mix_Volume( channel , iVolume ); // -1 for all channels

	Sound_Volume = Mix_Volume( channel, -1 ); // should retrieve the current volume
}

void cAudio :: SetMusicVolume( Uint8 iVolume )
{
	if( ( iVolume > 128 ) || !bMusic || !bInitialised )
	{
		return;
	}

	Mix_VolumeMusic( iVolume );

	Music_Volume = iVolume;
}

void cAudio :: Update( void )
{
	if( !bMusic || !bInitialised )
	{
		return;
	}

	if( !Mix_PlayingMusic() ) 
	{
		Mix_PlayMusic( Music, 0 );
		Music_Played++;
	}
}
