
var _temporaryPathId = path_add();
var _gridId = floats ? global.roomFloatGridId : global.roomGridId;

var _x = x;
var _y = scr_npc_get_ground_y(self);

var _pathLength = 100000;
var _target = noone;
var _floatHeight = floats ? floatHeight : 0;

var _totalPossibleEnemies = array_length_1d(possibleEnemies);
for(var i = 0; i < _totalPossibleEnemies; i++){
	with(possibleEnemies[i]){
		if(scr_npc_populate_target_path(_x, _y, self, _temporaryPathId, _gridId, _floatHeight)){
			var _possiblePathLength = path_get_length(_temporaryPathId);
			if(_possiblePathLength > 0 && _possiblePathLength < _pathLength){
				_pathLength = _possiblePathLength;
				_target = self;
			}	
		}
		
	}
}

path_delete(_temporaryPathId);

return _target;