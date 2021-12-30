if( hovering )
{
	panel = create_info_panel_raw( create_arr( "kills:",string( total_kills ),"\n","total dmg:",string( total_dmg ) ),false )
}
else
{
	if( panel != noone )
	{
		instance_destroy( panel )
		panel = noone
	}
}