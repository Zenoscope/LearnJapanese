// Init room variables
global.current_room = room_get_name(room);

// defaults to goujon
global.use_kana_set = 0;

global.show_helptext = false;

room_name = global.current_room;
room_script = function_get_room_script_name(id);

name_array = function_trim_buttonName(room_name);
display_name = name_array[1];

