
state = scr_npc_states_idle;

desiredX = noone;
desiredY = noone;

xSpeed = 0;
ySpeed = 0;

possibleEnemies = noone;
pathId = path_add();
target = noone;
face = FACE_RIGHT;
attackDistance = 50;

applyGravity = true;

acceleration = 0.25;
runSpeed = 5;
floats = false;