function gmcallback_sio_on_disconnect() 
{
	show_debug_message("DISCONNECTED");
	room_goto(rm_end)
}
