CROSS_COMPILE = C:/gp2X/bin/arm-linux-
SDL_BASE = C:/GP2X/bin/arm-linux-
LDFLAGS = -static

CC = $(CROSS_COMPILE)gcc
CXX = $(CROSS_COMPILE)g++
STRIP = $(CROSS_COMPILE)strip

CXXFLAGS = -I. -Ic:/gp2x/include -Ic:/gp2x/include/SDL 
LIBS = -lSDL_image -lpng -ljpeg -lSDL_mixer -lSDL_ttf -lfreetype -lSDL -lpthread -lz -Lc:/gp2x/lib

SMC_TARGET = smc
SMC_OBJS = cloud.o hud.o levelexit.o preferences.o collision.o  img_manager.o main.o rex.o active.o dialog.o menu.o savegame.o animation.o enemy.o joystick.o mouse.o sprite.o audio.o globals.o jpiranha.o overworld.o turtle.o banzai_bill.o goldpiece.o level.o player.o video.o box.o goomba.o leveleditor.o powerup.o SDL_rotozoom.o SDL_gfxprimitives.o

all : $(SMC_TARGET)

$(SMC_TARGET) : $(SMC_OBJS)
	$(CXX) $(LDFLAGS) -o $(SMC_TARGET) $(SMC_OBJS) $(LIBS)
	$(STRIP) $(SMC_TARGET)

clean:
	rm -f $(ALL_TARGETS) $(SMC_OBJS) *.o *~ 
	
all: 