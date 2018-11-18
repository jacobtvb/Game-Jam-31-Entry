
state = scr_npc_states_idle;

desiredX = noone;
desiredY = noone;

xSpeed = 0;
ySpeed = 0;

possibleEnemies[0] = o_player;
pathId = path_add();
target = noone;
face = FACE_RIGHT;
runSpeed = 5;
attackDistance = 50;

applyGravity = true;