if( hovering )
{
	if( panel == noone )
	{
		panel = info_panel_create_raw(
			create_arr(
			format_tower_target_button( button_target_closest_obj,self ),
			format_tower_target_button( button_target_lowesthp_obj,self ),
			format_tower_target_button( button_target_highesthp_obj,self ),
			"\n",
			"kills:",string( total_kills ),"\n",
			"total dmg:",string( total_dmg ) ),false )
		panel.x = x
		panel.y = y + sprite_height / 2
		panel.center_x = true
	}
}
else
{
	if( panel != noone && !panel.hovering )
	{
		instance_destroy( panel )
		panel = noone
	}
}