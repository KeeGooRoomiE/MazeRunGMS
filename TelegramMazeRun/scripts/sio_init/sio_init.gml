/// sio_init()
function sio_init() {
	gml_pragma("global", "sio_init()");

	#region macros
	#macro URL "127.0.0.1:3004"
	#macro ENDPOINT = "https://mindplays.com/api/v1/";
	#endregion

	#region SocketIO
			sio_connect_by_url(URL);
	#endregion

	#region SocketIO:Events
			sio_addEvent("create_player");
			sio_addEvent("create_player_other");
			sio_addEvent("destroy_player");
			sio_addEvent("disconnect_player");
			sio_addEvent("on_start");
	#endregion
}
