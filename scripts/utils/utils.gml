function get_dt()
{
	return( delta_time / 1000000 )
}

function print()
{
	var message = ""
	
	for( var i = 0; i < argument_count; ++i )
	{
		message += string( argument[i] )
		if( i < argument_count - 1 ) message += ", "
	}
	
	show_debug_message( message )
}

function create_info_panel( panel_x,panel_y,data )
{
	var panel = instance_create_layer( panel_x,panel_y,"ui",info_panel_obj )
	
	panel.data = data
	
	var panel_width = tile_spacing * 5
	var panel_height = tile_spacing * 1
	for( var i = 0; i < array_length( data ); ++i )
	{
		if( data[i] == "\n" ) panel_height += tile_spacing
		else if( typeof( data[i] ) == "string" )
		{
			// todo: all this differently (read notepad++ file)
		}
	}
	
	panel.image_xscale = panel_width
	panel.image_yscale = panel_height
	
	return( panel )
}

function snap_loc( loc,snap )
{
	return( loc - ( loc % snap ) + snap / 2 )
}