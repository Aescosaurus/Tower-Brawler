if( set_data )
{
	// print( x,y,image_xscale,image_yscale )
	
	draw_self()
	
	var cur_x = 0
	var cur_y = 0
	for( var i = 0; i < array_length( data ); ++i )
	{
		var cur_data = data[i]
		var cur_data_type = typeof( cur_data )
		if( cur_data == "\n" )
		{
			cur_x = 0
			cur_y += tile_spacing
		}
		else if( cur_data_type == "string" )
		{
			draw_text( x + cur_x,y + cur_y,cur_data )
			cur_x += string_width( cur_data )
		}
		else if( cur_data_type == "number" )
		{
			// var x_offset = sprite_get_xoffset( cur_data )
			// var y_offset = sprite_get_yoffset( cur_data )
			// draw_sprite( cur_data,0,x + x_offset + cur_x,
			// 	y + y_offset + cur_y )
			// cur_x += sprite_get_width( cur_data )
			show_error( "stop using numbers for sprites",true )
		}
		else if( cur_data_type == "struct" )
		{
			switch( cur_data.stored_type )
			{
			case "s":
				var x_offset = sprite_get_xoffset( cur_data.stored_data )
				var y_offset = sprite_get_yoffset( cur_data.stored_data )
				draw_sprite( cur_data.stored_data,0,x + x_offset + cur_x,
					y + y_offset + cur_y )
				cur_x += sprite_get_width( cur_data.stored_data )
				// x_add += sprite_get_width( cur_data.stored_data )
				break;
			// case "o":
			// 	x_add += sprite_get_width( object_get_sprite( cur_data.stored_data ) )
			// 	break;
			}
		}
	}
}