function path_spawn_start_end_tile( path,point_a,point_b,icon_obj )
{
	var start_x = path_get_point_x( path,point_a )
	var start_y = path_get_point_y( path,point_a )
	var end_x = path_get_point_x( path,point_b )
	var end_y = path_get_point_y( path,point_b )
	
	var x_move = sign( end_x - start_x ) * tile_spacing
	var y_move = sign( end_y - start_y ) * tile_spacing
	
	while( !is_on_screen( start_x,start_y ) )
	{
		start_x += x_move
		start_y += y_move
	}
	
	while( start_x % 8 != 0 ) start_x -= 1
	while( start_y % 8 != 0 ) start_y -= 1
	
	instance_create_layer( start_x,start_y,"instances",icon_obj )
}