#include "hoganhead.h"

void CheckForRemainingBadGuys(){

//If any bad guys remain, subtract Ghealth by one for each

if((alive[0] == true) && ((Alley1->GetImage() == bad1) || (Alley1->GetImage() == bad2) || (Alley1->GetImage() == bad3)))
Ghealth--;

if((alive[1] == true) && ((Alley2->GetImage() == bad1) || (Alley2->GetImage() == bad2) || (Alley2->GetImage() == bad3)))
Ghealth --;

if((alive[2] == true) && ((Alley3->GetImage() == bad1) || (Alley3->GetImage() == bad2) || (Alley3->GetImage() == bad3)))
Ghealth--;

}

void resetalley(){

if(checkbadguys == true)
CheckForRemainingBadGuys();

checkbadguys = true;

//Randomly assign each sprite as good or bad

int spritechoice = 0;

spritechoice = rand() % 6 + 1;

if(spritechoice == 1)
Alley1->SetImage(good1);

if(spritechoice == 2)
Alley1->SetImage(good2);

if(spritechoice == 3)
Alley1->SetImage(good3);

if(spritechoice == 4)
Alley1->SetImage(bad1);

if(spritechoice == 5)
Alley1->SetImage(bad2);

if(spritechoice == 6)
Alley1->SetImage(bad3);

spritechoice = 0;

spritechoice = rand() % 6 + 1;

if(spritechoice == 1)
Alley2->SetImage(good1);

if(spritechoice == 2)
Alley2->SetImage(good2);

if(spritechoice == 3)
Alley2->SetImage(good3);

if(spritechoice == 4)
Alley2->SetImage(bad1);

if(spritechoice == 5)
Alley2->SetImage(bad2);

if(spritechoice == 6)
Alley2->SetImage(bad3);

spritechoice = 0;

spritechoice = rand() % 6 + 1;

if(spritechoice == 1)
Alley3->SetImage(good1);

if(spritechoice == 2)
Alley3->SetImage(good2);

if(spritechoice == 3)
Alley3->SetImage(good3);

if(spritechoice == 4)
Alley3->SetImage(bad1);

if(spritechoice == 5)
Alley3->SetImage(bad2);

if(spritechoice == 6)
Alley3->SetImage(bad3);

if(grid == true){

while(true){

pos = rand() % 9 + 1;

switch(pos){

case 1:
Alley1->SetPosition(70, 50);
break;

case 2:
Alley1->SetPosition(70, 190);
break;

case 3:
Alley1->SetPosition(70, 330);
break;

case 4:
Alley1->SetPosition(260, 50);
break;

case 5:
Alley1->SetPosition(260, 190);
break;

case 6:
Alley1->SetPosition(260, 330);
break;

case 7:
Alley1->SetPosition(450, 50);
break;

case 8:
Alley1->SetPosition(450, 190);
break;

case 9:
Alley1->SetPosition(450, 330);
break;

}

pos2 = rand() % 9 + 1;

switch(pos2){

case 1:
Alley2->SetPosition(70, 50);
break;

case 2:
Alley2->SetPosition(70, 190);
break;

case 3:
Alley2->SetPosition(70, 330);
break;

case 4:
Alley2->SetPosition(260, 50);
break;

case 5:
Alley2->SetPosition(260, 190);
break;

case 6:
Alley2->SetPosition(260, 330);
break;

case 7:
Alley2->SetPosition(450, 50);
break;

case 8:
Alley2->SetPosition(450, 190);
break;

case 9:
Alley2->SetPosition(450, 330);
break;

}

pos3 = rand() % 9 + 1;

switch(pos3){

case 1:
Alley3->SetPosition(70, 50);
break;

case 2:
Alley3->SetPosition(70, 190);
break;

case 3:
Alley3->SetPosition(70, 330);
break;

case 4:
Alley3->SetPosition(260, 50);
break;

case 5:
Alley3->SetPosition(260, 190);
break;

case 6:
Alley3->SetPosition(260, 330);
break;

case 7:
Alley3->SetPosition(450, 50);
break;

case 8:
Alley3->SetPosition(450, 190);
break;

case 9:
Alley3->SetPosition(450, 330);
break;

}
  
  
  if(pos != pos2 && pos != pos3 && pos2 != pos3)
  break;
  
  }
 }//End if(grid == true)

alive[0] = true;
alive[1] = true;
alive[2] = true;

curalleytime = 0;

}

void HCheckForHit(Sprite *Aim){

int startrumble = 0;

if(Aim->CollidesWith(Alley1)){
if(alive[0] == true){
alive[0] = false;
startrumble = 1;
if(Alley1->GetImage() == good1 || Alley1->GetImage() == good2 || Alley1->GetImage() == good3)
Ghealth--;
if(Alley1->GetImage() == bad1 || Alley1->GetImage() == bad2 || Alley1->GetImage() == bad3)
Gscore++;
}
}

if(Aim->CollidesWith(Alley2)){
if(alive[1] == true){
alive[1] = false;
startrumble = 1;
if(Alley2->GetImage() == good1 || Alley2->GetImage() == good2 || Alley2->GetImage() == good3)
Ghealth--;
if(Alley2->GetImage() == bad1 || Alley2->GetImage() == bad2 || Alley2->GetImage() == bad3)
Gscore++;
}
}

if(Aim->CollidesWith(Alley3)){
if(alive[2] == true){
alive[2] = false;
startrumble = 1;
if(Alley3->GetImage() == good1 || Alley3->GetImage() == good2 || Alley3->GetImage() == good3)
Ghealth--;
if(Alley3->GetImage() == bad1 || Alley3->GetImage() == bad2 || Alley3->GetImage() == bad3)
Gscore++;
}
}

if(startrumble == 1 && Grumble == 1){
	WPAD_Rumble(WPAD_CHAN_0, 1);
    hrumblecounter = 1;
	}

}

int hogansnewalley(Sprite *Aim, Sprite *Health, Sprite *Background, int rumble, int maxtime, int diff, GameWindow *gwd){
  
  checkbadguys = false;
  
  gametime = 0;
  
  curalleytime = 200;

  Ghealth = 3;
  
  Grumble = rumble;
  
  Gscore = 0;
  
  switch(diff){
  
  case 1:
  resetalleytime = 90;
  grid = false;
  Alley1->SetPosition(70, 190);
  Alley2->SetPosition(260, 190);
  Alley3->SetPosition(450, 190);
  break;
  
  case 2:
  resetalleytime = 90;
  grid = true;
  //Alley1->SetPosition(70, 190);
  //Alley2->SetPosition(260, 190);
  //Alley3->SetPosition(450, 190);
  break;
  
  case 3:
  resetalleytime = 55;
  grid = false;
  Alley1->SetPosition(70, 190);
  Alley2->SetPosition(260, 190);
  Alley3->SetPosition(450, 190);
  break;
  
  case 4:
  resetalleytime = 55;
  grid = true;
  break;
  
  }
  
  alive[0] = false;
  alive[1] = false;
  alive[2] = false;

  good1->LoadImage("/apps/WiiShootingGallery/data/good1.png");
  good2->LoadImage("/apps/WiiShootingGallery/data/good2.png");
  good3->LoadImage("/apps/WiiShootingGallery/data/good3.png");
  bad1->LoadImage("/apps/WiiShootingGallery/data/bad1.png");
  bad2->LoadImage("/apps/WiiShootingGallery/data/bad2.png");
  bad3->LoadImage("/apps/WiiShootingGallery/data/bad3.png");
  
  quitcheck = false;

 while(true){//Game Loop
 
   WPAD_ScanPads();
   if(dontcheck)
   dontcheck = false;
   
   Music();

   if(curalleytime >= resetalleytime)
   resetalley();

   Background->Draw();
   
   if(alive[0] == true)
   Alley1->Draw();
   
   if(alive[1] == true)
   Alley2->Draw();
   
   if(alive[2] == true)
   Alley3->Draw();
   
    // Infrared calculation - The X and Y of the wiimote sprite
    ir_t ir; // The struct for infrared
	WPAD_IR(WPAD_CHAN_0, &ir); // Let's get our infrared data
	// Give our sprite the positions and the angle.
	Aim->SetPosition(ir.sx-WSP_POINTER_CORRECTION_X, ir.sy-WSP_POINTER_CORRECTION_Y); // We use these constants to translate the position correctly to the screen
	Aim->Move(-((f32)Aim->GetWidth()/2), -((f32)Aim->GetHeight()/2)); // And these to make our image appear at the center of this position.
	Aim->SetRotation(ir.angle/2); // Set angle/2 to translate correctly
   
   Aim->Draw();
   
   DrawHealth(Health, Ghealth);
   
   if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_PLUS){
	InMenu(gwd, false, Ghealth, Gscore);
	dontcheck = true;
	if(Ghealth > 3)
	Ghealth = 3;
	}
		
	if(quitcheck == true)
	break;
   
   if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME)
   homemenu(gwd);
   
   if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B){
   if(!dontcheck)
   HCheckForHit(Aim);
   }
   
   if(hrumblecounter == 7){
   WPAD_Rumble(WPAD_CHAN_0, 0);
   hrumblecounter = 0;
   }

   if(hrumblecounter != 0)
   hrumblecounter++;
   
   if(gametime > maxtime)
   break;
   
   if(maxtime > 0)
   gametime++;
   
   curalleytime++;
   
   if(Ghealth <= 0) 
   break;
   
   if(shutdown == true)
   SYS_ResetSystem(SYS_POWEROFF, 0, 0);
   
   gwd->Flush();



}//End Game Loop

WPAD_Rumble(WPAD_CHAN_0, 0);

return Gscore;

}
