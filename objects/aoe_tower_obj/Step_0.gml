if( can_fire )
{
	var target = get_target( x,y,targeting,range )
	if( target != noone )
	{
		// create_bullet( x,y,point_direction( x,y,target.x,target.y ),player_bullet_obj )
		for( var i = 0; i < 8; ++i )
		{
			create_bullet( x,y,( i / 8 ) * 360.0,player_bullet_obj )
		}
	}
	
	can_fire = false
	alarm_set( 0,refire )
}