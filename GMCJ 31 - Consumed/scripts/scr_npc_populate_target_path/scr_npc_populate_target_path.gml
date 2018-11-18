///@param startX
///@param startY
///@param target
///@param pathId
///@param gridId

var _startX = argument0;
var _startY = argument1;
var _target = argument2;
var _pathId = argument3;
var _gridId = argument4;

var _goalX = _target.x;
var _goalY = scr_npc_get_ground_y(_target);

return mp_grid_path(_gridId, _pathId, _startX, _startY, _goalX, _goalY, false);