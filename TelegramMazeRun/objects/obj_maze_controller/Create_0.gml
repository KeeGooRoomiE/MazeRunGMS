

	
#region --- Cell values

CELL_WALL = 1;
CELL_ROAD = 2;
CELL_WAY = 3;
CELL_END = 4;
CELL_SPAWN = 5;
CELL_BORDER = 6;
CELL_CORNER = 7;
CELL_DEADEND = 8;

#endregion

#region --- Init grid values


gridW = 15;//16;//floor(room_width / tileSize);
gridH = 26;//27;//floor(room_height / tileSize);

tileSize = 26;//39;//choose(48,48);//irandom_range(8,64);
global.tileSize = tileSize;
global.mazeDebug = false;
surroundingWallDamp = 1;
sprWSize = tileSize;
sprHSize = tileSize;


notPlaced = true;

randomize();
//random_set_seed(224817102024);



#endregion

#region --- Grid internal data

	// Data structure creation
mazeGrid = ds_grid_create(gridW,gridH);

wallxList = ds_list_create();
wallyList = ds_list_create();
	
startX = irandom_range(surroundingWallDamp, gridW-surroundingWallDamp);
startY = irandom_range(surroundingWallDamp, gridH-surroundingWallDamp);
	
#endregion

#region --- Grid working area (full size-damping)

for(var i = surroundingWallDamp; i < gridW-surroundingWallDamp; i++)
{
	for(var j = surroundingWallDamp; j < gridH-surroundingWallDamp; j++)
	{
		ds_grid_set(mazeGrid, i,j,CELL_WALL);
	}
}

//boreder walls
for (var k = 0; k<gridH; k++)
{
	ds_grid_set(mazeGrid, 0,k,CELL_BORDER);
	ds_grid_set(mazeGrid, ds_grid_width(mazeGrid)-1,k,CELL_BORDER);
}

//Finish line
for (var xx = 0; xx < ds_grid_width(mazeGrid); xx++) 
{
	ds_grid_set(mazeGrid, xx, 0, CELL_END);
}

//Lower border
for (var xx = 0; xx < ds_grid_width(mazeGrid); xx++) 
{
	ds_grid_set(mazeGrid, xx,  ds_grid_height(mazeGrid) - 1, CELL_BORDER);
	//ds_grid_set(mazeGrid, xx,  ds_grid_height(mazeGrid), CELL_BORDER);
}
	

// Помечаем центральную клетку нижнего ряда как особую (значение 5)
middle_x = floor(ds_grid_width(mazeGrid) / 2);
ds_grid_set(mazeGrid, middle_x, ds_grid_height(mazeGrid) - 2, CELL_SPAWN);
//ds_grid_set(mazeGrid, middle_x, ds_grid_height(mazeGrid) - 2, CELL_ROAD);
//ds_grid_resize(mazeGrid,gridW, gridH+1);

//ds_grid_set(mazeGrid, middle_x, ds_grid_height(mazeGrid) -1, CELL_BORDER);

#endregion

#region --- Position first cell

startY = ds_grid_height(mazeGrid) - 3;
startX = middle_x;
// Select starting wall cell and make it a floor cell.
ds_grid_set(mazeGrid, startX, startY, CELL_ROAD);

// Add starting cell to the coordinate lists. Two lists (for X and Y) cause it's less confusing
ds_list_add(wallxList,startX);
ds_list_add(wallyList,startY);
	
#endregion

show_debug_message("GRID INIT");