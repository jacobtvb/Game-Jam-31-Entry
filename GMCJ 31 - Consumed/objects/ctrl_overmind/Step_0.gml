
if(gridScheduleTimer > 0){
	gridScheduleTimer -= 1;
	if(gridScheduleTimer <= 0){
		scr_npc_grid_create();
	}
}


if (keyboard_check_pressed(ord("R"))) {
    gamestate_checkpoint_load();
}

