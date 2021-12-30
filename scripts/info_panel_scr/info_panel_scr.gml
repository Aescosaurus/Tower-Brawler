function create_info_panel( obj,follow_mouse = true )
{
	return( create_info_panel_raw( panel_handler_obj.panels[? obj],follow_mouse ) )
}

function create_info_panel_raw( arr,follow_mouse = true )
{
	var panel = instance_create_layer( mouse_x,mouse_y,"ui",info_panel_obj )
	
	panel.depth = panel_depth
	
	panel.data = arr
	panel.set_data = true
	
	panel.follow_mouse = follow_mouse
	
	return( panel )
}

function create_tower_panel( tower,desc )
{
	return( create_arr(
		object_get_sprite( tower ),tower_get_name( tower ),"\n",
		desc,"\n",
		"cost:",gold_counter_spr,string( tower_get_cost( tower ) ) ) )
}