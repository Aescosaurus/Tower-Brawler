if( held_tower != noone )
{
	var placed = try_place_tower( mouse_x,mouse_y,held_tower )
	
	if( placed ) held_tower = noone
}