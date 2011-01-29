#include "universalhead.h"
	
	//Sprite Images
	Image *target = new Image();
	Image *target2 = new Image();
    Image *crosshair1 = new Image();
	Image *crosshair2 = new Image();
	Image *crosshair3 = new Image();
	Image *crosshair4 = new Image();
	Image *crosshair5 = new Image();
	Image *bullet = new Image();
	Image *background1 = new Image();
	Image *background2 = new Image();
	Image *background3 = new Image();
	Image *button = new Image();
	Image *button2 = new Image();
	Image *button3 = new Image();
	Image *button4 = new Image();
	Image *arrow = new Image();
	Image *arrow2 = new Image();
	Image *mbackground = new Image();
	Image *start = new Image();
	Image *hand = new Image();
	Image *back = new Image();
	Image *back2 = new Image();
	Image *save = new Image();
	Image *save2 = new Image();
	Image *stillimage = new Image();
	Image *horizimage = new Image();
	Image *vertimage = new Image();
	Image *crazyimage = new Image();
	Image *crisscrossimage = new Image();
	Image *teleportimage = new Image();
	Image *hoganimage = new Image();
	Image *wsisimage = new Image();
	Image *highlighter = new Image();
	Image *inback = new Image();
	
	//Sprites
	Sprite *Aim = new Sprite();
	Sprite *Health = new Sprite();
	Sprite *Background = new Sprite();
	Sprite *Button[8];
	Sprite *MButton[3];
	Sprite *GButton[9];
	Sprite *QButton[4];
	Sprite *DButton[4];
	Sprite *Arrow[12];
	Sprite *Target[5];
	Sprite *MBackground = new Sprite();
	Sprite *Start = new Sprite();
	Sprite *Back = new Sprite();
	Sprite *Save = new Sprite();
	Sprite *Highlighter = new Sprite();
	Sprite *Inback = new Sprite();
	
	Sprite Text;
	
	ftImage print(640, 480);
	
	Sprite Text2;
	
	ftImage print2(640, 480);
	
	int mode = 1;//Keeps track of the game mode
	
	/*mode = 1 = still targets
	  mode = 2 = horizontal moving targets
	  mode = 3 = vertical moving targets
	  mode = 4 = crazy targets
	  mode = 5 = criscross targets
	  mode = 6 = teleporting targets
	  mode = 7 = hogans new alley
	  mode = 8 = wii shoot in space
	*/
	
	int row = 0;//Keeps track of what you want to change on the GUI
	
	/*0 = Game mode
	  1 = Crosshair
	  2 = Background
	  3 = Animation/Difficulty
	  4 = Rumble
	  5 = Time
	*/
	
	/*Menu Screen Map Out
	
	0 = Main
	1 = Game
	2 = Diff
	3 = Options
	4 = Quit
	5 = Highscore Screen
	
	*/

    int x[5];//Target X's
	int y[5];//Target  Y's
	int dir[5];//Targets Direction
	int tspeed[5];//Targets Speed
	int animdir[5];//Targets Animation Direction
	int counter[5];//Keeps track of when to teleport for mode 6
	bool talive[5];//Target Alives

    int settings[6];
	/*0 = BGM
      1 = Crosshair
      2 = Background
      3 = Animation
	  4 = Rumble
      5 = Time */

    //Settings Variables
	int health = 3;//Miss 3 times and lose!!!
	
	int quit = 0;//Helps us leave the GUI
	
	int score = 0;//Player's Score
	
	int trans = 0;//Crosshair choice
	
	int anim = 1;//Toggles Target Animation on and off
	
	int backgroundchoice = 4;//Keeps track of what background is chosen
	
	int rumble = 1;//Keeps track of whether or not the control should rumble for each succesful hit
	
	int rumblecounter = 0;//Rumble On? Rumble Off?
	
	int timechoice = 0;//How long you want to play
	
	int maxtime = 0;//Keeps track of how long you have to play
	int timeing = 0;//What time your at
	
	int diff = 1;//Keeps track of difficulty level
	
	int bgm = 0;//Keeps track of what selection of bgm music you're listening to
	
	bool firstmp3 = false;//Doesnt let the music be "skippy" on the menu
	
	//HighScore Variables
	
	int hscores[13];
	
	/*
	0int stillhigh = 0;//Still Targets High Score
	1int horizhigh = 0;//Horizontal Targets High Score
	2int verthigh = 0;//Vertical Targets Hogh Score
	3int crazyhigh = 0;//Crazy Targets High Score
	4int crisshigh = 0;//Crisscross targets High Score
	5int telhigh = 0;//Teleporting Targets High Score
	6int hoganehigh = 0;//Hogans New Alley Easy High Score
	7int hoganmhigh = 0;//Hogans New Alley Medium High Score
	8int hoganhhigh = 0;//Hogans New Alley Hard High Score
	9int hoganvhhigh = 0;//Hogans New Alley Very Hard High Score
	10int shootehigh = 0;//Wii Shoot In Space Easy High Score
	11int shootmhigh = 0;//Wii Shoot In Space Medium High Score
	12int shoothhigh = 0;//Wii Shoot In Space Hard High Score
	13int shootvhhigh = 0;//Wii Shoot In Space Very Hard High Score8*/

       //Prototypes
	   
	   void Menu(GameWindow *gwd);
       bool CheckForHit();
       void SpawnTarget();
	   void MoveTarget();
	   void TeleportTarget();
	   void CheckTarget();
	   void SetHighScores();
	   void TargetGames(GameWindow *gwd);
	   void SaveHighscores();
	   void LoadHighscores();
	   void SaveSettings();
	   void LoadSettings();
	   void MusicStartup();//Start the BGM after the settings are loaded
	   
	   //Files
	   FILE *fps = 0;
	   
	   //MP3 Stuff
	   FILE *BGM = 0;
       long lSize;
       char * buffer;
       size_t result;
	   bool mp3isready = false;

