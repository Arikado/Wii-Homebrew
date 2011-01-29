/*     WiiBreaker

      Pattern Tool

	Written by Arikado
	
*/	

#include <stdio.h>             //Ditto whats below
#include <stdlib.h>           //Ditto whats below
#include <string.h>          //Ditto whats below
#include <malloc.h>         //Ditto whats below
#include <gccore.h>        //For pretty much everything
#include <wiiuse/wpad.h>  //For the wiimotes/extensions/balanceboard
#include <fat.h>         //For the SD cards
#include <ogc/gx.h>     //For gx for fonts
#include <cstdlib>     //For random numbers
#include <ctime>       //For random numbers
#include <wiisprite.h> // The main libwiisprite header.
#include <mp3player.h> //Inlcude mp3 functions
#include "ftImage.h"   //Ave's Freetype Library
#include "font_ttf.h" //Font being used

using namespace wsp; //Libwiisprites namespace

    //Globals
	
	int brickx[30]; //X values for the bricks
	int bricky[30]; //Y values for the bricks
	int brickc[30]; //C(olor) values for the bricks
	
	int brickweareon = 0;
	
	GameWindow gwd;
	
	ftImage print(640, 480);
	
	Sprite Text;
	
	FILE *pattern;
	
	void LoadPattern();//Load Pattern into level editor
	
	void LoadPattern(){
	
    FILE *pattern = fopen("sd:/apps/Wiibreaker/data/pattern1.pattern","rb");
    if (pattern){
	
    fread(&brickx[0], sizeof(brickx), 1, pattern);
    fread(&bricky[0], sizeof(bricky), 1, pattern);
	fread(&brickc[0], sizeof(brickc), 1, pattern);
  
     fclose(pattern);
   }	
	}

    int main(int argc, char **argv){

	
	fatInitDefault();//Initialize the front SD for loading images
	
	gwd.InitVideo();
	
	WPAD_Init(); //Initialize the Wiimote
	
	WPAD_SetDataFormat(WPAD_CHAN_0, WPAD_FMT_BTNS_ACC_IR);//Allows us to use the Wiimote pointer
	
	print.setFont(font_ttf, font_ttf_size);
	print.setSize(32);
	Text.SetPosition(100, 50);
    Text.SetImage(&print);
	print.setColor(Color::Color(0,255,255));
	
	LoadPattern();
	
	for(;;)
	{
		WPAD_ScanPads();
		
		print.printf("Brick: %d\n", brickweareon);
		print.printf("X: %d\n", brickx[brickweareon]);
		print.printf("Y: %d\n", bricky[brickweareon]);
		print.printf("C: %d\n", brickc[brickweareon]);
			
		print.flush();
			
		Text.Draw();
			
		print.clear();
			
		print.reset();
		
		if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A)
		brickweareon++;
		
		if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_HOME))
		break;	
		
		if(brickweareon > 29)
		brickweareon = 0;
		
		gwd.Flush();
		
	   }
	   return 0;
     }

