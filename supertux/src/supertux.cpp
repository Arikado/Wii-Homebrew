//  $Id: supertux.cpp 997 2004-05-05 16:07:20Z rmcruz $
//
//  SuperTux
//  Copyright (C) 2004 Tobias Glaesser <tobi.web@gmx.de>
//
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of the GNU General Public License
//  as published by the Free Software Foundation; either version 2
//  of the License, or (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
//  02111-1307, USA.

#include <sys/types.h>
#include <ctype.h>

#include "defines.h"
#include "globals.h"
#include "setup.h"
#include "intro.h"
#include "title.h"
#include "gameloop.h"
#include "leveleditor.h"
#include "screen.h"
#include "worldmap.h"
#include "resources.h"
#include "texture.h"
#include "tile.h"
#ifdef _WII_
    #include <wiiuse/wpad.h>
    #include <ogc/lwp_watchdog.h>
    #include <fat.h>
	#include <dopmii/FileSystem.h>
#endif

//added as Supertuxs takes a long, long time to load
Surface* loading_surf;

int main(int argc, char * argv[])
{

#ifdef _WII_
  IO::SD OurSD;
  OurSD.Mount();
  IO::USB OurUSB;
  OurUSB.Startup();
  OurUSB.Mount();
#endif

  st_directory_setup();

#ifndef _WII_
  parseargs(argc, argv);
  ////
#endif



  st_audio_setup();
  st_video_setup();


  clearscreen(0, 0, 0);
  loading_surf = new Surface(datadir + "/images/title/loading.png", USE_ALPHA);
  loading_surf->draw( 160, 30);
  updatescreen();


  st_joystick_setup();
  st_general_setup();
  st_menu();
  loadshared();

  if (launch_leveleditor_mode && level_startup_file)
    {
    leveleditor(level_startup_file);
    }
  else if (level_startup_file)
    {
      GameSession session(level_startup_file, 1, ST_GL_LOAD_LEVEL_FILE);
      session.run();
    }
  else
    {
      title();
    }

  clearscreen(0, 0, 0);
  updatescreen();

  unloadshared();
  st_general_free();
  TileManager::destroy_instance();
#ifdef DEBUG
  Surface::debug_check();
#endif
  st_shutdown();

  delete loading_surf;

  return 0;
}
