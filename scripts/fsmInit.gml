//FSM init
if place_meeting(x, y + 1, solids)
    state = playerState.IDLE;
else
    state = playerState.FALLING;
startedState = false;

//Joystick and playerId
global.playerId += 1;
playerId = global.playerId;
joySlot = -1;

//Punching
angle = 0; //Angle of attack
angleBase = 0;
force = 0; //Punch charge strength
punchLevel = 0;
punchLevelForce = 0;
punchCancel = false;
forceLimit = 35; //Max amount of force
forceGrow = 0.2; //How fast force increases
punchTime = 0; //Time in punching state
punchLow = 1; //Amount by frame te reduce time punching

//Damaging
hit = false;

//Death, respawn & invinsibility timers and coordenates
respawnX = room_width/2;
respawnY = room_height/2;

//Physics & movement
initialize_movement_entity(
    global.playerGravity,
    global.playerFriction,
    0,
    0,
    solids);

//States (Temporary state machine)
alive = true;
inv = false;
charging = false;
punching = false;
falling = false;

//Sprite (this is meant for testing only)
if playerId = 1 {
    sprite_index = char1;
}

if playerId = 2 {
    sprite_index = char2;
}
