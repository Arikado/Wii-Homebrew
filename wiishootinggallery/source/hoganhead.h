#include "universalhead.h"

//Images for Sprites
Image *good1 = new Image();
Image *good2 = new Image();
Image *good3 = new Image();
Image *bad1 = new Image();
Image *bad2 = new Image();
Image *bad3 = new Image();

//Sprites
Sprite *Alley1 = new Sprite();
Sprite *Alley2 = new Sprite();
Sprite *Alley3 = new Sprite();

//Function Prototypes
void resetalley();
void HCheckForHit(Sprite *Aim);
void CheckForRemainingBadGuys();

//Global Variables
int hquit = 0;//Check to quit Hogan - used instead of break because checks occur outside of hogansnewalley() 
int Ghealth = 0;//Globally stores the health
bool alive[3];//Alives for sprites
int curalleytime = 0;//What time it is based on the timw to reset the alley
int resetalleytime = 200;//What time the alley resets at
int gametime = 0;//Tracks time if timing is enabled
int hrumblecounter = 0;//Keeps track of how long the wiimote rumbles
int Grumble = 0;//Globally stores whether or not the wiimote is allowed to rumble
int Gscore = 0;//Globally stores th score for this mode
bool checkbadguys = false;//Stops the computer from calling CheckForRemainingBadGuys() the first time through the loop
bool grid = false;//Determines wether or not the sprites appear in a grid pattern
int pos = 0;//Postion for first Alley on grid
int pos2 = 0;//Position for second Alley on grid
int pos3 = 0;//Position for third alley on grid


