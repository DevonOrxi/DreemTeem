//FSM init
if place_meeting(x, y + 1, solids)
    state = playerState.IDLE;
else
    state = playerState.FALLING;
startedState = false;

sprite_index = idle;

//Joystick and playerId
global.playerId += 1;
playerId = global.playerId;
joySlot = -1;

//Charging
chargePower = 0; //Amount to charge
chargeInc = 0.2; //How much to charge per frame
chargeLevel = 0; //Level of charge
chargePunch1 = 10; //Charge for punch1
chargePunch2 = 20; //Charge for punch2
chargePunch3 = 30; //Charge for punch3

//Punching
angle = 0; //Angle of attack
angleBase = 0;
punchCancel = false;
punchTime = 0; //Time in punching state
punchLow = 1; //Amount by frame te reduce time punching
criticalTime = 60;
connect = false;
wallBounce = false;

//Getting Hit
gotHit = false;
hitLevel = 0;
hitAngle = 0;
hitX = 0;
hitY = 0;
hitPosX = 0;
hitPosY = 0;
freeze = false;

//Getting Punched2 - Stun
stun = false;
stunForce = 10;
stunTime = 60;
bounceForce = 5;
bounce = false;

//Getting Punched3 - Critical
critical = false;
criticalForce = 100;
stopCritDeath = true; //Player is not flying to death

hurting = false;

//Death, respawn & invinsibility timers and coordenates
respawnX = room_width/2;
respawnY = room_height/2;
respawnTime = 120;
invTime = 120;

//Physics & movement
initialize_movement_entity(
    global.playerGravity,
    global.playerFriction,
    0,
    0,
    solids,
    solids_ow);

//Gamefeel
vibeL = 0;
vibeR = 0;    
    
//States (Temporary state machine)
alive = true;
inv = false;
falling = false;

//Create UI
if playerId = 1
{
    var inst = instance_create(350, 680, portraitUI);
    inst.uiId = 1;    
}
