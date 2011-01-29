- Readme for Linux -

To run this game on Linux, you have two possibilities: You can either
compile your own binary or you can use the pre-compiled version that is
available for download, too. The pre-compiled version is statically linked,
so it should run on all Linux/i86 systems. To use it simply run the
"smc" executable in the 0.9* folder.

If it does not work or if you are using any other system than Linux/i86, you
have to get the source code and compile your own executable file.

The rest of this file describes how to compile this game for Linux. The build files
are just a quick-n-dirty hack and are not very well tested, so if you run into
problems, please tell me. 


1.) Requirements

You need:
- The Secret Maryo Chronicles source distribution.
- autoconf (2.50 or higher) and automake (IMPORTANT: version 1.7 or higher)
- The GCC G++ compiler (version 3.2 or higher)
- GNU make
- Following libraries (with headers/development files):
  SDL, SDL_image, SDL_mixer, SDL_ttf and SDL_gfx


2.) How to build?

Change to the 0.9*/src/unix/ directory.
Then run the autogen.sh script by typing "sh ./autogen.sh".
You'll get a "configure" script - run it by typing "./configure".
If everything is fine, you'll get the Makefile. Now you can build SMC by
simply running "make".


3.) How to install?

"make install" is currently broken, don't use it.
Simply run the program directly instead!


4.) How to start? 

Make sure you have the graphics and levels files from the either the binary
Linux distribution of Secret Maryo Chronicles or from the Windows version of SMC 
(i.e. you need the folders "data", "levels", "world", "savegames" and "screenshots" 
with the data files). You should also download the music files if you want to
have background musics.
Change to the directory with the "data" folder and start "smc" from there -
e.g. type "./src/unix/smc".


Write me an e-mail to thothy@users.sourceforge.net for comments or bug reports
concerning the Linux version. Write to clubjafa@web.de for comments etc. about
SMC in general.
