
target = scr_npc_get_closest_target();    

scr_npc_update_target_path();

var _totalPoints = path_get_number(pathId);

if(_totalPoints > 1){
    var _nextX = path_get_point_x(pathId, 1);
    var _nextY = path_get_point_y(pathId, 1);
    
    var _angle = point_direction(x,y,_nextX, _nextY);
    
    xSpeed = lerp(xSpeed + dcos(_angle)*floatAcceleration, 0, 0.005);
    xSpeed = clamp(xSpeed, -floatMaxSpeed, floatMaxSpeed);
    
    ySpeed = lerp(ySpeed + -dsin(_angle)*floatAcceleration, 0, 0.005);
    ySpeed = clamp(ySpeed, -floatMaxSpeed, floatMaxSpeed);
}