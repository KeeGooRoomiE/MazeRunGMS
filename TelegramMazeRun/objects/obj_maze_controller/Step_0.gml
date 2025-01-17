///@description Generate maze


while (!ds_list_empty(wallyList))
{ // While Y list isn't empty. Y because it'll be cleared after X (doesn't matter, but just in case)
	ls = ds_list_size(wallxList);   
	    
	if (ls == 1)
	{
		ri=0
	}
	else
	{
		ri = irandom(ls-1);
	} // If list size is 1, then index = 0. Else randomize.   
	    //ri = ds_list_size(wallxList)-1;  // If you want less dead ends, uncomment this line and comment previous one.
		
	lx = ds_list_find_value(wallxList, ri);
	ly = ds_list_find_value(wallyList, ri);
	
	if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
	{
		ds_grid_set(mazeGrid, lx,ly,CELL_ROAD); // Carve the chosen cell into a path
	}
	
	dir = irandom(3); // Randomize direction checks
	nn=0; // Number of neighbours for later checks
     
	switch(dir)
	{ 
	/*
	If there is uncarved cell 2* tiles away AND cell inbetween is uncarved, 
	then carve them both and add farther cell into the lists.

	* - If we'd use neares neighbour (+-1 tile only) check, it'd clear all maze with path tiles.
	*/     
	    case 0: //north
	        if (ds_grid_get(mazeGrid,lx, ly-1) == CELL_WALL && ds_grid_get(mazeGrid,lx, ly-2) == CELL_WALL)
	        {
				ds_list_add(wallxList, lx); ds_list_add(wallyList, ly-2);
				if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
				{
					ds_grid_set(mazeGrid, lx,ly-1,CELL_ROAD);
					ds_grid_set(mazeGrid, lx,ly-2,CELL_ROAD);
				}
			} 
			break;
     
	    case 1: //east
	        if (ds_grid_get(mazeGrid,lx+1, ly) == CELL_WALL && ds_grid_get(mazeGrid,lx+2, ly) == CELL_WALL)
	        {
				ds_list_add(wallxList, lx+2); ds_list_add(wallyList, ly);
				if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
				{
					ds_grid_set(mazeGrid, lx+1,ly,CELL_ROAD);
					ds_grid_set(mazeGrid, lx+2,ly,CELL_ROAD);
				}
			}         
			break;
     
	    case 2: //south
	        if (ds_grid_get(mazeGrid,lx, ly+1) == CELL_WALL && ds_grid_get(mazeGrid,lx, ly+2) == CELL_WALL)
	        {
				ds_list_add(wallxList, lx); ds_list_add(wallyList, ly+2);
				if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
				{
					ds_grid_set(mazeGrid, lx,ly+1,CELL_ROAD);
					ds_grid_set(mazeGrid, lx,ly+2,CELL_ROAD);
				}
			}       
			break;
     
	    case 3: //west
	        if (ds_grid_get(mazeGrid,lx-1, ly) == CELL_WALL && ds_grid_get(mazeGrid,lx-2, ly) == CELL_WALL)
	        {
				ds_list_add(wallxList, lx-2); ds_list_add(wallyList,ly); 
				if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
				{
					ds_grid_set(mazeGrid, lx-1,ly,CELL_ROAD);
					ds_grid_set(mazeGrid, lx-2,ly,CELL_ROAD);
				}
			}         
			break;
	    }

	    // Check the number of carved neighbours
		
	    if (ds_grid_get(mazeGrid,lx, ly-2) != CELL_WALL)
		{
			nn++;
		}  //north
		
	    if (ds_grid_get(mazeGrid,lx+2, ly) != CELL_WALL)
		{
			nn++;
		}  //east
		
	    if (ds_grid_get(mazeGrid,lx, ly+2) != CELL_WALL)
		{
			nn++;
		}  //south
		
	    if (ds_grid_get(mazeGrid,lx-2, ly) != CELL_WALL)
		{
			nn++;
		}  //west             

		
		
	    if (nn=4) 
		{ // If there is 4 carved neighbours, remove this cell from the lists
			ds_list_delete(wallxList, ri);    
			ds_list_delete(wallyList, ri);
			if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
			{
				ds_grid_set(mazeGrid, lx, ly, CELL_ROAD);
			}
	    }
		
		nnt = 0; // Количество соседей

    if (ds_grid_get(mazeGrid, lx, ly-1) == CELL_ROAD) { nnt++; } // north
    if (ds_grid_get(mazeGrid, lx+1, ly) == CELL_ROAD) { nnt++; } // east
    if (ds_grid_get(mazeGrid, lx, ly+1) == CELL_ROAD) { nnt++; } // south
    if (ds_grid_get(mazeGrid, lx-1, ly) == CELL_ROAD) { nnt++; } // west
	
	if (ds_grid_get(mazeGrid, lx, ly-1) == CELL_SPAWN) { nnt++; } // north
    if (ds_grid_get(mazeGrid, lx+1, ly) == CELL_SPAWN) { nnt++; } // east
    if (ds_grid_get(mazeGrid, lx, ly+1) == CELL_SPAWN) { nnt++; } // south
    if (ds_grid_get(mazeGrid, lx-1, ly) == CELL_SPAWN) { nnt++; } // west
	
	if (ds_grid_get(mazeGrid, lx, ly-1) == CELL_END) { nnt++; } // north
    if (ds_grid_get(mazeGrid, lx+1, ly) == CELL_END) { nnt++; } // east
    if (ds_grid_get(mazeGrid, lx, ly+1) == CELL_END) { nnt++; } // south
    if (ds_grid_get(mazeGrid, lx-1, ly) == CELL_END) { nnt++; } // west


    // Если у клетки 3 соседа CELL_ROAD, заменяем ее на CELL_WAY
    if (nnt >= 3) 
	{
		if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
		{
			ds_grid_set(mazeGrid, lx, ly, CELL_WAY);
		}
    }
	if (nnt == 2)
	{
		if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
		{
			ds_grid_set(mazeGrid, lx, ly, CELL_CORNER);
		}
	}
	
	if (nnt == 1)
	{
		if (ds_grid_get(mazeGrid,lx,ly) != CELL_SPAWN)
		{
			ds_grid_set(mazeGrid, lx, ly, CELL_DEADEND);
		}
	}
}
	
	if (ds_list_empty(wallyList)) 
	{
		if (notPlaced)
		{
			event_user(0);
			notPlaced = false;
		}
	}