function gmcallback_sio_on_position_update() {
	if !(room == rm04_end)
	{
		var data = json_decode(argument[0]);
	
		var dat_rmid = real(data[? "room_id"]);
		var dat_lt = data[? "iright"];
	
		if (global.room_id = real(dat_rmid))
		{
			with(obj_other_tree){
				if(dat_lt){
					rightTrigger = true;
				}else{
					leftTrigger = true;
				}
			}
		}
	}
}