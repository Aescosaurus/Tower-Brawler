// x = mouse_x
// y = mouse_y

if( follow_mouse || !init_mouse_loc )
{
	var x_add = 0
	var max_x_add = 0
	var y_add = 0
	for( var i = 0; i < array_length( data ); ++i )
	{
		var cur_data = data[i]
		var cur_data_type = typeof( cur_data )
		if( cur_data == "\n" )
		{
			if( x_add > max_x_add ) max_x_add = x_add
			x_add = 0
			y_add += tile_spacing
		}
		else if( cur_data_type == "string" )
		{
			x_add += string_width( cur_data )
		}
		else if( cur_data_type == "number" )
		{
			// x_add += sprite_get_width( cur_data )
			show_error( "stop using numbers for sprites",true )
		}
		else if( cur_data_type == "struct" )
		{
			switch( cur_data.stored_type )
			{
			case "s":
				x_add += sprite_get_width( cur_data.stored_data )
				break;
			case "o":
				x_add += sprite_get_width( object_get_sprite( cur_data.stored_data ) )
				if( !init_buttons )
				{
					buttons[n_buttons] = instance_create_layer( x_add,y_add,"ui",cur_data.stored_data )
					
					buttons[n_buttons].x_offset = x_add
					buttons[n_buttons].y_offset = y_add
					
					n_buttons++
				}
				break;
			}
		}
	}
	
	init_buttons = true
	
	if( x_add > max_x_add ) max_x_add = x_add
	
	if( !set_scale )
	{
		image_xscale = max_x_add
		image_yscale = y_add + tile_spacing
		set_scale = true
	}
	
	if( follow_mouse )
	{
		x = mouse_x
		y = mouse_y
	}
	
	if( center_x ) x -= floor( image_xscale / 2 )
	if( center_y ) y -= floor( image_yscale / 2 )
	
	// keep box on screen
	var x_r_out = room_width - ( x + max_x_add )
	if( x_r_out < 0 ) x += x_r_out
	var y_r_out = room_height - ( y + y_add + tile_spacing )
	if( y_r_out < 0 ) y += y_r_out
	if( center_x && x < 0 ) x = 0
	if( center_y && y < 0 ) y = 0
	
	// apply button offsets
	for( var i = 0; i < n_buttons; ++i )
	{
		buttons[i].x = x + buttons[i].x_offset
		buttons[i].y = y + buttons[i].y_offset
	}
	
	init_mouse_loc = true
}