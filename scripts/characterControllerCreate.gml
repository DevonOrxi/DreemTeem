//Joystick and playerId
global.playerId += 1;
playerId = global.playerId;
joySlot = -1;

//Punching
angle = 0; //Angle of attack
force = 0; //Punch charge strength
forceLimit = 24; //Max amount of force
forceGrow = 2; //How fast force increases
punchTime = 0; //Time in punching state
punchLow = 1; //Amount by frame te reduce time punching

//Damaging
hit = false;

//Death, respawn & invinsibility timers and coordenates
respawnTime = 30; //Time from death until respawn
respawnX = room_width/2;
respawnY = room_height/2;
invTime = 60; //Time being invinsible

//Physics & movement
initialize_movement_entity(.5, .5, 0, 0, solids);

//States (Temporary state machine)
alive = true;
inv = false;
charging = false;
punching = false;

//Sprite (this is meant for testing only)
if playerId = 1 {
    sprite_index = char1;
}

if playerId = 2 {
    sprite_index = char2;
}
