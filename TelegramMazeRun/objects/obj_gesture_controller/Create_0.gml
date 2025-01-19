/// @description Setup swipes

///Swipe Control Variables
MouseX = 0;
MouseY = 0;
MouseXStart = 0;
MouseYStart = 0;

Swipe = false;
SwipeTime = 0;
SwipeSpeed = 0;
SwipeCoverSpeed = 2.5;

PD = 0;  //Point of Direction

alarm[0]=20*room_speed;

global.isSwipeRight = false;
global.isSwipeLeft = false;
global.isSwipeUp = false;
global.isSwipeDown = false;

global.isSwiping = false;




globalvar Part0; Part0 = part_system_create()
globalvar PartType0; PartType0 = part_type_create()
globalvar PartEmitter0; PartEmitter0 = part_emitter_create(Part0)
part_system_depth(Part0, -10000)
part_system_draw_order(Part0, 1)

part_type_orientation(PartType0, 0, 359, 0, 0, 1)
part_type_speed(PartType0, 0, 0, 0, 0);

part_type_life(PartType0, 0, 2*room_speed);
part_type_size(PartType0, 10, 10, -0.01, 0)
part_type_scale(PartType0, 1, 1)
part_type_gravity(PartType0, 0, 180)
part_type_blend(PartType0, 0)
part_type_alpha3(Part0, 1, 1, 0)
part_type_colour_rgb(Part0, 0, 0, 255, 255, 0, 0);

