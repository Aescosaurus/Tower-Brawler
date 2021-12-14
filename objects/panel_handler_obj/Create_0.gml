panels = ds_map_create()

panels[? tower_obj] = create_tower_panel( tower_obj,"this is a basic tower" )
panels[? tower2_obj] = create_tower_panel( tower2_obj,"long range, low damage, and piercing" )
panels[? aoe_tower_obj] = create_tower_panel( aoe_tower_obj,"high rof aoe attack" )

panels[? wave_counter_obj] = create_arr( "completed waves" )
panels[? gold_counter_obj] = create_arr( "enemies defeated" )