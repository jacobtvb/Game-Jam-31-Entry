
var _gridId = floats ? global.roomFloatGridId : global.roomGridId;

if(desiredX != noone){
	mp_grid_path(_gridId, pathId, x, y, desiredX, desiredY, false);
}
else if(target != noone && instance_exists(target)){
	scr_npc_populate_target_path(x, y, target, pathId, _gridId, floats ? floatHeight : 0);
}
else{
	path_clear_points(pathId);	
}