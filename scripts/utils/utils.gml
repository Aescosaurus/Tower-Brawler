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

function create_info_panel( obj )
{
	var panel = instance_create_layer( mouse_x,mouse_y,"ui",info_panel_obj )
	
	panel.depth = panel_depth
	
	panel.data = panel_handler_obj.panels[? obj]
	panel.set_data = true
	
	return( panel )
}

function create_arr()
{
	var temp_arr = array_create( argument_count )
	for( var i = 0; i < argument_count; ++i )
	{
		temp_arr[i] = argument[i]
	}
	return( temp_arr )
}