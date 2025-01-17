/// @description Scene setups
playerOneIsWin = 0
playerTwoIsWin = 0

drawWinOne = 0
drawWinTwo = 0



#region -- Set things
leftTime = 180;
//alarm[0]=1;
depth = -8;

isPlayerOneWins = false;
isPlayerTwoWins = false;
isTie = false;
isPlayerReachedNest = false;

playersActive = true;

#endregion

#region -- Set BKG

hBKG = layer_get_id("Hill");
hBKGid = layer_background_get_id(hBKG);
layer_background_sprite(hBKGid, hillBKG);

thBKG = layer_get_id("TopHill");
thBKGid = layer_background_get_id(thBKG);
layer_background_sprite(thBKGid, thillBKG);

tBKG = layer_get_id("Trees");
tBKGid = layer_background_get_id(tBKG);
layer_background_sprite(tBKGid, treesBKG);

brBKG = layer_get_id("Branches");
brBKGid = layer_background_get_id(brBKG);
layer_background_sprite(brBKGid, branchesBKG);

cBKG = layer_get_id("Clouds");
cBKGid = layer_background_get_id(cBKG);
layer_background_sprite(cBKGid, cloudsBKG);

ocBKG = layer_get_id("OuterClouds");
ocBKGid = layer_background_get_id(ocBKG);
layer_background_sprite(ocBKGid, othCloudsBKG);

bBKG = layer_get_id("BKG");
bBKGid = layer_background_get_id(bBKG);
layer_background_sprite(bBKGid, bkgBKG);

#endregion