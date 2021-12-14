held_tower = noone
held_tower_spr = noone

tower_stats = ds_map_create()

tower_stats[? tower_obj] =
{
	tower_name: "basic tower",
	cost: 10,
	range: 40,
	refire: 0.6,
	dmg: 1,
	bullet_spd: 2,
	pierce: 0
}
tower_stats[? tower2_obj] =
{
	tower_name: "sniper tower",
	cost: 15,
	range: 65,
	refire: 0.9,
	dmg: 0.5,
	bullet_spd: 3,
	pierce: 5
}
tower_stats[? aoe_tower_obj] =
{
	tower_name: "aoe tower",
	cost: 25,
	range: 50,
	refire: 0.5,
	dmg: 0.7,
	bullet_spd: 2,
	pierce: 1
}