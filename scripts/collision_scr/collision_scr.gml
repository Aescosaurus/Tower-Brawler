function check_overlap( tilemap,check_x,check_y,x_move,y_move,disallowed1,disallowed2 )
{
	var hw = sprite_width / 2
	var hh = sprite_height / 2
	
	check_x += x_move
	check_y += y_move
	
	var dr = tilemap_get_at_pixel( tilemap,check_x + hw,check_y + hh )
	var dl = tilemap_get_at_pixel( tilemap,check_x - hw,check_y + hh )
	var ur = tilemap_get_at_pixel( tilemap,check_x + hw,check_y - hh )
	var ul = tilemap_get_at_pixel( tilemap,check_x - hw,check_y - hh )
	
	return( dr == disallowed1 || dr == disallowed2 ||
		dl == disallowed1 || dl == disallowed2 ||
		ur == disallowed1 || ur == disallowed2 ||
		ul == disallowed1 || ul == disallowed2 )
}