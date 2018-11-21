///warp_movement_entity(xwarp, vwarp)
/*
    This script can be used to warp a movement or solid entity
    to a location while keeping that instance outside of any
    collision objects.
*/

var xwarp = argument0; // x position to warp to
var ywarp = argument1; // y position to warp to
var xdif = xwarp - x;
var ydif = ywarp - y;

if (place_meeting(xwarp, ywarp, solids)) {
    var ang = arctan(ydif / xdif);
    var cosang = cos(ang);
    var sinang = sin(ang);
    var dist = distance_to_point(xwarp, ywarp);
    var hasMidpoint = false;
    
    while(!hasMidpoint && dist >= 0) {
        xdif -= cosang;
        ydif += sinang;
        dist--;
        
        if (!place_meeting(x + xdif, y + ydif, solids)) {
            x += xdif;
            y += ydif;
            hasMidpoint = true;
        }
    }
} else {
    x = xwarp;
    y = ywarp;
}
