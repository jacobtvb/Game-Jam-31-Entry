///@param npc
///@param heightLimit

var _heightLimit = argument1;

with(argument0){
	//used for pathing so the y is offset
	
	var _iterations = _heightLimit div 32;
	var _currentY = y - 2;
	for(var i = 0; i < _iterations; i++){
		if(place_meeting(x, _currentY, o_block)){
			break;
		}
		_currentY -= 32;
	}
	
	return _currentY;
}

