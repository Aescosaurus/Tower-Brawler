var dt = get_dt()

// movement
var x_move = 0
var y_move = 0
if( keyboard_check( ord( "W" ) ) ) y_move--
if( keyboard_check( ord( "S" ) ) ) y_move++
if( keyboard_check( ord( "A" ) ) ) x_move--
if( keyboard_check( ord( "D" ) ) ) x_move++

var norm = normalize( x_move,y_move )

var test_x_move = norm[0] * spd * dt
if( check_overlap( level_obj.tilemap,x,y,test_x_move,0,tile_type.tile_wall,tile_type.tile_null ) )
{
	var x_step = sign( test_x_move ) * move_step
	test_x_move = abs( test_x_move )
	while( !check_overlap( level_obj.tilemap,x,y,x_step,0,tile_type.tile_wall,tile_type.tile_null ) &&
		test_x_move > 0 )
	{
		x += x_step
		test_x_move -= move_step
	}
}
else x += test_x_move

var test_y_move = norm[1] * spd * dt
if( check_overlap( level_obj.tilemap,x,y,0,test_y_move,tile_type.tile_wall,tile_type.tile_null ) )
{
	var y_step = sign( test_y_move ) * move_step
	test_y_move = abs( test_y_move )
	while( !check_overlap( level_obj.tilemap,x,y,0,y_step,tile_type.tile_wall,tile_type.tile_null ) &&
		test_y_move > 0 )
	{
		y += y_step
		test_y_move -= move_step
	}
}
else y += test_y_move


// attacking
if( mouse_check_button( mb_left ) && can_fire )
{
	var bullet = instance_create_layer( x,y,"instances",player_bullet_obj )
	bullet.direction = point_direction( x,y,mouse_x,mouse_y )
	
	can_fire = false
	alarm_set( 0,refire )
}