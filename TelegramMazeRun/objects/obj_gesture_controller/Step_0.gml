///@description Swipe Action Individualy

if (device_mouse_check_button_pressed(0, mb_left))
    {
    Swipe = true;
    MouseXStart = mouse_x;
    MouseYStart = mouse_y;
    }

if (Swipe = true)
{
	global.isSwiping = true;
	
	
MouseX = mouse_x;
MouseY = mouse_y;
SwipeTime++;
PD = point_direction(MouseXStart, MouseYStart, MouseX, MouseY);

    if (device_mouse_check_button_released(0, mb_left))
    {
    Swipe = false;
	global.isSwiping = false;
    SwipeSpeed = point_distance(MouseXStart, MouseYStart, MouseX, MouseY) / SwipeTime;
    SwipeTime = 0;
 
        if ((PD > 315) or (PD < 45)) //Right
        and (SwipeSpeed > SwipeCoverSpeed)
        {
         // code is executed for swiping right // 
			global.isSwipeRight = true;
			global.isSwipeLeft = false;
			global.isSwipeUp = false;
			global.isSwipeDown = false;
			alarm[1]=0.5*room_speed;
        } else
        if ((PD > 45) and (PD < 135)) //Up
        and (SwipeSpeed > SwipeCoverSpeed)
        {
			global.isSwipeRight = false;
			global.isSwipeLeft = false;
			global.isSwipeUp = true;
			global.isSwipeDown = false;
			alarm[1]=0.5*room_speed;
         // code is executed for swiping up //   
        } else
        if ((PD > 135) and (PD < 225)) //Left
        and (SwipeSpeed > SwipeCoverSpeed)
        {
			global.isSwipeRight = false;
			global.isSwipeLeft = true;
			global.isSwipeUp = false;
			global.isSwipeDown = false;
			alarm[1]=0.5*room_speed;
         // code is executed for swiping left // 
        } else
        if ((PD > 225) and (PD < 315)) //Down
        and (SwipeSpeed > SwipeCoverSpeed)
        {
			global.isSwipeRight = false;
			global.isSwipeLeft = false;
			global.isSwipeUp = false;
			global.isSwipeDown = true;
			alarm[1]=0.5*room_speed;
         // code is executed for swiping down //       
        }
    }
}

if (global.isSwiping)
{
	part_emitter_region(Part0, PartEmitter0, mouse_x, mouse_x, mouse_y, mouse_y, 0, 0)
	part_emitter_burst(Part0, PartEmitter0, PartType0, 2);
	part_type_direction(PartType0, PD mod 180, PD mod 180, 0, 0);
}