var bullet = instance_create_layer( x,y,"projectiles",enemy_bullet_obj )
bullet.direction = point_direction( x,y,player_obj.x,player_obj.y )