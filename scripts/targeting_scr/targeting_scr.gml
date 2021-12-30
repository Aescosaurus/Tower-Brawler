function target_closest( x_pos,y_pos,range_sq )
{
	var enemies = get_enemies_in_range( x_pos,y_pos,range_sq )
	var max_dist = infinity
	var target_enemy = noone
	
	for( var i = 0; i < array_length( enemies ); ++i )
	{
		var cur_enemy = enemies[i]
		var cur_dist = get_len_sq( cur_enemy.x - x_pos,cur_enemy.y - y_pos )
		if( cur_dist < max_dist )
		{
			max_dist = cur_dist
			target_enemy = cur_enemy
		}
	}
	
	return( target_enemy )
}

function target_lowesthp( x_pos,y_pos,range_sq )
{
	var enemies = get_enemies_in_range( x_pos,y_pos,range_sq )
	var target_enemy = noone
	var min_hp = infinity
	
	for( var i = 0; i < array_length( enemies ); ++i )
	{
		var cur_enemy = enemies[i]
		if( cur_enemy.hp < min_hp )
		{
			target_enemy = cur_enemy
			min_hp = cur_enemy.hp
		}
	}
	
	return( target_enemy )
}

function target_highesthp( x_pos,y_pos,range_sq )
{
	var enemies = get_enemies_in_range( x_pos,y_pos,range_sq )
	var target_enemy = noone
	var max_hp = -1
	
	for( var i = 0; i < array_length( enemies ); ++i )
	{
		var cur_enemy = enemies[i]
		if( cur_enemy.hp > max_hp )
		{
			target_enemy = cur_enemy
			max_hp = cur_enemy.hp
		}
	}
	
	return( target_enemy )
}

function get_enemies_in_range( x_pos,y_pos,range_sq )
{
	var enemy_list = noone
	var n_enemies = 0
	var enemy_count = instance_number( enemy_base )
	for( var i = 0; i < enemy_count; ++i )
	{
		var cur_enemy = instance_find( enemy_base,i )
		var cur_dist = get_len_sq( cur_enemy.x - x_pos,cur_enemy.y - y_pos )
		if( cur_dist < range_sq )
		{
			enemy_list[n_enemies++] = cur_enemy
		}
	}
	
	return( enemy_list )
}

function get_target( x_pos,y_pos,targeting_style,range )
{
	var range_sq = sqr( range )
	switch( targeting_style )
	{
	case targeting_type.targeting_closest:
		return( target_closest( x_pos,y_pos,range_sq ) )
		break
	case targeting_type.targeting_lowesthp:
		return( target_lowesthp( x_pos,y_pos,range_sq ) )
		break
	case targeting_type.targeting_highesthp:
		return( target_highesthp( x_pos,y_pos,range_sq ) )
		break
	default:
		assert( false,"Targeting type not defined!" )
		break
	}
	
	return( noone )
}