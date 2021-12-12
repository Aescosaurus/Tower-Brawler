if( held_tower != noone )
{
	draw_sprite( held_tower_spr,0,
		snap_loc( mouse_x,tile_spacing ),
		snap_loc( mouse_y,tile_spacing ) )
}