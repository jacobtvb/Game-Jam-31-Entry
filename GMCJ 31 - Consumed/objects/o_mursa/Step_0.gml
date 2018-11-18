
var moveHor = 0;

if target.x < x then moveHor = -1;
if target.x > x then moveHor = 1;

if restrict = 0 then hs += moveHor * acc;

	if moveHor = 0
		{
		if !(place_meeting(x,y+1,o_block))
			{
			if hs > 0 then hs -= acc;	
			if hs < 0 then hs += acc;	
			if hs < acc*3 and hs > -acc*3 then hs = 0;
			}
		if (place_meeting(x,y+1,o_block))
			{
			if hs > 0 then hs -= acc*3;	
			if hs < 0 then hs += acc*3;	
			if hs < acc*3 and hs > -acc*3 then hs = 0;
			}
		}
		else if (place_meeting(x,y+1,o_block))
			{
			if hs > maxSpeed+acc then hs -= acc*3;	
			if hs < -maxSpeed-acc then hs += acc*3;	
		}
			else if !(place_meeting(x,y+1,o_block))
			{
			if hs > maxSpeed+acc then hs -= acc;	
			if hs < -maxSpeed-acc then hs += acc;	
		}
ws = abs(hs);

vs += grav;
if vs > maxGrav then vs = maxGrav



if yscale != 1 then yscale = lerp(yscale,1,0.05)
if moveHor = 1 then xscale = 1 else if moveHor = -1 then xscale = -1;

if (place_meeting(x+hs,y,o_block)) {
	while (!place_meeting(x+sign(hs),y,o_block)) {
		x = x + sign(hs);
		}
	hs = 0;	
	ws = 0;
}
x = x + hs;

// Vertical Collisions

if (place_meeting(x,y+vs,o_block)) {
	while (!place_meeting(x,y+sign(vs),o_block)) {
		y = y + sign(vs);
	}
	vs = 0;	
}
y = y + vs;