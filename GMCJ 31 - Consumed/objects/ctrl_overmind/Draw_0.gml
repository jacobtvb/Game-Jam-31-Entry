
if(debug_mode){
	if(global.roomGridId != noone){
		draw_set_alpha(0.1);
		mp_grid_draw(global.roomGridId);
		draw_set_alpha(1.0);
	}
}