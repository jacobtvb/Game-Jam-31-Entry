
//search for player here with pathfinding

if(desiredX != noone){
	state = scr_npc_states_chase;
	return;
}
else if(target == noone || !instance_exists(target) || path_get_length(pathId) > 500){
	target = scr_npc_get_closest_target();
	scr_npc_update_target_path();
}

if(target != noone){
	state = scr_npc_states_chase;	
}