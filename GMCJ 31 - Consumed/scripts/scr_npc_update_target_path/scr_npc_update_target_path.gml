
if(target != noone && instance_exists(target)){
	var _y = applyGravity ? scr_npc_get_ground_y(self) : y;
	scr_npc_populate_target_path(x, _y, target, pathId, global.roomGridId);
}
else{
	path_clear_points(pathId);	
}