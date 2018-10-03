//Punching timer
if punchTime > 0 {
    punchTime -= punchLow; //Slowly stop punching
} else {
    punching = false;
}

//Hitting another player
var playerHit = instance_place(x, y, player);
if playerHit != noone {
    if punching == true {
        if playerHit.playerId != playerId {
            hit = true;
        }
    }
}

if vibeL > 0 && vibeL > 0
{
    vibeL -= 0.05;
    vibeR -= 0.05;
}

gamepad_set_vibration(joySlot, vibeL, vibeR);

//Sprite
if image_index > 2
{
    image_speed = 0;
}

