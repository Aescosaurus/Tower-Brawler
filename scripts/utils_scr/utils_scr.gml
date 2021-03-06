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

function create_arr()
{
	var temp_arr = array_create( argument_count )
	for( var i = 0; i < argument_count; ++i )
	{
		temp_arr[i] = argument[i]
	}
	return( temp_arr )
}

function assert( condition,msg = "" )
{
	if( !condition ) show_error( msg,true )
}

function is_on_screen( loc_x,loc_y )
{
	return( loc_x >= 0 && loc_x < room_width &&
		loc_y >= 0 && loc_y < room_height )
}