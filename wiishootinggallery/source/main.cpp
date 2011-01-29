/* Wii Shooting Gallery

	Written by Arikado
*/

	

#include "mainhead.h"	
	      
	//Functions
	
	void SaveHighscores(){
	
	fps = fopen("sd:/apps/WiiShootingGallery/data/scores.highscores","wb");
	
	if(fps){
	
	fwrite(&hscores[0], sizeof(hscores), 1, fps);
	
	}
	
	fclose(fps);
	
	}
	
	void LoadHighscores(){
	
	fps = fopen("sd:/apps/WiiShootingGallery/data/scores.highscores","rb");
	
	if(fps){
	
	fread(&hscores[0], sizeof(hscores), 1, fps);
	
	}
	
	fclose(fps);
	
	}
	
	void SaveSettings(){
	
	fps = fopen("sd:/apps/WiiShootingGallery/data/settings.configuration","wb");
	
	if(fps){
	
	settings[0] = bgm;
	settings[1] = trans;
	settings[2] = backgroundchoice;
	settings[3] = anim;
	settings[4] = rumble;
	settings[5] = timechoice;
	
	fwrite(&settings[0], sizeof(settings), 1, fps);
	
	}
	
	fclose(fps);
	
	}
	
	void LoadSettings(){
	
	fps = fopen("sd:/apps/WiiShootingGallery/data/settings.configuration","rb");
	
	if(fps){
	
	fread(&settings[0], sizeof(settings), 1, fps);
	
	bgm = settings[0];
	trans = settings[1];
	backgroundchoice = settings[2];
	anim = settings[3];
	rumble = settings[4];
	timechoice = settings[5];
	
	}
	
	if(!fps){
	
	//Set Defaults
	bgm = 0;
	trans = 0;
	backgroundchoice = 4;
	anim = 1;
	rumble = 1;
	timechoice = 0;
	
	}
	
	fclose(fps);
	
	}
	
	void MusicStartup(){
	
	    if(bgm > 0){
	
			mp3isready = false;
			if(bgm == 1)
			BGM = fopen("sd:/apps/WiiShootingGallery/data/bgm1.mp3", "rb");
			if(bgm == 2)
			BGM = fopen("sd:/apps/WiiShootingGallery/data/bgm2.mp3", "rb");
			if(bgm == 3)
			BGM = fopen("sd:/apps/WiiShootingGallery/data/bgm3.mp3", "rb");
			if(BGM){
			//Obtain file size
			fseek (BGM , 0 , SEEK_END);
			lSize = ftell (BGM);
			rewind (BGM);
			//Allocate memory to contain the whole file
			buffer = (char*) malloc (sizeof(char)*lSize);
			//Copy the file into the buffer
			result = fread (buffer,1,lSize,BGM);
			//Play the buffer
			MP3Player_PlayBuffer(buffer,lSize,NULL)	;
			}
			mp3isready = true;
			fclose(BGM);
			
		}
	
	}
	
	void SetHighScores(){
	
	switch(mode){
			
			case 1:
	        if(score > hscores[0])
			hscores[0] = score;
			break;
			
			case 2:
	        if(score > hscores[1])
			hscores[1] = score;
			break;
			
			case 3:
	        if(score > hscores[2])
			hscores[2] = score;
			break;
			
			case 4:
	        if(score > hscores[3])
			hscores[3] = score;
			break;
			
			case 5:
	        if(score > hscores[4])
			hscores[4] = score;
			break;
			
			case 6:
	        if(score > hscores[5])
			hscores[5] = score;
			break;
			
			case 7:
			
			switch(diff){
			
			case 1:
	        if(score > hscores[6])
			hscores[6] = score;
			break;
			
			case 2:
	        if(score > hscores[7])
			hscores[7] = score;
			break;
			
			case 3:
	        if(score > hscores[8])
			hscores[8] = score;
			break;
			
			case 4:
	        if(score > hscores[9])
			hscores[9] = score;
			break;
			
			}
			break;
			
			case 8:
			
			switch(diff){
			
			case 1:
	        if(score > hscores[10])
			hscores[10] = score;
			break;
			
			case 2:
	        if(score > hscores[11])
			hscores[11] = score;
			break;
			
			case 3:
	        if(score > hscores[12])
			hscores[12] = score;
			break;
			
			case 4:
	        if(score > hscores[13])
			hscores[13] = score;
			break;
			
			}
			break;
			
			}
	         }
			 
	void doPadPowerOff(s32 chan){

       shutdown = true;	
	   
	return;
    }
	
	void Music(){
	
	  if((!bgm) && (MP3Player_IsPlaying()))
	  MP3Player_Stop();
	
	  if((bgm) && (!MP3Player_IsPlaying()) && (mp3isready)){
	  MP3Player_PlayBuffer(buffer, lSize, NULL);
	  }
	}
	
	void InMenu(GameWindow *gwd, bool end, int &healthpass, int &scorepass){

		Text.SetPosition(0, 0);
		
		int inbackx = 640/2 - Inback->GetWidth()/2 + 4;
		int inbacky = 480/2 - Inback->GetHeight()/2 + 220;
		
		Inback->SetPosition((inbackx - 4), (inbacky - 220));
		
		if(end == false){
		inbackx += 5;
		inbacky -= 40;
		MButton[0]->SetPosition(inbackx, inbacky);
		inbacky -= 60;
		MButton[1]->SetPosition(inbackx, inbacky);
		inbacky -= 60;
		MButton[2]->SetPosition(inbackx, inbacky);
		}
		
		if(end == true){
		
		inbackx += 5;
		inbacky -= 100;
		MButton[0]->SetPosition(inbackx, inbacky);
		inbacky -= 60;
		MButton[1]->SetPosition(inbackx, inbacky);
		
		}
	
	    while(true){
		   WPAD_ScanPads();
		   
		   if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME)
		   homemenu(gwd);
		
		   Music();
		
		   Background->Draw();
		   
		   Inback->Draw();
		   
		   for(int i = 0; i < 3; i++){
		   
		   MButton[i]->SetTransparency(0xFF);
		   
		   if(!Aim->CollidesWith(MButton[i]))
		   MButton[i]->SetImage(button3);
		   if(Aim->CollidesWith(MButton[i]))
		   MButton[i]->SetImage(button4);
		   
		   if(i == 2 && end == true)
		   MButton[2]->SetTransparency(0);
		   
		   MButton[i]->Draw();
		   
		   }
		   
		   print.setColor(Color::Color(0,0,255));
		   
		   print.printf("\n\n\n\n\n\n                      Score: %d\n", scorepass);//22 spaces for each
		   
		   switch(mode){
			
			case 1:
	        print.printf("                      Highscore: %d\n", hscores[0]);
			break;
			
			case 2:
	        print.printf("                      Highscore: %d\n", hscores[1]);
			break;
			
			case 3:
	        print.printf("                      Highscore: %d\n", hscores[2]);
			break;
			
			case 4:
	        print.printf("                      Highscore: %d\n", hscores[3]);
			break;
			
			case 5:
	        print.printf("                      Highscore: %d\n", hscores[4]);
			break;
			
			case 6:
	        print.printf("                      Highscore: %d\n", hscores[5]);
			break;
			
			case 7:
			
			switch(diff){
			
			case 1:
	        print.printf("                      Highscore: %d\n", hscores[6]);
			break; 
			
			case 2:
	        print.printf("                      Highscore: %d\n", hscores[7]);
			break;
			
			case 3:
	        print.printf("                      Highscore: %d\n", hscores[8]);
			break;
			
			case 4:
	        print.printf("                      Highscore: %d\n", hscores[9]);
			break;
			
			}
			break;
			
			case 8:
			
			switch(diff){
			
			case 1:
	        print.printf("                      Highscore: %d\n", hscores[10]);
			break;
			
			case 2:
	        print.printf("                      Highscore: %d\n", hscores[11]);
			break;
			
			case 3:
	        print.printf("                      Highscore: %d\n", hscores[12]);
			break;
			
			case 4:
	        print.printf("                      Highscore: %d\n", hscores[13]);
			break;
			
			}
			break;
			
			}
			
			print.printf("\n");
			
			print.setColor(Color::Color(255, 0, 0));
			
			if(end == false){  
			print.printf("                               Resume\n\n\n");
			print.printf("                              Restart\n\n\n");
			print.printf("                                Quit");
			}
			
			if(end == true){
			print.printf("                              Restart\n\n\n");
			print.printf("                                Quit");
			}
		   
		   print.flush();
			
		   Text.Draw();
			
		   print.clear();
			
		   print.reset();
			
		   ir_t ir;
		   WPAD_IR(WPAD_CHAN_0, &ir);
		   Aim->SetPosition(ir.sx-WSP_POINTER_CORRECTION_X, ir.sy-WSP_POINTER_CORRECTION_Y);
		   Aim->Move(-((f32)Aim->GetWidth()/2), -((f32)Aim->GetHeight()/2));
		   Aim->SetRotation(ir.angle/2);
		   Aim->Draw();
			 
		   gwd->Flush();
		   
		   if(shutdown == true)
		   SYS_ResetSystem(SYS_POWEROFF, 0, 0);
		   
		   if((end == false) && ((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_PLUS) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_PLUS)))
		   break;
		   
		   if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B)){
		   if(!end){
		   //Quit
		   if(Aim->CollidesWith(MButton[0])){
		   quitcheck = true;
		   healthpass = 0;
		   break;
		   }
		   
	       //Restart
		   if(Aim->CollidesWith(MButton[1])){
		   scorepass = 0;
		   healthpass = 4;
		   break;
		   }
		   
		   //Resume
		   if(Aim->CollidesWith(MButton[2])){
		   break;
		   }
		   }
		   if(end){
		   //Quit
		   if(Aim->CollidesWith(MButton[0])){
		   quitcheck = true;
		   healthpass = 0;
		   break;
		   }
		   //Restart
		   if(Aim->CollidesWith(MButton[1])){
		   scorepass = 0;
		   healthpass = 3;
		   break;
		   }
		   }
		   
		  }
		  
		 }
		  
		  MButton[2]->SetTransparency(0xFF);//So the button isn't hidden on the menu later
	
	}
		  
	void Menu(GameWindow *gwd){
	
	        int screen = 0;
	
	        int buttonx = 320 - Button[0]->GetWidth()/2;
		  
	        Button[0]->SetPosition(buttonx, 60);
			Button[1]->SetPosition(buttonx, 120);
			Button[2]->SetPosition(buttonx, 180);
			Button[3]->SetPosition(buttonx, 240);
			Button[4]->SetPosition(buttonx, 300);
			Button[5]->SetPosition(buttonx, 360);
			
			MButton[0]->SetPosition(0, 90);
			MButton[1]->SetPosition(0, 200);
			MButton[2]->SetPosition(0, 300);
			
			GButton[0]->SetPosition(40, 80);
			GButton[1]->SetPosition(180, 80);
			GButton[2]->SetPosition(320, 80);
			GButton[3]->SetPosition(460, 80);
			GButton[4]->SetPosition(40, 240);
			GButton[5]->SetPosition(180, 240);
			GButton[6]->SetPosition(320, 240);
			GButton[7]->SetPosition(460, 240);
			GButton[8]->SetPosition(buttonx, 410);
			
			buttonx = 320 - QButton[0]->GetWidth()/2;
			
			QButton[0]->SetPosition(buttonx, 60);
			QButton[1]->SetPosition(buttonx, 140);
			QButton[2]->SetPosition(buttonx, 220);
			QButton[3]->SetPosition(buttonx, 300);
			
			DButton[0]->SetPosition(buttonx, 60);
			DButton[1]->SetPosition(buttonx, 140);
			DButton[2]->SetPosition(buttonx, 220);
			DButton[3]->SetPosition(buttonx, 300);
			
			int savex = 640 - Save->GetWidth() - 20;
			int savey = 480 - Save->GetHeight();
			Save->SetPosition(savex, savey);
			
			int backy = 480 - Back->GetHeight();
			Back->SetPosition(20, backy);
			
			bool minifix = false;//Fixes a small screen problem with the back button
			
			for(int i = 0; i < 6; i++){
			
			Arrow[i]->SetPosition(buttonx - (Arrow[i]->GetWidth()*2), Button[i]->GetY());
			
			}
			
			for(int i = 6; i < 12; i++){
			
			Arrow[i]->SetPosition(buttonx + Button[i - 6]->GetWidth() + (Arrow[i]->GetWidth()*2), Button[i - 6]->GetY());
			
			}
			
			Target[0]->SetImage(target, 80, 80);
			Target[1]->SetImage(target, 80, 80);
			Target[2]->SetImage(target, 80, 80);
			
			int stargetx = 0 + MButton[0]->GetWidth() + 80;
			int stargety = MButton[0]->GetY() - MButton[0]->GetHeight()/2;
			Target[0]->SetPosition(stargetx, stargety);
			stargety = MButton[1]->GetY() - MButton[0]->GetHeight()/2;
			Target[1]->SetPosition(stargetx, stargety);
			stargety = MButton[2]->GetY() - MButton[0]->GetHeight()/2;
			Target[2]->SetPosition(stargetx, stargety);
			
			print.setFont(font_ttf, font_ttf_size);
			Text.SetPosition(80, 0);
		    Text.SetImage(&print);
		  
		    Background->SetPosition(0, 0);
			
			buttonx = 320 - Start->GetWidth()/2;
		  
		    while(true){
			
			WPAD_ScanPads();
			
			Music();
			
			MBackground->Draw();
			
			if(screen != 3){
			Aim->SetImage(hand);
			Aim->SetTransparency(0xFF);
			}
			
			if(screen == 3){
			if(Aim->CollidesWith(Button[2]) || Aim->CollidesWith(Arrow[2]) || Aim->CollidesWith(Arrow[8]))
			Background->Draw();
			}
			
			print.setColor(Color::Color(0,0,255));
			print.setSize(18);
			
			if(screen == 0)
	        print.printf("             Wii Shooting Gallery\n\n\n\n\n");
			
			if(screen == 3)
	        print.printf("             Wii Shooting Gallery\n\n\n");
			
			if(screen == 1)
	        print.printf("             Wii Shooting Gallery\n\n");
			
			if(screen == 2 || screen == 4)
	        print.printf("             Wii Shooting Gallery\n\n\n");
			
			if(screen == 5)
			print.printf("             Wii Shooting Gallery\n");
			  
			if(screen == 2){
			 
			 for(int i = 0; i < 4; i++){
			 if(!Aim->CollidesWith(DButton[i]))
			 DButton[i]->SetImage(button3);
			 if(Aim->CollidesWith(DButton[i]))
			 DButton[i]->SetImage(button4);
			 DButton[i]->Draw();
			}
			
			if(!Aim->CollidesWith(Back))
			Back->SetImage(back);
			
			if(Aim->CollidesWith(Back))
			Back->SetImage(back2);
			
			Back->Draw();
			
			print.setColor(Color::Color(255,0,0));
			
			print.printf("                       Easy\n\n\n\n");
			print.printf("                      Medium\n\n\n\n");
			print.printf("                       Hard\n\n\n\n");
			print.printf("                   Very  Hard");
			
			if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B)){
			if(Aim->CollidesWith(DButton[0])){
			diff = 1;
			break;
			}
			if(Aim->CollidesWith(DButton[1])){
			diff = 2;
			break;
			}
			if(Aim->CollidesWith(DButton[2])){
			diff = 3;
			break;
			}
			if(Aim->CollidesWith(DButton[3])){
			diff = 4;
			break;
			}
			if(Aim->CollidesWith(Back)){
			screen = 1;
			minifix = true;
			}
			 }
			  }
			
			if(screen == 3){
			
			print.setColor(Color::Color(0,0,0));
			
			for(int i = 0; i < 6; i++){
			Button[i]->SetImage(button);
			}
			
			if(Aim->CollidesWith(Arrow[0]) || Aim->CollidesWith(Arrow[6]))
			Button[0]->SetImage(button2);
			
			if(Aim->CollidesWith(Arrow[1]) || Aim->CollidesWith(Arrow[7]))
			Button[1]->SetImage(button2);
			
			if(Aim->CollidesWith(Arrow[2]) || Aim->CollidesWith(Arrow[8]))
			Button[2]->SetImage(button2);
			
			if(Aim->CollidesWith(Arrow[3]) || Aim->CollidesWith(Arrow[9]))
			Button[3]->SetImage(button2);
			
			if(Aim->CollidesWith(Arrow[4]) || Aim->CollidesWith(Arrow[10]))
			Button[4]->SetImage(button2);
			
			if(Aim->CollidesWith(Arrow[5]) || Aim->CollidesWith(Arrow[11]))
			Button[5]->SetImage(button2);
			
			
			for(int i = 0; i < 6; i++){
			Button[i]->Draw();
			}
			
			//Draw Arrows
			for(int i = 0; i < 12; i++){
			
			if(!Aim->CollidesWith(Arrow[i]))
			Arrow[i]->SetImage(arrow);
			
			if(Aim->CollidesWith(Arrow[i]))
			Arrow[i]->SetImage(arrow2);
			
			Arrow[i]->Draw();
			}
			
			if(!Aim->CollidesWith(Back))
			Back->SetImage(back);
			
			if(Aim->CollidesWith(Back))
			Back->SetImage(back2);
			
			Back->Draw();
			
			if(!Aim->CollidesWith(Save))
			Save->SetImage(save);
			
			if(Aim->CollidesWith(Save))
			Save->SetImage(save2);
			
			Save->Draw();
			
			switch(trans){
			
			case 0:
			print.printf("                Crosshair 1\n\n\n");
			Aim->SetImage(crosshair1);
			Aim->SetTransparency(0xFF);
			break;
			
			case 1:
			print.printf("                Crosshair 2\n\n\n");
			Aim->SetImage(crosshair2);
			break;
			
			case 2:
			print.printf("                Crosshair 3\n\n\n");
			Aim->SetImage(crosshair3);
			break;
			
			case 3:
			print.printf("                Crosshair 4\n\n\n");
			Aim->SetImage(crosshair4);
			break;
			
			case 4:
			print.printf("                Crosshair 5\n\n\n");
			Aim->SetImage(crosshair5);
			Aim->SetTransparency(0xFF);
			break;
			
			case 5:
			print.printf("                No Crosshair\n\n\n");
			Aim->SetImage(crosshair1);//Keeps the invisible pointer at a sane size which is crucial to keeping the menu working properly
			Aim->SetTransparency(0);
			break;
			
			}
			
			switch(bgm){
			
			case 0:
			print.printf("                No Music\n\n\n");
			if(firstmp3)
			MP3Player_Stop();
			break;
			
			case 1:
			print.printf("                Music 1\n\n\n");
			if(firstmp3){
			mp3isready = false;
			MP3Player_Stop();
			if(buffer)
			free(buffer);
			BGM = fopen("sd:/apps/WiiShootingGallery/data/bgm1.mp3", "rb");
			if(BGM){
			//Obtain file size
			fseek (BGM , 0 , SEEK_END);
			lSize = ftell (BGM);
			rewind (BGM);
			//Allocate memory to contain the whole file
			buffer = (char*) malloc (sizeof(char)*lSize);
			//Copy the file into the buffer
			result = fread (buffer,1,lSize,BGM);
			MP3Player_PlayBuffer(buffer,lSize,NULL)	;
			}
			mp3isready = true;
			fclose(BGM);
			firstmp3 = false;
			}
			break;
			
			case 2:
			print.printf("                Music 2\n\n\n");
			if(firstmp3){
			mp3isready = false;
			MP3Player_Stop();
			if(buffer)
			free(buffer);
			BGM = fopen("sd:/apps/WiiShootingGallery/data/bgm2.mp3", "rb");
			if(BGM){
			//Obtain file size
			fseek (BGM , 0 , SEEK_END);
			lSize = ftell (BGM);
			rewind (BGM);
			//Allocate memory to contain the whole file
			buffer = (char*) malloc (sizeof(char)*lSize);
			//Copy the file into the buffer
			result = fread (buffer,1,lSize,BGM);
			MP3Player_PlayBuffer(buffer,lSize,NULL)	;
			}
			mp3isready = true;
			fclose(BGM);
			firstmp3 = false;
			}
			break;
			
			case 3:
			print.printf("                Music 3\n\n\n");
			if(firstmp3){
			mp3isready = false;
			MP3Player_Stop();
			if(buffer)
			free(buffer);
			BGM = fopen("sd:/apps/WiiShootingGallery/data/bgm3.mp3", "rb");
			if(BGM){
			//Obtain file size
			fseek (BGM , 0 , SEEK_END);
			lSize = ftell (BGM);
			rewind (BGM);
			//Allocate memory to contain the whole file
			buffer = (char*) malloc (sizeof(char)*lSize);
			//Copy the file into the buffer
			result = fread (buffer,1,lSize,BGM);
			MP3Player_PlayBuffer(buffer,lSize,NULL)	;
			}
			mp3isready = true;
			fclose(BGM);
			firstmp3 = false;
			}
			break;
			
			}
			
			switch(backgroundchoice){
			
			case 1:
			Background->SetTransparency(0xFF);
			Background->SetImage(background1);
			print.printf("                Background 1\n\n\n");
			break;
			
			case 2:
			Background->SetImage(background2);
			print.printf("                Background 2\n\n\n");
			break;
			
			case 3:
			Background->SetTransparency(0xFF);
			Background->SetImage(background3);
			print.printf("                Background 3\n\n\n");
			break;
			
			case 4:
			Background->SetTransparency(0);
			print.printf("                No Background\n\n\n");
			break;
			}
			
			switch(anim){
			case 1:
			print.printf("                Animation On\n\n\n");
			break;
			
			case 2:
			print.printf("                Animation Off\n\n\n");
			break;
			}
			
			switch(rumble){
			
			case 0:
			print.printf("                Rumble Off\n\n\n");
			break;
			
			case 1:
			print.printf("                Rumble On\n\n\n");
			break;
			}
			
			switch(timechoice){
			
			case 0:
			print.printf("                Unlimited Time");
			maxtime = 0;
			break;
			
			case 1:
			print.printf("                One minute");
			maxtime = 3529;
			break;
			
			case 2:
			print.printf("                Two Minutes");
			maxtime = 7059;
			break;
			
			case 3:
			print.printf("                Three Minutes");
			maxtime = 10588;
			break;
			
			case 4:
			print.printf("                Four Minutes");
			maxtime = 14118;
			break;
			
			case 5:
			print.printf("                Five Minutes");
			maxtime = 17647;
			break;
			
			}
			
			if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A)){
			 if(Aim->CollidesWith(Arrow[1])){
			 bgm--;
			 firstmp3 = true;
			 }
			 if(Aim->CollidesWith(Arrow[0]))
			 trans--;
			 if(Aim->CollidesWith(Arrow[2]))
			 backgroundchoice--;
			 if(Aim->CollidesWith(Arrow[3]))
			 anim--;
			 if(Aim->CollidesWith(Arrow[4]))
			 rumble--;
			 if(Aim->CollidesWith(Arrow[5]))
			 timechoice--;
			 if(Aim->CollidesWith(Arrow[7])){
			 bgm++;
			 firstmp3 = true;
			 }
			 if(Aim->CollidesWith(Arrow[6]))
			 trans++;
			 if(Aim->CollidesWith(Arrow[8]))
			 backgroundchoice++;
			 if(Aim->CollidesWith(Arrow[9]))
			 anim++;
			 if(Aim->CollidesWith(Arrow[10]))
			 rumble++;
			 if(Aim->CollidesWith(Arrow[11]))
			 timechoice++;
			 if(Aim->CollidesWith(Back))
			 screen = 0;
			 if(Aim->CollidesWith(Save))
			 SaveSettings();
			 
			 if(trans > 5)
			 trans = 0;
			 
			 if(trans < 0)
			 trans = 5;
			 
			 if(backgroundchoice > 4)
			 backgroundchoice = 1;
			 
			 if(backgroundchoice < 1)
			 backgroundchoice = 4;
			 
			 if(timechoice > 5)
			 timechoice = 0;
			 
			 if(timechoice < 0)
			 timechoice = 5;
			
			 if(anim > 2)
			 anim = 1;
			 if(anim < 1)
			 anim = 2;
			 
			 if(rumble < 0)
			 rumble = 1;
			 if(rumble > 1)
			 rumble = 0;
			 
			 if(bgm < 0)
			 bgm = 3;
			 if(bgm > 3)
			 bgm = 0;
			 }
			  }
			 
			 if(screen == 4){
			 
			 for(int i = 0; i < 4; i++){
			 if(!Aim->CollidesWith(QButton[i]))
			 QButton[i]->SetImage(button3);
			 if(Aim->CollidesWith(QButton[i]))
			 QButton[i]->SetImage(button4);
			 QButton[i]->Draw();
			}
			
			if(!Aim->CollidesWith(Back))
			Back->SetImage(back);
			
			if(Aim->CollidesWith(Back))
			Back->SetImage(back2);
			
			Back->Draw();
			
			print.setColor(Color::Color(255,0,0));
			
			print.printf("              Return to Loader\n\n\n\n");
			print.printf("                 System Menu\n\n\n\n");
			print.printf("                      Reset\n\n\n\n");
			print.printf("                   Power Off");
			
			if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B)){
			if(Aim->CollidesWith(QButton[0]))
			exit(0);
			if(Aim->CollidesWith(QButton[1]))
			WII_ReturnToMenu();
			if(Aim->CollidesWith(QButton[2]))
			SYS_ResetSystem(SYS_RESTART,0,0);
			if(Aim->CollidesWith(QButton[3]))
			SYS_ResetSystem(SYS_POWEROFF_STANDBY, 0, 0);
			if(Aim->CollidesWith(Back))
			screen = 0;
			}
			 }
			 
			if(screen == 1){
			
			print.setColor(Color::Color(0,0,0));
			print.printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                View Highscores");
			
			if(!Aim->CollidesWith(GButton[8]))
			GButton[8]->SetImage(button);
			
			if(Aim->CollidesWith(GButton[8]))
			GButton[8]->SetImage(button2);
	
			GButton[8]->Draw();
			
			for(int i = 0; i < 8; i++){
			GButton[i]->Draw();
			}
			
			if(!Aim->CollidesWith(Back))
			Back->SetImage(back);
			
			if(Aim->CollidesWith(Back))
			Back->SetImage(back2);
			
			Back->Draw();
			
			for(int i = 0;i < 8; i++){
			if(Aim->CollidesWith(GButton[i])){
			int hx = GButton[i]->GetX();
			int hy = GButton[i]->GetY();
			Highlighter->SetPosition(hx, hy);
			Highlighter->Draw();
			break;
			}
			}
			
			if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A)){
			if(Aim->CollidesWith(GButton[0])){
			mode = 1;
			break;
			}
			if(Aim->CollidesWith(GButton[1])){
			mode = 2;
			break;
			}
			if(Aim->CollidesWith(GButton[2])){
			mode = 3;
			break;
			}
			if(Aim->CollidesWith(GButton[3])){
			mode = 4;
			break;
			}
			if(Aim->CollidesWith(GButton[4])){
			mode = 5;
			break;
			}
			if(Aim->CollidesWith(GButton[5])){
			mode = 6;
			break;
			}
			if(Aim->CollidesWith(GButton[6])){
			mode = 7;
			screen = 2;
			}
			if(Aim->CollidesWith(GButton[7])){
			mode = 8;
			diff = 1;
			break;
			}
			if(Aim->CollidesWith(GButton[8]))
			screen = 5;
			if((Aim->CollidesWith(Back)) && (!minifix))
			screen = 0;
			 }
			  }
			  
			if(screen == 5){
			if(!Aim->CollidesWith(Back))
			Back->SetImage(back);
			
			if(Aim->CollidesWith(Back))
			Back->SetImage(back2);
			
			Back->Draw();
			
			print.setColor(Color::Color(255,0,0));
			
			print.printf("                    Highscores\n");
			
			print.setColor(Color::Color(0,0,0));
			
			print.printf("  Still Targets                                 %d\n\n", hscores[0]);
			print.printf("  Horizontal Targets                        %d\n\n", hscores[1]);
			print.printf("  Vertical Targets                           %d\n\n", hscores[2]);
			print.printf("  Crazy Targets                                %d\n\n", hscores[3]);
			print.printf("  Crisscross Targets                        %d\n\n", hscores[4]);
			print.printf("  Teleporting Targets                        %d\n\n", hscores[5]);
			print.printf("  Hogan Easy                                    %d\n\n", hscores[6]);
			print.printf("  Hogan Medium                                  %d\n\n", hscores[7]);
			print.printf("  Hogan Hard                                     %d\n\n", hscores[8]);
			print.printf("  Hogan Very Hard                            %d\n\n", hscores[9]);
			print.printf("  Wii Shoot In Space                          %d", hscores[10]);
			
			if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B)){
				if(Aim->CollidesWith(Back)){
				screen = 1;
				minifix = true;
				}
				
			}
			
			}
			 
			if(screen == 0){
			
			for(int i = 0; i < 3; i++){
			if(!Aim->CollidesWith(MButton[i]))
			MButton[i]->SetImage(button3);
			if(Aim->CollidesWith(MButton[i]))
			MButton[i]->SetImage(button4);
			MButton[i]->Draw();
			Target[i]->Draw();
			}
			
			Target[0]->NextFrame();
			Target[1]->PrevFrame();
			Target[2]->NextFrame();
			
			print.setColor(Color::Color(255,0,0));
			print.printf("Start\n\n\n\n\n");
			print.printf("Options\n\n\n\n\n");
			print.printf("  Quit");
			
			if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B)){
			
			if(Aim->CollidesWith(MButton[0]))
			screen = 1;
			
			if(Aim->CollidesWith(MButton[1]))
			screen = 3;
			
			if(Aim->CollidesWith(MButton[2]))
			screen = 4;
			 }
			}
			
			minifix = false;
			
			print.flush();
			
			Text.Draw();
			
			print.clear();
			
			print.reset();
			
			ir_t ir;
		    WPAD_IR(WPAD_CHAN_0, &ir);
		    Aim->SetPosition(ir.sx-WSP_POINTER_CORRECTION_X, ir.sy-WSP_POINTER_CORRECTION_Y);
		    Aim->Move(-((f32)Aim->GetWidth()/2), -((f32)Aim->GetHeight()/2));
		    Aim->SetRotation(ir.angle/2);
		    Aim->Draw();
			 
			 if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B) && (Aim->CollidesWith(Start)))
			 break;
			 
			 if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_HOME)){
			 if(MP3Player_IsPlaying())
			 MP3Player_Stop();
			 homemenu(gwd);
			 }
			 
			 if(shutdown == true)
		     SYS_ResetSystem(SYS_POWEROFF, 0, 0);
			 
			 gwd->Flush();
		  }
		  //Set crosshair for game to be played after Menu is exited
		  switch(trans){
		    case 0:
			Aim->SetImage(crosshair1);
			break;
			
			case 1:
			Aim->SetImage(crosshair2);
			break;
			
			case 2:
			Aim->SetImage(crosshair3);
			break;
			
			case 3:
			Aim->SetImage(crosshair4);
			break;
			
			case 4:
			Aim->SetImage(crosshair5);
			break;
			
			case 5:
			Aim->SetTransparency(0);
			break;
		  }
		 }
		  
		  bool CheckForHit(){
		  
		  for(int i = 0; i < 5; i++){
		  
		  if(Aim->CollidesWith(Target[i])){
		  if(talive[i] == true){
		  talive[i] = false;
		  score++;
		  if(rumble == 1){
		  WPAD_Rumble(WPAD_CHAN_0, 1);
		  rumblecounter = 1;
		  }
		  return true;
		   }
		  }
		 }
		 return false;
		}
		 
		
		 void SpawnTarget(){
		 
		 int placement = 0;//FOR MODES 2 AND 3 AND 5
		 
		 for(int i = 0; i < 5; i++){
		 
		 if(talive[i] == false){
		 talive[i] = true;
		 
		 if(mode == 1 || mode == 4 || mode == 6){
		 x[i] = rand() % 560 + 1;//Changes made for target boundary
		 y[i] = rand() % 380 + 1;//Changes Made for target boundary
		 }
		 
		 dir[i] = rand() % 2 + 1;
		 
		 if(mode == 2){
		 if(dir[i] == 1)
		 x[i] = 0;
		 if(dir[i] == 2)
		 x[i] = 640;
		 
		 placement = rand() % 5 + 1;
		 
		 if(placement == 1)
		 y[i] = 100;
		 
		 if(placement == 2)
		 y[i] = 200;
		 
		 if(placement == 3)
		 y[i] = 300;
		 
		 if(placement == 4)
		 y[i] = 400;
		 
		 if(placement == 5)
		 y[i] = 500;
		 }
		 
		 if(mode == 3){
		 if(dir[i] == 1)
		 y[i] = 0;
		 if(dir[i] == 2)
		 y[i] = 480;
		 
		 placement = rand() % 5 + 1;
		 
		 if(placement == 1)
		 x[i] = 100;
		 
		 if(placement == 2)
		 x[i] = 200;
		 
		 if(placement == 3)
		 x[i] = 300;
		 
		 if(placement == 4)
		 x[i] = 400;
		 
		 if(placement == 5)
		 x[i] = 500;
		 }
		 
		 if(mode == 5){
		 
		 dir[i] = rand() % 4 + 1;
		 
		 if(dir[i] == 1)
		 y[i] = 0;
		 if(dir[i] == 2)
		 y[i] = 480;
		 if(dir[i] == 3)
		 x[i] = 0;
		 if(dir[i] == 4)
		 x[i] = 640;
		 
		 placement = rand() % 5 + 1;
		 
		 if(dir[i] == 1 || dir[i] == 2){
		 
		 if(placement == 1)
		 x[i] = 100;
		 
		 if(placement == 2)
		 x[i] = 200;
		 
		 if(placement == 3)
		 x[i] = 300;
		 
		 if(placement == 4)
		 x[i] = 400;
		 
		 if(placement == 5)
		 x[i] = 500;
		 }
		 
		 if(dir[i] == 3 || dir[i] == 4){
		 
		 if(placement == 1)
		 y[i] = 100;
		 
		 if(placement == 2)
		 y[i] = 200;
		 
		 if(placement == 3)
		 y[i] = 300;
		 
		 if(placement == 4)
		 y[i] = 400;
		 
		 if(placement == 5)
		 y[i] = 500;
		 
		 }
		 
		 }
		 
		 if(mode == 6)
		 counter[i] = rand() % 6 + 1;//Set the teleport counter
		 
		 animdir[i] = rand() % 2 + 1;
		 
		 CheckTarget();
		 
		 Target[i]->SetPosition(x[i], y[i]);
		  
		 }
		}
	   }
	   
	   void MoveTarget(){
	   
	   if(mode == 2){
	   
	   for(int i = 0; i < 5; i++){
	   
	   if(dir[i] == 1)
	   x[i] += tspeed[i];
	   
	   if(dir[i] == 2)
	   x[i] -= tspeed[i];
	   
	   }
	   }
	   
	   if(mode == 3){
	   
	   for(int i = 0; i < 5; i++){
	   
	   if(dir[i] == 1)
	   y[i] += (tspeed[i] + 1);
	   
	   if(dir[i] == 2)
	   y[i] -= (tspeed[i] - 1);
	   
	   }
	   }
	   
	   if(mode == 4){
	   
	   for(int i = 0; i < 5; i++){
	   
	   int lastchancetomove = 0;
	   
	   lastchancetomove = rand() % 30 + 1;
	   
	   if(lastchancetomove == 3)
	   dir[i] = rand() % 8 + 1;
	   
	   if(dir[i] == 1)
	   y[i] -= (tspeed[i]);
	   
	   if(dir[i] == 2)
	   y[i] += (tspeed[i]);
	   
	   if(dir[i] == 3)
	   x[i] -= tspeed[i];
	   
	   if(dir[i] == 4)
	   x[i] += tspeed[i];
	   
	   if(dir[i] == 5){
	   y[i] -= tspeed[i]/2;
	   x[i] -= tspeed[i]/2;
	   }
	   
	   if(dir[i] == 6){
	   y[i] -= tspeed[i]/2;
	   x[i] += tspeed[i]/2;
	   }
	   
	   if(dir[i] == 7){
	   y[i] += tspeed[i]/2;
	   x[i] -= tspeed[i]/2;
	   }
	   
	   if(dir[i] == 8){
	   y[i] += tspeed[i]/2;
	   x[i] -= tspeed[i]/2;
	   }
	   }
	   }
	   
	   if(mode == 5){
	   
	   for(int i = 0; i < 5; i++){
	   
	   if(dir[i] == 1)
	   y[i] += (tspeed[i]);
	   
	   if(dir[i] == 2)
	   y[i] -= (tspeed[i]);
	   
	   if(dir[i] == 3)
	   x[i] += tspeed[i];
	   
	   if(dir[i] == 4)
	   x[i] -= tspeed[i];
	   
	   }
	   }
	   
	   for(int i = 0; i < 5; i++){
	   
	   bool check1 = false;//Horrible glitch without this
	   
	   if(x[i] < 0)
	   x[i] = 640;
	   
	   if(x[i] > 640)
	   x[i] = 0;
	   
	   if(y[i] < 0)
	   y[i] = 480;
	   
	   if(y[i] > 480){
	   y[i] = 0;
	   check1 = true;
	   }
	   
	   if(mode != 4){
	   if(x[i] == 0 || x[i] == 640 || check1 == true || y[i] == 480){
	   int newspeed = 0;
	   newspeed = rand() % 2 + 1;
	   if(newspeed == 1)
	   tspeed[i] = rand() % 8 + 4;
	   int newpos = 0;
	   newpos = rand() % 10 + 1;
	   if(newpos == 3)
	   talive[i] = false;
	   }
	   }
	   
	   }
	   
	   }
	   
	   void DrawHealth(Sprite *Health, int health){
	   
	   Health->SetPosition(500, 0);
	   Health->Draw();
	   if(health >= 2){
	   Health->SetPosition(520, 0);
	   Health->Draw();
	   }
	   if(health >= 3){
	   Health->SetPosition(540, 0);
	   Health->Draw();
	   }
	  }
	  
	  void TeleportTarget(){
	  
	  for(int i = 0; i < 5; i++){
	  
	  if(counter[i] == 60){
	  x[i] = rand() % 640 + 1;
	  y[i] = rand() % 480 + 1;
	  CheckTarget();
	  Target[i]->SetPosition(x[i], y[i]);
	  counter[i] = 0;
	  }
	  
	  counter[i]++;
	  
	  }
	  }
	  
	 void CheckTarget(){

     if(x[0] == x[1] && y[0] == y[1]){  
	 x[0] = rand() % 640 + 1;
	 y[0] = rand() % 480 + 1;
	 }
	 
	 if(x[0] == x[2] && y[0] == y[2]){  
	 x[0] = rand() % 640 + 1;
	 y[0] = rand() % 480 + 1;
	 }
	 
	 if(x[0] == x[3] && y[0] == y[3]){  
	 x[0] = rand() % 640 + 1;
	 y[0] = rand() % 480 + 1;
	 }
	 
	 if(x[0] == x[4] && y[0] == y[4]){  
	 x[0] = rand() % 640 + 1;
	 y[0] = rand() % 480 + 1;
	 }
	 
	 if(x[1] == x[2] && y[1] == y[2]){  
	 x[1] = rand() % 640 + 1;
	 y[1] = rand() % 480 + 1;
	 }
	 
	 if(x[1] == x[3] && y[1] == y[3]){  
	 x[1] = rand() % 640 + 1;
	 y[1] = rand() % 480 + 1;
	 }
	 
	 if(x[1] == x[4] && y[1] == y[4]){  
	 x[1] = rand() % 640 + 1;
	 y[1] = rand() % 480 + 1;
	 }
	 
	 if(x[2] == x[3] && y[2] == y[3]){  
	 x[2] = rand() % 640 + 1;
	 y[2] = rand() % 480 + 1;
	 }
	 
	 if(x[2] == x[4] && y[2] == y[4]){  
	 x[2] = rand() % 640 + 1;
	 y[2] = rand() % 480 + 1;
	 }
	 
	 if(x[3] == x[4] && y[3] == y[4]){  
	 x[3] = rand() % 640 + 1;
	 y[3] = rand() % 480 + 1;
	 }
	 }

    void TargetGames(GameWindow *gwd){
	
	for(int i = 0; i < 5; i++){
	tspeed[i] = rand() % 8 + 4;
	}
	
	for(;;)
	{
		
		if(mode == 8)
		break;
		
		WPAD_ScanPads();
		if(dontcheck)
		dontcheck = false;
		
		Background->Draw();
		
		Music();
		
		DrawHealth(Health, health);
		
		if(mode != 1 && mode != 6)
		MoveTarget();
		
		if(mode == 6)
		TeleportTarget();
		
		SpawnTarget();
		
		for(int i = 0; i < 5; i++){
		
		if(talive[i] == true){
		Target[i]->SetPosition(x[i], y[i]);
		Target[i]->Draw();
		if(anim == 1){
		if(animdir[i] == 2)
		Target[i]->NextFrame();
		if(animdir[i] == 1)
		Target[i]->PrevFrame();
		}
		}
		
		}
		
		if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME)
		homemenu(gwd);
		
		if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_PLUS){
		InMenu(gwd, false, health, score);
		dontcheck = true;
		if(health > 3)
		health = 3;
		}
		
		if(quitcheck == true)
		break;
		
		if(shutdown == true)
		SYS_ResetSystem(SYS_POWEROFF, 0, 0);
			
		// Infrared calculation - The X and Y of the wiimote sprite
		ir_t ir; // The struct for infrared
		WPAD_IR(WPAD_CHAN_0, &ir); // Let's get our infrared data
		// Give our sprite the positions and the angle.
		Aim->SetPosition(ir.sx-WSP_POINTER_CORRECTION_X, ir.sy-WSP_POINTER_CORRECTION_Y); // We use these constants to translate the position correctly to the screen
		Aim->Move(-((f32)Aim->GetWidth()/2), -((f32)Aim->GetHeight()/2)); // And these to make our image appear at the center of this position.
		Aim->SetRotation(ir.angle/2); // Set angle/2 to translate correctly
		
		Aim->Draw();
		
		if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B){
		if(!dontcheck){
		if(!CheckForHit())
		health--;
		}
		}
		
		if(rumblecounter == 7){
		WPAD_Rumble(WPAD_CHAN_0, 0);
		rumblecounter = 0;
		}
		
		if(rumblecounter != 0)
		rumblecounter++;
		
		if(maxtime > 0)
		timeing++;
		
		gwd->Flush();
		
		if(health == 0)
		break;
		
		if(timeing > maxtime)
		break;
		
	}
   }


    int main(int argc, char **argv){

	
	fatInitDefault();//Initialize the SanDisk for loading images
	
	// Create the game window and initalise the VIDEO subsystem
	GameWindow *gwd = new GameWindow();
	gwd->InitVideo();
	
	WPAD_Init(); //Initialize the Wiimote
	WPAD_SetDataFormat(WPAD_CHAN_0, WPAD_FMT_BTNS_ACC_IR);//Allows us to use the Wiimote pointer
	WPAD_SetPowerButtonCallback(doPadPowerOff);//Set up the power button
	
	ASND_Init();
	MP3Player_Init();
	
    crosshair1->LoadImage("/apps/WiiShootingGallery/data/crosshair1.png");
	crosshair2->LoadImage("/apps/WiiShootingGallery/data/crosshair2.png");
	crosshair3->LoadImage("/apps/WiiShootingGallery/data/crosshair3.png");
	crosshair4->LoadImage("/apps/WiiShootingGallery/data/crosshair4.png");
	crosshair5->LoadImage("/apps/WiiShootingGallery/data/crosshair5.png");
	hand->LoadImage("/apps/WiiShootingGallery/data/hand.png");
	
	target->LoadImage("/apps/WiiShootingGallery/data/target.png");
	target2->LoadImage("/apps/WiiShootingGallery/data/target2.png");
	
	bullet->LoadImage("/apps/WiiShootingGallery/data/bullet.png");
	
	background1->LoadImage("/apps/WiiShootingGallery/data/background1.png");
	background2->LoadImage("/apps/WiiShootingGallery/data/background2.png");
	background3->LoadImage("/apps/WiiShootingGallery/data/background3.png");
	
	button->LoadImage("/apps/WiiShootingGallery/data/button.png");
	button2->LoadImage("/apps/WiiShootingGallery/data/button2.png");
	button3->LoadImage("/apps/WiiShootingGallery/data/button3.png");
	button4->LoadImage("/apps/WiiShootingGallery/data/button4.png");
	
	arrow->LoadImage("/apps/WiiShootingGallery/data/arrow.png");
	arrow2->LoadImage("/apps/WiiShootingGallery/data/arrow2.png");
	
	mbackground->LoadImage("/apps/WiiShootingGallery/data/mbackground.png");
	MBackground->SetImage(mbackground);
	
    start->LoadImage("/apps/WiiShootingGallery/data/start.png");
	Start->SetImage(start);
	
	back->LoadImage("/apps/WiiShootingGallery/data/back.png");
	Back->SetImage(back);
	
	back2->LoadImage("/apps/WiiShootingGallery/data/back2.png");
	
	save->LoadImage("/apps/WiiShootingGallery/data/save.png");
	Save->SetImage(save);
	
	save2->LoadImage("/apps/WiiShootingGallery/data/save2.png");
	
	stillimage->LoadImage("/apps/WiiShootingGallery/data/stillimage.png");
	horizimage->LoadImage("/apps/WiiShootingGallery/data/horizimage.png");
	vertimage->LoadImage("/apps/WiiShootingGallery/data/vertimage.png");
	crazyimage->LoadImage("/apps/WiiShootingGallery/data/crazyimage.png");
	crisscrossimage->LoadImage("/apps/WiiShootingGallery/data/crisscrossimage.png");
	teleportimage->LoadImage("/apps/WiiShootingGallery/data/teleportimage.png");
	hoganimage->LoadImage("/apps/WiiShootingGallery/data/hoganimage.png");
	wsisimage->LoadImage("/apps/WiiShootingGallery/data/wsisimage.png");
	
	highlighter->LoadImage("/apps/WiiShootingGallery/data/highlighter.png");
	Highlighter->SetImage(highlighter);
	
	inback->LoadImage("/apps/WiiShootingGallery/data/inback.png");
	Inback->SetImage(inback);
	
	Health->SetImage(bullet);
	
	srand(time(0));//Start random number generator
	
	print2.setFont(font_ttf, font_ttf_size);
	Text2.SetPosition(80, 0);
	Text2.SetImage(&print2);
	print2.setColor(Color::Color(0,0,255));
	print2.setSize(18);
	Text2.SetPosition(0, 0);
	
	for(int i = 0; i < 5; i++){
	Target[i] = new Sprite();
	x[i] = 0;
	y[i] = 0;
	talive[i] = false;
	}
	
	for(int i = 0; i < 6; i++){
	Button[i] = new Sprite();
	Button[i]->SetImage(button);
	}
	
	for(int i = 0; i < 3; i++){
	MButton[i] = new Sprite();
	MButton[i]->SetImage(button3);
	}
	
	for(int i = 0; i < 9; i++){
	GButton[i] = new Sprite();
	}
	GButton[0]->SetImage(stillimage);
	GButton[1]->SetImage(horizimage);
	GButton[2]->SetImage(vertimage);
	GButton[3]->SetImage(crazyimage);
	GButton[4]->SetImage(crisscrossimage);
	GButton[5]->SetImage(teleportimage);
	GButton[6]->SetImage(hoganimage);
	GButton[7]->SetImage(wsisimage);
	
	for(int i = 0; i < 4; i++){
	QButton[i] = new Sprite();
    QButton[i]->SetImage(button3);
	}
	
	for(int i = 0; i < 4; i++){
	DButton[i] = new Sprite();
    DButton[i]->SetImage(button3);
	}
	
	for(int i = 0; i < 6; i++){
	Arrow[i] = new Sprite();
	Arrow[i]->SetImage(arrow);
	}
	
	for(int i = 6; i < 12; i++){
	Arrow[i] = new Sprite();
	Arrow[i]->SetImage(arrow);
	Arrow[i]->SetTransform(1);
	}
	
	LoadHighscores();
	LoadSettings();
	MusicStartup();
	
	while(true){
	
	health = 3;
	timeing = 0;
	Menu(gwd);
	Background->SetPosition(0, 0);
	
	switch(anim){
	
	case 1:
	for(int i = 0; i < 5; i++){
	Target[i]->SetImage(target, 80, 80);
	}
	break;
	
	case 2:
	for(int i = 0; i < 5; i++){
	Target[i]->SetImage(target2);
	}
	break;
	}
	
	
	score = 0;
	
	if(quit == 1)
	break;

	for(;;)
	{
	
	    if(mode < 7){
		TargetGames(gwd);
		//break;
		}
	
	    if(mode == 7){
		score = hogansnewalley(Aim, Health, Background, rumble, maxtime, diff, gwd);
		//break;
		}
		
		if(mode == 8){
		score = shooter(Aim, Health, Background, rumble, maxtime, diff, gwd);
		//break;
		}
		
		SetHighScores();
		
		if(quitcheck == false)
		InMenu(gwd, true, health, score);
		
		if(health == 0 || quitcheck == true){
		quitcheck = false;
		health = 3;
		break;
		}
		
	}
	//Deinitialise target variables to prevent code dumps
	if(mode < 7){
	for(int i = 0; i < 5; i++){
	x[i] = 0;
	y[i] = 0;
	dir[i] = 0;
	counter[i] = 0;
	animdir[i] = 0;
	talive[i] = false;
	}
	 }
	
	SaveHighscores();
   }
   
	return 0;
}

