if( cur_enemy_count < wave_size )
{
	instance_create_layer( 9999,9999,"instances",enemy_obj )
	
	cur_enemy_count += 1
	
	alarm_set( 0,enemy_sep )
}
else
{
	if( loop_button_obj.image_index == 1 ) next_wave = true
	else play_button_obj.image_index = 0
	
	cur_wave += 1
	cur_enemy_count = 0
	
	// wave_size *= 1.5
	wave_size += logn( wave_growth,cur_wave )
	enemy_sep *= 0.8
}