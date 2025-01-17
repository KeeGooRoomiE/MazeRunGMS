/// @description Insert description here
// You can write your code in this editor
  c = instance_find(obj_player_controller,0)

if (c != noone )
{
	#region --- Init direction order

directionOrderMax = c.directionOrderMax;
directionOrder = 0;

#endregion
	#region --- Init direction queue

directions[0]= 0;

for(var i = 0; i<directionOrderMax; i++)
{
	directions[i]= 0;
}
#endregion
	#region --- Set directions queue

directions = c.directions;
for(var i = 0; i<directionOrderMax; i++)
{
	directions[i]= c.directions[i];
}


#endregion
	show_debug_message("IMPORTED!");
}
else
{
	#region --- Init direction order

directionOrderMax = 4;
directionOrder = 0;

#endregion
	#region --- Init direction queue

directions[0]= 0;

for(var i = 0; i<directionOrderMax; i++)
{
	directions[i]= 0;
}
#endregion
	#region --- Set directions queue

directions[0]=0;	//up
directions[1]=1;	//right
directions[2]=2;	//left
directions[3]=1;	//down

#endregion
}

#region --- directional internal values

currentDir = 90;
checkLength = global.tileSize/2;

reversedDir = 0;

lastBranch = noone;
lastEdge = noone;
lastEnd = noone;
#endregion

spd = 4;





