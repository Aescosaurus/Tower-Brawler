var tile_layer = layer_tilemap_get_id( "tilemap" )
var decor_tile_layer = layer_tilemap_get_id( "decor_tiles" )

assert( tile_layer != -1 )
assert( decor_tile_layer != -1 )

var tilemap_width = tilemap_get_width( tile_layer )
var tilemap_height = tilemap_get_height( tile_layer )

for( var ty = 0; ty < tilemap_height; ++ty )
{
	for( var tx = 0; tx < tilemap_width; ++tx )
	{
		var tile_id = tilemap_get( tile_layer,tx,ty )
		if( tile_id > 0 )
		{
			assert( tile_id != tile_type.tile_tower,"preexisting tower tiles currently aren't decorated" )
			var tile_index = ty * tilemap_width + tx
			
			tilemap_set( decor_tile_layer,
				tile_index + ( tile_id - 1 ) * ( tilemap_width * tilemap_height ),
				tx,ty )
		}
	}
}