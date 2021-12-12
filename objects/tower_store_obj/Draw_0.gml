// no draw self

var i = 0
for( var ly = 0; ly < grid_height; ++ly )
{
	for( var lx = 0; lx < grid_width; ++lx )
	{
		draw_sprite( object_get_sprite( towers[i] ),0,
			x + tile_spacing / 2 + lx * tile_spacing,
			y + tile_spacing / 2 + ly * tile_spacing )
		
		if( ++i >= tower_count )
		{
			lx = grid_width
			ly = grid_height
		}
	}
}

var mx = floor( ( mouse_x - x ) / tile_spacing )
var my = floor( ( mouse_y - y ) / tile_spacing )
if( mx >= 0 && mx < grid_width && my >= 0 && my < grid_height )
{
	var tower_id = my * grid_width + mx
	if( tower_id < tower_count )
	{
		shader_set( highlight_shader )
		draw_sprite( object_get_sprite( towers[tower_id] ),0,
			x + tile_spacing / 2 + mx * tile_spacing,
			y + tile_spacing / 2 + my * tile_spacing )
		shader_reset()
	}
}