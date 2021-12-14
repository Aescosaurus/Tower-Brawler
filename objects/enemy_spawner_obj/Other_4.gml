wave_sep = 2.0 * 60.0 // how long between spawning different squads
squad_sep = 1.1 * 60.0 // time between spawning members of the same squad
// wave_size = 5
// cur_enemy_count = 0
cur_wave = 0
// wave_growth = 1.7 // must be >1.  bigger = slower growth

cur_squad = 0
cur_squad_member_index = 0
squad_size = wave_squad_get( cur_wave,cur_squad ).quantity

next_wave = false