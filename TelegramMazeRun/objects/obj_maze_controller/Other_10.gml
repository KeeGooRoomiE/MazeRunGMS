///@description Maze placement

for(i=0;i<gridW;i++){
	    for(j=0;j<gridH;j++){
			
			
	        if(mazeGrid[#i,j]==CELL_WALL){
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_obs);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				} 
	        else if(mazeGrid[#i,j]==CELL_ROAD) {
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_way);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_WAY) {
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_releaux_pointer);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_END) {
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_finish_pointer);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_way);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_SPAWN) {
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_spawn_pointer);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_deadend_pointer);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_BORDER) {
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_borderwall);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_CORNER) {
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_edge_pointer);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
			else if(mazeGrid[#i,j]==CELL_DEADEND) {
				b=instance_create_layer(i*sprWSize,j*sprHSize,"Grid",obj_deadend_pointer);
				b.image_xscale=(tileSize/100);
				b.image_yscale=tileSize/100;
				b.timer=i+j;
				}
				
	        //else if(mazeGrid[#i,j]==3){draw_sprite(spr_border_gmg,0,i*sprWSize,j*sprHSize)}
			//draw_text_color(i*tileSize,j*tileSize,string(mazeGrid[#i,j]),c_black,c_black,c_black,c_black,1);
	   }
}

