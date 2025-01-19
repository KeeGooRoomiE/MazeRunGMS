/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i<4; i++;)
{
	if (playerList[i] != noone)
	{
		draw_sprite(playerList[i].sprite_index,1,room_width/2-128+i*108,709);
	}
}

if (global.playersCanMove)
{
	global.gameTimer = alarm[1]/60;
} 
else
{
	global.gameTimer = 0;
}

draw_text_transformed_color(room_width/2,709-96,string(floor(global.gameTimer)),2,2,0,c_white,c_white,c_white,c_white,1);









