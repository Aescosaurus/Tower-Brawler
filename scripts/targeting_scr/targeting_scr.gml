function target_closest( x_pos,y_pos )
{
	var min_dist = 9999
	var target_enemy = noone
	var enemy_count = instance_number( enemy_base )
	for( var i = 0; i < enemy_count; ++i )
	{
		var cur_enemy = instance_find( enemy_base,i )
		var cur_dist = get_len_sq( cur_enemy.x - x_pos,cur_enemy.y - y_pos )
		if( cur_dist < min_dist )
		{
			min_dist = cur_dist
			target_enemy = cur_enemy
		}
	}
	
	return( target_enemy )
}