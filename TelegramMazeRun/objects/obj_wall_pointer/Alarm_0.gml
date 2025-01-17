/// @description Insert description here
// You can write your code in this editor





wall=instance_create_layer(x,y,"Grid",obj_obs);
wall.image_xscale=image_xscale;
wall.image_yscale=image_yscale;
wall.depth=-y;
instance_destroy(self);