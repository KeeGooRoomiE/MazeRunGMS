/// @description Load start point 

#region --- MINDPLAYS vars
global.user_id = "$user_id"; 
global.room_id = "$room_id"; 
global.battle_id = "$battle_id"; 
global.endpoint = "https://mindplays.com/api/v1/";
#endregion

#region --- Randomize to predefined seed
var battle_id = 1214498;
global.seed = battle_id;
random_set_seed(global.seed);
#endregion

room_goto_next();
