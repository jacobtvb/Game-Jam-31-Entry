///play_sound_dist(soundID, playerDistance);

if instance_exists(o_player) and point_distance(x,y,o_player.x,o_player.y) < argument1 {
	audio_play_sound(argument0,10,0)
}