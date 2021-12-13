function get_len_sq( x_diff,y_diff )
{
	return( sqr( x_diff ) + sqr( y_diff ) )
}

function get_len( x_diff,y_diff )
{
	return( sqrt( get_len_sq( x_diff,y_diff ) ) )
}

function normalize( x_diff,y_diff )
{
	var len = get_len( x_diff,y_diff )
	
	var norm;
	norm[0] = x_diff
	norm[1] = y_diff
	
	if( len != 0.0 )
	{
		norm[0] /= len
		norm[1] /= len
	}
	
	return( norm )
}

function snap_loc( loc,snap )
{
	return( loc - ( loc % snap ) + snap / 2 )
}