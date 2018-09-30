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
