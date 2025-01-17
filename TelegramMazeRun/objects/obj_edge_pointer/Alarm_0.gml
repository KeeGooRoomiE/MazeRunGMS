/// @description Insert description here
// You can write your code in this editor



for (var i =0; i<4; i++)
{
	//clearDirs[i]=false;
	var checkEdgeDir = i*90;
	
	if ( place_meeting(x+lengthdir_x(global.tileSize/2,checkEdgeDir),y+lengthdir_y(global.tileSize/2,checkEdgeDir), obj_way) )
	{
		clearDirs[i]=true;
	}
}





