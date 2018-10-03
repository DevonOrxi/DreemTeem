startedState = true;

//Enable Movement
if connect = false && hurting = false && y > -50{
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
            hitX = inst.image_xscale;
            hitY = inst.image_yscale;
        }
    }
}

//Death and respawn
if y > (room_height + sprite_height) && alive = true {
    alive = false;
    instance_create(x, room_height, deathEffect);
    alarm[8] = respawnTime;
}

if y < -50 && alive = true {
    alive = false;
    instance_create(x, 0, deathEffect);
    alarm[8] = respawnTime;
}

if x > (room_width + sprite_width/2) && alive = true {
    alive = false;
    instance_create(room_width, y, deathEffect);
    alarm[8] = respawnTime;
}

if x < -50 && alive = true {
    alive = false;
    instance_create(0, y, deathEffect);
    alarm[8] = respawnTime;
}

//Sprite
if
sprite_index != punch &&
sprite_index != punch2 &&
sprite_index != punch3 &&
sprite_index != contact &&
sprite_index != contact2 &&
sprite_index != contact3
{
    if gotHit = false
    {
    if angle < 270 && angle > 90 {
        image_xscale = -1;
    }
    else {
        image_xscale = 1;
    }
    }
}
