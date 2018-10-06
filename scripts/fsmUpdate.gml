startedState = true;

//Enable Movement
if connect = false && freeze = false && y > -50{
    move_movement_entity(); //Refreshes position every step
}

switch state {
    case playerState.IDLE :
        updateIdle();
        break;
    case playerState.CHARGING :
        updateCharging();
        break;
    case playerState.PUNCHING :
        updatePunching();
        break;
    case playerState.PUNCHING2 :
        updatePunching2();
        break;
    case playerState.PUNCHING3 :
        updatePunching3();
        break;
    case playerState.CONNECT :
        updateConnect();
    case playerState.PUNCH_TO_IDLE :
        break;
    case playerState.HURTING :
        updateHurting();
        break;
    case playerState.FALLING :
        updateFalling();
        break;
    case playerState.LANDING :
        updateLanding();
        break;
    case playerState.LAND_TO_IDLE :
        break;
}

//Get Hit
if instance_exists(hitBox1) {
    if instance_place(x, y, hitBox1) {
        var inst = instance_place(x, y, hitBox1);
        if inst.hitId != playerId {
            gotHit = true;
            inst.playerHit = playerId;
            hitAngle = inst.angle;
            hitX = -inst.image_xscale;
            hitY = inst.image_yscale;
            hitPosX = inst.x;
            hitPosY = inst.y;
            hitLevel = inst.level;
            
            //Critical punch
            if hitLevel = 3
            {
                freeze = true;
            }
        }
    }
}

//Death and respawn
if y > (room_height + sprite_height) && alive = true {
    alive = false;
    alarm[8] = respawnTime;
    var inst = instance_create(x, room_height, deathEffect);
    inst.image_angle = 90;
    life -= 1;
}

if y < -50 && alive = true {
    alive = false;
    alarm[8] = respawnTime;
    var inst = instance_create(x, 0, deathEffect);
    inst.image_angle = 270;
    life -= 1;
}

if x > (room_width + sprite_width/2) && alive = true {
    alive = false;
    alarm[8] = respawnTime;
    var inst = instance_create(room_width, y, deathEffect);
    inst.image_angle = 180;
    life -= 1;
}

if x < -50 && alive = true {
    alive = false;
    alarm[8] = respawnTime;
    var inst = instance_create(0, y, deathEffect);
    inst.image_angle = 0;
    life -= 1;
}

//UI
if playerId = 1 {
    global.chargeLevel1 = chargeLevel;
    global.lives1 = life;
}

if playerId = 2 {
    global.chargeLevel2 = chargeLevel;
    global.lives2 = life;
}

//Sprite
spriteManager();

//image_blend = make_colour_hsv(180, -75, 120);

