
script_execute(state);

ySpeed += GRAVITY;

//horizontal collisions first

if(place_meeting(x + xSpeed, y, o_block)){
	var _xIncrement = sign(xSpeed);
	xSpeed = 0;
	while(!place_meeting(x + _xIncrement, y, o_block)){
		x += _xIncrement;
	}
}

if(place_meeting(x, y + ySpeed, o_block)){
	var _yIncrement = sign(ySpeed);
	ySpeed = 0;
	while(!place_meeting(x, y + _yIncrement, o_block)){
		y += _yIncrement;
	}
}

x += xSpeed;
y += ySpeed;
