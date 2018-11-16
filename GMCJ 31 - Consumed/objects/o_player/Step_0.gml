/// Controls

k_l = keyboard_check(vk_left);
k_r = keyboard_check(vk_right);
k_jump = keyboard_check_pressed(vk_space);
k_down = keyboard_check(vk_down);
k_up = keyboard_check(vk_up);
k_interact = keyboard_check_pressed(ord("C"));
k_stomp = keyboard_check_pressed(ord("X"));
k_dash = keyboard_check_pressed(ord("V"));

var moveHor = k_r - k_l;
if restrict = 0 then hs = xscale * ws;

// Check if in water
if !(place_meeting(x,y-wDist,o_water)) { 
	if !(moveHor = 0) { ws += acc; } else ws -= acc*2;
	if abs(ws) > mxws then ws = mxws;
	if ws < 0 then ws = 0;
	wvs = 0;
} 
else {
	if !(moveHor = 0) { ws += wacc; } else ws -= wacc*0.5;
	if abs(ws) > mxwsW then ws = mxwsW;
	if ws < 0 then ws = 0;

	var moveVer = k_down - k_up;
	if k_down then vs += wvs;
	if k_up then vs -= wvs;
	
	if vs > mxwsW then vs = mxwsW
	if vs < -mxwsW then vs = -mxwsW
	
	if !(moveVer = 0) { wvs += wacc; } else wvs -= wacc*0.5;
	if abs(wvs) > mxwsW then wvs = mxwsW;
	if wvs < 0 then wvs = 0;
	
}

// Horizontal Collisions

if (place_meeting(x+hs,y,o_block)) {
	while (!place_meeting(x+sign(hs),y,o_block)) {
		x = x + sign(hs);
		}
	hs = 0;	
	ws = 0;
}
x = x + hs;

// Vertical Collisions

// Wall Jump
if (place_meeting(x+xscale*2,y,o_block)) and vs > 0 {
	sprite_index = s_plyCling;
	vs += fs*0.1;
	if vs > 7 then vs = 7
	
	if k_jump
		{
		vs = js;
		hs = mxws*xscale
		}
} else if !(place_meeting(x,y-wDist,o_water)) { 
	vs += fs;
	if vs > mxfs then vs = mxfs
} else {
	vs += 0.1;
	if vs > fsW then vs = lerp(vs,fsW,0.15)
	jumps = maxJumps;
}

if (place_meeting(x,y+vs,o_block)) {
	if vs > fs and !(place_meeting(x,y,o_water)) then { yscale = 0.5; jumps = maxJumps; ws *= 0.75}
	while (!place_meeting(x,y+sign(vs),o_block)) {
		y = y + sign(vs);
	}
	vs = 0;	
}
y = y + vs;

// Jumping
	
if jumps > 0 and !(place_meeting(x,y-50,o_water)) {
	if k_jump {
	wvs = 0;
	vs = js	
	yscale = 1.5;
	jumps -= 1;
	}
}

// ~~~~~~~~~~~~~~~~~~~~~~~~~~ VISUALS

if yscale != 1 then yscale = lerp(yscale,1,0.1)
if moveHor = 1 then xscale = 1 else if moveHor = -1 then xscale = -1;

if place_meeting(x,y+2,o_block) {
	if moveHor != 0 and ws > 1 then {
		sprite_index = s_plyRun; image_speed = ws*0.3;
	}
	else sprite_index = s_plyIdle
}

if !(place_meeting(x+xscale*5,y,o_block)) {
	if !place_meeting(x,y+2,o_block) and vs < -1 then sprite_index = s_plyJump;
	if !place_meeting(x,y+2,o_block) and vs > -1 then sprite_index = s_plyFall;
}

