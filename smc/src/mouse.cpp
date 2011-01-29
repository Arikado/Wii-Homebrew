/***************************************************************************
           mouse.cpp  -  mousecursor class
                             -------------------
    copyright            :	(C) 2003-2005 by FluXy
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

/* *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** */
/*#define GP2X_BUTTON_UP              (0)
#define GP2X_BUTTON_DOWN            (4)
#define GP2X_BUTTON_LEFT            (2)
#define GP2X_BUTTON_RIGHT           (6)
#define GP2X_BUTTON_UPLEFT          (1)
#define GP2X_BUTTON_UPRIGHT         (7)
#define GP2X_BUTTON_DOWNLEFT        (3)
#define GP2X_BUTTON_DOWNRIGHT       (5)
#define GP2X_BUTTON_CLICK           (18)
#define GP2X_BUTTON_A               (12)
#define GP2X_BUTTON_B               (13)
#define GP2X_BUTTON_Y               (14)
#define GP2X_BUTTON_X               (15)
#define GP2X_BUTTON_L               (10)
#define GP2X_BUTTON_R               (11)
#define GP2X_BUTTON_START           (8)
#define GP2X_BUTTON_SELECT          (9)
#define GP2X_BUTTON_VOLUP           (16)
#define GP2X_BUTTON_VOLDOWN         (17)*/

cMouseCursor :: cMouseCursor( double x, double y ) : cSprite ( NULL, x, y )
{
	SetImage( GetImage( "game/mouse.png" ) );

	HoveredObject.x = 0;
	HoveredObject.y = 0;
	HoveredObject.w = 0;
	HoveredObject.h = 0;

	Mover_mouse = GetImage( "game/axis_m.png" );

	MouseObject = NULL;
	CopyObject = NULL;

	mouse_H = 0;
	mouse_W = 0;

	fastCopyMode = 0;
	mover_mode = 0;

	MousePressed_left = 0;
	MousePressed_right = 0;

	clickcounter = 0;

	active_type = -1;
	active_number = -1;
}

cMouseCursor :: ~cMouseCursor( void )
{
	image = NULL;
}

bool cMouseCursor :: CollsionCheck( SDL_Rect *rect )
{
	if( mouseX > rect->x + rect->w )
	{
		return 0;
	}
	if( mouseX < rect->x )
	{
		return 0;
	}
	if( mouseY > rect->y + rect->h )
	{
		return 0;
	}
	if( mouseY < rect->y )
	{
		return 0;
	}

	return 1;
}

bool cMouseCursor :: Leveleditor_CollsionCheck( double x, double y )
{
	if( mover_mode ) 
	{
		ClearCollisions();
		return 1;
	}

	SDL_Rect rect1;
	SDL_Rect rect2;
	
	rect1.x = (Sint16)x;
	rect1.y = (Sint16)y;
	rect1.w = 1;
	rect1.h = 1;
	
	HoveredObject.x = 0;
	HoveredObject.y = 0;
	HoveredObject.w = 0;
	HoveredObject.h = 0;

	// The Leveleditor Objects
	if( Leveleditor_Mode && !MouseObject )
	{
		// Item Menu
		if( pLeveleditor->wItem.y == screen->h - pLeveleditor->wItem.h ) 
		{
			for( unsigned int i = 0; i < pLeveleditor->wItem_Count; i++ )
			{
				Menu_Item_Object *item = pLeveleditor->Get_Item_Object( i + 1 );

				if( !item || !item->visible ) 
				{
					continue;
				}

				rect2 = item->ColRect;
				rect2.x += (Sint16)cameraposx;
				rect2.y += (Sint16)cameraposy;
				
				if( CollideBoundingBox( &rect1, &rect2 ))
				{
					iCollisionNumber = i;
					iCollisionType = 6; // Leveleditor Item Object

					HoveredObject = item->ColRect;

					pLeveleditor->wItem_timer = ( DESIRED_FPS * 3 );

					return 0;
				}
			}
		}
		
		// Main menu
		if( pLeveleditor->wMain_open == 150 ) 
		{
			for( unsigned int i = 0; i < pLeveleditor->wMenu_Count; i++ )
			{
				Menu_Main_Object *item = pLeveleditor->Get_Main_Object( i + 1 );

				if( !item ) 
				{
					continue;
				}

				rect2 = item->ColRect;
				rect2.x = pLeveleditor->wMain.x + 15;
				rect2.w = pLeveleditor->wMain.w - 22;
				rect2.x += (Sint16)cameraposx;
				rect2.y += (Sint16)cameraposy;
				
				if( CollideBoundingBox( &rect1, &rect2 ))
				{
					iCollisionNumber = i;
					iCollisionType = 7; // Leveleditor Main Menu Object

					rect2.x -= (Sint16)cameraposx;
					rect2.y -= (Sint16)cameraposy;
					HoveredObject = rect2;

					if( item->state == 0 ) 
					{
						item->state = 1;
					}
					
					pLeveleditor->wMain_timer = ( DESIRED_FPS*3 );

					return 0;
				}
				else
				{
					if( item->state == 1 )
					{
						item->state = 0;
					}
				}
			}
		}

	}
	// The Leveleditor Main Menu
	rect2 = pLeveleditor->wMain;
	rect2.x += (Sint16)cameraposx;
	rect2.y += (Sint16)cameraposy;

	if( Leveleditor_Mode && CollideBoundingBox( &rect1, &rect2 ) ) 
	{
		pLeveleditor->wMain_timer = ( DESIRED_FPS*3 );
		iCollisionType = 0;
		iCollisionNumber = 0;
		return 1;
	}
	
	// The Leveleditor Item Menu
	if( pLeveleditor->wItem_Count && Leveleditor_Mode ) 
	{
		if( pLeveleditor->wItem.y == screen->h - pLeveleditor->wItem.h ) 
		{
			rect2 = pLeveleditor->Item_scroller_left->rect;
			rect2.x += (Sint16)cameraposx;
			rect2.y += (Sint16)cameraposy;

			// The left Item Object Scroller
			if( CollideBoundingBox( &rect1, &rect2 ) ) 
			{
				pLeveleditor->wItem_timer = ( DESIRED_FPS*3 );
				iCollisionType = 8;
				iCollisionNumber = 0;
				col_dir = DIR_LEFT;

				HoveredObject = pLeveleditor->Item_scroller_left->rect;

				return 0;	
			}

			rect2 = pLeveleditor->Item_scroller_right->rect;
			rect2.x += (Sint16)cameraposx;
			rect2.y += (Sint16)cameraposy;

			// The right Item Object Scroller
			if( CollideBoundingBox( &rect1, &rect2 ) ) 
			{
				pLeveleditor->wItem_timer = ( DESIRED_FPS*3 );
				iCollisionType = 8;
				iCollisionNumber = 0;
				col_dir = DIR_RIGHT;

				HoveredObject = pLeveleditor->Item_scroller_right->rect;
				
				return 0;	
			}
		}

		rect2 = pLeveleditor->wItem;
		rect2.x += (Sint16)cameraposx;
		rect2.y += (Sint16)cameraposy;

		if( CollideBoundingBox( &rect1, &rect2 ) ) 
		{
			pLeveleditor->wItem_timer = ( DESIRED_FPS*3 );
			iCollisionType = 0;
			iCollisionNumber = 0;
			return 1;
		}
	}


	if( pDialogManager->Get_Collision( (int)x, (int)y ) >= 0 ) // Check the Dialog Boxes
	{
		iCollisionType = 10;
		iCollisionNumber = pDialogManager->Get_Collision( (int)x, (int)y );
		return 0;
	}


	for( int i = ActiveObjects.size() - 1; i >= 0; i-- ) // only Enemystopper and Levelexit
	{
		if( !ActiveObjects[i] )
		{
			continue;
		}
		
		if( !( ActiveObjects[i]->type == TYPE_ENEMYSTOPPER || ActiveObjects[i]->type == TYPE_LEVELEXIT ) ) 
		{
			continue;
		}

		rect2 = ActiveObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ))
		{
			iCollisionNumber = i;
			iCollisionType = 2; // Active Obj
			return 0;
		}
	}
	
	for( int i = EnemyObjects.size() - 1; i >= 0; i-- ) // only non jPiranha
	{
		if( !EnemyObjects[i] || EnemyObjects[i]->type != TYPE_JPIRANHA )
		{
			continue;
		}
		rect2 = EnemyObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ))
		{
			iCollisionNumber = i;
			iCollisionType = 3; // Enemy Obj
			return 0;
		}
	}
	
	for( int i = MassiveObjects.size() - 1; i >= 0; i-- )
	{
		if( !MassiveObjects[i] || !MassiveObjects[i]->massive )
		{
			continue;
		}

		rect2 = MassiveObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ) )
		{
			iCollisionNumber = i;
			iCollisionType = 1; // Massive Obj
			return 0;
		}
	}

	for( int i = ActiveObjects.size() - 1; i >= 0; i-- ) // All non Enemystopper
	{
		if( !ActiveObjects[i] || ActiveObjects[i]->type == TYPE_ENEMYSTOPPER || ActiveObjects[i]->type == TYPE_LEVELEXIT )
		{
			continue;
		}

		rect2 = ActiveObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ))
		{
			iCollisionNumber = i;
			iCollisionType = 2; // Active Obj
			return 0;
		}
	}
	
	for( int i = EnemyObjects.size() - 1; i >= 0; i-- ) // only jPiranha
	{
		if( !EnemyObjects[i] || EnemyObjects[i]->type == TYPE_JPIRANHA )
		{
			continue;
		}

		rect2 = EnemyObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ))
		{
			iCollisionNumber = i;
			iCollisionType = 3; // Enemy Obj
			return 0;
		}
	}
	
	if( !pPlayer->invincible ) // player
	{
		rect2 = pPlayer->rect;

		if( CollideBoundingBox( &rect1, &rect2 ))
		{
			iCollisionNumber = 0;
			iCollisionType = 4; // Player Obj
			return 0;
		}
	}
	
	for( int i = PassiveObjects.size() - 1; i >= 0; i-- )
	{
		if( !PassiveObjects[i] )
		{
			continue;
		}

		rect2 = PassiveObjects[i]->rect;

		if( CollideBoundingBox( &rect1, &rect2 ) )
		{
			iCollisionNumber = i;
			iCollisionType = 5; // Passive Obj
			return 0;
		}
	}
	
	
	ClearCollisions();
	return 1;
}

void cMouseCursor :: Update( void )
{
	SDL_Rect r;
	r.x = mouseX;
	r.y = mouseY;
	r.w = 20;
	r.h = 20;
	//r.w = image->w;
	//r.h = image->h;
	
	if( Game_Mode == MODE_LEVEL )
	{
		if( !mover_mode ) 
		{
			if( !MousePressed_left && ( MouseObject || iCollisionType == 6 || iCollisionType == 7 || iCollisionType == 8 ) )
			{
				Draw_HoveredObject();
			}
			
			if( !( MousePressed_left && MouseObject && pPreferences->Lvleditor_automousehide ) )
			{
				SDL_BlitSurface( StartImage, NULL, screen, &r );
			}
		}
		else
		{
			SDL_BlitSurface( Mover_mouse, NULL, screen, &r );
		}
	}
	else if( Game_Mode == MODE_MENU )
	{
		SDL_BlitSurface( StartImage, NULL, screen, &r );
	}

}

void cMouseCursor :: Update_Position( void )
{
	SDL_GetMouseState( &mouseX, &mouseY );

	if( Game_Mode == MODE_LEVEL )
	{
		if( !mover_mode ) 
		{
			SetPos( mouseX + cameraposx, mouseY + cameraposy );
		}
	}
	
	rect.x = (Sint16)posx;
	rect.y = (Sint16)posy;
}

void cMouseCursor :: Update_Doubleclick( void )
{
	if( clickcounter ) 
	{
		if( clickcounter - Framerate.speedfactor <= 0 ) 
		{
			clickcounter = 0;
		}
		else
		{
			clickcounter -= Framerate.speedfactor;
		}
	}

	if( active_number ) 
	{
		if( active_type == 1 ) // Massive 
		{
		//	MassiveObjects[active_number]->rect.x
		}
	}
}

void cMouseCursor :: MouseObject_Update( void )
{
	if( mover_mode && Game_Mode == MODE_LEVEL ) 
	{
		return;
	}

	if( MouseObject )
	{
		if( !MousePressed_left )
		{
			HoveredObject.x = (Sint16)( MouseObject->startposx - cameraposx );
			HoveredObject.y = (Sint16)( MouseObject->startposy - cameraposy );
			
			if( MouseObject->StartImage ) 
			{
				HoveredObject.w = MouseObject->StartImage->w;
				HoveredObject.h = MouseObject->StartImage->h;
			}
			else
			{
				HoveredObject.w = MouseObject->rect.w;
				HoveredObject.h = MouseObject->rect.h;
			}
		}
		else
		{
			MouseObject->startposx = posx - (double)mouse_W;
			MouseObject->startposy = posy - (double)mouse_H;
			
			MouseObject->posx = posx - (double)mouse_W;
			MouseObject->posy = posy - (double)mouse_H;
		}
	}
}

void cMouseCursor :: Double_Click( void )
{
	clickcounter = 0;
	
	Leveleditor_CollsionCheck( posx, posy );

	Set_Active( iCollisionType, iCollisionNumber );
}

void cMouseCursor :: Set_Active( unsigned int type, unsigned int number )
{
	active_number = number;
	active_type = type;
}

void cMouseCursor :: Reset_Active( void )
{
	active_number = -1;
	active_type = -1;
}

void cMouseCursor :: Copy( cSprite *nCopyObject, double x, double y )
{		
	cSprite *new_Sprite = Copy_Object( nCopyObject, x, y );

	if( !new_Sprite ) 
	{
		printf( "MouseCursor CopyObject invald source Object\n" );
		return;
	}

	if( new_Sprite->array == ARRAY_MASSIVE ) 
	{
		AddMassiveObject( new_Sprite );
	}
	else if( new_Sprite->array == ARRAY_PASSIVE ) 
	{
		AddPassiveObject( new_Sprite );
	}
	else if( new_Sprite->array == ARRAY_ACTIVE ) 
	{
		AddActiveObject( new_Sprite );
	}
	else if( new_Sprite->array == ARRAY_ENEMY ) 
	{
		AddEnemyObject( new_Sprite );
	}
	else
	{
		printf( "MouseCursor CopyObject unknown Array : %d\n", new_Sprite->array );
		delete new_Sprite;
		new_Sprite = NULL;
	}
}

void cMouseCursor :: Delete( void )
{
	if( iCollisionType == 1 )
	{
		delete MassiveObjects[iCollisionNumber];
		MassiveObjects[iCollisionNumber] = NULL;
	}
	else if( iCollisionType == 2 )
	{
		delete ActiveObjects[iCollisionNumber];
		ActiveObjects[iCollisionNumber] = NULL;
	}
	else if( iCollisionType == 3 )
	{
		delete EnemyObjects[iCollisionNumber];
		EnemyObjects[iCollisionNumber] = NULL;
	}
	else if( iCollisionType == 5 )
	{
		delete PassiveObjects[iCollisionNumber];
		PassiveObjects[iCollisionNumber] = NULL;
	}
}

void cMouseCursor :: Draw_HoveredObject( void )
{
	if( HoveredObject.w == 0 || HoveredObject.h == 0 )
	{
		return;
	}

	Uint32 dColor = 0;

	if( fastCopyMode )
	{
		dColor = green;
	}
	else
	{
		dColor = white;
	}

	SDL_Rect r2 = HoveredObject;
	
	r2.h = 1;
	SDL_FillRect( screen, &r2, dColor ); // Up

	r2.y += HoveredObject.h;
	SDL_FillRect( screen, &r2, dColor ); // Down

	r2.y += 1;
	SDL_FillRect( screen, &r2, grey );	// Down Shadow

	r2.y = HoveredObject.y;
	r2.h = HoveredObject.h;
	r2.w = 1;
	SDL_FillRect( screen, &r2, dColor );	// Left

	r2.x = HoveredObject.x + HoveredObject.w;
	r2.h += 1;
	SDL_FillRect( screen, &r2, dColor ); // Right

	r2.x += 1;
	SDL_FillRect( screen, &r2, grey );	// Right Shadow
}

/*SDLKey convert_gp2x_input(SDL_Event ev) {
    switch(ev.jbutton.button) {
         case GP2X_BUTTON_UP:
            return SDLK_UP;
            break;
         case GP2X_BUTTON_DOWN:
            return SDLK_DOWN;
            break;
         case GP2X_BUTTON_LEFT:
            return SDLK_LEFT;
            break;
         case GP2X_BUTTON_RIGHT:
            return SDLK_RIGHT;
            break;
         case GP2X_BUTTON_A:
            return SDLK_LCTRL;
            break;
         case GP2X_BUTTON_X:
            return SDLK_SPACE;
            break;
         case GP2X_BUTTON_R:
            return SDLK_TAB;
            break;
         case GP2X_BUTTON_L:
            return SDLK_ESCAPE;
            break;
     }
     
     return SDLK_UNKNOWN;
}*/

void cMouseCursor :: Mover_Update( Sint16 move_x, Sint16 move_y )
{
	if( !mover_mode ) 
	{
		return;
	}
	
	cameraposx += move_x;
	cameraposy += move_y;

	SDL_WarpMouse( mouseX, mouseY );

	SDL_Event inEvent;

	SDL_PeepEvents( &inEvent, 1, SDL_GETEVENT, SDL_MOUSEMOTIONMASK );

	while( SDL_PollEvent( &inEvent ) )
	{
		switch( inEvent.type )
		{
		case SDL_MOUSEBUTTONDOWN:
		{
			if( inEvent.button.button == 2 ) 
			{
				mover_mode = 0;
			}
			break;
		}
        case SDL_JOYBUTTONDOWN:
        {
            mover_mode = 0;
//            KeyDown( convert_gp2x_input(event) );
            break;
        }
		case SDL_KEYDOWN:
		{
			mover_mode = 0;
//			KeyDown( event.key.keysym.sym );
			break;
		}
		case SDL_QUIT:
		{
			done = 1;
			break;
		}
		}
	}
}

void cMouseCursor :: Leveleditor_Update( void )
{
	if( !Leveleditor_CollsionCheck( posx, posy ) )
	{
		string type;
		
		type.reserve( 60 );

		if( iCollisionType == 1 )	// Massive
		{
			if( !MousePressed_left || !MouseObject )
			{
				MouseObject = MassiveObjects[iCollisionNumber];
			}

			if( MouseObject->halfmassive )
			{
				type = "Halfmassive";
			}
			else
			{
				type = "Massive";
			}
		}
		else if( iCollisionType == 2 )	// Active
		{
			if( !MousePressed_left || !MouseObject )
			{
				MouseObject = ActiveObjects[iCollisionNumber];
			}

			if( MouseObject->type == TYPE_ENEMYSTOPPER )
			{
				type = "Enemystopper";
			}
			else if( MouseObject->type == TYPE_GOLDPIECE )
			{
				type = "Goldpiece";
			}
			else if( MouseObject->type == TYPE_MOON )
			{
				type = "Moon (3-UP)";
			}
			else if( MouseObject->type == TYPE_CLOUD )
			{
				type = "Moving Cloud";
			}
			else if( MouseObject->type == TYPE_HALFMASSIVE )
			{
				if( !MouseObject->climbable )
				{
					type = "Halfmassive";
				}
				else
				{
					type = "Climbable";
				}
			}
			else if( MouseObject->type == TYPE_GOLDBOX )
			{
				type = "Gold box";
			}
			else if( MouseObject->type == TYPE_BONUSBOX_MUSHROOM_FIRE )
			{
				type = "Bonus box Mushroom - Fire";
			}
			else if( MouseObject->type == TYPE_BONUSBOX_LIVE )
			{
				type = "Bonus box Level-UP";
			}
			else if( MouseObject->type == TYPE_SPINBOX )
			{
				type = "Spin box";
			}
			else if( MouseObject->type == TYPE_LEVELEXIT )
			{
				cLevelExit *active = (cLevelExit*)MouseObject;

				if( active->levelchange == LVLCHANGE_WARP )
				{
					type = "Levelexit (Warp)";
				}
				else
				{
					type = "Levelexit (Beam)";
				}
			}
			else
			{
				type = "Active";
			}
		}
		else if( iCollisionType == 3 )	// Enemy
		{
			if( !MousePressed_left || !MouseObject )
			{
				MouseObject = EnemyObjects[iCollisionNumber];
			}

			if( MouseObject->type == TYPE_TURTLE )
			{
				type = "Red Rurtle";
			}
			else if( MouseObject->type == TYPE_GOOMBA )
			{
				cGoomba *enemy = (cGoomba*)MouseObject;

				if( enemy->color == 1 ) // Red
				{
					type = "Blue Goomba";
				}
				else
				{
					type = "Brown Goomba";
				}
			}
			else if( MouseObject->type == TYPE_JPIRANHA )
			{
				type = "Jumping Piranha";
			}
			else if( MouseObject->type == TYPE_BANZAI_BILL )
			{
				type = "Banzai Bill";
			}
			else if( MouseObject->type == TYPE_REX )
			{
				type = "Rex";
			}
			else 
			{
				type = "Enemy";
			}
		}
		else if( iCollisionType == 4 )	// Player
		{
			if( !MousePressed_left || !MouseObject )
			{
				MouseObject = (cSprite*)pPlayer;
			}
			
			type = "Maryo";
		}
		else if( iCollisionType == 5 )	// Passive
		{
			if( !MousePressed_left || !MouseObject )
			{
				MouseObject = PassiveObjects[iCollisionNumber];
			}
			
			type = "Passive";
		}
		else if( iCollisionType == 6 ) // Leveleditor Item Object
		{
			Menu_Item_Object *item = pLeveleditor->Get_Item_Object( iCollisionNumber + 1 );

			if( item && !MousePressed_left ) 
			{
				type = item->name;
			}
			else
			{
				type = "";
			}

			if( !MouseObject ) 
			{
				if( MousePressed_left ) 
				{
					cSprite *new_Sprite = Copy_Object( item->Sprite_type, posx, posy );

					if( !new_Sprite ) 
					{
						printf( "Sprite copying Error\n" );
						return;
					}

					if( new_Sprite->array == ARRAY_MASSIVE ) 
					{
						AddMassiveObject( new_Sprite );
					}
					else if( new_Sprite->array == ARRAY_PASSIVE ) 
					{
						AddPassiveObject( new_Sprite );
					}
					else if( new_Sprite->array == ARRAY_ACTIVE ) 
					{
						AddActiveObject( new_Sprite );
					}
					else if( new_Sprite->array == ARRAY_ENEMY ) 
					{
						AddEnemyObject( new_Sprite );
					}

					new_Sprite->posx = posx;
					new_Sprite->posy = posy;

					mouse_H = new_Sprite->rect.h/2;
					mouse_W = new_Sprite->rect.w/2;

					MouseObject = new_Sprite;
				}
			}
			else if( !MousePressed_left ) 
			{
				MouseObject = NULL;
			}
		}
		else if( iCollisionType == 7 ) // Leveleditor Main Menu Object
		{
			Menu_Main_Object *item = pLeveleditor->Get_Main_Object( iCollisionNumber + 1 );

			if( item && !MousePressed_left ) 
			{
				type = item->name;
			}
			else
			{
				type = "";
			}

			if( !MouseObject ) 
			{
				if( MousePressed_left ) 
				{
					if( item->Item_Menu_Id != MENU_FUNCTION ) 
					{
						pLeveleditor->Load_Item_Menu( item->Item_Menu_Id );
						pLeveleditor->Set_Main_Active( iCollisionNumber );
					}
					else
					{
						item->pfunction();
						MousePressed_left = 0;
					}
				}
			}
			else
			{
				MouseObject = NULL;
			}
		}
		else if( iCollisionType == 8 ) // Leveleditor Item Object Scroller
		{
			type = "Object Scroller";

			if( !MouseObject && MousePressed_left ) 
			{
				if( col_dir == DIR_LEFT )
				{
					pLeveleditor->Item_scroller_left->active = 1;
				}
				else if( col_dir == DIR_RIGHT )
				{
					pLeveleditor->Item_scroller_right->active = 1;
				}
			}
			else if( !MousePressed_left ) 
			{
				MouseObject = NULL;
			}

		}
		else if( iCollisionType == 10 ) // A Dialog Box
		{
			if( iCollisionNumber >= 0 && ( pDialogManager->Get_Size() >= (unsigned int)iCollisionNumber ) )
			{
				type = pDialogManager->Objects[iCollisionNumber]->identifier;

				if( MousePressed_left ) 
				{
					pDialogManager->Objects[iCollisionNumber]->Get_Focus();
					MousePressed_left = 0;
				}
			}
		}

		if( iCollisionType > 0 && iCollisionType < 6 && MouseObject )
		{
			if( !MousePressed_left )
			{
				if( iCollisionType == 4 || iCollisionType == 3 ) // If Player or Enemy !
				{
					mouse_W = (int)( posx - MouseObject->startposx );
					mouse_H = (int)( posy - MouseObject->startposy );
				}
				else
				{
					mouse_W = (int)( posx - MouseObject->posx );
					mouse_H = (int)( posy - MouseObject->posy );
				}
			}
			
			SDL_Rect rect_pos;
			SDL_Surface *Position_info = NULL;
			char info[50];

			rect_pos.x = mouseX + 20;
			rect_pos.y = mouseY + 35;
			
			sprintf( info ,"X : %d  Y : %d", (int)MouseObject->posx, (int)MouseObject->posy );
			Position_info = TTF_RenderText_Blended( font_16, info, colorBlack );
			
			SDL_BlitSurface( Position_info, NULL, screen, &rect_pos );

			SDL_FreeSurface( Position_info );
			Position_info = TTF_RenderText_Blended( font_16, info, colorWhite );

			rect_pos.x -= 2;
			rect_pos.y -= 2;

			SDL_BlitSurface( Position_info, NULL, screen, &rect_pos );
			SDL_FreeSurface( Position_info );
		}
		
		if( debugdisplay->counter <= 0 )
		{
			sprintf( debugdisplay->text, "%s", type.c_str() );
			debugdisplay->counter = 1;
		}
	}
	else
	{
		if( !MousePressed_left )
		{
			MouseObject = NULL;

			if( !iCollisionType )
			{
				mouse_W = 0;
				mouse_H = 0;
			}
		}
	}
}
