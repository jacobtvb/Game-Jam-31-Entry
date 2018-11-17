if sprite_index = s_timerFull {
	image_speed = 0;	
	image_index = 6;
}

if sprite_index = s_timer {
	sprite_index = s_timerFull;
	image_speed = 1;
	image_index = 0;
	worldState = "night"
}