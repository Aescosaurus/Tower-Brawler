if( held_tower != noone )
{
	var snap_x = snap_loc( mouse_x,tile_spacing )
	var snap_y = snap_loc( mouse_y,tile_spacing )
	
	draw_sprite( held_tower_spr,0,snap_x,snap_y )
	
	draw_circle( snap_x,snap_y,tower_get_range( held_tower ),true )
}