/// @description Insert description here
// You can write your code in this editor



#region --- Draw gradient

sc = make_color_rgb(254, 97, 87);
ec = make_color_rgb(0, 237, 16);
draw_line_width_color(0+global.tileSize/2,0+global.tileSize,0+global.tileSize/2,global.tileSize*(gridH-1), global.tileSize, ec,sc,);
draw_line_width_color(gridW*(global.tileSize)-global.tileSize/2,0+global.tileSize,gridW*(global.tileSize)-global.tileSize/2,global.tileSize*(gridH-1), global.tileSize, ec,sc,);

//finish line
for( i = 0; i<gridW; i++)
{
	draw_sprite_ext(spr_block_end,0,0+global.tileSize*i,0,global.tileSize/100,global.tileSize/100,0,c_white,1);
	draw_text_transformed_color(0+global.tileSize*i,0,"FINISH",global.tileSize/50,global.tileSize/50,0,c_white,c_white,c_white,c_white,1);
}

#endregion





