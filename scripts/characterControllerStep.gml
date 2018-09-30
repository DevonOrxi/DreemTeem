//Enable Movement
move_movement_entity(); //Refreshes position every step

//Charge
if joyR1 && punching = false {
    if force < forceLimit {
        force += forceGrow;
        charging = true;
    }
}

//Punch
if joyR1R && punching = false {
    add_movement_direction_acceleration(angle, force);
    punchTime = force; //Make punching as long as the time the player charged
    force = 0;
    charging = false;
    punching = true;
}

//Punching timer
if punchTime > 0 {
    punchTime -= punchLow; //Slowly stop punching
} else {
    punching = false
}

//Hitting another player
var playerHit = instance_place(x, y, player);
if playerHit != noone {
    if punching = true {
        if playerHit.playerId != playerId {
            hit = true;
        }
    }
}

//Death and respawn
if y > (room_height + sprite_height) && alive = true {
    alive = false;
    alarm[0] = global.respawnTime;
}

