
if(target != noone && instance_exists(target)){
	scr_npc_populate_target_path(x, scr_npc_get_ground_y(self), target, pathId, global.roomGridId);
}
else{
	path_clear_points(pathId);	
}