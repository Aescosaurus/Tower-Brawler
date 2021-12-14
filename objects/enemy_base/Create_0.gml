stats = enemy_stats_obj.enemy_stats[? object_index]

path_start( test_path,stats.spd,path_action_stop,true )

hp = stats.hp
range = stats.range
refire = stats.refire * 60.0
alarm_set( 0,refire )