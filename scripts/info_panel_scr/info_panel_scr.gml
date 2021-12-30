function info_panel_create( obj,follow_mouse = true )
{
	return( info_panel_create_raw( panel_handler_obj.panels[? obj],follow_mouse ) )
}

function info_panel_create_raw( arr,follow_mouse = true )
{
	var panel = instance_create_layer( mouse_x,mouse_y,"ui",info_panel_obj )
	
	// panel.depth = panel_depth
	
	panel.data = arr
	panel.set_data = true
	
	panel.follow_mouse = follow_mouse
	
	return( panel )
}

function info_panel_create_tower( tower,desc )
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

function format_tower_target_button( obj,parent )
{
	var button = instance_create_layer( 9999,9999,"ui",obj )
	
	button.parent_tower = parent
	
	return( panel_obj_insert( button ) )
}