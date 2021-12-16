range = tower_get_range( object_index )
refire = tower_get_stats( object_index ).refire * 60.0
bullet_dmg = tower_get_stats( object_index ).dmg
bullet_pierce = tower_get_stats( object_index ).pierce
bullet_spd = tower_get_stats( object_index ).bullet_spd

can_fire = false
alarm_set( 0,refire )

hovering = false
can_open_panel = false

total_kills = 0
total_dmg = 0

panel = noone

targeting = targeting_type.targeting_closest