function gmcallback_sio_on_create_player_other()
{
	if !(room == rm_out)
	{
		var data = json_decode(argument[0]);
		var data_room_id = real(data[? "room_id"]);
		var data_user_id = real(data[? "user_id"]);
	}
}
