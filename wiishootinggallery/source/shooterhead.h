#include "universalhead.h"

//Images
Image *ship = new Image();//Holds ship image
Image *shot = new Image();//Holds bullet image
Image *eship = new Image();//The image for the enemy ships
Image *eshot = new Image();//The image for the enemy bullets

//Sprites
Sprite *Ship = new Sprite();//Player's space ship
Sprite *Shot[5];//Ship Bullets
Sprite *ScrollBackground = new Sprite();//A second background to give the illusion of scrolling
Sprite *EShip[30];//Each enemy ship sprite
Sprite *EShot[10];//Each enemy bullet

//Prototypes
void ShootFromShip();//Shoot a bullet from the ship
void CrosshairCheckForHit(Sprite *Aim);//Checks to see if the crosshair hit anything
void MoveBullets();//Moves and checks for collisions for each bullet
void UpdateEnemies(int diff);//Moves each enemy sprite
void ShootEBullet(int choice);//Shoots Enemy Bullets
void UpdateEBullets();//Moves and checks for collisions for each enemy bullet
void UpdateBoss();//Moves and fires bullets from the boss
void UpdateBackground(Sprite *Background);//Scrolls the background.
void ResetCheck();//Checks to call ResetEnemies()
void ResetEnemies();//Reset the enemies
void ResetGame();//Resets the game

//Global Variables
int GScore = 0;//Globally stores the score
int GHealth = 3;//Globally stores the health
int gametime2 = 0;//What time you're at
int level = 1;//What play through the level you're on -- The higher the difficulty, the higher the wave
int backY1 = 0;//Y coordinate for first scrolling background
int backY2 = -480;//Y coordinate for second scrolling background
int srumble = 0;//Gloabally Stores the rumble variable
int srumblecounter = 0;//Rumble time counter for wii shoot in space
bool Boss = false;//Whether the boss is onscreen or the enemies
int track = 0;//Keeps track of how many enemies are performing attack patterns

//Player Ship and bullet variables
int ShipX = 320;//X coordinate of the ship
int ShipY = 402;//Y coordinate of the ship
int bulletX[5];//X coordinate for each bullet
int bulletY[5];//Y coordinate for each bullet
bool bulletalive[5];//Whether or not each bullet shoud be moved and collision checked for

//Enemy ships and bullets variables
int movement[30];//Keeps track of enemy movement paterns
int movementtime[30];//Keeps track of how many times an enemy was moved
int Edir[30];//Which direction in a sequence
bool Ealive[30];//Whether each enemy is alive or not
bool Esalive[10];//Wether each enemy bullet is active
int eX[30];//X coordinates for the enemies
int eY[30];//Y coordinates for the enemies
int oX[30];//Help us keep track of pre-movment position
int smarttrack[30];//Keeps enemies from "smartly" firing 4 or 5 bullets at once
int speed[30];//Speed at which ships move
int wait[30];//Holds ships in place for a little bit so you can see their movements
int rshot = 0;//wait timer for random shooting from enemies
int bullettrack[30];//Keeps track of how many bullets they've fired
int bulletfrom[30];//Keeps track of which ship the bullet came from


