
scr_npc_update_target_path();

applyGravity = true;

if(path_get_number(pathId) > 1){
	var _originY = path_get_point_y(pathId, 0);
	var _y = path_get_point_y(pathId, 1);
	//horizontal movement
	if(abs(_originY - _y) < 32){
		var _x = path_get_point_x(pathId, 1);
		if(_x > x){
			face = FACE_RIGHT;
		}
		else{
			face = FACE_LEFT;	
		}
		if(target != noone && point_distance(x,y,target.x,target.y) > attackDistance){
			var _a = face*0.25;
			xSpeed = clamp(xSpeed + _a, -runSpeed, runSpeed);
			//edge case where npc is caught on a corner
			if(place_meeting(x + xSpeed, y, o_block) && !place_meeting(x + xSpeed, y - 5, o_block)){ 
				ySpeed = -5;
			}
		}
	}
	else if(_originY > _y){ //wall climb up
		applyGravity = false;
		var _a = 0.25;
		ySpeed = clamp(ySpeed - _a, -runSpeed, 0);
	}
	else if(_originY < _y){ //wall climb down
		applyGravity = false;
		var _a = 0.25;
		ySpeed = clamp(ySpeed + _a, 0, runSpeed);
	}
	
}

if(target != noone && point_distance(x, y, target.x, target.y) < attackDistance){
	var _dA = -face*0.5;
	xSpeed += _dA;
	if(abs(xSpeed) < 0.6){
		xSpeed = 0;	
	}
}