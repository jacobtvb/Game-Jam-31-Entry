
if(gridScheduleTimer > 0){
	gridScheduleTimer -= 1;
	if(gridScheduleTimer <= 0){
		scr_npc_grid_create();
	}
}