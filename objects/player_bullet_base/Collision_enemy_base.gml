if( !already_hit( self,other ) )
{
	hit_enemies[array_length( hit_enemies )] = other
	
	other.hp -= dmg
	if( other.hp <= 0 )
	{
		instance_destroy( other )
		
		level_obj.cur_gold += 1
	}
	
	if( --hp <= 0 ) instance_destroy()
}