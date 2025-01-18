function gmcallback_sio_on_disconnect_player() 
{
	if !(room == rm_end)
	{
		var data = json_decode(argument[0]);
	
		var data_room_id = real(data[? "room_id"]);
		var data_user_id = data[? "user_id"];
	
		if ( (global.room_id = real(data_room_id)) and (global.user_id = real(data_user_id)) )
		{
			room_goto(rm_out)
		}
	}
}
