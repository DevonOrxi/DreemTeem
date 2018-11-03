///warp_movement_entity(xwarp, vwarp)
/*
    This script can be used to warp a movement or solid entity
    to a location while keeping that instance outside of any
    collision objects.
*/

var xwarp = argument0; // x position to warp to
var ywarp = argument1; // y position to warp to

// Warp to the location but don't move inside collision objects
if (place_meeting(xwarp, y, solids)) {
    while(!place_meeting(sign(xwarp-x), y, solids)) {
        x+=sign(xwarp-x);
    }
    xwarp = x;
}
x = xwarp;

// Warp to the location but don't move inside collision objects
if (place_meeting(x, ywarp, solids)) {
    while(!place_meeting(x, sign(ywarp-y), solids)) {
        y+=sign(ywarp-y);
    }
    ywarp = y;
}
y = ywarp;
