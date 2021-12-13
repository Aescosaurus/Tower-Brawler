if( !already_hit( self,other ) )
{
	hit_enemies[array_length( hit_enemies )] = other
	
	other.hp -= dmg
	if( owner != noone ) owner.total_dmg += dmg
	if( other.hp <= 0 )
	{
		instance_destroy( other )
		
		level_obj.cur_gold += 1
		
		if( owner != noone ) owner.total_kills += 1
	}
	
	if( --hp <= 0 ) instance_destroy()
}