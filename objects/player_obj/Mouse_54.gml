// spawn tower

var spawn_x = mouse_x - ( mouse_x % tile_spacing ) + tile_spacing / 2
var spawn_y = mouse_y - ( mouse_y % tile_spacing ) + tile_spacing / 2

var tile = tilemap_get_at_pixel( level_obj.tilemap,spawn_x,spawn_y )
if( tile == tile_type.tile_floor )
{
	instance_create_layer( spawn_x,spawn_y,"instances",tower2_obj )
	
	tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x - 1,spawn_y - 1 )
	tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x - 1,spawn_y + 1 )
	tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x + 1,spawn_y - 1 )
	tilemap_set_at_pixel( level_obj.tilemap,tile_type.tile_tower,spawn_x + 1,spawn_y + 1 )
}