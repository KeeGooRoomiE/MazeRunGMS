/// @description Insert description here
// You can write your code in this editor


image_angle = direction;


//point_direction(x,y,mouse_x,mouse_y);

if (keyboard_check(vk_left))
{
	direction = 180;
	speed = spd;
}

if (keyboard_check(vk_right))
{
	direction = 0;
	speed = spd;
}

if (keyboard_check(vk_up))
{
	direction = 90;
	speed = spd;
}

if (keyboard_check(vk_down)) 
{
	direction = 270;
	speed = spd;
}


if (speed = 0)
{
	move_snap(global.tileSize/2,global.tileSize/2);
}


