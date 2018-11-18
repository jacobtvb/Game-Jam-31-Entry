
if(global.roomGridId != noone){
	mp_grid_destroy(global.roomGridId);	
}

var _blockSize = 64;
var _width = room_width div _blockSize;
var _height = room_height div _blockSize;

global.roomGridId = mp_grid_create(0, 0, _width, _height, _blockSize, _blockSize);

var _gridId = global.roomGridId;

for(var i = 0; i < _width; i++){
	for(var j = 0; j < _height; j++){
		mp_grid_add_cell(_gridId, i, j);	
	}
}

with(o_block){
	var _hBlockSize = _blockSize div 2;

	var _lowerXBound = x;
	var _lowerYBound = y;
	var _upperXBound = x + image_xscale*sprite_get_width(sprite_index);
	var _upperYBound = y + image_yscale*sprite_get_height(sprite_index);

	var _currentX = _lowerXBound + _hBlockSize;

	while(_currentX < _upperXBound){
		var _currentY = _lowerYBound + _hBlockSize;
		while(_currentY < _upperYBound){
		
			for(var i = 0; i <= 180; i += 45){
				var _x = _currentX + dcos(i)*64;
				var _y = _currentY - dsin(i)*64;
				mp_grid_clear_cell(_gridId, _x / _blockSize, _y / _blockSize);
			}
		
			_currentY += _blockSize;
		}
		_currentX += _blockSize;
	}
}

mp_grid_add_instances(_gridId, o_block, false);