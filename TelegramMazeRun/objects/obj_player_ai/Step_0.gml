/// @description Insert description here
// You can write your code in this editor

//Internal functions
function move_unit(dir,spd)
{
	if (global.playersCanMove) 
	{
		direction = dir;
		speed = spd;
	} else
	{
		speed = 0;
	}
}

function check_branch(branch_id) 
{
	var check_branch_result = (lastBranch != branch_id);
	if  (check_branch_result)
	{
        lastBranch = branch_id;
		lastEdge = noone;
		lastEnd = noone;
		//lastEdge = noone;
	}
	return check_branch_result;
}

function check_edge(edge_id) 
{
	var check_edge_result = (lastEdge != edge_id);
	if  (check_edge_result)
	{
        lastEdge = edge_id;
		lastBranch = noone;
		lastEnd = noone;
	}
	return check_edge_result;
	//lastEdge = edge_id;
	//return true;
}

function check_deadend(end_id) 
{
	var check_end_result = (lastEnd != end_id);
	if  (check_end_result)
	{
        lastEnd = end_id;
		lastBranch = noone;
		lastEdge = noone;
	}
	return check_end_result;

        //lastEnd = end_id;
		//return true;
}

function increment_order() 
{
	directionOrder++;
	if (directionOrder >= directionOrderMax)
    {
        directionOrder = 0;
    }
}


image_angle = direction;
reversedDir = (currentDir + 180) mod 360;

if ( place_meeting(x, y, obj_finish_pointer) ) 
{
	speed = 0;
	currentDir = 90;
	direction = 90;
	global.playersCanMove = false;
}

if (place_meeting(x, y, obj_releaux_pointer)) {
    var lp = instance_place(x, y, obj_releaux_pointer);
    if (check_branch(lp)) {
        if (lastBranch != noone) {
            // Центрируем персонажа на развилке
            x = lastBranch.x + global.tileSize / 2;
            y = lastBranch.y + global.tileSize / 2;
            
            // Определяем доступные направления с учетом приоритета и исключаем обратное направление
            var foundDirection = false;
            var reverseDir = (currentDir + 180) mod 360;  // Рассчитываем обратное направление

            for (var j = 0; j < array_length(directions) && !foundDirection; j++) {
                // Проверяем, если текущий приоритет доступен и свободен, и не является обратным
                var dirIndex = (directionOrder + j) % array_length(directions); // Инкрементируем приоритетное направление
                var dirValue = directions[dirIndex];
                
                if (lastBranch.clearDirs[dirValue] && dirValue * 90 != reverseDir) { // Проверка направления
                    currentDir = dirValue * 90; // Устанавливаем текущее направление
                    directionOrder = dirIndex;   // Обновляем приоритетный порядок
                    foundDirection = true;       // Флаг, что направление выбрано
					increment_order();
                }
            }
            
            // Если все направления заняты, просто инкрементируем порядок
            if (!foundDirection) {
                increment_order();
            }
        }
    }
}

if ( place_meeting(x, y, obj_edge_pointer) ) 
{
	var lp = instance_place(x, y, obj_edge_pointer);
	if ( check_edge(lp) )
	{
		if (lastEdge != noone)
		{
				x = lastEdge.x+global.tileSize/2;
				y = lastEdge.y+global.tileSize/2;
				
				for (var j = 0; j<array_length(lastEdge.clearDirs); j++)
				{
					if ( (lastEdge.clearDirs[j] == true) && (j*90 != reversedDir) )
					{
						currentDir = j*90;
					}
				}
		}
	}
}

if ( place_meeting(x, y, obj_deadend_pointer) ) 
{
	var lp = instance_place(x, y, obj_deadend_pointer);
	if ( check_deadend(lp) )
	{
		if (lastEnd != noone)
		{
			x = lastEnd.x+global.tileSize/2;
			y = lastEnd.y+global.tileSize/2;
				
			for (var j = 0; j<array_length(lastEnd.clearDirs); j++)
			{
				if ( (lastEnd.clearDirs[j] == true))
				{
					currentDir = j*90;
				}
			}
		}
	}	
} 

move_unit(currentDir,spd);
