// return true if this bullet and enemy have already collided
function already_hit( bullet,enemy )
{
	var n_hit_enemies = array_length( bullet.hit_enemies )
	for( var i = 0; i < n_hit_enemies; ++i )
	{
		if( bullet.hit_enemies[i] == enemy ) return( true )
	}
	return( false )
}