// if selected draw highlighted * 2 or another color or smth
if( parent_tower == noone || parent_tower.targeting != my_targeting ) shader_set_darken()
event_inherited()
shader_reset()


// draw_sprite( cur_data.stored_data,0,x + sprite_xoffset + cur_x,
// 	y + sprite_yoffset + cur_y )
// cur_x += sprite_get_width( cur_data.stored_data )