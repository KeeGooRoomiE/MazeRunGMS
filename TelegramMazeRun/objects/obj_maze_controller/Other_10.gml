///@description Maze placement


for(i=0;i<gridW;i++){
	    for(j=0;j<gridH;j++){
			
			
	        if(mazeGrid[#i,j]==CELL_WALL){
				//draw_sprite_ext(spr_mud,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_aqua,1);
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_obs);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				
				//instance_create_layer(i*sprWSize+irandom_range(-20,20),j*sprHSize,"VFX", obj_water_drip);
				} 
	        else if(mazeGrid[#i,j]==CELL_ROAD) {
				//draw_sprite_ext(spr_tile,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_white,1)
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_way);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_WAY) {
				//draw_sprite_ext(spr_tile,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_white,1)
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_releaux_pointer);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_END) {
				//draw_sprite_ext(spr_tile,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_white,1)
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_finish_pointer);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_way);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_SPAWN) {
				//draw_sprite_ext(spr_tile,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_white,1)
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_spawn_pointer);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_deadend_pointer);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_BORDER) {
				//draw_sprite_ext(spr_tile,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_white,1)
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_borderwall);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_CORNER) {
				//draw_sprite_ext(spr_tile,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_white,1)
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_edge_pointer);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_DEADEND) {
				//draw_sprite_ext(spr_tile,0,i*sprWSize,j*sprHSize,tileSize/100,tileSize/100,0,c_white,1)
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_deadend_pointer);
				b.image_xscale=(tileSize/100);//*choose(1,-1);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
				
	        //else if(mazeGrid[#i,j]==3){draw_sprite(spr_border_gmg,0,i*sprWSize,j*sprHSize)}
			//draw_text_color(i*tileSize,j*tileSize,string(mazeGrid[#i,j]),c_black,c_black,c_black,c_black,1);
	    }
	}
	
//for (var xx = 0; xx < ds_grid_width(mazeGrid); xx++) 
//{
//	b=instance_create_layer(xx*sprWSize,ds_grid_height(mazeGrid)*sprHSize,"Grid",obj_borderwall);
//	b.image_xscale=(tileSize/100);//*choose(1,-1);
//	b.image_yscale=tileSize/100;
//	//b.timer=i+j;
//}
