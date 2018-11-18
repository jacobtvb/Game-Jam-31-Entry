///@param npc

with(argument0){
	//used for pathing so the y is offset
	var _currentY = y + 2;
	if(!place_meeting(x, _currentY, o_block)){
	
		while(!place_meeting(x, _currentY, o_block)){
			_currentY += 4;
		}
		return _currentY - 30;
	}
	else{
		return y - 30;
	}
}

