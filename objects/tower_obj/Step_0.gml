if( can_fire )
{
	var target = get_target( x,y,targeting,range )
	if( target != noone )
	{
		create_bullet( x,y,point_direction( x,y,target.x,target.y ),player_bullet_obj )
	}
	
	// var closest = target_closest( x,y )
	// if( closest != noone && get_len_sq( closest.x - x,closest.y - y ) < sqr( range ) )
	// {
	// 	// var bullet = instance_create_layer( x,y,"instances",player_bullet_obj )
	// 	// bullet.direction = point_direction( x,y,closest.x,closest.y )
	// 	create_bullet( x,y,point_direction( x,y,closest.x,closest.y ),player_bullet_obj )
	// }
	
	can_fire = false
	alarm_set( 0,refire )
}