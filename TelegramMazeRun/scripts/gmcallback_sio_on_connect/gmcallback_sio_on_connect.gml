function gmcallback_sio_on_connect() 
{
	show_debug_message("CONNECTED");
	instance_create_depth(0,0,100,obj_player_emit);
}
