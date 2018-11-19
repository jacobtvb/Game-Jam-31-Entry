
target = scr_npc_get_closest_target();	

scr_npc_update_target_path();

var _totalPoints = path_get_number(pathId);

if(_totalPoints > 1){
	var _destinationX = path_get_point_x(pathId, _totalPoints - 1);
	var _destinationY = path_get_point_y(pathId, _totalPoints - 1);
	
	if(point_distance(x, 0, _destinationX, 0) > 2){
		var _nextX = path_get_point_x(pathId, 1);
		
		if(_nextX > x){
			xSpeed = clamp(xSpeed + floatAcceleration, 0, floatMaxSpeed);	
		}
		else{
			xSpeed = clamp(xSpeed - floatAcceleration, -floatMaxSpeed, 0);	
		}
	}
	else{
		xSpeed = 0;	
	}
	
	if(point_distance(0, y, 0, _destinationY) > floatHoverInterval){
		var _nextY = path_get_point_y(pathId, 1);
		if(_nextY > y){
			ySpeed = clamp(ySpeed + floatAcceleration, 0, floatMaxSpeed);
		}
		else{
			ySpeed = clamp(ySpeed - floatAcceleration, -floatMaxSpeed, 0);
		}
	}
}