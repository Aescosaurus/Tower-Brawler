if( hovering )
{
	if( panel == noone )
	{
		panel = info_panel_create_raw( create_arr( "kills:",string( total_kills ),"\n","total dmg:",string( total_dmg ) ),false )
		panel.x = x
		panel.y = y + sprite_height / 2
		panel.center_x = true
	}
}
else
{
	if( panel != noone )
	{
		instance_destroy( panel )
		panel = noone
	}
}