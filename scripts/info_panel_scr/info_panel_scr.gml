function create_info_panel( obj )
{
	return( create_info_panel_raw( panel_handler_obj.panels[? obj] ) )
}

function create_info_panel_raw( arr )
{
	var panel = instance_create_layer( mouse_x,mouse_y,"ui",info_panel_obj )
	
	panel.depth = panel_depth
	
	panel.data = arr
	panel.set_data = true
	
	return( panel )
}

function create_tower_panel( tower,desc )
{
	return( create_arr(
		object_get_sprite( tower ),tower_get_name( tower ),"\n",
		desc,"\n",
		"cost:",gold_counter_spr,string( tower_get_cost( tower ) ) ) )
}