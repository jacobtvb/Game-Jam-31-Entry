
script_execute(state);

if(applyGravity){
	ySpeed += GRAVITY;
}

if(place_meeting(x, y + ySpeed, o_block)){
	var _yIncrement = sign(ySpeed);
	ySpeed = 0;
	while(!place_meeting(x, y + _yIncrement, o_block)){
		y += _yIncrement;
	}
}

if(place_meeting(x + xSpeed, y, o_block)){
	var _xIncrement = sign(xSpeed);
	xSpeed = 0;
	while(!place_meeting(x + _xIncrement, y, o_block)){
		x += _xIncrement;
	}
}

x += xSpeed;
y += ySpeed;
