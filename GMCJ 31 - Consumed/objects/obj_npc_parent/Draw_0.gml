
draw_self();

draw_set_color(c_blue);
draw_set_alpha(1.0);

var _pathPoints = path_get_number(pathId);
for(var i = 0; i < _pathPoints; i++){
	var _x = path_get_point_x(pathId, i);
	var _y = path_get_point_y(pathId, i);
	draw_circle(_x, _y, 4, false);
}