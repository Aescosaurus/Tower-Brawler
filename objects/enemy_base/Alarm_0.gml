if( get_len_sq( player_obj.x - x,player_obj.y - y ) < sqr( range ) )
{
	alarm_set( 1,1 )
}

alarm_set( 0,refire )