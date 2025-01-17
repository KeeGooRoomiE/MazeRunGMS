// Destroy all data structures and restart the game. Set on Press Space event
	ds_grid_destroy(mazeGrid);
	ds_list_destroy(wallxList);
	ds_list_destroy(wallyList);
	game_restart();