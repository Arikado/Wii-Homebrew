/***************************************************************************
     leveleditor.cpp  -  class for the new Leveleditor
                             -------------------
    copyright            : (C) 2004-2005 by FluXy
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/ 

#include "include/globals.h"
#include "include/main.h"
#include "include/SDL_gfxprimitives.h"

cLevelEditor :: cLevelEditor( void )
{
	wMain.x = 0;
	wMain.y = 0;
	wMain.w = 150;
	wMain.h = 480;
	
	wItem.x = 0;
	wItem.y = screen->h - 120;
	wItem.w = screen->w;
	wItem.h = ( screen->h - wItem.y );
	
	wItem_Count = 0;
	wMenu_Count = 0;
	
	Item_pos = 0;
	
	wMain_open = wMain.w;
	wItem_open = screen->h - 5;
	
	wMain_timer = 2 * DESIRED_FPS;
	wItem_timer = 0;

	Item_scoll = 0;

	Item_scroller_left = new cObjectScroller();
	Item_scroller_left->SetPos( wItem.x + 5, wItem.y + 30 );
	Item_scroller_left->image_default = GetImage( "sd:/apps/smc/data/pixmaps/game/leveleditor/arrow_left.png" );
	Item_scroller_left->image_hover = GetImage( "sd:/apps/smc/data/pixmaps/game/leveleditor/arrow_left_hover.png" );
	Item_scroller_left->SetImage( Item_scroller_left->image_default );

	Item_scroller_right = new cObjectScroller();
	Item_scroller_right->SetPos( wItem.x + wItem.w - 20, wItem.y + 30 );
	Item_scroller_right->image_default = GetImage( "sd:/apps/smc/data/pixmaps/game/leveleditor/arrow_right.png" );
	Item_scroller_right->image_hover = GetImage( "sd:/apps/smc/data/pixmaps/game/leveleditor/arrow_right_hover.png" );
	Item_scroller_right->SetImage( Item_scroller_right->image_default );

	main_cur_posy = 0;
}

cLevelEditor :: ~cLevelEditor( void )
{
	Unload_Item_Menu();
	Unload_Main_Menu();

	delete Item_scroller_left;
	delete Item_scroller_right;
}

void cLevelEditor :: Load_Default_Menu( void )
{
	Unload_Main_Menu();

	Add_Main_Object( "Ground Basic", MENU_GROUND_GREEN_1, NULL, 50, 220, 90 );
	Add_Main_Object( "Plastic", MENU_PLASTIC_1, NULL, 140, 150, 250 );
	Add_Main_Object( "Jungle Basic", MENU_JUNGLE_1, NULL, 0, 150, 50 );
	Add_Main_Object( "Green Hedge", MENU_HEDGES_GREEN, NULL, 120, 180, 10 );
	Add_Main_Object( "Ghost", MENU_GHOST_1, NULL, 190, 160, 100 );
	Add_Main_Object( "Box", MENU_BOX, NULL, 125, 30, 180 );
	Add_Main_Object( "Pipe", MENU_PIPES, NULL, 20, 80, 240 );
	Add_Main_Object( "Hill", MENU_HILLS, NULL, 130, 130, 220 );
	Add_Main_Object( "Sign", MENU_SIGNS, NULL, 100, 100, 180 );
	Add_Main_Object( "Block", MENU_BLOCKS, NULL, 145, 95, 12 );
	Add_Main_Object( "Cloud", MENU_CLOUDS, NULL, 170, 130, 220 );
	Add_Main_Object( "Extra", MENU_EXTRA, NULL, 20, 200, 120 );
	Add_Main_Object( "5", MENU_SPACER, NULL );
	Add_Main_Object( "Enemy", MENU_ENEMY, NULL, 250, 80, 40 );
	Add_Main_Object( "Special", MENU_SPECIAL, NULL, 220, 200, 10 );
	Add_Main_Object( "8", MENU_SPACER, NULL );
	Add_Main_Object( "Level settings", MENU_FUNCTION, &LE_Settings, 150, 150, 150 );
	Add_Main_Object( "New Level", MENU_FUNCTION, &LE_New, 50, 50, 230 );
	Add_Main_Object( "Load Level", MENU_FUNCTION, &LE_Load, 200, 200, 200 );
	Add_Main_Object( "Save Level", MENU_FUNCTION, &LE_Save, 0, 220, 0 );
	Add_Main_Object( "Clear Level", MENU_FUNCTION, &LE_Clear, 180, 40, 40 );
	Add_Main_Object( "9", MENU_SPACER, NULL );
	Add_Main_Object( "Exit Leveleditor", MENU_FUNCTION, &LE_Exit, 230, 180, 90 );
	Add_Main_Object( "Enter Overworld", MENU_FUNCTION, &LE_Enter_Overworld, 245, 230, 190 );
}

void cLevelEditor :: Unload_Main_Menu( void )
{
	for( unsigned int i = 0; i < wMenu_Count; i++ )
	{
		Menu_Main_Object *Item = Get_Main_Object( i + 1 );

		if( !Item ) 
		{
			continue;
		}

		if( Item->def_img )
		{
			SDL_FreeSurface( Item->def_img );
			Item->def_img = NULL;
		}
		
		if( Item->hover_img )
		{
			SDL_FreeSurface( Item->hover_img );
			Item->hover_img = NULL;
		}

		if( Item->shadow_img )
		{
			SDL_FreeSurface( Item->shadow_img );
			Item->shadow_img = NULL;
		}
	}
	
	wMenu_Objects.clear();

	main_cur_posy = 0;
	wMenu_Count = 0;
}

void cLevelEditor :: Add_Main_Object( string name, unsigned int Item_Menu_link, void ( *nfunction )( void ), Uint8 def_Color_red /* = 0 */, 
									 Uint8 def_Color_green /* = 0 */, Uint8 def_Color_blue /* = 0  */)
{
	if( Item_Menu_link < 1 || Item_Menu_link > 20 && Item_Menu_link != MENU_FUNCTION && Item_Menu_link != MENU_SPACER )
	{
		printf( "Warning : Unknown Menu Link used : %d\n", Item_Menu_link );
		return;
	}
	
	Menu_Main_Object wMenu;
	
	wMenu.name = name;
	wMenu.Item_Menu_Id = Item_Menu_link;
	
	SDL_Color def_color;
	def_color.r = def_Color_red;		def_color.g = def_Color_green;		def_color.b = def_Color_blue;

	wMenu.color = def_color;

	if( Item_Menu_link != MENU_SPACER ) 
	{
		SDL_Color hover_color;
		
		if( wMenu.color.r + 40 <= 255 ) 
		{
			hover_color.r = wMenu.color.r + 40;
		}
		else
		{
			hover_color.r = 255;
		}
		
		if( wMenu.color.g + 40 <= 255 ) 
		{
			hover_color.g = wMenu.color.g + 40;
		}
		else
		{
			hover_color.g = 255;
		}
		
		if( wMenu.color.b + 40 <= 255 ) 
		{
			hover_color.b = wMenu.color.b + 40;
		}
		else
		{
			hover_color.b = 255;
		}
		
		// The description
		wMenu.def_img		= TTF_RenderText_Blended( font_16, name.c_str(), def_color );
		wMenu.hover_img		= TTF_RenderText_Blended( font_16, name.c_str(), hover_color );
		wMenu.shadow_img	= TTF_RenderText_Blended( font_16, name.c_str(), colorBlack );

		wMenu.cur_posy = main_cur_posy;
		main_cur_posy += wMenu.def_img->h + 5;
	}
	else
	{
		int yspace = string_to_int( name );

		if( yspace < 0 || yspace > 20 ) 
		{
			return;
		}

		wMenu.def_img		= NULL;
		wMenu.hover_img		= NULL;
		wMenu.shadow_img	= NULL;
		
		wMenu.spacer_height = yspace;

		wMenu.cur_posy = main_cur_posy;
		main_cur_posy += wMenu.spacer_height;
	}

	
	wMenu_Count++;

	// The Id
	wMenu.CountId = wMenu_Count;

	// The Function
	wMenu.pfunction = nfunction;

	// The state
	wMenu.state = 0;
	
	wMenu_Objects.push_back( wMenu );

	Set_Main_Objects_Pos();
}

Menu_Main_Object *cLevelEditor :: Get_Main_Object( unsigned int nId )
{
	if( !wMenu_Objects.size() || !wMenu_Count ) 
	{
		return NULL;
	}

	for( unsigned int i = 0; i < wMenu_Objects.size(); i++ )
	{
		if( wMenu_Objects[i].CountId == nId )
		{
			return &wMenu_Objects[i];
		}
	}

	return NULL;
}

void cLevelEditor :: Set_Main_Objects_Pos( void )
{
	for( unsigned int i = 0; i < wMenu_Count; i++ )
	{
		Menu_Main_Object *Item = Get_Main_Object( i + 1 );
		
		if( !Item )
		{
			continue;
		}

		if( Item->Item_Menu_Id != MENU_SPACER ) 
		{
			// The Collision Rect
			Item->ColRect.w = Item->def_img->w;
			Item->ColRect.h = Item->def_img->h;
		}
		else
		{
			Item->ColRect.w = 0;
			Item->ColRect.h = 0;
		}

		if( wMain.w - 20 > 0 ) 
		{
			Item->ColRect.x = wMain.w - 130;
		}
		else
		{
			Item->ColRect.x = 0;
		}
		
		Item->ColRect.y = wMain.y + 8 + Item->cur_posy;
	}
}

void cLevelEditor :: Set_Main_Active( unsigned int object_id )
{
	for( unsigned int i = 0; i < wMenu_Count; i++ )
	{
		Menu_Main_Object *Item = Get_Main_Object( i + 1 );
		
		if( !Item )
		{
			continue;
		}

		if( Item->Item_Menu_Id != MENU_SPACER ) 
		{
			if( i == object_id ) 
			{
				Item->state = 2;
			}
			else
			{
				Item->state = 0;
			}
		}
	}
}

void cLevelEditor :: Load_Item_Menu( unsigned int menu_id )
{
	if( menu_id == MENU_FUNCTION || menu_id == MENU_SPACER ) 
	{
		return;
	}

	Unload_Item_Menu();
	
	cSprite *Sprite_type = NULL;

	if( menu_id == MENU_BOX ) 
	{
		Sprite_type = new cSpinBox( 0, 0 );
		Add_Item_Object( Sprite_type, "SpinBox" );

		Sprite_type = new cGoldBox( 0, 0 );
		Add_Item_Object( Sprite_type, "GoldBox" );

		Sprite_type = new cBonusBox( 0, 0, TYPE_BONUSBOX_MUSHROOM_FIRE );
		Add_Item_Object( Sprite_type, "Box M-F" );

		Sprite_type = new cBonusBox( 0, 0,TYPE_BONUSBOX_LIVE );
		Add_Item_Object( Sprite_type, "Box 1-UP" );

	}
	else if( menu_id == MENU_GROUND_GREEN_1 ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/down.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Down" );
		
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/right.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Right" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/left.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Middle" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/left_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Left up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/right_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Right up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/left_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left Down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/right_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right Down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/hill_left.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Hill Left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/hill_right.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Hill Right" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/hill_left_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Hill Left up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/ground/hill_right_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Hill Right up" );
		
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/kplant.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Sprite_type->climbable = 1;
		Add_Item_Object( Sprite_type, "Climbing Plant" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/kplant_head.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant Head" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/plant_l.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/plant_m.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant middle" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/plant_r.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant right" );
	}
	else if( menu_id == MENU_PLASTIC_1 ) 
	{
		// Blue
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/right.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/left.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Middle" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/left_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Left up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/right_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Right up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/left_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_blue/right_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right down" );

		// Green
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/right.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/left.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Middle" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/left_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Left up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/right_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Right up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/left_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_green/right_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right down" );

		// Grey
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/right.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/left.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Middle" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/left_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Left up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/right_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Right up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/left_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_grey/right_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right down" );

		// Red
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/right.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/left.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Middle" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/left_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Left up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/right_up.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Right up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/left_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Left down" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/plastic_1/screw_block_red/right_down.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Right down" );
	}
	else if( menu_id == MENU_JUNGLE_1 ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/yoshi_1/hill_up_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Yoshi Hill up" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/yoshi_1/rope_1_leftright.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Rope" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/yoshi_1/extra_1_red.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant Red" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/yoshi_1/extra_1_yellow.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant Yellow" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/yoshi_1/extra_1_blue.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant Blue" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/yoshi_1/extra_1_green.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Plant Green" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/jungle_1/berry_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Berry" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/jungle_1/kplant.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Sprite_type->climbable = 1;
		Add_Item_Object( Sprite_type, "Climbing Plant" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/jungle_1/beanstalk.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Beanstalk" );
	}
	else if( menu_id == MENU_GHOST_1 )
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/ghost_1/way_1_left.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Way left" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/ghost_1/way_1_middle.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Way middle" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/ghost_1/way_1_right.png" ), 0, 0 );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Way right" );
		
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/ghost_1/lamp_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Lamp" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/ghost_1/window_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Window" );
	}
	else if( menu_id == MENU_HEDGES_GREEN ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/hedges/medium_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Hedge Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/hedges/medium_2.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Hedge Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/hedges/small_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Hedge Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/hedges/small_2.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Hedge Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/hedges/big_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Hedge Big" );
		
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/ground/green_1/hedges/wild_medium.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Wild Hedge" );
	}
	else if( menu_id == MENU_PIPES ) 
	{
		// The upward pipes
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/blue_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Blue Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/blue_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Blue Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/green_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/green_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/grey_big_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Grey Big" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/grey_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Grey Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/yellow_big_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Yellow Big" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/up/yellow_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Yellow Med" );

		// The left pipes
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/left/green_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/left/green_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/left/grey_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Grey Sm" );

		// The right pipes
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/right/green_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/right/green_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/right/grey_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Grey Sm" );

		// The downward pipes
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/blue_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Blue Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/blue_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Blue Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/green_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/green_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/grey_big_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Grey Big" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/grey_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Grey Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/yellow_big_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Yellow Big" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/down/yellow_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Yellow Med" );

		// The leftright pipes
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/leftright/green_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/leftright/green_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/leftright/yellow_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Yellow Med" );
		
		// The updown pipes
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/updown/green_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/updown/green_small_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/pipes/updown/yellow_medium_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Yellow Med" );
	}
	else if( menu_id == MENU_HILLS ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/hills/blue_1/1_big.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Blue Big" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/hills/blue_1/1_medium.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Blue Med" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/hills/light_blue_1/head.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Blue Head" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/hills/light_blue_1/middle.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Blue" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/hills/green_1/head.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green Head" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/hills/green_1/middle.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Green" );
	}
	else if( menu_id == MENU_BLOCKS ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/game/box/brown1_1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "default" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/blocks/stone/1.png" ), 0, 0 );
		Add_Item_Object( Sprite_type, "Stone" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/blocks/wood/1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Wood" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/game/box/white1_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "white" );
	}
	else if( menu_id == MENU_SIGNS ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/signs/default_1/1_ending.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Ending" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/signs/default_1/1_ending_big.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Ending Big" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/signs/yoshi/post.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Yoshi Post" );
	}
	else if( menu_id == MENU_CLOUDS ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/clouds/default_1/1_middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Cloud" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/clouds/default_1/2_big.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Cloud Big" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/clouds/default_1/2_small.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Cloud Sm" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/clouds/cloudy_1/middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Cloud" );
	}
	else if( menu_id == MENU_EXTRA ) 
	{
		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/slider/grey_1/slider_left.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Slider left" );


		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/slider/grey_1/slider_middle.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Slider mid" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/slider/grey_1/slider_right.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Sprite_type->halfmassive = 1;
		Add_Item_Object( Sprite_type, "Slider right" );

		Sprite_type = new cSprite( GetImage( "sd:/apps/smc/data/pixmaps/game/level/door_yellow_1.png" ), 0, 0 );
		Sprite_type->massive = 0;
		Add_Item_Object( Sprite_type, "Door" );
	}
	else if( menu_id == MENU_ENEMY ) 
	{
		Sprite_type = new cGoomba( 0, 0, 0 ); // Brown
		Add_Item_Object( Sprite_type, "Goomba Brown" );

		Sprite_type = new cGoomba( 0, 0, 1 ); // Blue
		Add_Item_Object( Sprite_type, "Goomba Blue" );

		Sprite_type = new cTurtle( 0, 0, 1 ); // Red
		Add_Item_Object( Sprite_type, "Turtle Red" );
		
		Sprite_type = new cjPiranha( 0, 0, DIR_UP );
		Add_Item_Object( Sprite_type, "jPiranha" );

		Sprite_type = new cjPiranha( 0, 0, DIR_DOWN );
		Add_Item_Object( Sprite_type, "jPiranha" );

		Sprite_type = new cjPiranha( 0, 0, DIR_LEFT );
		Add_Item_Object( Sprite_type, "jPiranha" );

		Sprite_type = new cjPiranha( 0, 0, DIR_RIGHT );
		Add_Item_Object( Sprite_type, "jPiranha" );
		
		Sprite_type = new cbanzai_bill( 0, 0, DIR_LEFT ); // left
		Add_Item_Object( Sprite_type, "Banzai Bill" );

		Sprite_type = new cbanzai_bill( 0, 0, DIR_RIGHT ); // right
		Add_Item_Object( Sprite_type, "Banzai Bill" );

		Sprite_type = new cRex( 0, 0 );
		Add_Item_Object( Sprite_type, "Rex" );
	}
	else if( menu_id == MENU_SPECIAL ) 
	{
		Sprite_type = new cLevelExit( 0, 0 );
		Add_Item_Object( Sprite_type, "Level Beam", GetImage( "sd:/apps/smc/data/pixmaps/game/leveleditor/special.png" ) );

		Sprite_type = new cLevelExit( 0, 0, LVLCHANGE_WARP );
		Sprite_type->massive = 1;
		Add_Item_Object( Sprite_type, "Level Warp", GetImage( "sd:/apps/smc/data/pixmaps/game/leveleditor/special.png" ) );

		Sprite_type = new cCloud( 0, 0 );
		Add_Item_Object( Sprite_type, "Moving Cloud" );

		Sprite_type = new cGoldPiece( 0, 0 );
		Add_Item_Object( Sprite_type, "Goldpiece", GetImage( "sd:/apps/smc/data/pixmaps/animation/goldpiece_1/3.png" ) );

		Sprite_type = new cMoon( 0, 0 );
		Add_Item_Object( Sprite_type, "Moon" );

		Sprite_type = new cEnemyStopper( 0, 0 );
		Add_Item_Object( Sprite_type, "Enemystopper", GetImage( "sd:/apps/smc/data/pixmaps/game/leveleditor/special.png" ) );
	}
	else
	{
		printf( "Unknown defualt Menu : %d\n", menu_id );
	}
	
	Set_Item_Objects_Pos();
	
	wItem_timer = DESIRED_FPS * 5;
}

void cLevelEditor :: Unload_Item_Menu( void )
{
	for( unsigned int i = 0; i < wItem_Count; i++ )
	{
		Menu_Item_Object *Item = Get_Item_Object( i + 1 );

		if( !Item )
		{
			continue;
		}

		if( Item->preview_img ) 
		{
			SDL_FreeSurface( Item->preview_img );
			Item->preview_img = NULL;
		}
		
		if( Item->name_img )
		{
			SDL_FreeSurface( Item->name_img );
			Item->name_img = NULL;
		}
		
		if( Item->name_img_shadow )
		{
			SDL_FreeSurface( Item->name_img_shadow );
			Item->name_img_shadow = NULL;
		}
		
		if( Item->size_img )
		{
			SDL_FreeSurface( Item->size_img );
			Item->size_img = NULL;
		}
		
		if( Item->size_img_shadow )
		{
			SDL_FreeSurface( Item->size_img_shadow );
			Item->size_img_shadow = NULL;
		}

		if( Item->Sprite_type )
		{
			delete Item->Sprite_type;
			Item->Sprite_type = NULL;
		}
	}
	
	wItem_Objects.clear();
	
	wItem_Count = 0;
	Item_scoll = 0;
}

void cLevelEditor :: Draw( SDL_Surface *target )
{
	if( cameraposy > 0 && cameraposy < screen->h ) 
	{
		int start_x = 0;

		if( cameraposx < 0 ) 
		{
			start_x = -(int)cameraposx;
		}

		lineRGBA( screen, start_x, screen->h - (int)cameraposy, screen->w, screen->h - (int)cameraposy, 0, 0, 100, 255 );
	}

	if( cameraposx < 0 && cameraposx > -screen->w ) 
	{
		int start_y = screen->h;

		if( cameraposy < screen->h ) 
		{
			start_y = screen->h - (int)cameraposy;
		}

		lineRGBA( screen, 0 - (int)cameraposx, start_y , 0 - (int)cameraposx, 0 , 0, 100, 0, 255 );
	}


	// The Main Window Animation
	if( wMain_timer <= 0 ) 
	{
		if( (int)wMain_open > 10 ) 
		{
			wMain_open -= Framerate.speedfactor*8;

			if( wMain_open < 10 ) 
			{
				wMain_open = 10;
			}

			wMain.w = (int)wMain_open;

			Set_Main_Objects_Pos();
		}
	}
	else
	{
		wMain_timer -= Framerate.speedfactor;

		if( (int)wMain_open < 150 ) 
		{
			wMain_open += Framerate.speedfactor*8;

			if( wMain_open > 150 ) 
			{
				wMain_open = 150;
			}

			wMain.w = (int)wMain_open;

			Set_Main_Objects_Pos();
		}
	}

	// The Item Window Animation
	if( wItem_timer <= 0 ) 
	{
		if( (int)wItem_open > 10 ) 
		{
			wItem_open += Framerate.speedfactor*8;

			if( wItem_open > screen->h - 10 ) 
			{
				wItem_open = screen->h - 10;
			}

			wItem.y = (int)wItem_open;

			Set_Item_Objects_Pos();
		}
	}
	else
	{
		wItem_timer -= Framerate.speedfactor;

		if( (int)wItem_open > screen->h - wItem.h ) 
		{
			wItem_open -= Framerate.speedfactor*8;

			if( wItem_open < (double)( screen->h - wItem.h ) ) 
			{
				wItem_open = (double)( screen->h - wItem.h );
			}

			wItem.y = (int)wItem_open;
			
			Set_Item_Objects_Pos();
		}
	}

	// Main Window Box
	boxRGBA( target, wMain.x, wMain.y, wMain.x + wMain.w, wMain.y + wMain.h, 40, 100, 50, 255 );
	boxRGBA( target, wMain.x, wMain.y, wMain.x + 10, wMain.y + wMain.h, 0, 0, 130, 255 );
	
	if( wItem_Count ) 
	{
		// Item Window Box
		boxRGBA( target, wItem.x, wItem.y, wItem.x + wItem.w, wItem.y + wItem.h, 0, 0, 0, 255 );
		boxRGBA( target, wItem.x, wItem.y, wItem.x + wItem.w, wItem.y + 10, 130, 0, 0, 255 );
	}

	unsigned int i;

	for( i = 0; i < wItem_Count; i++ )
	{
		Menu_Item_Object *Item = Get_Item_Object( i + 1 );

		if( !Item )
		{
			continue;
		}

		if( Item->ColRect.x > wItem.x + wItem.w - 27 - Item->ColRect.w || Item->ColRect.x < wItem.x + 20 ) // limits
		{
			Item->visible = 0;
			continue;
		}
		else
		{
			Item->visible = 1;
		}
		
		boxRGBA( target, Item->ColRect.x, Item->ColRect.y, Item->ColRect.x + Item->ColRect.w, Item->ColRect.y + Item->ColRect.h, 0, 0, 0, 255 );

		// The Preview Image
		SDL_Rect r;
		r.x = Item->ColRect.x + 5;
		r.y = Item->ColRect.y + 5;
		r.w = Item->preview_img->w;
		r.h = Item->preview_img->h;

		SDL_BlitSurface( Item->preview_img, NULL, target, &r );


		// The Image Name
		r.y = Item->ColRect.y - 15;
		
		SDL_BlitSurface( Item->name_img_shadow, NULL, target, &r );

		r.x -= 2;
		r.y -= 2;

		SDL_BlitSurface( Item->name_img, NULL, target, &r );

		// The image dimensions
		r.y = Item->ColRect.y + Item->ColRect.h + 4;
		
		SDL_BlitSurface( Item->size_img_shadow, NULL, target, &r );

		r.x -= 2;
		r.y -= 2;

		SDL_BlitSurface( Item->size_img, NULL, target, &r );
	}

	if( wItem.y == screen->h - wItem.h )
	{
		Item_scroller_left->rect.x = (Sint16)Item_scroller_left->posx;
		Item_scroller_left->rect.y = (Sint16)Item_scroller_left->posy;
		Item_scroller_right->rect.x = (Sint16)Item_scroller_right->posx;
		Item_scroller_right->rect.y = (Sint16)Item_scroller_right->posy;

		if( Item_scroller_left->active )
		{
			SDL_BlitSurface( Item_scroller_left->image_hover, NULL, target, &Item_scroller_left->rect );
			Item_scoll += Framerate.speedfactor * 8;
			Item_scroller_left->active = 0;
			pLeveleditor->Set_Item_Objects_Pos();
		}
		else
		{
			SDL_BlitSurface( Item_scroller_left->image_default, NULL, target, &Item_scroller_left->rect );
		}

		if( Item_scroller_right->active )
		{
			SDL_BlitSurface( Item_scroller_right->image_hover, NULL, target, &Item_scroller_right->rect );
			Item_scoll -= Framerate.speedfactor * 8;
			Item_scroller_right->active = 0;
			pLeveleditor->Set_Item_Objects_Pos();
		}
		else
		{
			SDL_BlitSurface( Item_scroller_right->image_default, NULL, target, &Item_scroller_right->rect );
		}
	

	}

	for( i = 0; i < wMenu_Count; i++ )
	{
		Menu_Main_Object *Item = Get_Main_Object( i + 1 );
		
		if( !Item || Item->ColRect.x == 0 )
		{
			continue;
		}

		if( Item->Item_Menu_Id != MENU_SPACER ) 
		{
			//boxRGBA( target, wMain.x + 15, Item->ColRect.y - 2, wMain.x + wMain.w - 7, Item->ColRect.y + Item->ColRect.h, 200, 200, 250, 255 );
			
			// The Shadow
			SDL_Rect r;
			r.x = Item->ColRect.x + 1;
			r.y = Item->ColRect.y + 1;
			r.w = Item->ColRect.w;
			r.h = Item->ColRect.h;

			SDL_BlitSurface( Item->shadow_img, NULL, target, &r ); // shadow

			if( Item->state == 1 )	// Hovered
			{
				SDL_BlitSurface( Item->hover_img, NULL, target, &Item->ColRect );
			}
			else // default
			{
				SDL_BlitSurface( Item->def_img, NULL, target, &Item->ColRect );
			}

			if( Item->state == 2 )	// Active
			{
				boxRGBA( target, wMain.w - 13, Item->ColRect.y, wMain.w - 8, Item->ColRect.y + Item->ColRect.h - 1, 0, 200, 0, 255 );
			}			
		}
		else
		{
			boxRGBA( target, wMain.x + 15, wMain.y + 5 + Item->cur_posy + Item->spacer_height/2, wMain.x + wMain.w - 5, wMain.y + 5 + Item->cur_posy + Item->spacer_height/2, 200, 200, 200, 255 );
		}
	}
}

void cLevelEditor :: Add_Item_Object( cSprite *nSprite_type, string nName /* = "" */, SDL_Surface *image /* = NULL */ )
{
	if( !nSprite_type || ( !nSprite_type->image && !image ) )
	{
		return;
	}

	// if no image is given use the Sprite one
	if( !image )
	{
		image = nSprite_type->image;
	}

	string full_path = pImageManager->Get_Path( image );

	if( !full_path.length() ) 
	{
		printf( "Invalid Menu Item path : %s\n", full_path.c_str() );
		return;
	}

	Menu_Item_Object mItem;

	int img_w = image->w;
	int img_h = image->h;

	mItem.preview_img = Auto_resize( image, 50, 50 );


	mItem.path = full_path;

	if( nName.length() > 1 )
	{
		mItem.name = nName;
	}
	else
	{
		full_path.erase( 0, full_path.rfind( "/" ) + 1 ); // Remove the path
		full_path.erase( full_path.length() - 4, full_path.length() ); // Remove the image extension

		mItem.name = full_path;
	}

	// The description
	mItem.name_img = TTF_RenderText_Blended( font_16, mItem.name.c_str(), colorWhite );
	mItem.name_img_shadow = TTF_RenderText_Blended( font_16, mItem.name.c_str(), colorBlack );

	// The Image Size text
	char size_text[10];
	sprintf( size_text, "%dx%d", img_w, img_h );

	mItem.size_img = TTF_RenderText_Blended( font_16, size_text, colorWhite );
	mItem.size_img_shadow = TTF_RenderText_Blended( font_16, size_text, colorBlack );

	mItem.Sprite_type = nSprite_type;

	mItem.visible = 0;

	wItem_Count++;
	
	// The Id
	mItem.CountId = wItem_Count;

	wItem_Objects.push_back( mItem );

	Set_Item_Objects_Pos();
}

Menu_Item_Object *cLevelEditor :: Get_Item_Object( unsigned int nId )
{
	if( !wItem_Objects.size() || !wItem_Count ) 
	{
		return NULL;
	}

	for( unsigned int i = 0; i < wItem_Objects.size(); i++ )
	{
		if( wItem_Objects[i].CountId == nId )
		{
			return &wItem_Objects[i];
		}
	}

	return NULL;
}

void cLevelEditor :: Set_Item_Objects_Pos( void )
{
	for( unsigned int i = 0; i < wItem_Count; i++ )
	{
		Menu_Item_Object *Item = Get_Item_Object( i + 1 );
		
		if( Item )
		{
			// The Collision Rect
			Item->ColRect.w = 60;
			Item->ColRect.h = 60;
			Item->ColRect.x = wItem.x + (int)Item_scoll + 30 + ( ( Item->ColRect.w + 20 ) * ( i ) );
			Item->ColRect.y = wItem.y + 30;
		}
	}
}

void cLevelEditor :: Switch_ObjectState( void )
{
	int index = -1;

	if( pMouseCursor->iCollisionType == 5 )	// from Passive to Massive
	{
		for( unsigned int i = 0; i < PassiveObjects.size(); i++ )
		{
			if( PassiveObjects[i] && ( PassiveObjects[i]->ID == pMouseCursor->MouseObject->ID ) )
			{
				index = i;
			}
		}
		
		if( index == -1 )
		{
			return;
		}

		pMouseCursor->MouseObject->massive = 1;
		AddMassiveObject( PassiveObjects[index] ) ;
		PassiveObjects[index] = NULL;
	}
	else if( pMouseCursor->iCollisionType == 1 && !pMouseCursor->MouseObject->halfmassive )	// From Massive to Halfmassive
	{
		for( unsigned int i = 0; i < MassiveObjects.size();i++ )
		{
			if( MassiveObjects[i] && ( MassiveObjects[i]->ID == pMouseCursor->MouseObject->ID ) )
			{
				index = i;
			}
		}
		if( index == -1 ) 
		{
			return;
		}
		
		pMouseCursor->MouseObject->halfmassive = 1;
		pMouseCursor->MouseObject->massive = 0;
		pMouseCursor->MouseObject->type = TYPE_HALFMASSIVE;
		AddActiveObject( MassiveObjects[index] ) ;
		MassiveObjects[index] = NULL;
	}
	else if( pMouseCursor->MouseObject->type == TYPE_HALFMASSIVE && !pMouseCursor->MouseObject->climbable )	// From Halfmassive to Climbable
	{
		for( unsigned int i = 0; i < ActiveObjects.size(); i++ )
		{
			if( ActiveObjects[i] && ( ActiveObjects[i]->ID == pMouseCursor->MouseObject->ID ) )
			{
				index = i;
			}
		}
		
		if( index == -1 )
		{
			return;
		}

		pMouseCursor->MouseObject->climbable = 1;
	}
	else if( pMouseCursor->MouseObject->climbable )	// From Climbable to Halfmassive
	{
		for( unsigned int i = 0; i < ActiveObjects.size(); i++ )
		{
			if( ActiveObjects[i] && ( ActiveObjects[i]->ID == pMouseCursor->MouseObject->ID ) )
			{
				index = i;
			}
		}
		
		if( index == -1 )
		{
			return;
		}

		pMouseCursor->MouseObject->massive = 0;
		pMouseCursor->MouseObject->halfmassive = 0;
		pMouseCursor->MouseObject->climbable = 0;
		pMouseCursor->MouseObject->type = TYPE_SPRITE;
		AddPassiveObject( ActiveObjects[index] ) ;
		ActiveObjects[index] = NULL;
	}

	pMouseCursor->MouseObject = NULL;
}

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */

void LE_Settings( void )
{
	pDialogManager->DeleteAll();

	cSprite *text_caption = new cSprite( GetImage( "game/leveleditor/settings.png" ), 200, 5 );
	cSprite *text_level_name = new cSprite( TTF_RenderText_Shaded( font, "Level name", colorBlack, colorWhite ), 50, 60 );
	cSprite *text_music = new cSprite( TTF_RenderText_Shaded( font, "Music", colorBlack, colorWhite ), 50, 110 );
	cSprite *text_background_color_1 = new cSprite( TTF_RenderText_Shaded( font, "Background Color 1", colorBlack, colorWhite ), 50, 170 );
	cSprite *text_background_color_2 = new cSprite( TTF_RenderText_Shaded( font, "Background Color 2", colorBlack, colorWhite ), 50, 220 );
	cSprite *text_background_image_1 = new cSprite( TTF_RenderText_Shaded( font, "Background Image", colorBlack, colorWhite ), 50, 280 );
	cSprite *text_background_image_type = new cSprite( TTF_RenderText_Shaded( font, "Background Image Type", colorBlack, colorWhite ), 50, 340 );

	cSprite *text_back = new cSprite( TTF_RenderText_Shaded( font, "Back", colorBlack, colorWhite ), screen->w - 100, screen->h - 50 );
	
	// ### The Dialogs

	// ## the Level name
	string Level_name;
	Level_name.reserve( 120 );
	Level_name = pLevel->Get_Levelfile( 0 );

	pDialogManager->Add( 250, 60, "Level name", Level_name, DIALOG_ALL, 80, 300 );

	// ## Music
	string Music_file;
	Music_file.reserve( 120 );
	Music_file = pLevel->musicfile;
	Music_file.erase( 0, strlen( MUSIC_DIR ) + 1 );
	
	pDialogManager->Add( 250, 110, "Level Music", Music_file, DIALOG_ALL, 80, 300 );

	// ## Background Colors
	char color[4];
	
	Uint8 background_1_red = pLevel->background->color_1.red;
	Uint8 background_1_green = pLevel->background->color_1.green;
	Uint8 background_1_blue = pLevel->background->color_1.blue;
	Uint8 background_2_red = pLevel->background->color_2.red;
	Uint8 background_2_green = pLevel->background->color_2.green;
	Uint8 background_2_blue = pLevel->background->color_2.blue;

	sprintf( color, "%d", background_1_red );
	pDialogManager->Add( 270, 170, "background 1 Red", color, DIALOG_ONLY_NUMBERS, 255, 50 );
	sprintf( color, "%d", background_1_green );
	pDialogManager->Add( 360, 170, "background 1 Green", color, DIALOG_ONLY_NUMBERS, 255, 50 );
	sprintf( color, "%d", background_1_blue );
	pDialogManager->Add( 450, 170, "background 1 Blue", color, DIALOG_ONLY_NUMBERS, 255, 50 );

	sprintf( color, "%d", background_2_red );
	pDialogManager->Add( 270, 220, "background 2 Red", color, DIALOG_ONLY_NUMBERS, 255, 50 );
	sprintf( color, "%d", background_2_green );
	pDialogManager->Add( 360, 220, "background 2 Green", color, DIALOG_ONLY_NUMBERS, 255, 50 );
	sprintf( color, "%d", background_2_blue );
	pDialogManager->Add( 450, 220, "background 2 Blue", color, DIALOG_ONLY_NUMBERS, 255, 50 );

	// ## Background image 1
	cSprite *background_image_1_preview = new cSprite( NULL, 600, 280 );
	string background_image_1;
	background_image_1.reserve( 120 );
	background_image_1 = pLevel->background->img_file_1;

	pDialogManager->Add( 250, 280, "background image 1", background_image_1, DIALOG_ALL, 80, 300 );

	// ## Background image type
	cSprite *background_image_type_text = new cSprite( NULL, 400, 340 );
	char image_type[2];
	
	sprintf( image_type, "%d", pLevel->background->img_type );
	pDialogManager->Add( 280, 340, "background image type", image_type, DIALOG_ONLY_NUMBERS, 1, 40 );

	// ## Gets the the Dialog id's
	int id_level_name = pDialogManager->Get( "Level name" );
	int id_music = pDialogManager->Get( "Level Music" );
	// colors
	int id_background_1_red = pDialogManager->Get( "background 1 Red" );
	int id_background_1_green = pDialogManager->Get( "background 1 Green" );
	int id_background_1_blue = pDialogManager->Get( "background 1 Blue" );
	int id_background_2_red = pDialogManager->Get( "background 2 Red" );
	int id_background_2_green = pDialogManager->Get( "background 2 Green" );
	int id_background_2_blue = pDialogManager->Get( "background 2 Blue" );
	// image 1
	int id_background_image_1 = pDialogManager->Get( "background image 1" );
	// image type
	int id_background_image_type = pDialogManager->Get( "background image type" );

	// retain the camerposition
	double cameraposx_old = cameraposx;
	double cameraposy_old = cameraposy;
	cameraposx = 0;
	cameraposy = 0;

	bool menu = 1;

	while( menu )
	{
		SDL_FillRect( screen, NULL, white );

		pMouseCursor->Update_Position();

		text_caption->Draw( screen );
		text_level_name->Draw( screen );
		text_music->Draw( screen );
		text_background_color_1->Draw( screen );
		text_background_color_2->Draw( screen );
		text_background_image_1->Draw( screen );
		text_background_image_type->Draw( screen );

		// Color 1
		if( pDialogManager->Objects[id_background_1_red]->gotChanged() )
		{
			background_1_red = pDialogManager->Objects[id_background_1_red]->Get_Value_int();
		}

		if( pDialogManager->Objects[id_background_1_green]->gotChanged() )
		{
			background_1_green = pDialogManager->Objects[id_background_1_green]->Get_Value_int();
		}

		if( pDialogManager->Objects[id_background_1_blue]->gotChanged() )
		{
			background_1_blue = pDialogManager->Objects[id_background_1_blue]->Get_Value_int();
		}
		// Color 2
		if( pDialogManager->Objects[id_background_2_red]->gotChanged() )
		{
			background_2_red = pDialogManager->Objects[id_background_2_red]->Get_Value_int();
		}

		if( pDialogManager->Objects[id_background_2_green]->gotChanged() )
		{
			background_2_green = pDialogManager->Objects[id_background_2_green]->Get_Value_int();
		}

		if( pDialogManager->Objects[id_background_2_blue]->gotChanged() )
		{
			background_2_blue = pDialogManager->Objects[id_background_2_blue]->Get_Value_int();
		}

		// Background image
		if( pDialogManager->Objects[id_background_image_1]->gotChanged() )
		{
			if( background_image_1_preview->image )
			{
				SDL_FreeSurface( background_image_1_preview->image );
				background_image_1_preview->SetImage( NULL );
			}

			background_image_1 = pDialogManager->Objects[id_background_image_1]->Get_Value_string();
			background_image_1.insert( 0, "/" );
			background_image_1.insert( 0, PIXMAPS_DIR );

			if( valid_file( background_image_1 ) )
			{
				SDL_Surface *temp = LoadImage( background_image_1 );
				
				if( temp )
				{
					SDL_Surface *final = Auto_resize( temp, 100, 100 );

					if( final )
					{
						background_image_1_preview->SetImage( final );
					}
					
					SDL_FreeSurface( temp );
				}
				else
				{
					printf( "Warning : Couldn't open Background preview : %s\n", background_image_1.c_str() );
				}
			}
		}

		// Background image type
		if( pDialogManager->Objects[id_background_image_type]->gotChanged() )
		{
			unsigned int img_type = pDialogManager->Objects[id_background_image_type]->Get_Value_int();

			if( background_image_type_text->image )
			{
				SDL_FreeSurface( background_image_type_text->image );
				background_image_type_text->SetImage( NULL );
			}

			if( img_type == 1 ) // Left and Right
			{
				background_image_type_text->SetImage( TTF_RenderText_Shaded( font, "Left and Right", colorGreen, colorWhite ) );
			}
			else // no background image
			{
				background_image_type_text->SetImage( TTF_RenderText_Shaded( font, "No Image", colorBlue, colorWhite ) );
			}
		}

		// background color boxes
		boxRGBA( screen, 580, 168, 610, 198, background_1_red, background_1_green, background_1_blue, 255 );
		boxRGBA( screen, 580, 218, 610, 248, background_2_red, background_2_green, background_2_blue, 255 );

		// background color R,G,B text
		stringRGBA( screen, 248, 185, "R:", background_1_red, 0, 0, 255 );
		stringRGBA( screen, 338, 185, "G:", 0, background_1_green, 0, 255 );
		stringRGBA( screen, 428, 185, "B:", 0, 0, background_1_blue, 255 );
		stringRGBA( screen, 248, 238, "R:", background_2_red, 0, 0, 255 );
		stringRGBA( screen, 338, 238, "G:", 0, background_2_green, 0, 255 );
		stringRGBA( screen, 428, 238, "B:", 0, 0, background_2_blue, 255 );

		// background image preview
		if( background_image_1_preview->image )
		{
			background_image_1_preview->rect.x = (Sint16)background_image_1_preview->posx;
			background_image_1_preview->rect.y = (Sint16)background_image_1_preview->posy;
			SDL_BlitSurface( background_image_1_preview->image, NULL, screen, &background_image_1_preview->rect );
		}

		// background image type text
		if( background_image_type_text->image )
		{
			background_image_type_text->rect.x = (Sint16)background_image_type_text->posx;
			background_image_type_text->rect.y = (Sint16)background_image_type_text->posy;
			SDL_BlitSurface( background_image_type_text->image, NULL, screen, &background_image_type_text->rect );
		}

		if( !pMouseCursor->Leveleditor_CollsionCheck( pMouseCursor->posx, pMouseCursor->posy ) )
		{
			if( pMouseCursor->iCollisionType == 10 ) // A Dialog Box
			{
				if( pMouseCursor->iCollisionNumber >= 0 && pDialogManager->Get_Size() >= (unsigned int)pMouseCursor->iCollisionNumber )
				{
					if( pMouseCursor->MousePressed_left ) 
					{
						pDialogManager->Objects[pMouseCursor->iCollisionNumber]->Get_Focus();
						pMouseCursor->MousePressed_left = 0;
					}
				}
			}
			else if( CollideBoundingBox( &pMouseCursor->rect, &text_back->rect ) ) 
			{
				boxRGBA( screen, text_back->rect.x - 2, text_back->rect.y - 2, text_back->rect.x + text_back->rect.w + 2, text_back->rect.y + text_back->rect.h + 2, 230, 150, 50, 200 );
			}
			else
			{
				if( !pMouseCursor->MousePressed_left && pMouseCursor->iCollisionType == 0 )
				{
					pMouseCursor->mouse_W = 0;
					pMouseCursor->mouse_H = 0;
				}
				
				pMouseCursor->iCollisionType = 0;
				pMouseCursor->iCollisionNumber = 0;
			}
		}

		text_back->Draw( screen );
		
		pDialogManager->Update();
		pMouseCursor->Update();

		SDL_Flip( screen );
		
		while( SDL_PollEvent( &event ) )
		{
			switch( event.type )
			{
				case SDL_QUIT:
				{
					done = 1;
					menu = 0;
					break;
				}
				case SDL_MOUSEBUTTONDOWN:
				{
					if( event.button.button == 1 ) // left
					{
						pMouseCursor->MousePressed_left = 1;

						if( CollideBoundingBox( &pMouseCursor->rect, &text_back->rect ) ) 
						{
							menu = 0;
						}
					}
					else if( event.button.button == 3 ) // right
					{
						pMouseCursor->MousePressed_right = 1;
					}

					break;
				}
				case SDL_MOUSEBUTTONUP:
				{
					if( event.button.button == 1 )
					{
						pMouseCursor->MousePressed_left = 0;
					}
					else if( event.button.button == 2 )
					{
						pMouseCursor->fastCopyMode = 0;
					}
					else if( event.button.button == 3 )
					{
						pMouseCursor->MousePressed_right = 0;
					}

					break;
				}
				case SDL_KEYDOWN:
				{
					if( KeyPressed( KEY_ESC ) ) 
					{
						menu = 0;
					}
					break;
				}
				default:
				{
					break;
				}
			}
		}

	}

	if( background_image_1_preview->image )
	{
		SDL_FreeSurface( background_image_1_preview->image );
		background_image_1_preview->image = NULL;
	}

	if( background_image_type_text->image )
	{
		SDL_FreeSurface( background_image_type_text->image );
		background_image_type_text->SetImage( NULL );
	}

	SDL_FreeSurface( text_level_name->image );
	text_level_name->image = NULL;
	SDL_FreeSurface( text_music->image );
	text_music->image = NULL;
	SDL_FreeSurface( text_background_color_1->image );
	text_background_color_1->image = NULL;
	SDL_FreeSurface( text_background_color_2->image );
	text_background_color_2->image = NULL;
	SDL_FreeSurface( text_background_image_1->image );
	text_background_image_1->image = NULL;
	SDL_FreeSurface( text_background_image_type->image );
	text_background_image_type->image = NULL;
	SDL_FreeSurface( text_back->image );
	text_back->image = NULL;

	delete background_image_1_preview;
	background_image_1_preview = NULL;
	delete background_image_type_text;
	background_image_type_text = NULL;

	delete text_caption;
	text_caption = NULL;
	delete text_level_name;
	text_level_name = NULL;
	delete text_music;
	text_music = NULL;
	delete text_background_color_1;
	text_background_color_1 = NULL;
	delete text_background_color_2;
	text_background_color_2 = NULL;
	delete text_background_image_1;
	text_background_image_1 = NULL;
	delete text_background_image_type;
	text_background_image_type = NULL;
	delete text_back;
	text_back = NULL;

	if( pDialogManager->Objects[id_level_name]->gotChanged() ) 
	{
		if( Level_name.compare( pDialogManager->Objects[id_level_name]->Get_Value_string() ) != 0 ) 
		{
			pLevel->Set_Levelfile( pDialogManager->Objects[id_level_name]->Get_Value_string() );
		}

		debugdisplay->counter = 0; // no level saved info
	}

	pLevel->Set_Musicfile( pDialogManager->Objects[id_music]->Get_Value_string() );

	pLevel->background->Set_color_1( Color( background_1_red, background_1_green, background_1_blue ) );
	pLevel->background->Set_color_2( Color( background_2_red, background_2_green, background_2_blue ) );

	pLevel->background->Set_images( pDialogManager->Objects[id_background_image_1]->Get_Value_string() );
	pLevel->background->Set_image_type( (BackgroundImageType)pDialogManager->Objects[id_background_image_type]->Get_Value_int() );
	cameraposx = cameraposx_old;
	cameraposy = cameraposy_old;

	pDialogManager->DeleteAll();
}

void LE_New( void )
{
	boxRGBA( screen, 0, 0, screen->w, screen->h , 0, 0, 0, 64 );

	string levelname = EditMessageBox( "Create a new Level", "Levelname", screen->w/2 - 100, screen->h/2 - 10, 1 );

	if( levelname.length() < 2) 
	{
		return;
	}

	if( levelname.find( ".txt" ) == string::npos ) 
	{
		levelname.insert( levelname.length(), ".txt" );
	}

	if( levelname.find( pPreferences->level_dir ) == string::npos ) 
	{
		levelname.insert( 0, pPreferences->level_dir );
	}

	if( pLevel->New( levelname ) )
	{
		sprintf( debugdisplay->text, "Created %s", levelname.c_str() );
		debugdisplay->counter = DESIRED_FPS*2;
	}
	else
	{
		sprintf( debugdisplay->text, "Level already exist %s", levelname.c_str() );
		debugdisplay->counter = DESIRED_FPS*2;
	}
}

void LE_Load( void )
{
	KeyDown( SDLK_l );
}

void LE_Save( void )
{
	pLevel->Save();
}

void LE_Clear( void )
{
	string levelfile_old = pLevel->levelfile;
	pLevel->Unload();
	pLevel->levelfile = levelfile_old;
}

void LE_Exit( void )
{
	KeyDown( SDLK_F8 );
}

void LE_Enter_Overworld( void )
{
	pOverWorld->Enter();
}
