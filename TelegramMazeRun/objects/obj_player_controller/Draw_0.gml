/// @description Insert description here
// You can write your code in this editor

//draw_set_color(c_white);
//for (i = 0; i<directionOrderMax; i++)
//{
//	draw_text(16*i,703-48,directions[i]);
//}

if (global.gesturePanelShown)
{
	draw_sprite(spr_gesture_panel,0,room_width/2,709);
	draw_sprite_ext(spr_arrow,global.isSwipeRight,room_width/2+128,709,1,1,0,c_white,1);
	draw_sprite_ext(spr_arrow,global.isSwipeUp,room_width/2,709-96+16,1,1,90,c_white,1);
	draw_sprite_ext(spr_arrow,global.isSwipeLeft,room_width/2-128,709,1,1,180,c_white,1);
	draw_sprite_ext(spr_arrow,global.isSwipeDown,room_width/2,709+96-16,1,1,270,c_white,1);
}

