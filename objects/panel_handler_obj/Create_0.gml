panels = ds_map_create()

panels[? tower_obj] = info_panel_create_tower( tower_obj,"this is a basic tower" )
panels[? tower2_obj] = info_panel_create_tower( tower2_obj,"long range, low damage, and piercing" )
panels[? aoe_tower_obj] = info_panel_create_tower( aoe_tower_obj,"high rof aoe attack" )

panels[? wave_counter_obj] = create_arr( "completed waves" )
panels[? gold_counter_obj] = create_arr( "enemies defeated" )