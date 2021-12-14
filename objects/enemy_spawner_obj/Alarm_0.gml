if( cur_squad_member_index < squad_size )
{
	// instance_create_layer( 9999,9999,"instances",enemy_obj )
	instance_create_layer( 9999,9999,"instances",
		wave_squad_get( cur_wave,cur_squad ).enemy )
	
	cur_squad_member_index += 1
	
	alarm_set( 0,squad_sep )
}
else if( cur_squad < array_length( wave_get( cur_wave ) ) - 1 )
{
	cur_squad += 1
	
	cur_squad_member_index = 0
	
	alarm_set( 0,wave_sep )
}
else
{
	if( loop_button_obj.image_index == 1 ) next_wave = true
	else play_button_obj.image_index = 0
	
	if( cur_wave < array_length( wave_handler_obj.enemy_waves ) - 1 ) cur_wave += 1
	// cur_enemy_count = 0
	
	cur_squad = 0
	cur_squad_member_index = 0
	squad_size = wave_squad_get( cur_wave,cur_squad ).quantity
	
	// wave_size *= 1.5
	// wave_size += logn( wave_growth,cur_wave )
	wave_sep *= 0.98
	squad_sep *= 0.98
}