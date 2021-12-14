if( level_obj.cur_gold < tower_get_cost( spawn_tower ) ) shader_set( grayed_out_shader )
event_inherited()
shader_reset()