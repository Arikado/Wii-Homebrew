#include "shooterhead.h"

void ShootEBullet(int choice){

if(Ealive[choice] == true){

int X = EShip[choice]->GetX() + EShip[choice]->GetWidth()/2;
int Y = EShip[choice]->GetY() + EShip[choice]->GetHeight();

for(int i = 0; i < 10; i++){

if(bullettrack[choice] == 0){
if(Esalive[i] == false){
EShot[i]->SetPosition(X, Y);
Esalive[i] = true;
bullettrack[choice]++;
bulletfrom[i] = choice;
break;
}
 }
  }
   }
    }
  
void UpdateEBullets(){

int Y = 0;
int X = 0;

for(int i = 0; i < 10; i++){

if(Esalive[i] == true){
Y = EShot[i]->GetY();
X = EShot[i]->GetX();
Y += 8;
if(Y > 480)
Esalive[i] = false;
EShot[i]->SetPosition(X, Y);
EShot[i]->Draw();
if(EShot[i]->CollidesWith(Ship)){
GHealth--;
Esalive[i] = false;
}
if(Esalive[i] == false){
bullettrack[bulletfrom[i]] = 0;
}
 }
  }
   }


void UpdateEnemies(int diff){

//Assign Attack Sequences
int assign = 0;
int until = 0;
int choice = 0;
int speedchoice = 0;
int trackmax = 0;
int lastchance = 0;
int movementchoice = 0;

switch(diff){

case 1:
until = 1;
trackmax = 2;
break;

case 2:
until = 2;
trackmax = 3;
break;

case 3:
until = 3;
trackmax = 4;
break;

case 4:
until = 4;
trackmax = 5;
break;

}

while(assign < until){

choice = rand() % 30 + 0;

lastchance = rand() % 3 + 1;

if(Ealive[choice] == true && movement[choice] == 0 && track < trackmax && (lastchance == 1 || lastchance == 2)){
movementchoice = rand() % 3 + 1;
if(movementchoice == 1)
movement[choice] = 5;
if(movementchoice == 2)
movement[choice] = 6;
if(movementchoice == 3){
movement[choice] = 7;
oX[choice] = eX[choice];
}
movementtime[choice] = 0;
Edir[choice] = rand() % 2 + 1;
if(Edir[choice] == 1)
movementtime[choice] = 0;
if(Edir[choice] == 2)
movementtime[choice] = 15;//FLAG!!! -- IMPORTANT!!!
speedchoice = rand() % 3 + 1;
wait[choice] = 0;
track++;
switch(speedchoice){
case 1:
speed[choice] = 40;
break;

case 2:
speed[choice] = 60;
break;

case 3:
speed[choice] = 80;
break;
}
 }
  assign++;
}
//End Assign Attack Sequences

//Assign Random Bullet Fire
if(rshot == 0){
choice = rand() % 30 + 1;
if(movement[choice] == 0){
lastchance = rand() % 6 + 1;

if(lastchance == 3)//I chose 3 because its right in the middle
ShootEBullet(choice);
}
 }

rshot++;
if(rshot > 4)
rshot = 0;
//End Assign Random Bullet Fire

//Assign Smart Bullet Fire

for(int i = 0; i < 30; i++){

if((movement[i] == 5 || movement[i] == 6 || movement[i] == 7) && movement[i] != 0 && (EShip[i]->GetX() > Ship->GetX() && EShip[i]->GetX()
 < (Ship->GetX() + Ship->GetWidth())) && (smarttrack[i] == 0)){
 
switch(diff){

case 1:
lastchance = rand() % 5 + 1;
break;

case 2:
lastchance = rand() % 4 + 1;
break;

case 3:
lastchance = rand() % 3 + 1;
break;

case 4:
lastchance = rand() % 2 + 1;
break;

}
 
 if(lastchance == 2){
 ShootEBullet(i);
 smarttrack[i] = 1;
 }
  }
   }
  
//Increment a smart firings smarttrack for a little bit
for(int i = 0; i < 30; i++){
if(smarttrack[i] >= 6)
smarttrack[i] = 0;
if(smarttrack[i] > 0)
smarttrack[i]++;
}
//End Increment

//End Assign Smart Bullet Fire

for(int i = 0; i < 30; i++){
if(Ealive[i] == true){

//Movement Sequences
if(Edir[i] == 0){
if(movement[i] == 1){
eX[i] += 8;
movementtime[i]++;
}

if(movement[i] == 2){
eX[i] -= 8;
movementtime[i]++;
}

if(movement[i] != 0){
if(movementtime[i] >= 60 && i < 10){//LOOK HERE***************************************************
movement[i] = 0;
EShip[i]->SetRotation(0);
}
if(movementtime[i] >= 70 && i > 9 && i < 20){
movement[i] = 0;
EShip[i]->SetRotation(0);
}
if(movementtime[i] >= 65 && i > 19){
movement[i] = 0;
EShip[i]->SetRotation(0);
}
 }
  }

//Attack Sequences Movement

//CIRCLE (OCTAGON) MOVEMENT
if(movement[i] == 5 && Ealive[i] == true && wait[i] == 3){

if(movementtime[i] == 0){
if(Edir[i] == 1){
eX[i] += speed[i]/2;
EShip[i]->SetRotation(135);
}
if(Edir[i] == 2){
eX[i] -= speed[i]/2;
EShip[i]->SetRotation(45);
}
}

if(movementtime[i] == 1){
if(Edir[i] == 1){
eX[i] += speed[i]/2;
EShip[i]->SetRotation(135);
}
if(Edir[i] == 2){
eX[i] -= speed[i]/2;
EShip[i]->SetRotation(45);
}
}

if(movementtime[i] == 2){
if(Edir[i] == 1){
eX[i] += (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(159.5);
}
if(Edir[i] == 2){
eX[i] -= (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
EShip[i]->SetRotation(70.5);
}
}

if(movementtime[i] == 3){
if(Edir[i] == 1){
eX[i] += (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(159.5);
}
if(Edir[i] == 2){
eX[i] -= (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
EShip[i]->SetRotation(70.5);
}
}

if(movementtime[i] == 4){
if(Edir[i] == 1){
eY[i] += speed[i]/2;
EShip[i]->SetRotation(0);
}
if(Edir[i] == 2){
eY[i] -= speed[i]/2;
EShip[i]->SetRotation(90);
}
}

if(movementtime[i] == 5){
if(Edir[i] == 1){
eY[i] += speed[i]/2;
EShip[i]->SetRotation(0);
}
if(Edir[i] == 2){
eY[i] -= speed[i]/2;
EShip[i]->SetRotation(90);
}
}

if(movementtime[i] == 6){
if(Edir[i] == 1){
eX[i] -= (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(24.5);
}
if(Edir[i] == 2){
eX[i] += (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
EShip[i]->SetRotation(114.5);
}
}

if(movementtime[i] == 7){
if(Edir[i] == 1){
eX[i] -= (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(24.5);
}
if(Edir[i] == 2){
eX[i] += (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
EShip[i]->SetRotation(114.5);
}
}

if(movementtime[i] == 8){
if(Edir[i] == 1){
eX[i] -= speed[i]/2;
EShip[i]->SetRotation(45);
}
if(Edir[i] == 2){
eX[i] += speed[i]/2;
EShip[i]->SetRotation(135);
}
}

if(movementtime[i] == 9){
if(Edir[i] == 1){
eX[i] -= speed[i]/2;
EShip[i]->SetRotation(45);
}
if(Edir[i] == 2){
eX[i] += speed[i]/2;
EShip[i]->SetRotation(135);
}
}

if(movementtime[i] == 10){
if(Edir[i] == 1){
eX[i] -= (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
EShip[i]->SetRotation(70.5);
}
if(Edir[i] == 2){
eX[i] += (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(159.5);
}
}

if(movementtime[i] == 11){
if(Edir[i] == 1){
eX[i] -= (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
EShip[i]->SetRotation(70.5);
}
if(Edir[i] == 2){
eX[i] += (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(159.5);
}
}

if(movementtime[i] == 12){
if(Edir[i] == 1){
eY[i] -= speed[i]/2;
EShip[i]->SetRotation(90);
}
if(Edir[i] == 2){
eY[i] += speed[i]/2;
EShip[i]->SetRotation(0);
}
}

if(movementtime[i] == 13){
if(Edir[i] == 1){
eY[i] -= speed[i]/2;
EShip[i]->SetRotation(90);
}
if(Edir[i] == 2){
eY[i] += speed[i]/2;
EShip[i]->SetRotation(0);
}
}

if(movementtime[i] == 14){
if(Edir[i] == 1){
EShip[i]->SetRotation(114.5);
eX[i] += (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
}
if(Edir[i] == 2){
eX[i] -= (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(24.5);
}
 }
 
if(movementtime[i] == 15){
if(Edir[i] == 1){
EShip[i]->SetRotation(114.5);
eX[i] += (speed[i]/2)/2;
eY[i] -= (speed[i]/2)/2;
}
if(Edir[i] == 2){
eX[i] -= (speed[i]/2)/2;
eY[i] += (speed[i]/2)/2;
EShip[i]->SetRotation(24.5);
}
 }

 if(Edir[i] == 1)
 movementtime[i]++;
 
 if(Edir[i] == 2)
 movementtime[i]--;
 
 if(movementtime[i] > 15 || movementtime[i] < 0){
 movement[i] = 0;
 movementtime[i] = 0;
 Edir[i] = 0;
 EShip[i]->SetRotation(0);
 track--;
 }

 }//END CIRCLE (OCTAGON) MOVEMENT
 
 //RHOMBUS MOVEMENT
 if(movement[i] == 6 && Ealive[i] == true && wait[i] == 3){
 
 if(movementtime[i] == 0){
 if(Edir[i] == 1){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 if(Edir[i] == 2){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 }
 if(movementtime[i] == 1){
 if(Edir[i] == 1){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 if(Edir[i] == 2){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 }
 if(movementtime[i] == 2){
 if(Edir[i] == 1){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 if(Edir[i] == 2){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 }
 if(movementtime[i] == 3){
 if(Edir[i] == 1){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 if(Edir[i] == 2){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 }
 if(movementtime[i] == 4){
 eX[i] -= speed[i]/2;
 eY[i] += speed[i]/2;
 EShip[i]->SetRotation(24.5);
 }
 if(movementtime[i] == 5){
 eX[i] -= speed[i]/2;
 eY[i] += speed[i]/2;
 EShip[i]->SetRotation(24.5);
 }
 if(movementtime[i] == 6){
 if(Edir[i] == 1){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 if(Edir[i] == 2){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 }
 if(movementtime[i] == 7){
 if(Edir[i] == 1){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 if(Edir[i] == 2){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 }
 if(movementtime[i] == 8){
 if(Edir[i] == 1){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 if(Edir[i] == 2){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 }
 if(movementtime[i] == 9){
 if(Edir[i] == 1){
 eX[i] -= speed[i]/2;
 EShip[i]->SetRotation(45);
 }
 if(Edir[i] == 2){
 eX[i] += speed[i]/2;
 EShip[i]->SetRotation(135);
 }
 }
 if(movementtime[i] == 10){
 eX[i] += speed[i]/2;
 eY[i] -= speed[i]/2;
 EShip[i]->SetRotation(70.5);
 }
 if(movementtime[i] == 11){
 eX[i] += speed[i]/2;
 eY[i] -= speed[i]/2;
 EShip[i]->SetRotation(70.5);
 }
 
 if(Edir[i] == 1)
 movementtime[i]++;
 
 if(Edir[i] == 2)
 movementtime[i]--;
 
 if(movementtime[i] > 11 || movementtime[i] < 0){
 movement[i] = 0;
 movementtime[i] = 0;
 Edir[i] = 0;
 EShip[i]->SetRotation(0);
 track--;
 }
 }//END RHOMBUS MOVEMENT
 
 //LEFT AND RIGHT SWEEP MOVEMENT
 if((movement[i] == 7 || movement[i] == 8) && Ealive[i] == true && wait[i] == 2){
 
 if(Edir[i] == 1){
 eX[i] -= 8;
 EShip[i]->SetRotation(45);
 if(movement[i] == 7)
 movementtime[i]++;
 if(movement[i] == 8)
 movementtime[i]--;
 if(eX[i] < 0){
 Edir[i] = 2;
 movement[i] = 8;
 }
 }
 
 if(Edir[i] == 2){
 eX[i] += 8;
 EShip[i]->SetRotation(135);
 if(movement[i] == 7)
 movementtime[i]++;
 if(movement[i] == 8)
 movementtime[i]--;
 if(eX[i] > 640){
 Edir[i] = 1;
 movement[i] = 8;
 }
 }
 
 if(eX[i] == oX[i]){
 movement[i] = 0;
 movementtime[i] = 0;
 Edir[i] = 0;
 EShip[i]->SetRotation(0);
 track--;
 }
 
 }

 
EShip[i]->SetPosition(eX[i], eY[i]);

EShip[i]->Draw();

wait[i]++;

if(wait[i] > 3)
wait[i] = 0;


 }
  }
}

void MoveBullets(){
//Move and draw bullets
for(int i = 0; i < 5; i++){
if(bulletalive[i] == true){
bulletY[i] -= 8;
Shot[i]->NextFrame();
Shot[i]->SetPosition(bulletX[i], bulletY[i]);
Shot[i]->Draw();
if(bulletY[i] <= 0)
bulletalive[i] = false;
}
 }


//Check for collisions for each bullet

for(int s = 0; s < 5; s++){

if(bulletalive[s] == true){

for(int i = 0; i < 30; i++){

if(Shot[s]->CollidesWith(EShip[i]) && Ealive[i] == true){
Ealive[i] = false;
GScore++;
bulletalive[s] = false;
if(movement[i] == 5 || movement[i] == 6 || movement[i] == 7 || movement[i] == 8)
track--;
break;
}

 }

  }

   }

}


void CrossHairCheckForHit(Sprite *Aim){

for(int i = 0; i < 30; i++){

if(Aim->CollidesWith(EShip[i]) && Ealive[i] == true){
GScore++;
Ealive[i] = false;
if(movement[i] == 5 || movement[i] == 6 || movement[i] == 7 || movement[i] == 8)
track--;
if(srumble == 1){
WPAD_Rumble(WPAD_CHAN_0, 1);
srumblecounter = 1;
}
  break;
 }
  }
  
for(int i = 0; i < 10; i++){

if(Aim->CollidesWith(EShot[i])){
GScore += 2;
Esalive[i] = false;
}
 }

}

void UpdateBackground(Sprite *Background){

backY1 += 10;
backY2 += 10;

if(backY1 >= 480)
backY1 = -480;

if(backY2 >= 480)
backY2 = -480;

Background->SetPosition(0, backY1);
Background->Draw();
Background->SetPosition(0, backY2);
Background->Draw();

}

void ResetEnemies(){

int yset = 0;
yset = rand() % 3 + 1;

for(int i = 0; i< 30; i++){

Ealive[i] = true;
movementtime[i] = 0;
Edir[i] = 0;

if(i < 10){//LOOK HERE **********************************************************************
if(yset == 1)
eY[i] = 120;
if(yset == 2)
eY[i] = 80;
if(yset == 3)
eY[i] = 40;
eX[i] = 0 - ((i * EShip[i]->GetWidth()) - 15);
movement[i] = 1;
movementtime[i] = 0;
EShip[i]->SetRotation(135);
}

if(i > 9 && i < 20){
if(yset == 1)
eY[i] = 190;
if(yset == 2)
eY[i] = 150;
if(yset == 3)
eY[i] = 110;
eX[i] = 640 + (((i - 9) * EShip[i]->GetWidth()) + 15);
movement[i] = 2;
movementtime[i] = 0;
EShip[i]->SetRotation(45);
}

if(i > 19){
if(yset == 1)
eY[i] = 260;
if(yset == 2)
eY[i] = 220;
if(yset == 3)
eY[i] = 180;
eX[i] = 0 - (((i - 19) * EShip[i]->GetWidth()) - 15);
movement[i] = 1;
movementtime[i] = 0;
EShip[i]->SetRotation(135);
}//*******************************************************************************************

 }
 
}

void ResetCheck(){

if(Ealive[0] == false && Ealive[1] == false && Ealive[2] == false &&
   Ealive[3] == false && Ealive[4] == false && Ealive[5] == false &&
   Ealive[6] == false && Ealive[7] == false && Ealive[8] == false &&
   Ealive[9] == false && Ealive[10] == false && Ealive[11] == false &&
   Ealive[12] == false && Ealive[13] == false && Ealive[14] == false &&
   Ealive[15] == false && Ealive[16] == false && Ealive[17] == false &&
   Ealive[18] == false && Ealive[19] == false && Ealive[20] == false &&
   Ealive[21] == false && Ealive[22] == false && Ealive[23] == false &&
   Ealive[24] == false && Ealive[25] == false && Ealive[26] == false &&
   Ealive[27] == false && Ealive[28] == false && Ealive[29] == false)
   ResetEnemies();
}

void ResetGame(){

ResetEnemies();

GHealth = 3;
GScore = 0;

track = 0;

}

void ShootFromShip(){

while(true){

if(bulletalive[0] == false){
bulletX[0] = ShipX + ((Ship->GetWidth()/2) - 3);
bulletY[0] = ShipY;
bulletalive[0] = true;
break;
}

if(bulletalive[1] == false){
bulletX[1] = ShipX + ((Ship->GetWidth()/2) - 3);
bulletY[1] = ShipY;
bulletalive[1] = true;
break;
}

if(bulletalive[2] == false){
bulletX[2] = ShipX + ((Ship->GetWidth()/2) - 3);
bulletY[2] = ShipY;
bulletalive[2] = true;
break;
}

if(bulletalive[3] == false){
bulletX[3] = ShipX + ((Ship->GetWidth()/2) - 3);
bulletY[3] = ShipY;
bulletalive[3] = true;
break;
}

if(bulletalive[4] == false){
bulletX[4] = ShipX + ((Ship->GetWidth()/2) - 3);
bulletY[4] = ShipY;
bulletalive[4] = true;
break;
}

break;

}

}

int shooter(Sprite *Aim, Sprite *Health, Sprite *Background, int rumble, int maxtime, int diff, GameWindow *gwd){

GHealth = 3;

GScore = 0;

backY1 = 0;

backY2 = -480;

srumble = rumble;

gametime2 = 0;

track = 0;

rshot = 1;

ship->LoadImage("/apps/WiiShootingGallery/data/ship.png");
shot->LoadImage("/apps/WiiShootingGallery/data/shot.png");
eshot->LoadImage("/apps/WiiShootingGallery/data/eshot.png");

Ship->SetImage(ship);

for(int i = 0; i < 5; i++){

Shot[i] = new Sprite();
Shot[i]->SetImage(shot, 4, 12);

}

for(int i = 0; i < 10; i++){

EShot[i] = new Sprite();
EShot[i]->SetImage(eshot, 4, 12);
Esalive[i] = false;

}

eship->LoadImage("/apps/WiiShootingGallery/data/eship.png");

for(int i = 0; i < 30; i++){

EShip[i] = new Sprite();
Ealive[i] = false;
EShip[i]->SetImage(eship);
}

quitcheck = false;

while(true){

WPAD_ScanPads();
if(dontcheck)
dontcheck = false;

Music();

UpdateBackground(Background);

DrawHealth(Health, GHealth);

Ship->SetPosition(ShipX, ShipY);

Ship->Draw();

ResetCheck();

UpdateEnemies(diff);

MoveBullets();

UpdateEBullets();

// Infrared calculation - The X and Y of the wiimote sprite
ir_t ir; // The struct for infrared
WPAD_IR(WPAD_CHAN_0, &ir); // Let's get our infrared data
// Give our sprite the positions and the angle.
Aim->SetPosition(ir.sx-WSP_POINTER_CORRECTION_X, ir.sy-WSP_POINTER_CORRECTION_Y); // We use these constants to translate the position correctly to the screen
Aim->Move(-((f32)Aim->GetWidth()/2), -((f32)Aim->GetHeight()/2)); // And these to make our image appear at the center of this position.
Aim->SetRotation(ir.angle/2); // Set angle/2 to translate correctly

Aim->Draw();

expansion_t exp;
WPAD_Expansion(WPAD_CHAN_0, &exp);
exp.type = WPAD_EXP_NUNCHUK;

//Fix control scheme interfence
WPADData* data = WPAD_Data(WPAD_CHAN_0);
	switch (data->exp.type) {
		case WPAD_EXP_NUNCHUK:
		    if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_NUNCHUK_BUTTON_C)
			ShootFromShip();
			break;
		case WPAD_EXP_CLASSIC:
			if(WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_LEFT)
			ShipX -= 10;
			break;
	}
//Right
if(((exp.nunchuk.js.ang>=90-45 && exp.nunchuk.js.ang<=90+45) && exp.nunchuk.js.mag>=0.9) || (WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_RIGHT) || (WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_RIGHT))
ShipX += 10;

//Left
if(((exp.nunchuk.js.ang>=270-45 && exp.nunchuk.js.ang<=270+45) && exp.nunchuk.js.mag>=0.9) || (WPAD_ButtonsHeld(WPAD_CHAN_0)&WPAD_BUTTON_LEFT))
ShipX -= 10;

//Fire from Ship
if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_NUNCHUK_BUTTON_Z) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_A) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_B))
ShootFromShip();

//Fire from Crosshair
if(WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_B){
if(!dontcheck)
CrossHairCheckForHit(Aim);
}

//Quit
if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_PLUS) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_PLUS)){
InMenu(gwd, false, GHealth, GScore);
dontcheck = true;
}

if(GHealth > 3){
ResetGame();
}

if(quitcheck == true){
break;
}

if((WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_BUTTON_HOME) || (WPAD_ButtonsDown(WPAD_CHAN_0)&WPAD_CLASSIC_BUTTON_HOME))
homemenu(gwd);

//Check for power button
    if(shutdown == true)
	SYS_ResetSystem(SYS_POWEROFF, 0, 0);

if(GHealth <= 0)
break;

if(ShipX < 0)
ShipX = 0;

if((ShipX + Ship->GetWidth()) > 640)
ShipX = 640 - Ship->GetWidth();

if(gametime2 > maxtime)
break;

if(maxtime > 0)
gametime2++;

if(srumblecounter == 7){
   WPAD_Rumble(WPAD_CHAN_0, 0);
   srumblecounter = 0;
   }

   if(srumblecounter != 0)
   srumblecounter++;

gwd->Flush();

}
for(int i = 0; i < 10; i++){
Esalive[i] = false;
}
for(int i = 0; i < 30; i++){
Esalive[i] = false;
}
return GScore;
}
