var cur_room_path_exists = ds_map_exists( paths,room )

assert( room == setup_room || cur_room_path_exists,"Room path not defined!" )

if( cur_room_path_exists )
{
	cur_room_path = paths[? room]
	
	path_spawn_start_end_tile( cur_room_path,0,1,enemy_icon_obj )
	
	var path_exit = path_get_number( cur_room_path ) - 1
	path_spawn_start_end_tile( cur_room_path,path_exit,path_exit - 1,home_icon_obj )
}