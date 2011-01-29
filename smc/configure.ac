dnl Process this file with autoconf to produce a configure script.

AC_INIT(src/main.cpp)

PACKAGE=smc
VERSION=0.96

AC_PREREQ(2.50)
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE($PACKAGE, $VERSION)
AM_CONFIG_HEADER(config.h)

AC_ISC_POSIX
AC_PROG_CC
AC_PROG_CXX
AM_PROG_CC_STDC
AC_HEADER_STDC
AC_PROG_INSTALL
#AM_PROG_LIBTOOL

dnl Checks for programs.


dnl Checks for libraries.

dnl Check for SDL
SDL_VERSION=1.2.0
AM_PATH_SDL($SDL_VERSION, :,
  AC_MSG_ERROR([*** SDL version $SDL_VERSION not found!]))
CPPFLAGS="$CPPFLAGS $SDL_CFLAGS"
LIBS="$LIBS $SDL_LIBS"

dnl Check for SDL_image library
AC_CHECK_LIB(SDL_image, IMG_LoadPNG_RW, ,
  AC_MSG_ERROR([Unable to find the SDL_image library with PNG support
   (http://www.libsdl.org/projects/SDL_image/)]),
  [-lpng])

dnl Check for SDL_mixer library
AC_CHECK_LIB(SDL_mixer, main, ,
  AC_MSG_ERROR([Unable to find the SDL_mixer library
   (http://www.libsdl.org/projects/SDL_mixer/)] ))

dnl Check for SDL_ttf library
AC_CHECK_LIB(SDL_ttf, TTF_Init, ,
  AC_MSG_ERROR([Unable to find the SDL_ttf library] ))

dnl Check for SDL_gfx library
AC_CHECK_LIB(SDL_gfx, boxRGBA, ,
  AC_MSG_ERROR([Unable to find the SDL_gfx library] ))


dnl Checks for header files.

AC_HEADER_STDC

AC_CHECK_HEADERS([SDL_gfxPrimitives.h SDL_rotozoom.h], ,
  AC_MSG_ERROR([The SDL_gfx library is not installed correctly!]))


dnl Checks for typedefs, structures, and compiler characteristics.


dnl Checks for library functions.


dnl Checks for Additional stuffs.



dnl Set PACKAGE SOURCE DIR in config.h.
packagesrcdir=`cd $srcdir && pwd`

dnl Set PACKAGE PREFIX
if test "x${prefix}" = "xNONE"; then
  packageprefix=${ac_default_prefix}
else
  packageprefix=${prefix}
fi

dnl Set PACKAGE DATA & DOC DIR
packagedatadir=share/${PACKAGE}
packagedocdir=doc/${PACKAGE}

AC_DEFINE_UNQUOTED(SAVE_DIR, "savegames", [Directory for savegames])
AC_DEFINE_UNQUOTED(LEVEL_DIR, "${packageprefix}/${packagedatadir}/levels/", [Directory for level files])
AC_DEFINE_UNQUOTED(OVERWORLD_DIR, "${packageprefix}/${packagedatadir}/world", [Directory for word data])
AC_DEFINE_UNQUOTED(PIXMAPS_DIR, "${packageprefix}/${packagedatadir}/pixmaps", [Directory for pixmap data])
AC_DEFINE_UNQUOTED(SOUNDS_DIR, "${packageprefix}/${packagedatadir}/sounds", [Directory for sound data])
AC_DEFINE_UNQUOTED(MUSIC_DIR, "${packageprefix}/${packagedatadir}/music", [Directory for music data])
AC_DEFINE_UNQUOTED(FONT_DIR, "${packageprefix}/${packagedatadir}/font", [Directory for font data])


AC_OUTPUT([Makefile src/Makefile data/Makefile docs/Makefile])
