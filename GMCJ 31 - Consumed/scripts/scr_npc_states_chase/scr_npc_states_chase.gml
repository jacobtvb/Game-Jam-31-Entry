
if(desiredX == noone){
	target = scr_npc_get_closest_target();	
}

if(target == noone || !instance_exists(target)){
	path_clear_points(pathId);
	state = scr_npc_states_idle;
}

scr_npc_update_target_path();

applyGravity = true;
var _totalPoints = path_get_number(pathId);

if(_totalPoints > 1){
	var _nextY = path_get_point_y(pathId, 1);
	
	var _horizontalMovement = false;
	
	if(abs(y - _nextY) < 32){
		_horizontalMovement = true;
	}
	else if(y > _nextY && !place_meeting(x, y + clamp(ySpeed - acceleration, -runSpeed, 0), o_block)){ //wall climb up
		applyGravity = false;
		ySpeed = clamp(ySpeed - acceleration, -runSpeed, 0);
	}
	else if(y < _nextY && !place_meeting(x, y + clamp(ySpeed + acceleration, 0, runSpeed), o_block)){ //wall climb down
		applyGravity = false;
		ySpeed = clamp(ySpeed + acceleration, 0, runSpeed);
	}
	else{
		_horizontalMovement = true;	
	}
	
	if(_horizontalMovement){
		var _x = path_get_point_x(pathId, 1);
		if(_x > x){
			face = FACE_RIGHT;
		}
		else{
			face = FACE_LEFT;	
		}
		xSpeed = clamp(xSpeed + face*acceleration, -runSpeed, runSpeed);
		//edge case where npc is caught on a corner
		if(place_meeting(x + xSpeed, y, o_block) && !place_meeting(x + xSpeed, y - 10, o_block)){ 
			ySpeed = -10;
		}
	}
}


if(desiredX != noone && _totalPoints <= 2 && point_distance(x, 0, path_get_point_x(pathId, 1), 0) < 25){
	desiredX = noone;
	desiredY = noone;
	if(destinationScript != noone){
		script_execute(destinationScript);	
	}
}
else if(target != noone && point_distance(x, y, target.x, target.y) < attackDistance){
	var _dA = -face*acceleration*2;
	xSpeed += _dA;
	if(abs(xSpeed) < 0.6){
		xSpeed = 0;	
	}
}