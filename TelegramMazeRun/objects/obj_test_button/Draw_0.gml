/// @description Insert description here
// You can write your code in this editor

var bAng = 0;
switch (typeButton)
{
	case 0: bAng = 0; break;
	case 1: bAng = 90; break;
	case 2: bAng = 180; break;
	case 3: bAng = 270; break;
}

if (clr < 255)
{
	clr+=10;
} else
{
	clr = 255;
}

var color = make_color_rgb(clr,clr,clr);
draw_self();
image_blend = color;
draw_sprite_ext(spr_arrow,0,x,y,1,1,bAng,c_white,1);







