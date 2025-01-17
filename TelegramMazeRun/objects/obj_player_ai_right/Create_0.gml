
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
directions[2]=3;	//left
directions[3]=2;	//down

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