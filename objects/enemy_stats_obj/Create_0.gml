enemy_stats = ds_map_create()

enemy_stats[? enemy_obj] =
{
	hp: 5,
	spd: 0.3,
	refire: 2.5,
	range: 50
}
enemy_stats[? enemy_brute_obj] =
{
	hp: 25,
	spd: 0.18,
	refire: 4.0,
	range: 70,
	bullet_spread: 25
}