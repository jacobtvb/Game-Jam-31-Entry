
var _gridId = floats ? global.roomFloatGridId : global.roomGridId;

if(desiredX != noone){
	var _y = applyGravity ? scr_npc_get_ground_y(self) : y;
	mp_grid_path(_gridId, pathId, x, _y, desiredX, desiredY, false);
}
else if(target != noone && instance_exists(target)){
	var _y = applyGravity && !floats ? scr_npc_get_ground_y(self) : y;
	scr_npc_populate_target_path(x, _y, target, pathId, _gridId, floats ? floatHeight : 0);
}
else{
	path_clear_points(pathId);	
}