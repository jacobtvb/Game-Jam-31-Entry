/// Controls

k_l = keyboard_check(vk_left);
k_r = keyboard_check(vk_right);
k_jump = keyboard_check_pressed(vk_space);
k_down = keyboard_check(vk_down);
k_up = keyboard_check(vk_up);
k_interact = keyboard_check_pressed(ord("C"));
k_stomp = keyboard_check_pressed(ord("X"));
k_dash = keyboard_check_pressed(ord("V"));

if (place_meeting(x,y-30,o_water)) {
	//if state="ground" then { wvs = 0; }
	image_blend = c_blue;
	state = "water";
}
else { state = "ground"; image_blend = c_white;  }

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  GROUND STATE

if state = "ground" {
	var moveHor = k_r - k_l;
	if restrict = 0 then hs += xscale * acc;

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
			if hs > mxws+acc then hs -= acc*3;	
			if hs < -mxws-acc then hs += acc*3;	
		}
			else if !(place_meeting(x,y+1,o_block))
			{
			if hs > mxws+acc then hs -= acc;	
			if hs < -mxws-acc then hs += acc;	
		}

	ws = abs(hs);

// Gravity

	vs += fs;
	if vs > mxfs then vs = mxfs
	
// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GROUND STATE VISUALS

	if place_meeting(x,y+2,o_block) {
		if moveHor != 0 and ws > 1 then {
			sprite_index = s_plyRun; image_speed = ws*0.3;
		}
		else sprite_index = s_plyIdle; image_speed = 1;
	}
	
	if !place_meeting(x,y+2,o_block) and vs < -1 then sprite_index = s_plyJump;
	if !place_meeting(x,y+2,o_block) and vs > -1 then sprite_index = s_plyFall;	
	
//Wall Jump
	if canWallJump {
		if (collision_point(x+xscale*12,y-22,o_block,1,1)) and vs > 0 and !(place_meeting(x,y+2,o_block)) {
			sprite_index = s_plyCling;
			vs += fs*0.1;
			if vs > 2 then vs = 2
	
			if k_jump {
				vs = js;
				hs = mxws*1.5*-xscale
			}
		}
	}
}

/*/ Water State

if state = "water" {
	
var moveHor = k_r - k_l;
if restrict = 0 then hs = xscale * ws;
	
if !(moveHor = 0) { ws += wacc; } else ws -= wacc*0.5;
if abs(ws) > mxwsW then ws = mxwsW;
if ws < 0 then ws = 0;

var moveVer = k_down - k_up;

if k_down then vs = moveVer*wvs;
if k_up then vs = moveVer*wvs;
	
if !(moveVer = 0) { wvs += wacc; } else wvs -= wacc*0.5;
if wvs > mxwsW then wvs = mxwsW;
if wvs < 0 then wvs = 0;

if !(place_meeting(x,y-35,o_water)) and vs > -10
	{
	y += wvs;	
	wvs = 0;
	}

// Sinking

vs += 0.1;
if vs > fsW then vs = lerp(vs,fsW,0.15)
jumps = 1;

}
*/

// Jumping
	
if jumps > 0 and !(place_meeting(x,y-60,o_water)) {
	if k_jump {
	ws = 0;
	vs = js	
	yscale = 1.5;
	jumps -= 1;
	}
}

// Universal Visual Effects

if yscale != 1 then yscale = lerp(yscale,1,0.05)
if moveHor = 1 then xscale = 1 else if moveHor = -1 then xscale = -1;

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

if (place_meeting(x,y+vs,o_block)) {
	if vs > fs and state="ground" then { jumps = maxJumps; ws *= 0.75 }
	while (!place_meeting(x,y+sign(vs),o_block)) {
		y = y + sign(vs);
	}
	vs = 0;	
}
y = y + vs;