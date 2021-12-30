for( var i = 0; i < n_buttons; ++i )
{
	instance_destroy( buttons[i] )
}

panel_handler_obj.cur_panel_depth += panel_handler_obj.panel_depth_interval
