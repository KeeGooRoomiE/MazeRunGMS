/// @description Insert description here
// You can write your code in this editor


half_size = (image_xscale*100)/2;

alarm[0]=1*room_speed;

if (global.canSpawnUnits)
{
	if (!isPlayerSpawn)
	{
		element=instance_create_layer(x+half_size,y+half_size,"Grid",obj_player_ai_up);
		element.image_xscale=image_xscale;
		element.image_yscale=image_yscale;
		element.depth=-y;
		global.gameController.playerList[0] = element;
		element=instance_create_layer(x+half_size,y+half_size,"Grid",obj_player_ai_right);
		element.image_xscale=image_xscale;
		element.image_yscale=image_yscale;
		element.depth=-y;
		global.gameController.playerList[1] = element;
		element=instance_create_layer(x+half_size,y+half_size,"Grid",obj_player_ai_left);
		element.image_xscale=image_xscale;
		element.image_yscale=image_yscale;
		element.depth=-y;
		global.gameController.playerList[2] = element;
		element=instance_create_layer(x+half_size,y+half_size,"Grid",obj_player_ai);
		element.image_xscale=image_xscale;
		element.image_yscale=image_yscale;
		element.depth=-y;
		global.gameController.playerList[3] = element;

		isPlayerSpawn = true;
	}
}
