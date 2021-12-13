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
			draw_sprite( cur_data,0,x + cur_x + tile_spacing / 2,y + cur_y + tile_spacing / 2 )
			cur_x += sprite_get_width( cur_data )
		}
	}
}