/// @description Insert description here
// You can write your code in this editor

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

directions[0]=1;	//up
directions[1]=2;	//right
directions[2]=0;	//left
directions[3]=2;	//down
directions[4]=0;	//down

#endregion
#region --- directional internal values

//checkingX = 0;
//checkingY = 0;

currentDir = 90;
//canChooseSide = true;
//dirChoosen = false;
//closedDirsCount = 0;
checkLength = global.tileSize/2;

reversedDir = 0;

lastBranch = noone;
lastEdge = noone;
lastEnd = noone;
//isBranchChecked = false;

#endregion

spd = 4;





