function tower_get_stats( tower )
{
	return( tower_handler_obj.tower_stats[? tower] )
}

function tower_get_name( tower )
{
	return( tower_get_stats( tower ).tower_name )
}

function tower_get_cost( tower )
{
	return( tower_get_stats( tower ).cost )
}

function tower_get_range( tower )
{
	return( tower_get_stats( tower ).range )
}

function can_place_tower( tower_x,tower_y )
{
	return( tilemap_get_at_pixel( level_obj.tilemap,tower_x,tower_y ) == tile_type.tile_floor )
}

function try_place_tower( tower_x,tower_y,tower_type )
{
	var spawn_x = snap_loc( tower_x,tile_spacing )
	var spawn_y = snap_loc( tower_y,tile_spacing )
	
	if( can_place_tower( tower_x,tower_y ) )
	{
		instance_create_layer( spawn_x,spawn_y,"instances",tower_type )
		
		tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x,spawn_y )
		
		return( true )
	}
	
	return( false )
}