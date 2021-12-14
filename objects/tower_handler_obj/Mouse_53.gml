if( held_tower != noone )
{
	var placed = try_place_tower( mouse_x,mouse_y,held_tower )
	
	if( placed )
	{
		level_obj.cur_gold -= tower_get_cost( held_tower )
		held_tower = noone
	}
}