if sprite_index = spr_waterdrop {
vspeed += 1;
}

if collision_point(x,y+55,o_block,0,1) {
	if sprite_index = spr_waterdrop {
		sprite_index = spr_waterdropHit;
		image_index = 0;
		image_speed = 1;
		vspeed = 0;
		play_sound_dist(snd_drip,800)
	}
}