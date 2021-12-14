function create_bullet( bx,by,dir,type )
{
	var b = instance_create_layer( bx,by,"instances",type )
	
	b.direction = dir
	b.owner = self
	
	b.dmg = bullet_dmg
	b.hp = bullet_pierce + 1
	// b.speed = bullet_spd
	b.speed = 1
	
	// todo: range
	
	return( b )
}

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