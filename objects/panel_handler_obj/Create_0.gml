panels = ds_map_create()

// panels[? tower_obj] = create_arr( tower_spr,get_tower_name( tower_obj ),"\n","this is a basic tower","\n",gold_counter_spr,"cost:",string( get_tower_cost( tower_obj ) ) )
panels[? tower_obj] = create_tower_panel( tower_obj,"this is a basic tower" )
// panels[? tower2_obj] = create_arr( tower2_spr,get_tower_name( tower2_obj ),"\n","long range, low damage, and piercing" )
panels[? tower2_obj] = create_tower_panel( tower2_obj,"long range, low damage, and piercing" )

panels[? wave_counter_obj] = create_arr( "completed waves" )
panels[? gold_counter_obj] = create_arr( "enemies defeated" )