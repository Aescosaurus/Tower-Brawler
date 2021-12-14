event_inherited()

if( level_obj.cur_gold >= tower_get_cost( spawn_tower ) )
{
	tower_handler_obj.held_tower = spawn_tower
	tower_handler_obj.held_tower_spr = sprite_index
}