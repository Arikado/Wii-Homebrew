/*     WiiBreaker

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
#include "Peter_de_Man___Lightwaves_d090128_mp3.h"//Lightwaves Sound
#include "Peter_de_Man___Cyborgs_Trip_d090128_mp3.h"//Cyborgs Trip Sound

using namespace wsp; //Libwiisprites namespace

    //Globals
	
	int rows = 0; //For -->
	
	bool shutdown = false; //If true shotdown the wii
	
	int score = 0; //Score
	int scores[6]; //Highscores
	bool quit = false; //Wether to quit the game
	int reset = 0;     //Wether to quit the app
	int rumblecounter = 0; //How long to rumble
	int background = 0; //What background you're using
	int controlscheme = 0; //What controlscheme you're using
	int helpescape = 0; //Makes sure the ball doesn't get stuck inside the paddle
	int sound = 0;//Wether sound is on or off
	int mode = 1;//Which mode you're playing
	bool estartoff = true;//Determines wether to display default brick settings in level editor
	
	int lives = 0; //How many lives you have
	bool alive[30]; //Wether each brick should be drawn to the screen
	
	bool firsthit = false; //Keeps the ball speed at 4px per second until its hit
	int balldir = 0; //What direction the ball is moving in
	int speed = 0; //How fast the ball is moving
	
	int ballx; //X value for the ball
	int bally; //Y value for the ball
	int paddlex; //X value for the paddle
	int paddley; //Y value for the paddle
	int brickx[30]; //X values for the bricks
	int bricky[30]; //Y values for the bricks
	int brickc[30]; //Color for each brick
	bool selected[30]; //Stores which brick is selected in the level editor
	int holdball = 0; //Keeps the ball suspended in midair for a little bit before the ball is released
	int collision = 0; //Doesn't let the ball collide with more than one brick at once
	
	int wait = 0;//Helps out the balance board control scheme by slowing down the game so people can more accurately use the board
	
	float x = 0;//Holds the balance boards X coordinate so we don't have to type exp.wb.x over and over
	
	Sprite *paddle = new Sprite(); //The Paddle
	
	Sprite *ball = new Sprite(); //The Ball
	
	Sprite *brick[30]; //The Bricks
	
	Sprite *Background = new Sprite(); //The Background
	
	Sprite *Pointer = new Sprite(); //The pointer in the level editor
	
	Image *iball = new Image(); //Stores the ball png image
	Image *ibrick = new Image(); //Stores a brick image
	Image *ibrick2 = new Image();//Stores a brick image
	Image *ibrick3 = new Image();//Stores a brick image
	Image *ibrick4 = new Image();//Stores a brick image
	Image *ibrick5 = new Image();//Stores a brick image
	Image *ibrick6 = new Image();//Stores a brick image
	Image *ibrick7 = new Image();//Stores a brick image
	Image *ipaddle = new Image();//Stores a brick image
	Image *background1 = new Image();//Stores a background image
	Image *background2 = new Image();//Stores a background image
	Image *background3 = new Image();//Stores a background image
	Image *pointer = new Image();//Stores the image of the level editor's pointer
	
	ftImage print(640, 480); //Declaration of Class ftImage member print
	Sprite Text; //The Text
	
	GameWindow gwd;//The GameWindow
	
	//Expansion Struct Used For The Nunchuk, Classic Controller, and Balance Board
	expansion_t exp;
	expansion_t exp2;
	
	//Files we are gonna load
	FILE *pattern = 0;
	
	
	//Prototypes
	
	void menu();//Displays the menu
	void resetb();//Resets Bricks
	void updateball();//Updates ball position
	void checkforreset();//Checks to see if the bricks need to be reset
	void bricksetup();//Assigns each brick its image
	void pausegame();//Keeps the game paused
	void leveleditor();//Level Editor
	void LoadPattern();//Load Pattern into level editor
	void SavePattern();//Save pattern made in level editor
	void LoadHighscores();//Load highscores
	void SaveHighscores();//Save Highscores
	void SetColors();//Set colors to bricks
	
	//Functions
   
   // WPADShutdownCallback 
    void doPadPowerOff(s32 chan){	
	
	if(chan == WPAD_CHAN_0)
		shutdown = true;

	return;
    }

	
	void pausegame(){
	
	bool leavepause = false;
	
	WPAD_Rumble(WPAD_CHAN_0, 0);
	
	while(leavepause == false){
	WPAD_ScanPads();
	
	if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_PLUS) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_PLUS))
    leavepause = true; 
	
	if(sound && !MP3Player_IsPlaying()){
			
		MP3Player_Stop();
		
		if(sound == 1){
		  MP3Player_PlayBuffer(Peter_de_Man___Lightwaves_d090128_mp3, Peter_de_Man___Lightwaves_d090128_mp3_size, NULL);
		 }
		 
		 if(sound == 2){
		  MP3Player_PlayBuffer(Peter_de_Man___Cyborgs_Trip_d090128_mp3, Peter_de_Man___Cyborgs_Trip_d090128_mp3_size, NULL);
		 }
 }
	}
	 }
	
	void Menu(){
	
	        bool firstmp3 = false;
	
	        print.setFont(font_ttf, font_ttf_size);
	        print.setSize(32);
			print.setColor(Color::Color(255,40,40));
			Text.SetPosition(100, 50);
		    Text.SetImage(&print);
		  
		    while(true){
			
			WPAD_ScanPads();
			
			if(rows == 2)
			Background->Draw();
			
			if(background != 0 && rows == 2)
			print.setColor(Color::Color(0,0,0));
			
			if(background == 0 || rows != 2)
			print.setColor(Color::Color(0,255,255));
		
			print.printf("      WiiBreaker\n\n");
			
			if(background == 0 || rows != 2)
			print.setColor(Color::Color(255,40,40));
			
			print.printf("Press A or Z to start\n");
			
			print.printf("HOME to quit\n\n");
			
			if(rows == 0){
			print.printf("-->");
			
			switch(mode){
			
			case 1:
			print.printf("  Brickbreaker\n");
			break;
			
			case 2:
			print.printf("  WiiBreaker\n");
			break;
			
			case 3:
			print.printf("  Level Editor\n");
			break;
			
			}
			}
			
			if(rows != 0){
			switch(mode){
			
			case 1:
			print.printf("     Brickbreaker\n");
			break;
			
			case 2:
			print.printf("     WiiBreaker\n");
			break;
			
			case 3:
			print.printf("     Level Editor\n");
			break;
			
			}
			}
			
			if(rows == 1){
			print.printf("-->");
			
			switch(controlscheme){
			
			case 0:
			print.printf("  Controls: Buttons\n");
			break;
			
			case 1:
			print.printf("  Controls: IR Sensor\n");
			break;
			
			case 2:
			print.printf("  Controls: Balance Board\n");
			break;
			
			}
			}
			
			if(rows != 1){
			switch(controlscheme){
			
			case 0:
			print.printf("     Controls: Buttons\n");
			break;
			
			case 1:
			print.printf("     Controls: IR Sensor\n");
			break;
			
			case 2:
			print.printf("     Controls: Balance Board\n");
			break;
			
			}
			}
			
			if(rows == 2){
			print.printf("-->");
			
			switch(background){
			
			case 0:
			print.printf("  No Background\n");
			Background->SetTransparency(0);
			break;
			
			case 1:
			print.printf("  Background 1\n");
			Background->SetImage(background1);
			Background->SetTransparency(0xff);
			break;
			
			case 2:
			print.printf("  Background 2\n");
			Background->SetImage(background2);
			break;
			
			case 3:
			print.printf("  Background 3\n");
			Background->SetImage(background3);
			Background->SetTransparency(0xff);
			break;
			
			}
			}
			
			if(rows != 2){
			switch(background){
			
			case 0:
			print.printf("     No Background\n");
			Background->SetTransparency(0);
			break;
			
			case 1:
			print.printf("     Background 1\n");
			Background->SetImage(background1);
			Background->SetTransparency(0xff);
			break;
			
			case 2:
			print.printf("     Background 2\n");
			Background->SetImage(background2);
			break;
			
			case 3:
			print.printf("     Background 3\n");
			Background->SetImage(background3);
			Background->SetTransparency(0xff);
			break;
			
			}
			}
			
			if(rows == 3){
			print.printf("-->");
			switch(sound){
			case 0:
			print.printf("  Music Off\n\n");
			if(firstmp3 == true){
			MP3Player_Stop();
			firstmp3 = false;
			}
			break;
			case 1:
			print.printf("  Lightwaves\n\n");
			if(firstmp3 == true){
			MP3Player_Stop();
			MP3Player_PlayBuffer(Peter_de_Man___Lightwaves_d090128_mp3, Peter_de_Man___Lightwaves_d090128_mp3_size, NULL);
			firstmp3 = false;
			}
			break;
			case 2:
			print.printf("  Cyborgs Trip\n\n");
			if(firstmp3 == true){
			MP3Player_Stop();
			MP3Player_PlayBuffer(Peter_de_Man___Cyborgs_Trip_d090128_mp3, Peter_de_Man___Cyborgs_Trip_d090128_mp3_size, NULL);
			firstmp3 = false;
			}
			break;
			}
			}
			
			if(rows != 3){
			switch(sound){
			case 0:
			print.printf("     Music Off\n\n");
			break;
			case 1:
			print.printf("     Lightwaves\n\n");
			break;
			case 2:
			print.printf("     Cyborgs Trip\n\n");
			}
			}
			
			print.printf("Score:  %d\n", score);
			
			if(mode != 3){
			switch(mode){
			case 1:
			switch(controlscheme){
			
			case 0:
			print.printf("HighScore: %d\n\n", scores[0]);
			break;
			
			case 1:
			print.printf("HighScore: %d\n\n", scores[1]);
			break;
			
			case 2:
			print.printf("HighScore: %d\n\n", scores[2]);
			break;
			
			}
			break;
			case 2:
			switch(controlscheme){
			
			case 0:
			print.printf("HighScore: %d\n\n", scores[3]);
			break;
			
			case 1:
			print.printf("HighScore: %d\n\n", scores[4]);
			break;
			
			case 2:
			print.printf("HighScore: %d\n\n", scores[5]);
			break;
			
			}
			break;
			}
			}
			
			print.flush();
			
			Text.Draw();
			
			print.clear();
			
			print.reset();
			
		if(sound && !MP3Player_IsPlaying()){
			
		MP3Player_Stop();
		
		if(sound == 1){
		  MP3Player_PlayBuffer(Peter_de_Man___Lightwaves_d090128_mp3, Peter_de_Man___Lightwaves_d090128_mp3_size, NULL);
		 }
		 
		 if(sound == 2){
		  MP3Player_PlayBuffer(Peter_de_Man___Cyborgs_Trip_d090128_mp3, Peter_de_Man___Cyborgs_Trip_d090128_mp3_size, NULL);
		 }

}
			
            WPAD_Expansion(WPAD_CHAN_0, &exp);
            exp.type = WPAD_EXP_NUNCHUK;
		    
			 
			 if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_NUNCHUK_BUTTON_Z) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_A))
			 break;
			 
			 if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_RIGHT) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_RIGHT) || ((exp.nunchuk.js.ang>=90-45 && exp.nunchuk.js.ang<=90+45) && exp.nunchuk.js.mag>=0.9)){
			 if(rows == 0)
			 mode++;
			 if(rows == 2)
			 background++;
			 if(rows == 1)
			 controlscheme++;
			 if(rows == 3){
		     sound++;
			 firstmp3 = true;
			 }
			 }
			 
			 if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_LEFT) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_LEFT) || ((exp.nunchuk.js.ang>=270-45 && exp.nunchuk.js.ang<=270+45) && exp.nunchuk.js.mag>=0.9)){
			 if(rows == 0)
			 mode--;
			 if(rows == 2)
             background--;
			 if(rows == 1)
			 controlscheme--;
			 if(rows == 3){
			 firstmp3 = true;
			 sound--;
			 }
			 }
			 
			 if(mode > 3)
			 mode = 1;
			 
			 if(mode < 1)
			 mode = 3;
			 
			 if(sound < 0)
			 sound = 2;
			 
			 if(sound > 2)
			 sound = 0;
			 
			 if(background < 0)
			 background = 3;
			 
			 if(background > 3)
			 background = 0;
			 
			 if(controlscheme < 0)
			 controlscheme = 2;
			 
			 if(controlscheme > 2)
			 controlscheme = 0;
			 
			 if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_UP) || ((exp.nunchuk.js.ang>=315 || exp.nunchuk.js.ang<=45) && exp.nunchuk.js.mag>=.9) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_UP))
			 rows --;
			
			if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_DOWN) || ((exp.nunchuk.js.ang>=180-45 && exp.nunchuk.js.ang<=180+45) && exp.nunchuk.js.mag>=.9) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_DOWN))
			 rows ++;
			 
			 if(rows < 0)
			 rows = 3;
			 
			 if(rows > 3)
			 rows = 0;
			 
			 if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_HOME)){
			 quit = true;
			 break;
			 }
		
		     if(shutdown == true)
		     SYS_ResetSystem( SYS_POWEROFF, 0, 0 );
		
		     gwd.Flush();
			 
		  }
		  gwd.Flush();
		 }
		 
	void checkforreset(){
	
	if(alive[0] == false && alive[1] == false && alive[2] == false && alive[3] == false &&
	alive[4] == false && alive[5] == false && alive[6] == false && alive[7] == false &&
	alive[8] == false && alive[9] == false && alive[10] == false && alive[11] == false &&
	alive[12] == false && alive[13] == false && alive[14] == false && alive[15] == false &&
	alive[16] == false && alive[17] == false && alive[18] == false && alive[19] == false &&
	alive[20] == false && alive[21] == false && alive[22] == false && alive[23] == false &&
	alive[24] == false && alive[25] == false && alive[26] == false && alive[27] == false &&
	alive[28] == false && alive[29] == false)
	reset = 1;
	
	}
		 
    void resetb(){
	
	for(int i = 0; i < 30; i++){
	alive[i] = true;
	}
	
	if(mode == 1 || estartoff == true){
	
	for(int i = 0; i < 10; i++){
	bricky[i] = 30;
	}
	
	for(int i = 10; i < 20; i++){
	bricky[i] = 60;
	}
	
	for(int i = 20; i < 30; i++){
	bricky[i] = 90;
	}
	
	brickx[0] = 200;
	brickx[1] = 225;
	brickx[2] = 250;
	brickx[3] = 275;
	brickx[4] = 300;
	brickx[5] = 325;
	brickx[6] = 350;
	brickx[7] = 375;
	brickx[8] = 400;
	brickx[9] = 425;
	brickx[10] = 200;
	brickx[11] = 225;
	brickx[12] = 250;
	brickx[13] = 275;
	brickx[14] = 300;
	brickx[15] = 325;
	brickx[16] = 350;
	brickx[17] = 375;
	brickx[18] = 400;
	brickx[19] = 425;
	brickx[20] = 200;
	brickx[21] = 225;
	brickx[22] = 250;
	brickx[23] = 275;
	brickx[24] = 300;
	brickx[25] = 325;
	brickx[26] = 350;
	brickx[27] = 375;
	brickx[28] = 400;
	brickx[29] = 425;
	}
	
	if(mode == 2){
	
	int totalnumber = 3;
	int choosealevel = 0;
	
	choosealevel = rand() % totalnumber + 1;
	
	if(choosealevel == 3){
	brickx[0] = 145;
	bricky[0] = 184;
	brickc[0] = 5;
	brickx[1] = 190;
	bricky[1] = 202;
	brickc[1] = 5;
	brickx[2] = 116;
	bricky[2] = 162;
	brickc[2] = 5;
	brickx[3] = 108;
	bricky[3] = 133;
	brickc[3] = 5;
	brickx[4] = 221;
	bricky[4] = 215;
	brickc[4] = 5;
	brickx[5] = 163;
	bricky[5] = 201;
	brickc[5] = 5;
	brickx[6] = 487;
	bricky[6] = 150;
	brickc[6] = 7;
	brickx[7] = 535;
	bricky[7] = 197;
	brickc[7] = 4;
	brickx[8] = 518;
	bricky[8] = 173;
	brickc[8] = 5;
	brickx[9] = 537;
	bricky[9] = 146;
	brickc[9] = 5;
	brickx[10] = 256;
	bricky[10] = 206;
	brickc[10] = 5;
	brickx[11] = 290;
	bricky[11] = 191;
	brickc[11] = 5;
	brickx[12] = 341;
	bricky[12] = 182;
	brickc[12] = 5;
	brickx[13] = 418;
	bricky[13] = 162;
	brickc[13] = 5;
	brickx[14] = 380;
	bricky[14] = 170;
	brickc[14] = 5;
	brickx[15] = 544;
	bricky[15] = 171;
	brickc[15] = 5;
	brickx[16] = 455;
	bricky[16] = 158;
	brickc[16] = 5;
	brickx[17] = 484;
	bricky[17] = 174;
	brickc[17] = 5;
	brickx[18] = 502;
	bricky[18] = 123;
	brickc[18] = 5;
	brickx[19] = 469;
	bricky[19] = 118;
	brickc[19] = 5;
	brickx[20] = 175;
	bricky[20] = 153;
	brickc[20] = 5;
	brickx[21] = 203;
	bricky[21] = 172;
	brickc[21] = 5;
	brickx[22] = 228;
	bricky[22] = 169;
	brickc[22] = 5;
	brickx[23] = 139;
	bricky[23] = 136;
	brickc[23] = 5;
	brickx[24] = 255;
	bricky[24] = 163;
	brickc[24] = 5;
	brickx[25] = 294;
	bricky[25] = 156;
	brickc[25] = 5;
	brickx[26] = 329;
	bricky[26] = 152;
	brickc[26] = 5;
	brickx[27] = 370;
	bricky[27] = 142;
	brickc[27] = 5;
	brickx[28] = 405;
	bricky[28] = 139;
	brickc[28] = 5;
	brickx[29] = 441;
	bricky[29] = 129;
	brickc[29] = 5;
	}
	
	if(choosealevel == 2){
	
	brickx[0] = 352;
	bricky[0] = 116;
	brickc[0] = 6;
	brickx[1] = 450;
	bricky[1] = 291;
	brickc[1] = 6;
	brickx[2] = 474;
	bricky[2] = 241;
	brickc[2] = 6;
	brickx[3] = 485;
	bricky[3] = 179;
	brickc[3] = 6;
	brickx[4] = 268;
	bricky[4] = 297;
	brickc[4] = 6;
	brickx[5] = 326;
	bricky[5] = 255;
	brickc[5] = 2;
	brickx[6] = 372;
	bricky[6] = 80;
	brickc[6] = 6;
	brickx[7] = 455;
	bricky[7] = 133;
	brickc[7] = 6;
	brickx[8] = 415;
	bricky[8] = 100;
	brickc[8] = 6;
	brickx[9] = 311;
	bricky[9] = 316;
	brickc[9] = 6;
	brickx[10] = 169;
	bricky[10] = 239;
	brickc[10] = 6;
	brickx[11] = 200;
	bricky[11] = 293;
	brickc[11] = 6;
	brickx[12] = 175;
	bricky[12] = 187;
	brickc[12] = 6;
	brickx[13] = 215;
	bricky[13] = 151;
	brickc[13] = 6;
	brickx[14] = 360;
	bricky[14] = 199;
	brickc[14] = 6;
	brickx[15] = 226;
	bricky[15] = 225;
	brickc[15] = 6;
	brickx[16] = 307;
	bricky[16] = 200;
	brickc[16] = 2;
	brickx[17] = 237;
	bricky[17] = 267;
	brickc[17] = 6;
	brickx[18] = 366;
	bricky[18] = 140;
	brickc[18] = 6;
	brickx[19] = 402;
	bricky[19] = 159;
	brickc[19] = 6;
	brickx[20] = 241;
	bricky[20] = 124;
	brickc[20] = 6;
	brickx[21] = 238;
	bricky[21] = 97;
	brickc[21] = 6;
	brickx[22] = 396;
	bricky[22] = 290;
	brickc[22] = 6;
	brickx[23] = 356;
	bricky[23] = 304;
	brickc[23] = 6;
	brickx[24] = 278;
	bricky[24] = 166;
	brickc[24] = 6;
	brickx[25] = 329;
	bricky[25] = 79;
	brickc[25] = 6;
	brickx[26] = 326;
	bricky[26] = 142;
	brickc[26] = 6;
	brickx[27] = 241;
	bricky[27] = 187;
	brickc[27] = 6;
	brickx[28] = 425;
	bricky[28] = 253;
	brickc[28] = 6;
	brickx[29] = 417;
	bricky[29] = 208;
	brickc[29] = 6;
	
	}
	
	if(choosealevel == 1){
	
	brickx[0] = 282;
	bricky[0] = 142;
	brickc[0] = 3;
	brickx[1] = 207;
	bricky[1] = 204;
	brickc[1] = 7;
	brickx[2] = 253;
	bricky[2] = 137;
	brickc[2] = 7;
	brickx[3] = 429;
	bricky[3] = 233;
	brickc[3] = 7;
	brickx[4] = 254;
	bricky[4] = 192;
	brickc[4] = 5;
	brickx[5] = 231;
	bricky[5] = 223;
	brickc[5] = 5;
	brickx[6] = 230;
	bricky[6] = 168;
	brickc[6] = 7;
	brickx[7] = 311;
	bricky[7] = 117;
	brickc[7] = 5;
	brickx[8] = 385;
	bricky[8] = 224;
	brickc[8] = 5;
	brickx[9] = 360;
	bricky[9] = 188;
	brickc[9] = 5;
	brickx[10] = 336;
	bricky[10] = 140;
	brickc[10] = 3;
	brickx[11] = 279;
	bricky[11] = 210;
	brickc[11] = 5;
	brickx[12] = 184;
	bricky[12] = 237;
	brickc[12] = 7;
	brickx[13] = 278;
	bricky[13] = 112;
	brickc[13] = 7;
	brickx[14] = 366;
	bricky[14] = 161;
	brickc[14] = 6;
	brickx[15] = 256;
	bricky[15] = 163;
	brickc[15] = 6;
	brickx[16] = 336;
	bricky[16] = 160;
	brickc[16] = 7;
	brickx[17] = 171;
	bricky[17] = 269;
	brickc[17] = 7;
	brickx[18] = 449;
	bricky[18] = 256;
	brickc[18] = 7;
	brickx[19] = 410;
	bricky[19] = 207;
	brickc[19] = 7;
	brickx[20] = 331;
	bricky[20] = 205;
	brickc[20] = 5;
	brickx[21] = 305;
	bricky[21] = 189;
	brickc[21] = 5;
	brickx[22] = 414;
	bricky[22] = 256;
	brickc[22] = 5;
	brickx[23] = 218;
	bricky[23] = 254;
	brickc[23] = 5;
	brickx[24] = 273;
	bricky[24] = 162;
	brickc[24] = 7;
	brickx[25] = 361;
	bricky[25] = 138;
	brickc[25] = 7;
	brickx[26] = 301;
	bricky[26] = 78;
	brickc[26] = 7;
	brickx[27] = 333;
	bricky[27] = 105;
	brickc[27] = 7;
	brickx[28] = 308;
	bricky[28] = 161;
	brickc[28] = 7;
	brickx[29] = 386;
	bricky[29] = 172;
	brickc[29] = 7;
	
	}
   }
	
	bricksetup();
	
	reset = 0;
	}
	
	void moveball(){
	
	if(firsthit == false)
	speed = 4;
	
	if(firsthit == true)
	speed = 8;
	
	if(holdball >= 15){
	
	if(balldir == 1){
	ballx -= speed;
	bally += speed;
	}
	
	if(balldir == 5){
	ballx -= (speed - 2);
	bally += speed;
	}
	
	if(balldir == 6){
	ballx -= speed;
	bally += (speed + 2);
	}
	
	if(balldir == 2){
	ballx += speed;
	bally += speed;
	}
	
	if(balldir == 7){
	ballx += (speed + 2);
	bally += speed;
	}
	
	if(balldir == 8){
	ballx += speed;
	bally += (speed + 2);
	}
	
	if(balldir == 3){
	ballx -= speed;
	bally -= speed;
	}
	
	if(balldir == 9){
	ballx -= (speed - 2);
	bally -= speed;
	}
	
	if(balldir == 10){
	ballx -= speed;
	bally -= (speed - 2);
	}
	
	if(balldir == 4){
	ballx += speed;
	bally -= speed;
	}
	
	if(balldir == 11){
	ballx += (speed + 2);
	bally -= speed;
	}
	
	if(balldir == 12){
	ballx += speed;
	bally -= (speed - 2);
	}
	
	}
	}
	
	void updateball(){
	
	int dirchoice = 0;
	int collide = 0;//Determines the pattern of movement for the ball
	collision = 0;//Doesn't let the ball hit more than one brick at a time
	
	WPADData* data2 = WPAD_Data(WPAD_CHAN_0);
	
	moveball();
	
	ball->SetPosition(ballx, bally);
	
	if(ball->CollidesWith(paddle)){
	if(!firsthit)
	firsthit = true;
	if(data2->exp.type == WPAD_EXP_NONE && controlscheme != 2){
	rumblecounter = 1;
	WPAD_Rumble(WPAD_CHAN_0, 1);
	}
	collide = 1;
    helpescape++;
	
	/*Think about switching the if numbers and the result numbers of balldir if problems occur*/
	
	if(helpescape > 1){
	if(balldir == 4 || balldir == 11 || balldir == 12){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 7;
	if(dirchoice == 2)
	balldir = 2;
	if(dirchoice == 3)
	balldir = 8;
	}
	if(balldir == 3 || balldir == 9 || balldir == 10){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 5;
	if(dirchoice == 2)
	balldir = 1;
	if(dirchoice == 3)
	balldir = 6;
	}
	}	
	}
	
	for(int i = 0; i < 30; i++){
	if((ball->CollidesWith(brick[i])) && (alive[i] == true) && (collision == 0)){
	if(!firsthit)
	firsthit = true;
	alive[i] = false;
	collide = 1;
	collision = 1;
	score++;
	helpescape = 0;
	}
	}
	
	if(ballx < 0){
	ballx = 0;
	collide = 2;
	}
	
	if(ballx > 640){
	ballx = 640;
	collide = 2;
	}
	
	if(bally < 0){
	bally = 0;
	collide = 1;
	}
	
	if(bally > 480){
	bally = 300;
	ballx = 320 - (ball->GetWidth()/2);
	holdball = 0;
	balldir = rand() % 2 + 1;
	lives--;
	firsthit = false;
	}
	
	dirchoice = 0;
	
	if(collide == 1){
	while(true){
	if(balldir == 1 || balldir == 5 || balldir == 6){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 9;
	if(dirchoice == 2)
	balldir = 3;
	if(dirchoice == 3)
	balldir = 10;
	break;
	}
	
	if(balldir == 3 || balldir == 9 || balldir == 10){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 5;
	if(dirchoice == 2)
	balldir = 1;
	if(dirchoice == 3)
	balldir = 6;
	break;
	}
	
	if(balldir == 2 || balldir == 7 || balldir == 8){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 11;
	if(dirchoice == 2)
	balldir = 4;
	if(dirchoice == 3)
	balldir = 12;
	break;
	}
	
	if(balldir == 4 || balldir == 11 || balldir == 12){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 7;
	if(dirchoice == 2)
	balldir = 2;
	if(dirchoice == 3)
	balldir = 8;
	break;
	}
	}
	}
	
	if(collide == 2){
	while(true){
	
	if(balldir == 1 || balldir == 5 || balldir == 6){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 7;
	if(dirchoice == 2)
	balldir = 2;
	if(dirchoice == 3)
	balldir = 8;
	break;
	}
	
	if(balldir == 2 || balldir == 7 || balldir == 8){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 5;
	if(dirchoice == 2)
	balldir = 1;
	if(dirchoice == 3)
	balldir = 6;
	break;
	}
	
	if(balldir == 3 || balldir == 9 || balldir == 10){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 11;
	if(dirchoice == 2)
	balldir = 4;
	if(dirchoice == 3)
	balldir = 12;
	break;
	}
	
	if(balldir == 4 || balldir == 11 || balldir == 12){
	dirchoice = rand() % 3 + 1;
	if(dirchoice == 1)
	balldir = 9;
	if(dirchoice == 2)
	balldir = 3;
	if(dirchoice == 3)
	balldir = 10;
	break;
	}
	}
	helpescape = 0;
	}
	
	if(collide == 0)
	helpescape = 0;
	
	}
	
	void SetColor(){
	
	for(int i = 0; i < 30; i++){
	
	if(brickc[i] == 1)
	brick[i]->SetImage(ibrick);
	if(brickc[i] == 2)
	brick[i]->SetImage(ibrick2);
	if(brickc[i] == 3)
	brick[i]->SetImage(ibrick3);
	if(brickc[i] == 4)
	brick[i]->SetImage(ibrick4);
	if(brickc[i] == 5)
	brick[i]->SetImage(ibrick5);
	if(brickc[i] == 6)
	brick[i]->SetImage(ibrick6);
	if(brickc[i] == 7)
	brick[i]->SetImage(ibrick7);
	}
	
	}
	
	void bricksetup(){
	
	if((mode == 1 || estartoff == true) && (mode != 2)){
	for(int i = 0; i < 30; i++){
	
	brickc[i] = rand() % 7 + 1;
	
	}
   }
	
	 SetColor();
	
	 }
	
	void SaveHighscores(){
	FILE *highscore = fopen("sd:/apps/Wiibreaker/data/highscores.highscore", "wb");
	if(highscore){
	fwrite(&scores[0], sizeof(scores), 1, highscore);
	}
	 }
	 
	void LoadHighscores(){
	FILE *highscore = fopen("sd:/apps/Wiibreaker/data/highscores.highscore", "rb");
	if(highscore){
	fread(&scores[0], sizeof(scores), 1, highscore);
	}
	 }

    void SavePattern(){
	
	FILE *pattern = fopen("sd:/apps/Wiibreaker/data/pattern1.pattern","wb");
    if (pattern) {
     fwrite(&brickx[0], sizeof(brickx), 1, pattern);
     fwrite(&bricky[0], sizeof(bricky), 1, pattern);
	 fwrite(&brickc[0], sizeof(brickc), 1, pattern);
	
     fclose(pattern);
   }
	}
	
	void LoadPattern(){
	
    FILE *pattern = fopen("sd:/apps/Wiibreaker/data/pattern1.pattern","rb");
    if (pattern){
	
    fread(&brickx[0], sizeof(brickx), 1, pattern);
    fread(&bricky[0], sizeof(bricky), 1, pattern);
	fread(&brickc[0], sizeof(brickc), 1, pattern);
  
     fclose(pattern);
	 
	 SetColor();
   }	
	}
	 
	void leveleditor(){
	
	bool quiteditor = false;
	
	while(true){
	
	if(quiteditor == true)
	break;
	
	resetb();
	estartoff = false;
	
	while(true){
	
	WPAD_ScanPads();
	
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brickx[i] = Pointer->GetX();
	bricky[i] = Pointer->GetY();
	}
	}
	
	if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A){
	for(int i = 0; i < 30; i++){
	if(Pointer->CollidesWith(brick[i])){
	if(ibrick == brick[i]->GetImage())
	Pointer->SetImage(ibrick);
	if(ibrick2 == brick[i]->GetImage())
	Pointer->SetImage(ibrick2);
	if(ibrick3 == brick[i]->GetImage())
	Pointer->SetImage(ibrick3);
	if(ibrick4 == brick[i]->GetImage())
	Pointer->SetImage(ibrick4);
	if(ibrick5 == brick[i]->GetImage())
	Pointer->SetImage(ibrick5);
	if(ibrick6 == brick[i]->GetImage())
	Pointer->SetImage(ibrick6);
	if(ibrick7 == brick[i]->GetImage())
	Pointer->SetImage(ibrick7);
	selected[i] = true;
	break;
	}
	}
	}
	
	if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_UP){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brick[i]->SetImage(ibrick);
	Pointer->SetImage(ibrick);
	brickc[i] = 1;
	 }
	}
   }
   
   if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_RIGHT){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brick[i]->SetImage(ibrick3);
	Pointer->SetImage(ibrick3);
	brickc[i] = 3;
	 }
	}
   }
   
   if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_DOWN){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brick[i]->SetImage(ibrick5);
	Pointer->SetImage(ibrick5);
	brickc[i] = 5;
	 }
	}
   }
   
   if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_LEFT){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brick[i]->SetImage(ibrick7);
	Pointer->SetImage(ibrick7);
	brickc[i] = 7;
	 }
	}
   }
   
   if((WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_UP) && (WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_RIGHT)){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brick[i]->SetImage(ibrick2);
	Pointer->SetImage(ibrick2);
	brickc[i] = 2;
	 }
	}
   }
   
   if((WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_DOWN) && (WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_RIGHT)){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brick[i]->SetImage(ibrick4);
	Pointer->SetImage(ibrick4);
	brickc[i] = 4;
	 }
	}
   }
   
   if((WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_DOWN) && (WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_LEFT)){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	brick[i]->SetImage(ibrick6);
	Pointer->SetImage(ibrick6);
	brickc[i] = 6;
	 }
	}
   }
	
	if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_B){
	for(int i = 0; i < 30; i++){
	if(selected[i] == true){
	Pointer->SetImage(pointer);
	selected[i] = false;
	}
	}
	}
	
	if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_1) && (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_2)){
	estartoff = true;
	resetb();
	estartoff = false;
	}
	
	if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME){
	quiteditor = true;
	break;
	}
	
	if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_MINUS)
	SavePattern();
	
	if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_PLUS)
	LoadPattern();
	
    ir_t ir; // The struct for infrared
	WPAD_IR(WPAD_CHAN_0, &ir); // Let's get our infrared data
	Pointer->SetPosition(ir.sx-WSP_POINTER_CORRECTION_X, ir.sy-WSP_POINTER_CORRECTION_Y);
	Pointer->Move(-((f32)Pointer->GetWidth()/2), -((f32)Pointer->GetHeight()/2));
	
	Pointer->Draw();
	
	for(int i = 0; i < 30; i++){
	brick[i]->SetPosition(brickx[i], bricky[i]);
	brick[i]->Draw();
	}
	
	if(shutdown == true)
	SYS_ResetSystem( SYS_POWEROFF, 0, 0 );
	
	if(sound && !MP3Player_IsPlaying()){
			
		MP3Player_Stop();
		
		if(sound == 1){
		  MP3Player_PlayBuffer(Peter_de_Man___Lightwaves_d090128_mp3, Peter_de_Man___Lightwaves_d090128_mp3_size, NULL);
		 }
		 
		 if(sound == 2){
		  MP3Player_PlayBuffer(Peter_de_Man___Cyborgs_Trip_d090128_mp3, Peter_de_Man___Cyborgs_Trip_d090128_mp3_size, NULL);
		 }

}
	
	gwd.Flush();
	
	}
	}
	}

    int main(int argc, char **argv){

	
	fatInitDefault();//Initialize the front SD for loading images
	
	// Create the game window and initalise the VIDEO subsystem
	gwd.InitVideo();
	
	WPAD_Init(); //Initialize the Wiimote
	
	MP3Player_Init(); //Initialze the MP3 Player
	
	WPAD_SetDataFormat(WPAD_CHAN_0, WPAD_FMT_BTNS_ACC_IR);//Allows us to use the Wiimote pointer
	
	WPAD_SetPowerButtonCallback(doPadPowerOff);//Set up power button
	
    iball->LoadImage("/apps/Wiibreaker/data/ball.png");
	ibrick->LoadImage("/apps/Wiibreaker/data/brick.png");
	ibrick2->LoadImage("/apps/Wiibreaker/data/black.png");
	ibrick3->LoadImage("/apps/Wiibreaker/data/blue.png");
	ibrick4->LoadImage("/apps/Wiibreaker/data/gray.png");
	ibrick5->LoadImage("/apps/Wiibreaker/data/green.png");
	ibrick6->LoadImage("/apps/Wiibreaker/data/orange.png");
	ibrick7->LoadImage("/apps/Wiibreaker/data/red.png");
	ipaddle->LoadImage("/apps/Wiibreaker/data/paddle.png");
	background1->LoadImage("/apps/Wiibreaker/data/background1.png");
	background2->LoadImage("/apps/Wiibreaker/data/background2.png");
	background3->LoadImage("/apps/Wiibreaker/data/background3.png");
	pointer->LoadImage("/apps/Wiibreaker/data/pointer.png");
	
	shutdown = false;
	
	for(int i = 0; i < 30; i++){
	brick[i] = new Sprite();
	}
	
	ball->SetImage(iball);
	paddle->SetImage(ipaddle);
	Pointer->SetImage(pointer);
	
	LoadHighscores();
	
	while(true){
	
	firsthit = false;
	rows = 0;
	reset = 1;
	Menu();
	
	score = 0;
	lives = 3;
	helpescape = 0;
	
	if(quit == 1)
	break;
	
	ballx = 320 - (ball->GetWidth()/2);
	bally = 300;
	holdball = 0;
	
	balldir = rand() % 2 + 1;
	
	if(controlscheme == 0 || controlscheme == 2)
	paddle->SetRotation(0);
	
	if(controlscheme == 0 || controlscheme == 2)
	paddlex = 320 - (paddle->GetWidth()/2);
	
	if(controlscheme == 0 || controlscheme == 2)
	paddley = 400;
	
	if(controlscheme == 1)
	paddle->SetPosition(0, 0);
	
	wait = 0;
	
	if(mode == 3)
	leveleditor();

	for(;;)
	{
		WPAD_ScanPads();
		
		Background->Draw();
		
		if(reset == 1 && wait == 0){
		bricksetup();
		resetb();
		}
		
		for(int i = 0; i < 30; i++){
	    if(alive[i] == true){
		brick[i]->SetPosition(brickx[i], bricky[i]);
		brick[i]->Draw();
		}
	    }
		
		updateball();
		
		ball->SetPosition(ballx, bally);
		ball->Draw();
		
		//Get Controller Input
		if(controlscheme == 0){
		
        WPAD_Expansion(WPAD_CHAN_0, &exp);
        exp.type = WPAD_EXP_NUNCHUK;
		
		//Get rid of controller interference
		WPADData* data = WPAD_Data(WPAD_CHAN_0);
	    switch (data->exp.type) {
		
		case WPAD_EXP_NUNCHUK:
		    if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_NUNCHUK_BUTTON_C)
			paddlex -= 8;
			if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_NUNCHUK_BUTTON_Z)
			paddlex += 8;
			break;
			
		case WPAD_EXP_CLASSIC:
			if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_LEFT)
			paddlex -= 8;
			if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_RIGHT)
			paddlex += 8;
			break;
	    }
		
		if((WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_LEFT)||(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_UP) || ((exp.nunchuk.js.ang>=270-45 && exp.nunchuk.js.ang<=270+45) && exp.nunchuk.js.mag>=0.9))
		paddlex -= 8;
		
		if((WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_RIGHT)||(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_DOWN) || ((exp.nunchuk.js.ang>=90-45 && exp.nunchuk.js.ang<=90+45) && exp.nunchuk.js.mag>=0.9))
		paddlex += 8;
		
		if(paddlex < 0)
		paddlex = 0;
		
		if(paddlex + paddle->GetWidth() > 640)
		paddlex = 640 - paddle->GetWidth();
		
		paddle->SetPosition(paddlex, paddley);
		
		}
		
		if(controlscheme == 1){
		
		// Infrared calculation - The X and Y of the wiimote sprite
        ir_t ir; // The struct for infrared
	    WPAD_IR(WPAD_CHAN_0, &ir); // Let's get our infrared data
	    // Give our sprite the positions and the angle.
	    paddle->SetPosition(ir.sx-WSP_POINTER_CORRECTION_X, ir.sy-WSP_POINTER_CORRECTION_Y); // We use these constants to translate the position correctly to the screen
	    paddle->Move(-((f32)paddle->GetWidth()/2), -((f32)paddle->GetHeight()/2)); // And these to make our image appear at the center of this position.
	    paddle->SetRotation(ir.angle/2); // Set angle/2 to translate correctly
		
		}
		
		if(controlscheme == 2){
		
		if(wait == 0){

        WPAD_Expansion(WPAD_BALANCE_BOARD, &exp2);//Get data from the attached expansion (the balance board in this case)
		exp2.type = WPAD_EXP_WIIBOARD;
		
		x = exp2.wb.x;
		
		//Left Movements
		
		if(x < -4)//-4
		paddlex -= 4;
		
		if(x < -8)//-7
		paddlex -= 5;
		
		if(x < -13)//-9
		paddlex -= 6;
		
		if(x < -15)//-11
		paddlex -= 7;
		
		if(x < -18)//-13
		paddlex -= 8;
		
		//Right Movements
		
		if(x > 4)
		paddlex += 4;
		
		if(x > 8)
		paddlex += 5;
		
		if(x > 13)
		paddlex += 6;
		
		if(x > 15)
		paddlex += 7;
		
		if(x > 18)
		paddlex += 8;
	
		
		if(paddlex < 0)
		paddlex = 0;
		
		if(paddlex + paddle->GetWidth() > 640)
		paddlex = 640 - paddle->GetWidth();
		
		}
		
		paddle->SetPosition(paddlex, paddley);
		
		}
		
		if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_PLUS) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_PLUS))
		pausegame();
		
		paddle->Draw();
		
		if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_HOME))
		break;	
		
		if(shutdown == true)
		SYS_ResetSystem( SYS_POWEROFF, 0, 0 );
		
		if(rumblecounter == 7){
		WPAD_Rumble(WPAD_CHAN_0, 0);
		rumblecounter = 0;
		}
		
		if(rumblecounter != 0)
		rumblecounter++;
		
		if(controlscheme == 2)
		wait++;
		
		if(wait > 1)
		wait = 0;
		
		gwd.Flush();
		
		checkforreset();
		
		if(lives <= 0)
		break;
		
		if(holdball < 15)
		holdball++;
		
		if(sound && !MP3Player_IsPlaying()){
			
		MP3Player_Stop();
		
		if(sound == 1){
		  MP3Player_PlayBuffer(Peter_de_Man___Lightwaves_d090128_mp3, Peter_de_Man___Lightwaves_d090128_mp3_size, NULL);
		 }
		 
		 if(sound == 2){
		  MP3Player_PlayBuffer(Peter_de_Man___Cyborgs_Trip_d090128_mp3, Peter_de_Man___Cyborgs_Trip_d090128_mp3_size, NULL);
		 }

}
		
	}
	
	WPAD_Rumble(WPAD_CHAN_0, 0);
	
	switch(mode){
	case 1:
	switch(controlscheme){
	case 0:
	if(score > scores[0])
	scores[0] = score;
	break;
	
	case 1:
	if(score > scores[1])
	scores[1] = score;
	break;
	
	case 2:
	if(score > scores[2])
	scores[2] = score;
	break;
	}
	break;
	case 2:
	switch(controlscheme){
	case 0:
	if(score > scores[3])
	scores[3] = score;
	break;
	
	case 1:
	if(score > scores[4])
	scores[4] = score;
	break;
	
	case 2:
	if(score > scores[5])
	scores[5] = score;
	break;
	}
	break;
	}
	SaveHighscores();
   }
	return 0;
}

