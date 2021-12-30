if( hovering )
{
	if( panel == noone )
	{
		panel = info_panel_create_raw( create_arr( "kills:",string( total_kills ),"\n","total dmg:",string( total_dmg ) ),false )
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