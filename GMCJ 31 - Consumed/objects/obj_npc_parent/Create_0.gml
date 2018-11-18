
state = scr_npc_states_idle;

desiredX = noone;
desiredY = noone;

xSpeed = 0;
ySpeed = 0;

possibleEnemies[0] = o_player;
pathId = path_add();
target = noone;
face = FACE_RIGHT;
attackDistance = 50;

applyGravity = true;

acceleration = 0.25;
runSpeed = 5;