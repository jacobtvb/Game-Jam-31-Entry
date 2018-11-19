
//search for player here with pathfinding

if(floats){
	var _groundY = scr_npc_get_ground_y(self) + 30;
	var _distanceFromGround = point_distance(0, _groundY, 0, y);

	if(abs(_distanceFromGround - floatHeight) > 10){
		if(_distanceFromGround > floatHeight){
			ySpeed += floatAcceleration;
			if(ySpeed > floatAcceleration){
				ySpeed = floatAcceleration;	
			}
		}
		else{
			ySpeed -= floatAcceleration;
			if(ySpeed < -floatMaxSpeed){
				ySpeed = -floatMaxSpeed;	
			}
		}
	}
}

if(desiredX != noone){
	state = scr_npc_states_chase;
	return;
}
else if(target == noone || !instance_exists(target) || path_get_length(pathId) > 500){
	target = scr_npc_get_closest_target();
	scr_npc_update_target_path();
}

if(target != noone){
	state = floats ? scr_npc_states_float_chase : scr_npc_states_chase;	
}