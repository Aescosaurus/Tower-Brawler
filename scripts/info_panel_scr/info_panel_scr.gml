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
		panel_spr_insert( object_get_sprite( tower ) ),tower_get_name( tower ),"\n",
		desc,"\n",
		"cost:",panel_spr_insert( gold_counter_spr ),string( tower_get_cost( tower ) ) ) )
}

function panel_spr_insert( spr )
{
	return(
	{
		stored_type: "s",
		stored_data: spr
	} )
}

function panel_obj_insert( obj )
{
	return(
	{
		stored_type: "o",
		stored_data: obj
	} )
}