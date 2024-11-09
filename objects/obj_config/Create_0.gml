#region Load config
show_debug_log(true);

var path, file, json;

path = working_directory + "config-min.json"; 
if (file_exists(path)) {
	file = file_text_open_read(path);
} else { 
	show_error("Config file does not exist", true);
}
json = file_text_read_string(file);
show_debug_message("}{}}||}}{}|{||}{{||{|}")
show_debug_message(json)
global.config = json_parse(json);
show_debug_message(global.config);
#endregion

#region Calculate ship chances
var ws = [];
var ships = global.config.ships;
for (i=0; i < array_length(ships); i++) { 
    for (j=0; j < ships[i].frequency; j++) { 
        array_push(ws, i);
    }  
}

global.weighted_ships = ws
show_debug_message(ws)


#endregion