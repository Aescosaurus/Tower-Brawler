// x = mouse_x
// y = mouse_y

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
		// draw_text( x + x_add,y + y_add,cur_data )
		x_add += string_width( cur_data )
	}
	else if( cur_data_type == "number" )
	{
		// draw_sprite( cur_data,0,x + x_add,y + y_add )
		x_add += sprite_get_width( cur_data )
	}
}

if( x_add > max_x_add ) max_x_add = x_add

x = mouse_x
y = mouse_y
if( x + max_x_add > room_width )
{
	x = max( 0,mouse_x - max_x_add )
}
if( y + y_add + tile_spacing > room_height )
{
	y = max( 0,mouse_y - y_add - tile_spacing )
}

if( !set_scale )
{
	image_xscale = max_x_add
	image_yscale = y_add + tile_spacing
	set_scale = true
}