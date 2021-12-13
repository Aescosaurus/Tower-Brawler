// return true if this bullet and enemy have already collided
function already_hit( bullet,enemy )
{
	var n_hit_enemies = array_length( bullet.hit_enemies )
	for( var i = 0; i < n_hit_enemies; ++i )
	{
		if( bullet.hit_enemies[i] == enemy ) return( true )
	}
	return( false )
}

function try_place_tower( tower_x,tower_y,tower_type )
{
	// var spawn_x = tower_x - ( tower_x % tile_spacing ) + tile_spacing / 2
	// var spawn_y = tower_y - ( tower_y % tile_spacing ) + tile_spacing / 2
	var spawn_x = snap_loc( tower_x,tile_spacing )
	var spawn_y = snap_loc( tower_y,tile_spacing )
	
	var tile = tilemap_get_at_pixel( level_obj.tilemap,spawn_x,spawn_y )
	if( tile == tile_type.tile_floor )
	{
		instance_create_layer( spawn_x,spawn_y,"instances",tower_type )
		
		tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x - 1,spawn_y - 1 )
		tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x - 1,spawn_y + 1 )
		tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x + 1,spawn_y - 1 )
		tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x + 1,spawn_y + 1 )
		
		return( true )
	}
	
	return( false )
}