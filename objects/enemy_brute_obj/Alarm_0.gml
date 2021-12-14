var player_dir = point_direction( x,y,player_obj.x,player_obj.y )
for( var i = -1; i < 2; ++i )
{
	var bullet = instance_create_layer( x,y,"projectiles",enemy_bullet_obj )
	bullet.direction = player_dir + bullet_spread * i
}

alarm_set( 0,refire )