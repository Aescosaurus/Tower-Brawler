grid_width = 6
grid_height = 3

var towers = array_create( ds_map_size( tower_handler_obj.tower_stats ) )
var tower_count = array_length( towers )

towers[0] = ds_map_find_first( tower_handler_obj.tower_stats )
for( var i = 1; i < tower_count; ++i )
{
	towers[i] = ds_map_find_next( tower_handler_obj.tower_stats,towers[i - 1] )
}

array_sort( towers,function( a,b )
{
	return( tower_get_cost( a ) - tower_get_cost( b ) )
} )

// towers[0] = tower_obj
// towers[1] = tower2_obj

var i = 0
for( var ly = 0; ly < grid_height; ++ly )
{
	for( var lx = 0; lx < grid_width; ++lx )
	{
		// draw_sprite( object_get_sprite( towers[i] ),0,
		// 	x + tile_spacing / 2 + lx * tile_spacing,
		// 	y + tile_spacing / 2 + ly * tile_spacing )
		var cur_tower_button = instance_create_layer(
			x + tile_spacing / 2 + lx * tile_spacing,
			y + tile_spacing / 2 + ly * tile_spacing,
			"ui",
			tower_store_button_obj )
		cur_tower_button.sprite_index = object_get_sprite( towers[i] )
		cur_tower_button.spawn_tower = towers[i]
		
		if( ++i >= tower_count )
		{
			lx = grid_width
			ly = grid_height
		}
	}
}