/// @description Insert description here
// You can write your code in this editor

draw_self();

if (global.mazeDebug)
{
	for (var i = 0; i<4; i++)
	{
		if (clearDirs[i] == true)
		{
			var xx = x+global.tileSize/2+lengthdir_x(global.tileSize/2,i*90)
			var yy = y+global.tileSize/2+lengthdir_y(global.tileSize/2,i*90)
			draw_line_width_color(x+global.tileSize/2,y+global.tileSize/2,xx,yy,2,c_aqua,c_aqua);
		}
	}
}






